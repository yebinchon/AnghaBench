; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_main.c_choose_steering_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_main.c_choose_steering_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i32, i32 }
%struct.mlx4_dev_cap = type { i32, i64, i32 }

@mlx4_log_num_mgm_entry_size = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_FLAG2_FS_EN = common dso_local global i32 0, align 4
@num_vfs = common dso_local global i64 0, align 8
@MLX4_MIN_MGM_LOG_ENTRY_SIZE = common dso_local global i64 0, align 8
@MLX4_STEERING_MODE_DEVICE_MANAGED = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_FLAG_VEP_UC_STEER = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_FLAG_VEP_MC_STEER = common dso_local global i32 0, align 4
@MLX4_STEERING_MODE_B0 = common dso_local global i32 0, align 4
@MLX4_STEERING_MODE_A0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [102 x i8] c"Must have both UC_STEER and MC_STEER flags set to use B0 steering. Falling back to A0 steering mode.\0A\00", align 1
@MLX4_DEFAULT_MGM_LOG_ENTRY_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [90 x i8] c"Steering mode is: %s, oper_log_mgm_entry_size = %d, modparam log_num_mgm_entry_size = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx4_dev*, %struct.mlx4_dev_cap*)* @choose_steering_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @choose_steering_mode(%struct.mlx4_dev* %0, %struct.mlx4_dev_cap* %1) #0 {
  %3 = alloca %struct.mlx4_dev*, align 8
  %4 = alloca %struct.mlx4_dev_cap*, align 8
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %3, align 8
  store %struct.mlx4_dev_cap* %1, %struct.mlx4_dev_cap** %4, align 8
  %5 = load i32, i32* @mlx4_log_num_mgm_entry_size, align 4
  %6 = icmp eq i32 %5, -1
  br i1 %6, label %7, label %56

7:                                                ; preds = %2
  %8 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %4, align 8
  %9 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @MLX4_DEV_CAP_FLAG2_FS_EN, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %56

14:                                               ; preds = %7
  %15 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %16 = call i32 @mlx4_is_mfunc(%struct.mlx4_dev* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %14
  %19 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %4, align 8
  %20 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @num_vfs, align 8
  %23 = add nsw i64 %22, 1
  %24 = icmp sge i64 %21, %23
  br i1 %24, label %25, label %56

25:                                               ; preds = %18, %14
  %26 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %4, align 8
  %27 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = call i64 @choose_log_fs_mgm_entry_size(i64 %28)
  %30 = load i64, i64* @MLX4_MIN_MGM_LOG_ENTRY_SIZE, align 8
  %31 = icmp sge i64 %29, %30
  br i1 %31, label %32, label %56

32:                                               ; preds = %25
  %33 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %4, align 8
  %34 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = call i64 @choose_log_fs_mgm_entry_size(i64 %35)
  %37 = trunc i64 %36 to i32
  %38 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %39 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load i32, i32* @MLX4_STEERING_MODE_DEVICE_MANAGED, align 4
  %41 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %42 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 2
  store i32 %40, i32* %43, align 4
  %44 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %4, align 8
  %45 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %48 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  store i64 %46, i64* %49, align 8
  %50 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %4, align 8
  %51 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %54 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 3
  store i32 %52, i32* %55, align 8
  br label %117

56:                                               ; preds = %25, %18, %7, %2
  %57 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %58 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @MLX4_DEV_CAP_FLAG_VEP_UC_STEER, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %77

64:                                               ; preds = %56
  %65 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %66 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @MLX4_DEV_CAP_FLAG_VEP_MC_STEER, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %64
  %73 = load i32, i32* @MLX4_STEERING_MODE_B0, align 4
  %74 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %75 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 2
  store i32 %73, i32* %76, align 4
  br label %101

77:                                               ; preds = %64, %56
  %78 = load i32, i32* @MLX4_STEERING_MODE_A0, align 4
  %79 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %80 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 2
  store i32 %78, i32* %81, align 4
  %82 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %83 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @MLX4_DEV_CAP_FLAG_VEP_UC_STEER, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %97, label %89

89:                                               ; preds = %77
  %90 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %91 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @MLX4_DEV_CAP_FLAG_VEP_MC_STEER, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %89, %77
  %98 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %99 = call i32 @mlx4_warn(%struct.mlx4_dev* %98, i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str, i64 0, i64 0))
  br label %100

100:                                              ; preds = %97, %89
  br label %101

101:                                              ; preds = %100, %72
  %102 = load i32, i32* @mlx4_log_num_mgm_entry_size, align 4
  %103 = icmp sgt i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %101
  %105 = load i32, i32* @mlx4_log_num_mgm_entry_size, align 4
  br label %108

106:                                              ; preds = %101
  %107 = load i32, i32* @MLX4_DEFAULT_MGM_LOG_ENTRY_SIZE, align 4
  br label %108

108:                                              ; preds = %106, %104
  %109 = phi i32 [ %105, %104 ], [ %107, %106 ]
  %110 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %111 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %110, i32 0, i32 0
  store i32 %109, i32* %111, align 8
  %112 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %113 = call i64 @mlx4_get_qp_per_mgm(%struct.mlx4_dev* %112)
  %114 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %115 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 0
  store i64 %113, i64* %116, align 8
  br label %117

117:                                              ; preds = %108, %32
  %118 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %119 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %120 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @mlx4_steering_mode_str(i32 %122)
  %124 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %125 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* @mlx4_log_num_mgm_entry_size, align 4
  %128 = call i32 @mlx4_dbg(%struct.mlx4_dev* %118, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.1, i64 0, i64 0), i32 %123, i32 %126, i32 %127)
  ret void
}

declare dso_local i32 @mlx4_is_mfunc(%struct.mlx4_dev*) #1

declare dso_local i64 @choose_log_fs_mgm_entry_size(i64) #1

declare dso_local i32 @mlx4_warn(%struct.mlx4_dev*, i8*) #1

declare dso_local i64 @mlx4_get_qp_per_mgm(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_dbg(%struct.mlx4_dev*, i8*, i32, i32, i32) #1

declare dso_local i32 @mlx4_steering_mode_str(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
