; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_port.c_mlx4_SET_PORT_general.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_port.c_mlx4_SET_PORT_general.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }
%struct.mlx4_cmd_mailbox = type { i32, %struct.mlx4_set_port_general_context* }
%struct.mlx4_set_port_general_context = type { i32, i32, i32, i32, i32, i32 }

@SET_PORT_GEN_ALL_VALID = common dso_local global i32 0, align 4
@MLX4_SET_PORT_GENERAL = common dso_local global i32 0, align 4
@MLX4_CMD_SET_PORT = common dso_local global i32 0, align 4
@MLX4_CMD_TIME_CLASS_B = common dso_local global i32 0, align 4
@MLX4_CMD_WRAPPED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_SET_PORT_general(%struct.mlx4_dev* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.mlx4_dev*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.mlx4_cmd_mailbox*, align 8
  %17 = alloca %struct.mlx4_set_port_general_context*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %20 = load %struct.mlx4_dev*, %struct.mlx4_dev** %9, align 8
  %21 = call %struct.mlx4_cmd_mailbox* @mlx4_alloc_cmd_mailbox(%struct.mlx4_dev* %20)
  store %struct.mlx4_cmd_mailbox* %21, %struct.mlx4_cmd_mailbox** %16, align 8
  %22 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %16, align 8
  %23 = call i64 @IS_ERR(%struct.mlx4_cmd_mailbox* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %7
  %26 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %16, align 8
  %27 = call i32 @PTR_ERR(%struct.mlx4_cmd_mailbox* %26)
  store i32 %27, i32* %8, align 4
  br label %82

28:                                               ; preds = %7
  %29 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %16, align 8
  %30 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %29, i32 0, i32 1
  %31 = load %struct.mlx4_set_port_general_context*, %struct.mlx4_set_port_general_context** %30, align 8
  store %struct.mlx4_set_port_general_context* %31, %struct.mlx4_set_port_general_context** %17, align 8
  %32 = load %struct.mlx4_set_port_general_context*, %struct.mlx4_set_port_general_context** %17, align 8
  %33 = call i32 @memset(%struct.mlx4_set_port_general_context* %32, i32 0, i32 24)
  %34 = load i32, i32* @SET_PORT_GEN_ALL_VALID, align 4
  %35 = load %struct.mlx4_set_port_general_context*, %struct.mlx4_set_port_general_context** %17, align 8
  %36 = getelementptr inbounds %struct.mlx4_set_port_general_context, %struct.mlx4_set_port_general_context* %35, i32 0, i32 5
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* %11, align 4
  %38 = call i32 @cpu_to_be16(i32 %37)
  %39 = load %struct.mlx4_set_port_general_context*, %struct.mlx4_set_port_general_context** %17, align 8
  %40 = getelementptr inbounds %struct.mlx4_set_port_general_context, %struct.mlx4_set_port_general_context* %39, i32 0, i32 4
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* %13, align 4
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = mul nsw i32 %41, %45
  %47 = shl i32 %46, 7
  %48 = load %struct.mlx4_set_port_general_context*, %struct.mlx4_set_port_general_context** %17, align 8
  %49 = getelementptr inbounds %struct.mlx4_set_port_general_context, %struct.mlx4_set_port_general_context* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* %13, align 4
  %51 = load %struct.mlx4_set_port_general_context*, %struct.mlx4_set_port_general_context** %17, align 8
  %52 = getelementptr inbounds %struct.mlx4_set_port_general_context, %struct.mlx4_set_port_general_context* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* %14, align 4
  %54 = load i32, i32* %15, align 4
  %55 = icmp ne i32 %54, 0
  %56 = xor i1 %55, true
  %57 = zext i1 %56 to i32
  %58 = mul nsw i32 %53, %57
  %59 = shl i32 %58, 7
  %60 = load %struct.mlx4_set_port_general_context*, %struct.mlx4_set_port_general_context** %17, align 8
  %61 = getelementptr inbounds %struct.mlx4_set_port_general_context, %struct.mlx4_set_port_general_context* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 4
  %62 = load i32, i32* %15, align 4
  %63 = load %struct.mlx4_set_port_general_context*, %struct.mlx4_set_port_general_context** %17, align 8
  %64 = getelementptr inbounds %struct.mlx4_set_port_general_context, %struct.mlx4_set_port_general_context* %63, i32 0, i32 3
  store i32 %62, i32* %64, align 4
  %65 = load i32, i32* @MLX4_SET_PORT_GENERAL, align 4
  %66 = shl i32 %65, 8
  %67 = load i32, i32* %10, align 4
  %68 = or i32 %66, %67
  store i32 %68, i32* %19, align 4
  %69 = load %struct.mlx4_dev*, %struct.mlx4_dev** %9, align 8
  %70 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %16, align 8
  %71 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* %19, align 4
  %74 = load i32, i32* @MLX4_CMD_SET_PORT, align 4
  %75 = load i32, i32* @MLX4_CMD_TIME_CLASS_B, align 4
  %76 = load i32, i32* @MLX4_CMD_WRAPPED, align 4
  %77 = call i32 @mlx4_cmd(%struct.mlx4_dev* %69, i32 %72, i32 %73, i32 1, i32 %74, i32 %75, i32 %76)
  store i32 %77, i32* %18, align 4
  %78 = load %struct.mlx4_dev*, %struct.mlx4_dev** %9, align 8
  %79 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %16, align 8
  %80 = call i32 @mlx4_free_cmd_mailbox(%struct.mlx4_dev* %78, %struct.mlx4_cmd_mailbox* %79)
  %81 = load i32, i32* %18, align 4
  store i32 %81, i32* %8, align 4
  br label %82

82:                                               ; preds = %28, %25
  %83 = load i32, i32* %8, align 4
  ret i32 %83
}

declare dso_local %struct.mlx4_cmd_mailbox* @mlx4_alloc_cmd_mailbox(%struct.mlx4_dev*) #1

declare dso_local i64 @IS_ERR(%struct.mlx4_cmd_mailbox*) #1

declare dso_local i32 @PTR_ERR(%struct.mlx4_cmd_mailbox*) #1

declare dso_local i32 @memset(%struct.mlx4_set_port_general_context*, i32, i32) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @mlx4_cmd(%struct.mlx4_dev*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @mlx4_free_cmd_mailbox(%struct.mlx4_dev*, %struct.mlx4_cmd_mailbox*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
