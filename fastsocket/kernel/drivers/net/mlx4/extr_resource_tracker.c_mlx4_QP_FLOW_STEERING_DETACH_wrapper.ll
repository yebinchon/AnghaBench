; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_resource_tracker.c_mlx4_QP_FLOW_STEERING_DETACH_wrapper.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_resource_tracker.c_mlx4_QP_FLOW_STEERING_DETACH_wrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.mlx4_vhcr = type { i32 }
%struct.mlx4_cmd_mailbox = type { i32 }
%struct.mlx4_cmd_info = type { i32 }
%struct.res_qp = type { i32, i32 }
%struct.res_fs_rule = type { i32, i32 }

@MLX4_STEERING_MODE_DEVICE_MANAGED = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@RES_FS_RULE = common dso_local global i32 0, align 4
@RES_QP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Fail to remove flow steering resources.\0A \00", align 1
@MLX4_QP_FLOW_STEERING_DETACH = common dso_local global i32 0, align 4
@MLX4_CMD_TIME_CLASS_A = common dso_local global i32 0, align 4
@MLX4_CMD_NATIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_QP_FLOW_STEERING_DETACH_wrapper(%struct.mlx4_dev* %0, i32 %1, %struct.mlx4_vhcr* %2, %struct.mlx4_cmd_mailbox* %3, %struct.mlx4_cmd_mailbox* %4, %struct.mlx4_cmd_info* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx4_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mlx4_vhcr*, align 8
  %11 = alloca %struct.mlx4_cmd_mailbox*, align 8
  %12 = alloca %struct.mlx4_cmd_mailbox*, align 8
  %13 = alloca %struct.mlx4_cmd_info*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.res_qp*, align 8
  %16 = alloca %struct.res_fs_rule*, align 8
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.mlx4_vhcr* %2, %struct.mlx4_vhcr** %10, align 8
  store %struct.mlx4_cmd_mailbox* %3, %struct.mlx4_cmd_mailbox** %11, align 8
  store %struct.mlx4_cmd_mailbox* %4, %struct.mlx4_cmd_mailbox** %12, align 8
  store %struct.mlx4_cmd_info* %5, %struct.mlx4_cmd_info** %13, align 8
  %17 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %18 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @MLX4_STEERING_MODE_DEVICE_MANAGED, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %6
  %24 = load i32, i32* @EOPNOTSUPP, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %7, align 4
  br label %96

26:                                               ; preds = %6
  %27 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %28 = load i32, i32* %9, align 4
  %29 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %10, align 8
  %30 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @RES_FS_RULE, align 4
  %33 = bitcast %struct.res_fs_rule** %16 to %struct.res_qp**
  %34 = call i32 @get_res(%struct.mlx4_dev* %27, i32 %28, i32 %31, i32 %32, %struct.res_qp** %33)
  store i32 %34, i32* %14, align 4
  %35 = load i32, i32* %14, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %26
  %38 = load i32, i32* %14, align 4
  store i32 %38, i32* %7, align 4
  br label %96

39:                                               ; preds = %26
  %40 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %41 = load i32, i32* %9, align 4
  %42 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %10, align 8
  %43 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @RES_FS_RULE, align 4
  %46 = call i32 @put_res(%struct.mlx4_dev* %40, i32 %41, i32 %44, i32 %45)
  %47 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %48 = load i32, i32* %9, align 4
  %49 = load %struct.res_fs_rule*, %struct.res_fs_rule** %16, align 8
  %50 = getelementptr inbounds %struct.res_fs_rule, %struct.res_fs_rule* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @RES_QP, align 4
  %53 = call i32 @get_res(%struct.mlx4_dev* %47, i32 %48, i32 %51, i32 %52, %struct.res_qp** %15)
  store i32 %53, i32* %14, align 4
  %54 = load i32, i32* %14, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %39
  %57 = load i32, i32* %14, align 4
  store i32 %57, i32* %7, align 4
  br label %96

58:                                               ; preds = %39
  %59 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %60 = load i32, i32* %9, align 4
  %61 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %10, align 8
  %62 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @RES_FS_RULE, align 4
  %65 = call i32 @rem_res_range(%struct.mlx4_dev* %59, i32 %60, i32 %63, i32 1, i32 %64, i32 0)
  store i32 %65, i32* %14, align 4
  %66 = load i32, i32* %14, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %58
  %69 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %70 = call i32 @mlx4_err(%struct.mlx4_dev* %69, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %87

71:                                               ; preds = %58
  %72 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %73 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %10, align 8
  %74 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @MLX4_QP_FLOW_STEERING_DETACH, align 4
  %77 = load i32, i32* @MLX4_CMD_TIME_CLASS_A, align 4
  %78 = load i32, i32* @MLX4_CMD_NATIVE, align 4
  %79 = call i32 @mlx4_cmd(%struct.mlx4_dev* %72, i32 %75, i32 0, i32 0, i32 %76, i32 %77, i32 %78)
  store i32 %79, i32* %14, align 4
  %80 = load i32, i32* %14, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %86, label %82

82:                                               ; preds = %71
  %83 = load %struct.res_qp*, %struct.res_qp** %15, align 8
  %84 = getelementptr inbounds %struct.res_qp, %struct.res_qp* %83, i32 0, i32 1
  %85 = call i32 @atomic_dec(i32* %84)
  br label %86

86:                                               ; preds = %82, %71
  br label %87

87:                                               ; preds = %86, %68
  %88 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %89 = load i32, i32* %9, align 4
  %90 = load %struct.res_fs_rule*, %struct.res_fs_rule** %16, align 8
  %91 = getelementptr inbounds %struct.res_fs_rule, %struct.res_fs_rule* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @RES_QP, align 4
  %94 = call i32 @put_res(%struct.mlx4_dev* %88, i32 %89, i32 %92, i32 %93)
  %95 = load i32, i32* %14, align 4
  store i32 %95, i32* %7, align 4
  br label %96

96:                                               ; preds = %87, %56, %37, %23
  %97 = load i32, i32* %7, align 4
  ret i32 %97
}

declare dso_local i32 @get_res(%struct.mlx4_dev*, i32, i32, i32, %struct.res_qp**) #1

declare dso_local i32 @put_res(%struct.mlx4_dev*, i32, i32, i32) #1

declare dso_local i32 @rem_res_range(%struct.mlx4_dev*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @mlx4_err(%struct.mlx4_dev*, i8*) #1

declare dso_local i32 @mlx4_cmd(%struct.mlx4_dev*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
