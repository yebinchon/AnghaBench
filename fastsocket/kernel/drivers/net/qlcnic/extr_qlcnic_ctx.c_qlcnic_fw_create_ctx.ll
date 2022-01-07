; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_ctx.c_qlcnic_fw_create_ctx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_ctx.c_qlcnic_fw_create_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { i32, i32, %struct.TYPE_2__*, i32, i32*, i32 }
%struct.TYPE_2__ = type { i64 }

@QLCNIC_NEED_FLR = common dso_local global i32 0, align 4
@QLCNIC_MSIX_ENABLED = common dso_local global i32 0, align 4
@QLCNIC_LOOPBACK_TEST = common dso_local global i64 0, align 8
@__QLCNIC_FW_ATTACHED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qlcnic_fw_create_ctx(%struct.qlcnic_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qlcnic_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %3, align 8
  %7 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %8 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @QLCNIC_NEED_FLR, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %24

13:                                               ; preds = %1
  %14 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %15 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @pci_reset_function(i32 %16)
  %18 = load i32, i32* @QLCNIC_NEED_FLR, align 4
  %19 = xor i32 %18, -1
  %20 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %21 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = and i32 %22, %19
  store i32 %23, i32* %21, align 8
  br label %24

24:                                               ; preds = %13, %1
  %25 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %26 = call i64 @qlcnic_83xx_check(%struct.qlcnic_adapter* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %52

28:                                               ; preds = %24
  %29 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %30 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @QLCNIC_MSIX_ENABLED, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %52

35:                                               ; preds = %28
  %36 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %37 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %36, i32 0, i32 2
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @QLCNIC_LOOPBACK_TEST, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %51

43:                                               ; preds = %35
  %44 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %45 = call i32 @qlcnic_83xx_config_intrpt(%struct.qlcnic_adapter* %44, i32 1)
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %5, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = load i32, i32* %5, align 4
  store i32 %49, i32* %2, align 4
  br label %135

50:                                               ; preds = %43
  br label %51

51:                                               ; preds = %50, %35
  br label %52

52:                                               ; preds = %51, %28, %24
  %53 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %54 = call i32 @qlcnic_fw_cmd_create_rx_ctx(%struct.qlcnic_adapter* %53)
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* %5, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  br label %110

58:                                               ; preds = %52
  store i32 0, i32* %6, align 4
  br label %59

59:                                               ; preds = %102, %58
  %60 = load i32, i32* %6, align 4
  %61 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %62 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp slt i32 %60, %63
  br i1 %64, label %65, label %105

65:                                               ; preds = %59
  %66 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %67 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %68 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %67, i32 0, i32 4
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %6, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %6, align 4
  %74 = call i32 @qlcnic_fw_cmd_create_tx_ctx(%struct.qlcnic_adapter* %66, i32* %72, i32 %73)
  store i32 %74, i32* %5, align 4
  %75 = load i32, i32* %5, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %101

77:                                               ; preds = %65
  %78 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %79 = call i32 @qlcnic_fw_cmd_del_rx_ctx(%struct.qlcnic_adapter* %78)
  %80 = load i32, i32* %6, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %77
  br label %110

83:                                               ; preds = %77
  store i32 0, i32* %4, align 4
  br label %84

84:                                               ; preds = %97, %83
  %85 = load i32, i32* %4, align 4
  %86 = load i32, i32* %6, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %88, label %100

88:                                               ; preds = %84
  %89 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %90 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %91 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %90, i32 0, i32 4
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* %4, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = call i32 @qlcnic_fw_cmd_del_tx_ctx(%struct.qlcnic_adapter* %89, i32* %95)
  br label %97

97:                                               ; preds = %88
  %98 = load i32, i32* %4, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %4, align 4
  br label %84

100:                                              ; preds = %84
  br label %110

101:                                              ; preds = %65
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %6, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %6, align 4
  br label %59

105:                                              ; preds = %59
  %106 = load i32, i32* @__QLCNIC_FW_ATTACHED, align 4
  %107 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %108 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %107, i32 0, i32 3
  %109 = call i32 @set_bit(i32 %106, i32* %108)
  store i32 0, i32* %2, align 4
  br label %135

110:                                              ; preds = %100, %82, %57
  %111 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %112 = call i64 @qlcnic_83xx_check(%struct.qlcnic_adapter* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %133

114:                                              ; preds = %110
  %115 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %116 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @QLCNIC_MSIX_ENABLED, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %133

121:                                              ; preds = %114
  %122 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %123 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %122, i32 0, i32 2
  %124 = load %struct.TYPE_2__*, %struct.TYPE_2__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @QLCNIC_LOOPBACK_TEST, align 8
  %128 = icmp ne i64 %126, %127
  br i1 %128, label %129, label %132

129:                                              ; preds = %121
  %130 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %131 = call i32 @qlcnic_83xx_config_intrpt(%struct.qlcnic_adapter* %130, i32 0)
  br label %132

132:                                              ; preds = %129, %121
  br label %133

133:                                              ; preds = %132, %114, %110
  %134 = load i32, i32* %5, align 4
  store i32 %134, i32* %2, align 4
  br label %135

135:                                              ; preds = %133, %105, %48
  %136 = load i32, i32* %2, align 4
  ret i32 %136
}

declare dso_local i32 @pci_reset_function(i32) #1

declare dso_local i64 @qlcnic_83xx_check(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_83xx_config_intrpt(%struct.qlcnic_adapter*, i32) #1

declare dso_local i32 @qlcnic_fw_cmd_create_rx_ctx(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_fw_cmd_create_tx_ctx(%struct.qlcnic_adapter*, i32*, i32) #1

declare dso_local i32 @qlcnic_fw_cmd_del_rx_ctx(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_fw_cmd_del_tx_ctx(%struct.qlcnic_adapter*, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
