; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_83xx_hw.c_qlcnic_83xx_interrupt_test.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_83xx_hw.c_qlcnic_83xx_interrupt_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.qlcnic_adapter = type { i32, i32, %struct.TYPE_8__*, %struct.qlcnic_hardware_context* }
%struct.TYPE_8__ = type { i32 }
%struct.qlcnic_hardware_context = type { i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.qlcnic_cmd_args = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_6__ = type { i32* }

@.str = private unnamed_addr constant [28 x i8] c"Device in diagnostics mode\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@QLCNIC_INTERRUPT_TEST = common dso_local global i32 0, align 4
@QLCNIC_CMD_INTRPT_TEST = common dso_local global i32 0, align 4
@QLCNIC_MSIX_ENABLED = common dso_local global i32 0, align 4
@QLCNIC_DEF_INT_ID = common dso_local global i32 0, align 4
@BIT_0 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"Interrupt generated: 0x%x, requested:0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Interrupt test error: 0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qlcnic_83xx_interrupt_test(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.qlcnic_adapter*, align 8
  %5 = alloca %struct.qlcnic_hardware_context*, align 8
  %6 = alloca %struct.qlcnic_cmd_args, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %13 = load %struct.net_device*, %struct.net_device** %3, align 8
  %14 = call %struct.qlcnic_adapter* @netdev_priv(%struct.net_device* %13)
  store %struct.qlcnic_adapter* %14, %struct.qlcnic_adapter** %4, align 8
  %15 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %16 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %15, i32 0, i32 3
  %17 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %16, align 8
  store %struct.qlcnic_hardware_context* %17, %struct.qlcnic_hardware_context** %5, align 8
  %18 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %19 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %12, align 4
  %21 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %22 = call i64 @qlcnic_get_diag_lock(%struct.qlcnic_adapter* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %1
  %25 = load %struct.net_device*, %struct.net_device** %3, align 8
  %26 = call i32 @netdev_info(%struct.net_device* %25, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @EBUSY, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %132

29:                                               ; preds = %1
  %30 = load %struct.net_device*, %struct.net_device** %3, align 8
  %31 = load i32, i32* @QLCNIC_INTERRUPT_TEST, align 4
  %32 = load i32, i32* %12, align 4
  %33 = call i32 @qlcnic_83xx_diag_alloc_res(%struct.net_device* %30, i32 %31, i32 %32)
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  br label %125

37:                                               ; preds = %29
  %38 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %5, align 8
  %39 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %38, i32 0, i32 0
  store i64 0, i64* %39, align 8
  %40 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %41 = load i32, i32* @QLCNIC_CMD_INTRPT_TEST, align 4
  %42 = call i32 @qlcnic_alloc_mbx_args(%struct.qlcnic_cmd_args* %6, %struct.qlcnic_adapter* %40, i32 %41)
  %43 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %44 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @QLCNIC_MSIX_ENABLED, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %37
  %50 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %5, align 8
  %51 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %50, i32 0, i32 1
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i64 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %8, align 4
  br label %60

56:                                               ; preds = %37
  %57 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %5, align 8
  %58 = load i32, i32* @QLCNIC_DEF_INT_ID, align 4
  %59 = call i32 @QLCRDX(%struct.qlcnic_hardware_context* %57, i32 %58)
  store i32 %59, i32* %8, align 4
  br label %60

60:                                               ; preds = %56, %49
  %61 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %6, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 1
  store i32 1, i32* %64, align 4
  %65 = load i32, i32* %8, align 4
  %66 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %6, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 2
  store i32 %65, i32* %69, align 4
  %70 = load i32, i32* @BIT_0, align 4
  %71 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %6, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 3
  store i32 %70, i32* %74, align 4
  %75 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %76 = call i32 @qlcnic_issue_cmd(%struct.qlcnic_adapter* %75, %struct.qlcnic_cmd_args* %6)
  store i32 %76, i32* %11, align 4
  %77 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %6, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 2
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %7, align 4
  %82 = load i32, i32* %7, align 4
  %83 = call i32 @LSW(i32 %82)
  store i32 %83, i32* %9, align 4
  %84 = load i32, i32* %7, align 4
  %85 = call i32 @MSW(i32 %84)
  %86 = call i64 @LSB(i32 %85)
  store i64 %86, i64* %10, align 8
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* %8, align 4
  %89 = icmp ne i32 %87, %88
  br i1 %89, label %90, label %98

90:                                               ; preds = %60
  %91 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %92 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %91, i32 0, i32 2
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  %95 = load i32, i32* %9, align 4
  %96 = load i32, i32* %8, align 4
  %97 = call i32 @dev_info(i32* %94, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %95, i32 %96)
  br label %98

98:                                               ; preds = %90, %60
  %99 = load i64, i64* %10, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %108

101:                                              ; preds = %98
  %102 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %103 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %102, i32 0, i32 2
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 0
  %106 = load i64, i64* %10, align 8
  %107 = call i32 @dev_err(i32* %105, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i64 %106)
  br label %108

108:                                              ; preds = %101, %98
  %109 = load i32, i32* %11, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %108
  br label %120

112:                                              ; preds = %108
  %113 = call i32 @msleep(i32 20)
  %114 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %5, align 8
  %115 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  %118 = xor i1 %117, true
  %119 = zext i1 %118 to i32
  store i32 %119, i32* %11, align 4
  br label %120

120:                                              ; preds = %112, %111
  %121 = call i32 @qlcnic_free_mbx_args(%struct.qlcnic_cmd_args* %6)
  %122 = load %struct.net_device*, %struct.net_device** %3, align 8
  %123 = load i32, i32* %12, align 4
  %124 = call i32 @qlcnic_83xx_diag_free_res(%struct.net_device* %122, i32 %123)
  br label %125

125:                                              ; preds = %120, %36
  %126 = load i32, i32* %12, align 4
  %127 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %128 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %127, i32 0, i32 0
  store i32 %126, i32* %128, align 8
  %129 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %130 = call i32 @qlcnic_release_diag_lock(%struct.qlcnic_adapter* %129)
  %131 = load i32, i32* %11, align 4
  store i32 %131, i32* %2, align 4
  br label %132

132:                                              ; preds = %125, %24
  %133 = load i32, i32* %2, align 4
  ret i32 %133
}

declare dso_local %struct.qlcnic_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @qlcnic_get_diag_lock(%struct.qlcnic_adapter*) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*) #1

declare dso_local i32 @qlcnic_83xx_diag_alloc_res(%struct.net_device*, i32, i32) #1

declare dso_local i32 @qlcnic_alloc_mbx_args(%struct.qlcnic_cmd_args*, %struct.qlcnic_adapter*, i32) #1

declare dso_local i32 @QLCRDX(%struct.qlcnic_hardware_context*, i32) #1

declare dso_local i32 @qlcnic_issue_cmd(%struct.qlcnic_adapter*, %struct.qlcnic_cmd_args*) #1

declare dso_local i32 @LSW(i32) #1

declare dso_local i64 @LSB(i32) #1

declare dso_local i32 @MSW(i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i64) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @qlcnic_free_mbx_args(%struct.qlcnic_cmd_args*) #1

declare dso_local i32 @qlcnic_83xx_diag_free_res(%struct.net_device*, i32) #1

declare dso_local i32 @qlcnic_release_diag_lock(%struct.qlcnic_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
