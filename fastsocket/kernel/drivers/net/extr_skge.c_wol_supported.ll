; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_skge.c_wol_supported.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_skge.c_wol_supported.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skge_hw = type { i64, i64 }

@CHIP_ID_GENESIS = common dso_local global i64 0, align 8
@CHIP_ID_YUKON = common dso_local global i64 0, align 8
@WAKE_MAGIC = common dso_local global i32 0, align 4
@WAKE_PHY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.skge_hw*)* @wol_supported to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wol_supported(%struct.skge_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.skge_hw*, align 8
  store %struct.skge_hw* %0, %struct.skge_hw** %3, align 8
  %4 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %5 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @CHIP_ID_GENESIS, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %26

10:                                               ; preds = %1
  %11 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %12 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @CHIP_ID_YUKON, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %10
  %17 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %18 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %26

22:                                               ; preds = %16, %10
  %23 = load i32, i32* @WAKE_MAGIC, align 4
  %24 = load i32, i32* @WAKE_PHY, align 4
  %25 = or i32 %23, %24
  store i32 %25, i32* %2, align 4
  br label %26

26:                                               ; preds = %22, %21, %9
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
