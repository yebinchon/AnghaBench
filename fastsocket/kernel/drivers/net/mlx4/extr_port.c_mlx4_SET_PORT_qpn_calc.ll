; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_port.c_mlx4_SET_PORT_qpn_calc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_port.c_mlx4_SET_PORT_qpn_calc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64, i32 }
%struct.mlx4_cmd_mailbox = type { i32, %struct.mlx4_set_port_rqp_calc_context* }
%struct.mlx4_set_port_rqp_calc_context = type { i32, i64, i32, i64, i8*, i8*, i32, i8* }

@MLX4_DEV_CAP_FLAG_VEP_MC_STEER = common dso_local global i32 0, align 4
@MCAST_DIRECT = common dso_local global i32 0, align 4
@MCAST_DEFAULT = common dso_local global i32 0, align 4
@MLX4_STEERING_MODE_A0 = common dso_local global i64 0, align 8
@SET_PORT_PROMISC_SHIFT = common dso_local global i32 0, align 4
@SET_PORT_MC_PROMISC_SHIFT = common dso_local global i32 0, align 4
@MLX4_NO_VLAN_IDX = common dso_local global i32 0, align 4
@MLX4_VLAN_MISS_IDX = common dso_local global i32 0, align 4
@MLX4_SET_PORT_RQP_CALC = common dso_local global i32 0, align 4
@MLX4_CMD_SET_PORT = common dso_local global i32 0, align 4
@MLX4_CMD_TIME_CLASS_B = common dso_local global i32 0, align 4
@MLX4_CMD_WRAPPED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_SET_PORT_qpn_calc(%struct.mlx4_dev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx4_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mlx4_cmd_mailbox*, align 8
  %11 = alloca %struct.mlx4_set_port_rqp_calc_context*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %16 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @MLX4_DEV_CAP_FLAG_VEP_MC_STEER, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = load i32, i32* @MCAST_DIRECT, align 4
  br label %26

24:                                               ; preds = %4
  %25 = load i32, i32* @MCAST_DEFAULT, align 4
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi i32 [ %23, %22 ], [ %25, %24 ]
  store i32 %27, i32* %14, align 4
  %28 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %29 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @MLX4_STEERING_MODE_A0, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %26
  store i32 0, i32* %5, align 4
  br label %103

35:                                               ; preds = %26
  %36 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %37 = call %struct.mlx4_cmd_mailbox* @mlx4_alloc_cmd_mailbox(%struct.mlx4_dev* %36)
  store %struct.mlx4_cmd_mailbox* %37, %struct.mlx4_cmd_mailbox** %10, align 8
  %38 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %10, align 8
  %39 = call i64 @IS_ERR(%struct.mlx4_cmd_mailbox* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %10, align 8
  %43 = call i32 @PTR_ERR(%struct.mlx4_cmd_mailbox* %42)
  store i32 %43, i32* %5, align 4
  br label %103

44:                                               ; preds = %35
  %45 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %10, align 8
  %46 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %45, i32 0, i32 1
  %47 = load %struct.mlx4_set_port_rqp_calc_context*, %struct.mlx4_set_port_rqp_calc_context** %46, align 8
  store %struct.mlx4_set_port_rqp_calc_context* %47, %struct.mlx4_set_port_rqp_calc_context** %11, align 8
  %48 = load %struct.mlx4_set_port_rqp_calc_context*, %struct.mlx4_set_port_rqp_calc_context** %11, align 8
  %49 = call i32 @memset(%struct.mlx4_set_port_rqp_calc_context* %48, i32 0, i32 64)
  %50 = load i32, i32* %8, align 4
  %51 = call i8* @cpu_to_be32(i32 %50)
  %52 = load %struct.mlx4_set_port_rqp_calc_context*, %struct.mlx4_set_port_rqp_calc_context** %11, align 8
  %53 = getelementptr inbounds %struct.mlx4_set_port_rqp_calc_context, %struct.mlx4_set_port_rqp_calc_context* %52, i32 0, i32 7
  store i8* %51, i8** %53, align 8
  %54 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %55 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.mlx4_set_port_rqp_calc_context*, %struct.mlx4_set_port_rqp_calc_context** %11, align 8
  %59 = getelementptr inbounds %struct.mlx4_set_port_rqp_calc_context, %struct.mlx4_set_port_rqp_calc_context* %58, i32 0, i32 6
  store i32 %57, i32* %59, align 8
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* @SET_PORT_PROMISC_SHIFT, align 4
  %62 = shl i32 %60, %61
  %63 = load i32, i32* %8, align 4
  %64 = or i32 %62, %63
  %65 = call i8* @cpu_to_be32(i32 %64)
  %66 = load %struct.mlx4_set_port_rqp_calc_context*, %struct.mlx4_set_port_rqp_calc_context** %11, align 8
  %67 = getelementptr inbounds %struct.mlx4_set_port_rqp_calc_context, %struct.mlx4_set_port_rqp_calc_context* %66, i32 0, i32 5
  store i8* %65, i8** %67, align 8
  %68 = load i32, i32* %14, align 4
  %69 = load i32, i32* @SET_PORT_MC_PROMISC_SHIFT, align 4
  %70 = shl i32 %68, %69
  %71 = load i32, i32* %8, align 4
  %72 = or i32 %70, %71
  %73 = call i8* @cpu_to_be32(i32 %72)
  %74 = load %struct.mlx4_set_port_rqp_calc_context*, %struct.mlx4_set_port_rqp_calc_context** %11, align 8
  %75 = getelementptr inbounds %struct.mlx4_set_port_rqp_calc_context, %struct.mlx4_set_port_rqp_calc_context* %74, i32 0, i32 4
  store i8* %73, i8** %75, align 8
  %76 = load %struct.mlx4_set_port_rqp_calc_context*, %struct.mlx4_set_port_rqp_calc_context** %11, align 8
  %77 = getelementptr inbounds %struct.mlx4_set_port_rqp_calc_context, %struct.mlx4_set_port_rqp_calc_context* %76, i32 0, i32 3
  store i64 0, i64* %77, align 8
  %78 = load i32, i32* @MLX4_NO_VLAN_IDX, align 4
  %79 = load %struct.mlx4_set_port_rqp_calc_context*, %struct.mlx4_set_port_rqp_calc_context** %11, align 8
  %80 = getelementptr inbounds %struct.mlx4_set_port_rqp_calc_context, %struct.mlx4_set_port_rqp_calc_context* %79, i32 0, i32 2
  store i32 %78, i32* %80, align 8
  %81 = load %struct.mlx4_set_port_rqp_calc_context*, %struct.mlx4_set_port_rqp_calc_context** %11, align 8
  %82 = getelementptr inbounds %struct.mlx4_set_port_rqp_calc_context, %struct.mlx4_set_port_rqp_calc_context* %81, i32 0, i32 1
  store i64 0, i64* %82, align 8
  %83 = load i32, i32* @MLX4_VLAN_MISS_IDX, align 4
  %84 = load %struct.mlx4_set_port_rqp_calc_context*, %struct.mlx4_set_port_rqp_calc_context** %11, align 8
  %85 = getelementptr inbounds %struct.mlx4_set_port_rqp_calc_context, %struct.mlx4_set_port_rqp_calc_context* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 8
  %86 = load i32, i32* @MLX4_SET_PORT_RQP_CALC, align 4
  %87 = shl i32 %86, 8
  %88 = load i32, i32* %7, align 4
  %89 = or i32 %87, %88
  store i32 %89, i32* %13, align 4
  %90 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %91 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %10, align 8
  %92 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* %13, align 4
  %95 = load i32, i32* @MLX4_CMD_SET_PORT, align 4
  %96 = load i32, i32* @MLX4_CMD_TIME_CLASS_B, align 4
  %97 = load i32, i32* @MLX4_CMD_WRAPPED, align 4
  %98 = call i32 @mlx4_cmd(%struct.mlx4_dev* %90, i32 %93, i32 %94, i32 1, i32 %95, i32 %96, i32 %97)
  store i32 %98, i32* %12, align 4
  %99 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %100 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %10, align 8
  %101 = call i32 @mlx4_free_cmd_mailbox(%struct.mlx4_dev* %99, %struct.mlx4_cmd_mailbox* %100)
  %102 = load i32, i32* %12, align 4
  store i32 %102, i32* %5, align 4
  br label %103

103:                                              ; preds = %44, %41, %34
  %104 = load i32, i32* %5, align 4
  ret i32 %104
}

declare dso_local %struct.mlx4_cmd_mailbox* @mlx4_alloc_cmd_mailbox(%struct.mlx4_dev*) #1

declare dso_local i64 @IS_ERR(%struct.mlx4_cmd_mailbox*) #1

declare dso_local i32 @PTR_ERR(%struct.mlx4_cmd_mailbox*) #1

declare dso_local i32 @memset(%struct.mlx4_set_port_rqp_calc_context*, i32, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @mlx4_cmd(%struct.mlx4_dev*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @mlx4_free_cmd_mailbox(%struct.mlx4_dev*, %struct.mlx4_cmd_mailbox*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
