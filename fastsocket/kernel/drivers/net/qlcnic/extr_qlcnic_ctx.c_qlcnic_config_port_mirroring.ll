; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_ctx.c_qlcnic_config_port_mirroring.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_ctx.c_qlcnic_config_port_mirroring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { %struct.TYPE_7__*, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { %struct.device }
%struct.device = type { i32 }
%struct.qlcnic_cmd_args = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64* }

@EIO = common dso_local global i32 0, align 4
@QLCNIC_MGMT_FUNC = common dso_local global i64 0, align 8
@QLCNIC_SWITCH_ENABLE = common dso_local global i32 0, align 4
@BIT_4 = common dso_local global i64 0, align 8
@QLCNIC_CMD_SET_PORTMIRRORING = common dso_local global i32 0, align 4
@QLCNIC_RCODE_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [71 x i8] c"Failed to configure port mirroring for vNIC function %d on eSwitch %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [62 x i8] c"Configured port mirroring for vNIC function %d on eSwitch %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qlcnic_config_port_mirroring(%struct.qlcnic_adapter* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.qlcnic_adapter*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.device*, align 8
  %11 = alloca %struct.qlcnic_cmd_args, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %15 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %14, i32 0, i32 2
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  store %struct.device* %17, %struct.device** %10, align 8
  %18 = load i32, i32* @EIO, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %12, align 4
  %20 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %21 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %20, i32 0, i32 1
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @QLCNIC_MGMT_FUNC, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %38, label %27

27:                                               ; preds = %4
  %28 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %29 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %28, i32 0, i32 0
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %29, align 8
  %31 = load i64, i64* %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @QLCNIC_SWITCH_ENABLE, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %27, %4
  %39 = load i32, i32* %12, align 4
  store i32 %39, i32* %5, align 4
  br label %80

40:                                               ; preds = %27
  %41 = load i64, i64* %7, align 8
  %42 = load i64, i64* %8, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = load i64, i64* @BIT_4, align 8
  br label %47

46:                                               ; preds = %40
  br label %47

47:                                               ; preds = %46, %44
  %48 = phi i64 [ %45, %44 ], [ 0, %46 ]
  %49 = or i64 %41, %48
  store i64 %49, i64* %13, align 8
  %50 = load i64, i64* %9, align 8
  %51 = shl i64 %50, 8
  %52 = load i64, i64* %13, align 8
  %53 = or i64 %52, %51
  store i64 %53, i64* %13, align 8
  %54 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %55 = load i32, i32* @QLCNIC_CMD_SET_PORTMIRRORING, align 4
  %56 = call i32 @qlcnic_alloc_mbx_args(%struct.qlcnic_cmd_args* %11, %struct.qlcnic_adapter* %54, i32 %55)
  %57 = load i64, i64* %13, align 8
  %58 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %11, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load i64*, i64** %59, align 8
  %61 = getelementptr inbounds i64, i64* %60, i64 1
  store i64 %57, i64* %61, align 8
  %62 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %63 = call i32 @qlcnic_issue_cmd(%struct.qlcnic_adapter* %62, %struct.qlcnic_cmd_args* %11)
  store i32 %63, i32* %12, align 4
  %64 = load i32, i32* %12, align 4
  %65 = load i32, i32* @QLCNIC_RCODE_SUCCESS, align 4
  %66 = icmp ne i32 %64, %65
  br i1 %66, label %67, label %72

67:                                               ; preds = %47
  %68 = load %struct.device*, %struct.device** %10, align 8
  %69 = load i64, i64* %9, align 8
  %70 = load i64, i64* %7, align 8
  %71 = call i32 @dev_err(%struct.device* %68, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0), i64 %69, i64 %70)
  br label %77

72:                                               ; preds = %47
  %73 = load %struct.device*, %struct.device** %10, align 8
  %74 = load i64, i64* %9, align 8
  %75 = load i64, i64* %7, align 8
  %76 = call i32 @dev_info(%struct.device* %73, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0), i64 %74, i64 %75)
  br label %77

77:                                               ; preds = %72, %67
  %78 = call i32 @qlcnic_free_mbx_args(%struct.qlcnic_cmd_args* %11)
  %79 = load i32, i32* %12, align 4
  store i32 %79, i32* %5, align 4
  br label %80

80:                                               ; preds = %77, %38
  %81 = load i32, i32* %5, align 4
  ret i32 %81
}

declare dso_local i32 @qlcnic_alloc_mbx_args(%struct.qlcnic_cmd_args*, %struct.qlcnic_adapter*, i32) #1

declare dso_local i32 @qlcnic_issue_cmd(%struct.qlcnic_adapter*, %struct.qlcnic_cmd_args*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i64, i64) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i64, i64) #1

declare dso_local i32 @qlcnic_free_mbx_args(%struct.qlcnic_cmd_args*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
