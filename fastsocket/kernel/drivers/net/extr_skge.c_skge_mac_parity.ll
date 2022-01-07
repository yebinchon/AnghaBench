; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_skge.c_skge_mac_parity.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_skge.c_skge_mac_parity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skge_hw = type { i64, i64, %struct.net_device** }
%struct.net_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@CHIP_ID_GENESIS = common dso_local global i64 0, align 8
@TX_MFF_CTRL1 = common dso_local global i32 0, align 4
@MFF_CLR_PERR = common dso_local global i32 0, align 4
@TX_GMF_CTRL_T = common dso_local global i32 0, align 4
@CHIP_ID_YUKON = common dso_local global i64 0, align 8
@GMF_CLI_TX_FC = common dso_local global i32 0, align 4
@GMF_CLI_TX_PE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.skge_hw*, i32)* @skge_mac_parity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @skge_mac_parity(%struct.skge_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.skge_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  store %struct.skge_hw* %0, %struct.skge_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %7 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %6, i32 0, i32 2
  %8 = load %struct.net_device**, %struct.net_device*** %7, align 8
  %9 = load i32, i32* %4, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.net_device*, %struct.net_device** %8, i64 %10
  %12 = load %struct.net_device*, %struct.net_device** %11, align 8
  store %struct.net_device* %12, %struct.net_device** %5, align 8
  %13 = load %struct.net_device*, %struct.net_device** %5, align 8
  %14 = getelementptr inbounds %struct.net_device, %struct.net_device* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %15, align 4
  %18 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %19 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @CHIP_ID_GENESIS, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %2
  %24 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @TX_MFF_CTRL1, align 4
  %27 = call i32 @SK_REG(i32 %25, i32 %26)
  %28 = load i32, i32* @MFF_CLR_PERR, align 4
  %29 = call i32 @skge_write16(%struct.skge_hw* %24, i32 %27, i32 %28)
  br label %52

30:                                               ; preds = %2
  %31 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @TX_GMF_CTRL_T, align 4
  %34 = call i32 @SK_REG(i32 %32, i32 %33)
  %35 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %36 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @CHIP_ID_YUKON, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %47

40:                                               ; preds = %30
  %41 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %42 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = load i32, i32* @GMF_CLI_TX_FC, align 4
  br label %49

47:                                               ; preds = %40, %30
  %48 = load i32, i32* @GMF_CLI_TX_PE, align 4
  br label %49

49:                                               ; preds = %47, %45
  %50 = phi i32 [ %46, %45 ], [ %48, %47 ]
  %51 = call i32 @skge_write8(%struct.skge_hw* %31, i32 %34, i32 %50)
  br label %52

52:                                               ; preds = %49, %23
  ret void
}

declare dso_local i32 @skge_write16(%struct.skge_hw*, i32, i32) #1

declare dso_local i32 @SK_REG(i32, i32) #1

declare dso_local i32 @skge_write8(%struct.skge_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
