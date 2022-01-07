; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_port.c_mlx4_SET_PORT_SCHEDULER.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_port.c_mlx4_SET_PORT_SCHEDULER.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }
%struct.mlx4_cmd_mailbox = type { i32, %struct.mlx4_set_port_scheduler_context* }
%struct.mlx4_set_port_scheduler_context = type { %struct.mlx4_port_scheduler_tc_cfg_be* }
%struct.mlx4_port_scheduler_tc_cfg_be = type { i8*, i8*, i8*, i8* }

@MLX4_NUM_TC = common dso_local global i32 0, align 4
@MLX4_RATELIMIT_DEFAULT = common dso_local global i32 0, align 4
@MLX4_RATELIMIT_UNITS = common dso_local global i32 0, align 4
@MLX4_SET_PORT_SCHEDULER = common dso_local global i32 0, align 4
@MLX4_CMD_SET_PORT = common dso_local global i32 0, align 4
@MLX4_CMD_TIME_CLASS_B = common dso_local global i32 0, align 4
@MLX4_CMD_NATIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_SET_PORT_SCHEDULER(%struct.mlx4_dev* %0, i32 %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx4_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.mlx4_cmd_mailbox*, align 8
  %13 = alloca %struct.mlx4_set_port_scheduler_context*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.mlx4_port_scheduler_tc_cfg_be*, align 8
  %18 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %19 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %20 = call %struct.mlx4_cmd_mailbox* @mlx4_alloc_cmd_mailbox(%struct.mlx4_dev* %19)
  store %struct.mlx4_cmd_mailbox* %20, %struct.mlx4_cmd_mailbox** %12, align 8
  %21 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %12, align 8
  %22 = call i64 @IS_ERR(%struct.mlx4_cmd_mailbox* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %5
  %25 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %12, align 8
  %26 = call i32 @PTR_ERR(%struct.mlx4_cmd_mailbox* %25)
  store i32 %26, i32* %6, align 4
  br label %108

27:                                               ; preds = %5
  %28 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %12, align 8
  %29 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %28, i32 0, i32 1
  %30 = load %struct.mlx4_set_port_scheduler_context*, %struct.mlx4_set_port_scheduler_context** %29, align 8
  store %struct.mlx4_set_port_scheduler_context* %30, %struct.mlx4_set_port_scheduler_context** %13, align 8
  %31 = load %struct.mlx4_set_port_scheduler_context*, %struct.mlx4_set_port_scheduler_context** %13, align 8
  %32 = call i32 @memset(%struct.mlx4_set_port_scheduler_context* %31, i32 0, i32 8)
  store i32 0, i32* %16, align 4
  br label %33

33:                                               ; preds = %87, %27
  %34 = load i32, i32* %16, align 4
  %35 = load i32, i32* @MLX4_NUM_TC, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %90

37:                                               ; preds = %33
  %38 = load %struct.mlx4_set_port_scheduler_context*, %struct.mlx4_set_port_scheduler_context** %13, align 8
  %39 = getelementptr inbounds %struct.mlx4_set_port_scheduler_context, %struct.mlx4_set_port_scheduler_context* %38, i32 0, i32 0
  %40 = load %struct.mlx4_port_scheduler_tc_cfg_be*, %struct.mlx4_port_scheduler_tc_cfg_be** %39, align 8
  %41 = load i32, i32* %16, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.mlx4_port_scheduler_tc_cfg_be, %struct.mlx4_port_scheduler_tc_cfg_be* %40, i64 %42
  store %struct.mlx4_port_scheduler_tc_cfg_be* %43, %struct.mlx4_port_scheduler_tc_cfg_be** %17, align 8
  %44 = load i32*, i32** %11, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %59

46:                                               ; preds = %37
  %47 = load i32*, i32** %11, align 8
  %48 = load i32, i32* %16, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %46
  %54 = load i32*, i32** %11, align 8
  %55 = load i32, i32* %16, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  br label %61

59:                                               ; preds = %46, %37
  %60 = load i32, i32* @MLX4_RATELIMIT_DEFAULT, align 4
  br label %61

61:                                               ; preds = %59, %53
  %62 = phi i32 [ %58, %53 ], [ %60, %59 ]
  store i32 %62, i32* %18, align 4
  %63 = load i32*, i32** %10, align 8
  %64 = load i32, i32* %16, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = call i8* @htons(i32 %67)
  %69 = load %struct.mlx4_port_scheduler_tc_cfg_be*, %struct.mlx4_port_scheduler_tc_cfg_be** %17, align 8
  %70 = getelementptr inbounds %struct.mlx4_port_scheduler_tc_cfg_be, %struct.mlx4_port_scheduler_tc_cfg_be* %69, i32 0, i32 3
  store i8* %68, i8** %70, align 8
  %71 = load i32*, i32** %9, align 8
  %72 = load i32, i32* %16, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = call i8* @htons(i32 %75)
  %77 = load %struct.mlx4_port_scheduler_tc_cfg_be*, %struct.mlx4_port_scheduler_tc_cfg_be** %17, align 8
  %78 = getelementptr inbounds %struct.mlx4_port_scheduler_tc_cfg_be, %struct.mlx4_port_scheduler_tc_cfg_be* %77, i32 0, i32 2
  store i8* %76, i8** %78, align 8
  %79 = load i32, i32* @MLX4_RATELIMIT_UNITS, align 4
  %80 = call i8* @htons(i32 %79)
  %81 = load %struct.mlx4_port_scheduler_tc_cfg_be*, %struct.mlx4_port_scheduler_tc_cfg_be** %17, align 8
  %82 = getelementptr inbounds %struct.mlx4_port_scheduler_tc_cfg_be, %struct.mlx4_port_scheduler_tc_cfg_be* %81, i32 0, i32 1
  store i8* %80, i8** %82, align 8
  %83 = load i32, i32* %18, align 4
  %84 = call i8* @htons(i32 %83)
  %85 = load %struct.mlx4_port_scheduler_tc_cfg_be*, %struct.mlx4_port_scheduler_tc_cfg_be** %17, align 8
  %86 = getelementptr inbounds %struct.mlx4_port_scheduler_tc_cfg_be, %struct.mlx4_port_scheduler_tc_cfg_be* %85, i32 0, i32 0
  store i8* %84, i8** %86, align 8
  br label %87

87:                                               ; preds = %61
  %88 = load i32, i32* %16, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %16, align 4
  br label %33

90:                                               ; preds = %33
  %91 = load i32, i32* @MLX4_SET_PORT_SCHEDULER, align 4
  %92 = shl i32 %91, 8
  %93 = load i32, i32* %8, align 4
  %94 = or i32 %92, %93
  store i32 %94, i32* %15, align 4
  %95 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %96 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %12, align 8
  %97 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* %15, align 4
  %100 = load i32, i32* @MLX4_CMD_SET_PORT, align 4
  %101 = load i32, i32* @MLX4_CMD_TIME_CLASS_B, align 4
  %102 = load i32, i32* @MLX4_CMD_NATIVE, align 4
  %103 = call i32 @mlx4_cmd(%struct.mlx4_dev* %95, i32 %98, i32 %99, i32 1, i32 %100, i32 %101, i32 %102)
  store i32 %103, i32* %14, align 4
  %104 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %105 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %12, align 8
  %106 = call i32 @mlx4_free_cmd_mailbox(%struct.mlx4_dev* %104, %struct.mlx4_cmd_mailbox* %105)
  %107 = load i32, i32* %14, align 4
  store i32 %107, i32* %6, align 4
  br label %108

108:                                              ; preds = %90, %24
  %109 = load i32, i32* %6, align 4
  ret i32 %109
}

declare dso_local %struct.mlx4_cmd_mailbox* @mlx4_alloc_cmd_mailbox(%struct.mlx4_dev*) #1

declare dso_local i64 @IS_ERR(%struct.mlx4_cmd_mailbox*) #1

declare dso_local i32 @PTR_ERR(%struct.mlx4_cmd_mailbox*) #1

declare dso_local i32 @memset(%struct.mlx4_set_port_scheduler_context*, i32, i32) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @mlx4_cmd(%struct.mlx4_dev*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @mlx4_free_cmd_mailbox(%struct.mlx4_dev*, %struct.mlx4_cmd_mailbox*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
