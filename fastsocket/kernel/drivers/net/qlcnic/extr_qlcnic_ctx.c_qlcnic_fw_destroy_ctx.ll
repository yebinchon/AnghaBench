; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_ctx.c_qlcnic_fw_destroy_ctx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_ctx.c_qlcnic_fw_destroy_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { i32, i32, %struct.TYPE_2__*, i32*, i32 }
%struct.TYPE_2__ = type { i64 }

@__QLCNIC_FW_ATTACHED = common dso_local global i32 0, align 4
@QLCNIC_MSIX_ENABLED = common dso_local global i32 0, align 4
@QLCNIC_LOOPBACK_TEST = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qlcnic_fw_destroy_ctx(%struct.qlcnic_adapter* %0) #0 {
  %2 = alloca %struct.qlcnic_adapter*, align 8
  %3 = alloca i32, align 4
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %2, align 8
  %4 = load i32, i32* @__QLCNIC_FW_ATTACHED, align 4
  %5 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %6 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %5, i32 0, i32 4
  %7 = call i64 @test_and_clear_bit(i32 %4, i32* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %55

9:                                                ; preds = %1
  %10 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %11 = call i32 @qlcnic_fw_cmd_del_rx_ctx(%struct.qlcnic_adapter* %10)
  store i32 0, i32* %3, align 4
  br label %12

12:                                               ; preds = %27, %9
  %13 = load i32, i32* %3, align 4
  %14 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %15 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %30

18:                                               ; preds = %12
  %19 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %20 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %21 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %20, i32 0, i32 3
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %3, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = call i32 @qlcnic_fw_cmd_del_tx_ctx(%struct.qlcnic_adapter* %19, i32* %25)
  br label %27

27:                                               ; preds = %18
  %28 = load i32, i32* %3, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %3, align 4
  br label %12

30:                                               ; preds = %12
  %31 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %32 = call i64 @qlcnic_83xx_check(%struct.qlcnic_adapter* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %53

34:                                               ; preds = %30
  %35 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %36 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @QLCNIC_MSIX_ENABLED, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %53

41:                                               ; preds = %34
  %42 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %43 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %42, i32 0, i32 2
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @QLCNIC_LOOPBACK_TEST, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %41
  %50 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %51 = call i32 @qlcnic_83xx_config_intrpt(%struct.qlcnic_adapter* %50, i32 0)
  br label %52

52:                                               ; preds = %49, %41
  br label %53

53:                                               ; preds = %52, %34, %30
  %54 = call i32 @msleep(i32 20)
  br label %55

55:                                               ; preds = %53, %1
  ret void
}

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @qlcnic_fw_cmd_del_rx_ctx(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_fw_cmd_del_tx_ctx(%struct.qlcnic_adapter*, i32*) #1

declare dso_local i64 @qlcnic_83xx_check(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_83xx_config_intrpt(%struct.qlcnic_adapter*, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
