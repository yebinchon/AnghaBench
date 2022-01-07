; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_83xx_hw.c_qlcnic_83xx_test_link.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_83xx_hw.c_qlcnic_83xx_test_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { %struct.TYPE_3__*, i32, %struct.qlcnic_hardware_context* }
%struct.TYPE_3__ = type { i32 }
%struct.qlcnic_hardware_context = type { i32, i32, i32, i64, i32 }
%struct.qlcnic_cmd_args = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }

@.str = private unnamed_addr constant [17 x i8] c"link state down\0A\00", align 1
@QLCNIC_CMD_GET_LINK_STATUS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Get Link Status Command failed: 0x%x\0A\00", align 1
@SPEED_10 = common dso_local global i32 0, align 4
@SPEED_100 = common dso_local global i32 0, align 4
@SPEED_1000 = common dso_local global i32 0, align 4
@SPEED_10000 = common dso_local global i32 0, align 4
@PORT_FIBRE = common dso_local global i32 0, align 4
@PORT_TP = common dso_local global i32 0, align 4
@PORT_OTHER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qlcnic_83xx_test_link(%struct.qlcnic_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qlcnic_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.qlcnic_cmd_args, align 8
  %9 = alloca %struct.qlcnic_hardware_context*, align 8
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %3, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %11 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %10, i32 0, i32 2
  %12 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %11, align 8
  store %struct.qlcnic_hardware_context* %12, %struct.qlcnic_hardware_context** %9, align 8
  %13 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %14 = call i64 @qlcnic_sriov_vf_check(%struct.qlcnic_adapter* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %18 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %4, align 4
  br label %24

20:                                               ; preds = %1
  %21 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %9, align 8
  %22 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %4, align 4
  br label %24

24:                                               ; preds = %20, %16
  %25 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %9, align 8
  %26 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  %28 = load i32, i32* %4, align 4
  %29 = call i64 @QLC_83XX_LINK_STATE(i32 %28)
  %30 = add nsw i64 %27, %29
  %31 = call i32 @readl(i64 %30)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @QLC_83xx_FUNC_VAL(i32 %32, i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %24
  %37 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %38 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %37, i32 0, i32 0
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = call i32 (i32*, i8*, ...) @dev_info(i32* %40, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %42 = load i32, i32* %6, align 4
  store i32 %42, i32* %2, align 4
  br label %121

43:                                               ; preds = %24
  %44 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %45 = load i32, i32* @QLCNIC_CMD_GET_LINK_STATUS, align 4
  %46 = call i32 @qlcnic_alloc_mbx_args(%struct.qlcnic_cmd_args* %8, %struct.qlcnic_adapter* %44, i32 %45)
  %47 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %48 = call i32 @qlcnic_issue_cmd(%struct.qlcnic_adapter* %47, %struct.qlcnic_cmd_args* %8)
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %5, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %43
  %52 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %53 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %52, i32 0, i32 0
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32, i32* %5, align 4
  %57 = call i32 (i32*, i8*, ...) @dev_info(i32* %55, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  br label %118

58:                                               ; preds = %43
  %59 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %8, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 1
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @QLC_83XX_CURRENT_LINK_SPEED(i32 %64)
  switch i32 %65, label %82 [
    i32 129, label %66
    i32 131, label %70
    i32 128, label %74
    i32 130, label %78
  ]

66:                                               ; preds = %58
  %67 = load i32, i32* @SPEED_10, align 4
  %68 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %9, align 8
  %69 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 8
  br label %85

70:                                               ; preds = %58
  %71 = load i32, i32* @SPEED_100, align 4
  %72 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %9, align 8
  %73 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %72, i32 0, i32 2
  store i32 %71, i32* %73, align 8
  br label %85

74:                                               ; preds = %58
  %75 = load i32, i32* @SPEED_1000, align 4
  %76 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %9, align 8
  %77 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %76, i32 0, i32 2
  store i32 %75, i32* %77, align 8
  br label %85

78:                                               ; preds = %58
  %79 = load i32, i32* @SPEED_10000, align 4
  %80 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %9, align 8
  %81 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %80, i32 0, i32 2
  store i32 %79, i32* %81, align 8
  br label %85

82:                                               ; preds = %58
  %83 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %9, align 8
  %84 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %83, i32 0, i32 2
  store i32 0, i32* %84, align 8
  br label %85

85:                                               ; preds = %82, %78, %74, %70, %66
  %86 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %8, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 3
  %90 = load i32, i32* %89, align 4
  store i32 %90, i32* %6, align 4
  %91 = load i32, i32* %6, align 4
  %92 = call i64 @QLC_83XX_SFP_PRESENT(i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %111

94:                                               ; preds = %85
  %95 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %9, align 8
  %96 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  switch i32 %97, label %106 [
    i32 135, label %98
    i32 136, label %98
    i32 138, label %98
    i32 137, label %98
    i32 133, label %102
    i32 132, label %102
    i32 134, label %102
  ]

98:                                               ; preds = %94, %94, %94, %94
  %99 = load i32, i32* @PORT_FIBRE, align 4
  %100 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %9, align 8
  %101 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %100, i32 0, i32 1
  store i32 %99, i32* %101, align 4
  br label %110

102:                                              ; preds = %94, %94, %94
  %103 = load i32, i32* @PORT_TP, align 4
  %104 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %9, align 8
  %105 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %104, i32 0, i32 1
  store i32 %103, i32* %105, align 4
  br label %110

106:                                              ; preds = %94
  %107 = load i32, i32* @PORT_OTHER, align 4
  %108 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %9, align 8
  %109 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %108, i32 0, i32 1
  store i32 %107, i32* %109, align 4
  br label %110

110:                                              ; preds = %106, %102, %98
  br label %111

111:                                              ; preds = %110, %85
  %112 = load i32, i32* %6, align 4
  %113 = and i32 %112, 1
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %111
  store i32 1, i32* %5, align 4
  br label %116

116:                                              ; preds = %115, %111
  br label %117

117:                                              ; preds = %116
  br label %118

118:                                              ; preds = %117, %51
  %119 = call i32 @qlcnic_free_mbx_args(%struct.qlcnic_cmd_args* %8)
  %120 = load i32, i32* %6, align 4
  store i32 %120, i32* %2, align 4
  br label %121

121:                                              ; preds = %118, %36
  %122 = load i32, i32* %2, align 4
  ret i32 %122
}

declare dso_local i64 @qlcnic_sriov_vf_check(%struct.qlcnic_adapter*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i64 @QLC_83XX_LINK_STATE(i32) #1

declare dso_local i32 @QLC_83xx_FUNC_VAL(i32, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, ...) #1

declare dso_local i32 @qlcnic_alloc_mbx_args(%struct.qlcnic_cmd_args*, %struct.qlcnic_adapter*, i32) #1

declare dso_local i32 @qlcnic_issue_cmd(%struct.qlcnic_adapter*, %struct.qlcnic_cmd_args*) #1

declare dso_local i32 @QLC_83XX_CURRENT_LINK_SPEED(i32) #1

declare dso_local i64 @QLC_83XX_SFP_PRESENT(i32) #1

declare dso_local i32 @qlcnic_free_mbx_args(%struct.qlcnic_cmd_args*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
