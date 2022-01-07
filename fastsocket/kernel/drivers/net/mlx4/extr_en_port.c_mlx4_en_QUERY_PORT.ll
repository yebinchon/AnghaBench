; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_en_port.c_mlx4_en_QUERY_PORT.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_en_port.c_mlx4_en_QUERY_PORT.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_en_dev = type { i32, i32* }
%struct.mlx4_en_query_port_context = type { i32, i32, i32 }
%struct.mlx4_en_priv = type { %struct.mlx4_en_port_state }
%struct.mlx4_en_port_state = type { i32, i32, i32 }
%struct.mlx4_cmd_mailbox = type { %struct.mlx4_en_query_port_context*, i32 }

@MLX4_CMD_QUERY_PORT = common dso_local global i32 0, align 4
@MLX4_CMD_TIME_CLASS_B = common dso_local global i32 0, align 4
@MLX4_CMD_WRAPPED = common dso_local global i32 0, align 4
@MLX4_EN_LINK_UP_MASK = common dso_local global i32 0, align 4
@MLX4_EN_SPEED_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_en_QUERY_PORT(%struct.mlx4_en_dev* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx4_en_dev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.mlx4_en_query_port_context*, align 8
  %7 = alloca %struct.mlx4_en_priv*, align 8
  %8 = alloca %struct.mlx4_en_port_state*, align 8
  %9 = alloca %struct.mlx4_cmd_mailbox*, align 8
  %10 = alloca i32, align 4
  store %struct.mlx4_en_dev* %0, %struct.mlx4_en_dev** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %4, align 8
  %12 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = load i64, i64* %5, align 8
  %15 = getelementptr inbounds i32, i32* %13, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.mlx4_en_priv* @netdev_priv(i32 %16)
  store %struct.mlx4_en_priv* %17, %struct.mlx4_en_priv** %7, align 8
  %18 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %7, align 8
  %19 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %18, i32 0, i32 0
  store %struct.mlx4_en_port_state* %19, %struct.mlx4_en_port_state** %8, align 8
  %20 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %4, align 8
  %21 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call %struct.mlx4_cmd_mailbox* @mlx4_alloc_cmd_mailbox(i32 %22)
  store %struct.mlx4_cmd_mailbox* %23, %struct.mlx4_cmd_mailbox** %9, align 8
  %24 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %9, align 8
  %25 = call i64 @IS_ERR(%struct.mlx4_cmd_mailbox* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %2
  %28 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %9, align 8
  %29 = call i32 @PTR_ERR(%struct.mlx4_cmd_mailbox* %28)
  store i32 %29, i32* %3, align 4
  br label %94

30:                                               ; preds = %2
  %31 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %9, align 8
  %32 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %31, i32 0, i32 0
  %33 = load %struct.mlx4_en_query_port_context*, %struct.mlx4_en_query_port_context** %32, align 8
  %34 = call i32 @memset(%struct.mlx4_en_query_port_context* %33, i32 0, i32 12)
  %35 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %4, align 8
  %36 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %9, align 8
  %39 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load i64, i64* %5, align 8
  %42 = load i32, i32* @MLX4_CMD_QUERY_PORT, align 4
  %43 = load i32, i32* @MLX4_CMD_TIME_CLASS_B, align 4
  %44 = load i32, i32* @MLX4_CMD_WRAPPED, align 4
  %45 = call i32 @mlx4_cmd_box(i32 %37, i32 0, i32 %40, i64 %41, i32 0, i32 %42, i32 %43, i32 %44)
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %30
  br label %87

49:                                               ; preds = %30
  %50 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %9, align 8
  %51 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %50, i32 0, i32 0
  %52 = load %struct.mlx4_en_query_port_context*, %struct.mlx4_en_query_port_context** %51, align 8
  store %struct.mlx4_en_query_port_context* %52, %struct.mlx4_en_query_port_context** %6, align 8
  %53 = load %struct.mlx4_en_query_port_context*, %struct.mlx4_en_query_port_context** %6, align 8
  %54 = getelementptr inbounds %struct.mlx4_en_query_port_context, %struct.mlx4_en_query_port_context* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @MLX4_EN_LINK_UP_MASK, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  %59 = xor i1 %58, true
  %60 = xor i1 %59, true
  %61 = zext i1 %60 to i32
  %62 = load %struct.mlx4_en_port_state*, %struct.mlx4_en_port_state** %8, align 8
  %63 = getelementptr inbounds %struct.mlx4_en_port_state, %struct.mlx4_en_port_state* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 4
  %64 = load %struct.mlx4_en_query_port_context*, %struct.mlx4_en_query_port_context** %6, align 8
  %65 = getelementptr inbounds %struct.mlx4_en_query_port_context, %struct.mlx4_en_query_port_context* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @MLX4_EN_SPEED_MASK, align 4
  %68 = and i32 %66, %67
  switch i32 %68, label %78 [
    i32 129, label %69
    i32 131, label %72
    i32 130, label %72
    i32 128, label %75
  ]

69:                                               ; preds = %49
  %70 = load %struct.mlx4_en_port_state*, %struct.mlx4_en_port_state** %8, align 8
  %71 = getelementptr inbounds %struct.mlx4_en_port_state, %struct.mlx4_en_port_state* %70, i32 0, i32 1
  store i32 1000, i32* %71, align 4
  br label %81

72:                                               ; preds = %49, %49
  %73 = load %struct.mlx4_en_port_state*, %struct.mlx4_en_port_state** %8, align 8
  %74 = getelementptr inbounds %struct.mlx4_en_port_state, %struct.mlx4_en_port_state* %73, i32 0, i32 1
  store i32 10000, i32* %74, align 4
  br label %81

75:                                               ; preds = %49
  %76 = load %struct.mlx4_en_port_state*, %struct.mlx4_en_port_state** %8, align 8
  %77 = getelementptr inbounds %struct.mlx4_en_port_state, %struct.mlx4_en_port_state* %76, i32 0, i32 1
  store i32 40000, i32* %77, align 4
  br label %81

78:                                               ; preds = %49
  %79 = load %struct.mlx4_en_port_state*, %struct.mlx4_en_port_state** %8, align 8
  %80 = getelementptr inbounds %struct.mlx4_en_port_state, %struct.mlx4_en_port_state* %79, i32 0, i32 1
  store i32 -1, i32* %80, align 4
  br label %81

81:                                               ; preds = %78, %75, %72, %69
  %82 = load %struct.mlx4_en_query_port_context*, %struct.mlx4_en_query_port_context** %6, align 8
  %83 = getelementptr inbounds %struct.mlx4_en_query_port_context, %struct.mlx4_en_query_port_context* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.mlx4_en_port_state*, %struct.mlx4_en_port_state** %8, align 8
  %86 = getelementptr inbounds %struct.mlx4_en_port_state, %struct.mlx4_en_port_state* %85, i32 0, i32 2
  store i32 %84, i32* %86, align 4
  br label %87

87:                                               ; preds = %81, %48
  %88 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %4, align 8
  %89 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %9, align 8
  %92 = call i32 @mlx4_free_cmd_mailbox(i32 %90, %struct.mlx4_cmd_mailbox* %91)
  %93 = load i32, i32* %10, align 4
  store i32 %93, i32* %3, align 4
  br label %94

94:                                               ; preds = %87, %27
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local %struct.mlx4_en_priv* @netdev_priv(i32) #1

declare dso_local %struct.mlx4_cmd_mailbox* @mlx4_alloc_cmd_mailbox(i32) #1

declare dso_local i64 @IS_ERR(%struct.mlx4_cmd_mailbox*) #1

declare dso_local i32 @PTR_ERR(%struct.mlx4_cmd_mailbox*) #1

declare dso_local i32 @memset(%struct.mlx4_en_query_port_context*, i32, i32) #1

declare dso_local i32 @mlx4_cmd_box(i32, i32, i32, i64, i32, i32, i32, i32) #1

declare dso_local i32 @mlx4_free_cmd_mailbox(i32, %struct.mlx4_cmd_mailbox*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
