; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_hisax_fcpcipnp.c___fcpci_write_ctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_hisax_fcpcipnp.c___fcpci_write_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fritz_bcs = type { %struct.TYPE_2__, i64, %struct.fritz_adapter* }
%struct.TYPE_2__ = type { i32 }
%struct.fritz_adapter = type { i64 }

@AVM_IDX_HDLC_2 = common dso_local global i32 0, align 4
@AVM_IDX_HDLC_1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"hdlc %c wr%x ctrl %x\00", align 1
@AVM_INDEX = common dso_local global i64 0, align 8
@AVM_DATA = common dso_local global i64 0, align 8
@HDLC_CTRL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fritz_bcs*, i32)* @__fcpci_write_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__fcpci_write_ctrl(%struct.fritz_bcs* %0, i32 %1) #0 {
  %3 = alloca %struct.fritz_bcs*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.fritz_adapter*, align 8
  %6 = alloca i32, align 4
  store %struct.fritz_bcs* %0, %struct.fritz_bcs** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.fritz_bcs*, %struct.fritz_bcs** %3, align 8
  %8 = getelementptr inbounds %struct.fritz_bcs, %struct.fritz_bcs* %7, i32 0, i32 2
  %9 = load %struct.fritz_adapter*, %struct.fritz_adapter** %8, align 8
  store %struct.fritz_adapter* %9, %struct.fritz_adapter** %5, align 8
  %10 = load %struct.fritz_bcs*, %struct.fritz_bcs** %3, align 8
  %11 = getelementptr inbounds %struct.fritz_bcs, %struct.fritz_bcs* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @AVM_IDX_HDLC_2, align 4
  br label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @AVM_IDX_HDLC_1, align 4
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi i32 [ %15, %14 ], [ %17, %16 ]
  store i32 %19, i32* %6, align 4
  %20 = load %struct.fritz_bcs*, %struct.fritz_bcs** %3, align 8
  %21 = getelementptr inbounds %struct.fritz_bcs, %struct.fritz_bcs* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 65, %22
  %24 = load i32, i32* %4, align 4
  %25 = load %struct.fritz_bcs*, %struct.fritz_bcs** %3, align 8
  %26 = getelementptr inbounds %struct.fritz_bcs, %struct.fritz_bcs* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @DBG(i32 64, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i64 %23, i32 %24, i32 %28)
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.fritz_adapter*, %struct.fritz_adapter** %5, align 8
  %32 = getelementptr inbounds %struct.fritz_adapter, %struct.fritz_adapter* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @AVM_INDEX, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @outl(i32 %30, i64 %35)
  %37 = load %struct.fritz_bcs*, %struct.fritz_bcs** %3, align 8
  %38 = getelementptr inbounds %struct.fritz_bcs, %struct.fritz_bcs* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.fritz_adapter*, %struct.fritz_adapter** %5, align 8
  %42 = getelementptr inbounds %struct.fritz_adapter, %struct.fritz_adapter* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @AVM_DATA, align 8
  %45 = add nsw i64 %43, %44
  %46 = load i64, i64* @HDLC_CTRL, align 8
  %47 = add nsw i64 %45, %46
  %48 = call i32 @outl(i32 %40, i64 %47)
  ret void
}

declare dso_local i32 @DBG(i32, i8*, i64, i32, i32) #1

declare dso_local i32 @outl(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
