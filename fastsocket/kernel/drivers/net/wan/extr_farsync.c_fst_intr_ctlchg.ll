; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/extr_farsync.c_fst_intr_ctlchg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/extr_farsync.c_fst_intr_ctlchg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fst_card_info = type { i32 }
%struct.fst_port_info = type { i64, i64 }

@v24DebouncedSts = common dso_local global i32* null, align 8
@X21 = common dso_local global i64 0, align 8
@X21D = common dso_local global i64 0, align 8
@IPSTS_INDICATE = common dso_local global i32 0, align 4
@IPSTS_DCD = common dso_local global i32 0, align 4
@DBG_INTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"DCD active\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"DCD lost\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fst_card_info*, %struct.fst_port_info*)* @fst_intr_ctlchg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fst_intr_ctlchg(%struct.fst_card_info* %0, %struct.fst_port_info* %1) #0 {
  %3 = alloca %struct.fst_card_info*, align 8
  %4 = alloca %struct.fst_port_info*, align 8
  %5 = alloca i32, align 4
  store %struct.fst_card_info* %0, %struct.fst_card_info** %3, align 8
  store %struct.fst_port_info* %1, %struct.fst_port_info** %4, align 8
  %6 = load %struct.fst_card_info*, %struct.fst_card_info** %3, align 8
  %7 = load i32*, i32** @v24DebouncedSts, align 8
  %8 = load %struct.fst_port_info*, %struct.fst_port_info** %4, align 8
  %9 = getelementptr inbounds %struct.fst_port_info, %struct.fst_port_info* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = getelementptr inbounds i32, i32* %7, i64 %10
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @FST_RDL(%struct.fst_card_info* %6, i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.fst_port_info*, %struct.fst_port_info** %4, align 8
  %16 = getelementptr inbounds %struct.fst_port_info, %struct.fst_port_info* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @X21, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %26, label %20

20:                                               ; preds = %2
  %21 = load %struct.fst_port_info*, %struct.fst_port_info** %4, align 8
  %22 = getelementptr inbounds %struct.fst_port_info, %struct.fst_port_info* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @X21D, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %20, %2
  %27 = load i32, i32* @IPSTS_INDICATE, align 4
  br label %30

28:                                               ; preds = %20
  %29 = load i32, i32* @IPSTS_DCD, align 4
  br label %30

30:                                               ; preds = %28, %26
  %31 = phi i32 [ %27, %26 ], [ %29, %28 ]
  %32 = and i32 %14, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %46

34:                                               ; preds = %30
  %35 = load %struct.fst_port_info*, %struct.fst_port_info** %4, align 8
  %36 = call i32 @port_to_dev(%struct.fst_port_info* %35)
  %37 = call i64 @netif_carrier_ok(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %34
  %40 = load i32, i32* @DBG_INTR, align 4
  %41 = call i32 @dbg(i32 %40, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %42 = load %struct.fst_port_info*, %struct.fst_port_info** %4, align 8
  %43 = call i32 @port_to_dev(%struct.fst_port_info* %42)
  %44 = call i32 @netif_carrier_on(i32 %43)
  br label %45

45:                                               ; preds = %39, %34
  br label %58

46:                                               ; preds = %30
  %47 = load %struct.fst_port_info*, %struct.fst_port_info** %4, align 8
  %48 = call i32 @port_to_dev(%struct.fst_port_info* %47)
  %49 = call i64 @netif_carrier_ok(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %46
  %52 = load i32, i32* @DBG_INTR, align 4
  %53 = call i32 @dbg(i32 %52, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %54 = load %struct.fst_port_info*, %struct.fst_port_info** %4, align 8
  %55 = call i32 @port_to_dev(%struct.fst_port_info* %54)
  %56 = call i32 @netif_carrier_off(i32 %55)
  br label %57

57:                                               ; preds = %51, %46
  br label %58

58:                                               ; preds = %57, %45
  ret void
}

declare dso_local i32 @FST_RDL(%struct.fst_card_info*, i32) #1

declare dso_local i64 @netif_carrier_ok(i32) #1

declare dso_local i32 @port_to_dev(%struct.fst_port_info*) #1

declare dso_local i32 @dbg(i32, i8*) #1

declare dso_local i32 @netif_carrier_on(i32) #1

declare dso_local i32 @netif_carrier_off(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
