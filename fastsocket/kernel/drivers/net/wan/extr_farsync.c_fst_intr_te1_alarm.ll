; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/extr_farsync.c_fst_intr_te1_alarm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/extr_farsync.c_fst_intr_te1_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.fst_card_info = type { i32 }
%struct.fst_port_info = type { i32 }

@suStatus = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@DBG_INTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Net carrier off\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Net carrier on\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"Assert LOS Alarm\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"De-assert LOS Alarm\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"Assert RRA Alarm\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"De-assert RRA Alarm\0A\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"Assert AIS Alarm\0A\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"De-assert AIS Alarm\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fst_card_info*, %struct.fst_port_info*)* @fst_intr_te1_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fst_intr_te1_alarm(%struct.fst_card_info* %0, %struct.fst_port_info* %1) #0 {
  %3 = alloca %struct.fst_card_info*, align 8
  %4 = alloca %struct.fst_port_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.fst_card_info* %0, %struct.fst_card_info** %3, align 8
  store %struct.fst_port_info* %1, %struct.fst_port_info** %4, align 8
  %8 = load %struct.fst_card_info*, %struct.fst_card_info** %3, align 8
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @suStatus, i32 0, i32 2), align 4
  %10 = call i64 @FST_RDB(%struct.fst_card_info* %8, i32 %9)
  store i64 %10, i64* %5, align 8
  %11 = load %struct.fst_card_info*, %struct.fst_card_info** %3, align 8
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @suStatus, i32 0, i32 1), align 4
  %13 = call i64 @FST_RDB(%struct.fst_card_info* %11, i32 %12)
  store i64 %13, i64* %6, align 8
  %14 = load %struct.fst_card_info*, %struct.fst_card_info** %3, align 8
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @suStatus, i32 0, i32 0), align 4
  %16 = call i64 @FST_RDB(%struct.fst_card_info* %14, i32 %15)
  store i64 %16, i64* %7, align 8
  %17 = load i64, i64* %5, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %31

19:                                               ; preds = %2
  %20 = load %struct.fst_port_info*, %struct.fst_port_info** %4, align 8
  %21 = call i32 @port_to_dev(%struct.fst_port_info* %20)
  %22 = call i64 @netif_carrier_ok(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %19
  %25 = load i32, i32* @DBG_INTR, align 4
  %26 = call i32 @dbg(i32 %25, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %27 = load %struct.fst_port_info*, %struct.fst_port_info** %4, align 8
  %28 = call i32 @port_to_dev(%struct.fst_port_info* %27)
  %29 = call i32 @netif_carrier_off(i32 %28)
  br label %30

30:                                               ; preds = %24, %19
  br label %43

31:                                               ; preds = %2
  %32 = load %struct.fst_port_info*, %struct.fst_port_info** %4, align 8
  %33 = call i32 @port_to_dev(%struct.fst_port_info* %32)
  %34 = call i64 @netif_carrier_ok(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %31
  %37 = load i32, i32* @DBG_INTR, align 4
  %38 = call i32 @dbg(i32 %37, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %39 = load %struct.fst_port_info*, %struct.fst_port_info** %4, align 8
  %40 = call i32 @port_to_dev(%struct.fst_port_info* %39)
  %41 = call i32 @netif_carrier_on(i32 %40)
  br label %42

42:                                               ; preds = %36, %31
  br label %43

43:                                               ; preds = %42, %30
  %44 = load i64, i64* %5, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load i32, i32* @DBG_INTR, align 4
  %48 = call i32 @dbg(i32 %47, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %52

49:                                               ; preds = %43
  %50 = load i32, i32* @DBG_INTR, align 4
  %51 = call i32 @dbg(i32 %50, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %52

52:                                               ; preds = %49, %46
  %53 = load i64, i64* %6, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load i32, i32* @DBG_INTR, align 4
  %57 = call i32 @dbg(i32 %56, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  br label %61

58:                                               ; preds = %52
  %59 = load i32, i32* @DBG_INTR, align 4
  %60 = call i32 @dbg(i32 %59, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  br label %61

61:                                               ; preds = %58, %55
  %62 = load i64, i64* %7, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = load i32, i32* @DBG_INTR, align 4
  %66 = call i32 @dbg(i32 %65, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  br label %70

67:                                               ; preds = %61
  %68 = load i32, i32* @DBG_INTR, align 4
  %69 = call i32 @dbg(i32 %68, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  br label %70

70:                                               ; preds = %67, %64
  ret void
}

declare dso_local i64 @FST_RDB(%struct.fst_card_info*, i32) #1

declare dso_local i64 @netif_carrier_ok(i32) #1

declare dso_local i32 @port_to_dev(%struct.fst_port_info*) #1

declare dso_local i32 @dbg(i32, i8*) #1

declare dso_local i32 @netif_carrier_off(i32) #1

declare dso_local i32 @netif_carrier_on(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
