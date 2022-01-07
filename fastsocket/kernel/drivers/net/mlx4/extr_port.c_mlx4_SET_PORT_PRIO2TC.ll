; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_port.c_mlx4_SET_PORT_PRIO2TC.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_port.c_mlx4_SET_PORT_PRIO2TC.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }
%struct.mlx4_cmd_mailbox = type { i32, %struct.mlx4_set_port_prio2tc_context* }
%struct.mlx4_set_port_prio2tc_context = type { i32* }

@MLX4_NUM_UP = common dso_local global i32 0, align 4
@MLX4_SET_PORT_PRIO2TC = common dso_local global i32 0, align 4
@MLX4_CMD_SET_PORT = common dso_local global i32 0, align 4
@MLX4_CMD_TIME_CLASS_B = common dso_local global i32 0, align 4
@MLX4_CMD_NATIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_SET_PORT_PRIO2TC(%struct.mlx4_dev* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx4_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.mlx4_cmd_mailbox*, align 8
  %9 = alloca %struct.mlx4_set_port_prio2tc_context*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %13 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %14 = call %struct.mlx4_cmd_mailbox* @mlx4_alloc_cmd_mailbox(%struct.mlx4_dev* %13)
  store %struct.mlx4_cmd_mailbox* %14, %struct.mlx4_cmd_mailbox** %8, align 8
  %15 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %8, align 8
  %16 = call i64 @IS_ERR(%struct.mlx4_cmd_mailbox* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %8, align 8
  %20 = call i32 @PTR_ERR(%struct.mlx4_cmd_mailbox* %19)
  store i32 %20, i32* %4, align 4
  br label %73

21:                                               ; preds = %3
  %22 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %8, align 8
  %23 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %22, i32 0, i32 1
  %24 = load %struct.mlx4_set_port_prio2tc_context*, %struct.mlx4_set_port_prio2tc_context** %23, align 8
  store %struct.mlx4_set_port_prio2tc_context* %24, %struct.mlx4_set_port_prio2tc_context** %9, align 8
  %25 = load %struct.mlx4_set_port_prio2tc_context*, %struct.mlx4_set_port_prio2tc_context** %9, align 8
  %26 = call i32 @memset(%struct.mlx4_set_port_prio2tc_context* %25, i32 0, i32 8)
  store i32 0, i32* %12, align 4
  br label %27

27:                                               ; preds = %52, %21
  %28 = load i32, i32* %12, align 4
  %29 = load i32, i32* @MLX4_NUM_UP, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %55

31:                                               ; preds = %27
  %32 = load i32*, i32** %7, align 8
  %33 = load i32, i32* %12, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = shl i32 %36, 4
  %38 = load i32*, i32** %7, align 8
  %39 = load i32, i32* %12, align 4
  %40 = add nsw i32 %39, 1
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %38, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %37, %43
  %45 = load %struct.mlx4_set_port_prio2tc_context*, %struct.mlx4_set_port_prio2tc_context** %9, align 8
  %46 = getelementptr inbounds %struct.mlx4_set_port_prio2tc_context, %struct.mlx4_set_port_prio2tc_context* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %12, align 4
  %49 = ashr i32 %48, 1
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %47, i64 %50
  store i32 %44, i32* %51, align 4
  br label %52

52:                                               ; preds = %31
  %53 = load i32, i32* %12, align 4
  %54 = add nsw i32 %53, 2
  store i32 %54, i32* %12, align 4
  br label %27

55:                                               ; preds = %27
  %56 = load i32, i32* @MLX4_SET_PORT_PRIO2TC, align 4
  %57 = shl i32 %56, 8
  %58 = load i32, i32* %6, align 4
  %59 = or i32 %57, %58
  store i32 %59, i32* %11, align 4
  %60 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %61 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %8, align 8
  %62 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* @MLX4_CMD_SET_PORT, align 4
  %66 = load i32, i32* @MLX4_CMD_TIME_CLASS_B, align 4
  %67 = load i32, i32* @MLX4_CMD_NATIVE, align 4
  %68 = call i32 @mlx4_cmd(%struct.mlx4_dev* %60, i32 %63, i32 %64, i32 1, i32 %65, i32 %66, i32 %67)
  store i32 %68, i32* %10, align 4
  %69 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %70 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %8, align 8
  %71 = call i32 @mlx4_free_cmd_mailbox(%struct.mlx4_dev* %69, %struct.mlx4_cmd_mailbox* %70)
  %72 = load i32, i32* %10, align 4
  store i32 %72, i32* %4, align 4
  br label %73

73:                                               ; preds = %55, %18
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local %struct.mlx4_cmd_mailbox* @mlx4_alloc_cmd_mailbox(%struct.mlx4_dev*) #1

declare dso_local i64 @IS_ERR(%struct.mlx4_cmd_mailbox*) #1

declare dso_local i32 @PTR_ERR(%struct.mlx4_cmd_mailbox*) #1

declare dso_local i32 @memset(%struct.mlx4_set_port_prio2tc_context*, i32, i32) #1

declare dso_local i32 @mlx4_cmd(%struct.mlx4_dev*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @mlx4_free_cmd_mailbox(%struct.mlx4_dev*, %struct.mlx4_cmd_mailbox*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
