; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_port.c_mlx4_register_vlan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_port.c_mlx4_register_vlan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }

@RES_VLAN = common dso_local global i32 0, align 4
@RES_OP_RESERVE_AND_MAP = common dso_local global i32 0, align 4
@MLX4_CMD_ALLOC_RES = common dso_local global i32 0, align 4
@MLX4_CMD_TIME_CLASS_A = common dso_local global i32 0, align 4
@MLX4_CMD_WRAPPED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_register_vlan(%struct.mlx4_dev* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx4_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %10, align 4
  %12 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %13 = call i64 @mlx4_is_mfunc(%struct.mlx4_dev* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %33

15:                                               ; preds = %4
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @set_param_l(i32* %10, i32 %16)
  %18 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @RES_VLAN, align 4
  %21 = load i32, i32* @RES_OP_RESERVE_AND_MAP, align 4
  %22 = load i32, i32* @MLX4_CMD_ALLOC_RES, align 4
  %23 = load i32, i32* @MLX4_CMD_TIME_CLASS_A, align 4
  %24 = load i32, i32* @MLX4_CMD_WRAPPED, align 4
  %25 = call i32 @mlx4_cmd_imm(%struct.mlx4_dev* %18, i32 %19, i32* %10, i32 %20, i32 %21, i32 %22, i32 %23, i32 %24)
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %15
  %29 = call i32 @get_param_l(i32* %10)
  %30 = load i32*, i32** %9, align 8
  store i32 %29, i32* %30, align 4
  br label %31

31:                                               ; preds = %28, %15
  %32 = load i32, i32* %11, align 4
  store i32 %32, i32* %5, align 4
  br label %39

33:                                               ; preds = %4
  %34 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %8, align 4
  %37 = load i32*, i32** %9, align 8
  %38 = call i32 @__mlx4_register_vlan(%struct.mlx4_dev* %34, i32 %35, i32 %36, i32* %37)
  store i32 %38, i32* %5, align 4
  br label %39

39:                                               ; preds = %33, %31
  %40 = load i32, i32* %5, align 4
  ret i32 %40
}

declare dso_local i64 @mlx4_is_mfunc(%struct.mlx4_dev*) #1

declare dso_local i32 @set_param_l(i32*, i32) #1

declare dso_local i32 @mlx4_cmd_imm(%struct.mlx4_dev*, i32, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @get_param_l(i32*) #1

declare dso_local i32 @__mlx4_register_vlan(%struct.mlx4_dev*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
