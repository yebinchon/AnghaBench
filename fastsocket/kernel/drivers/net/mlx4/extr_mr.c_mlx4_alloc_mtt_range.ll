; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_mr.c_mlx4_alloc_mtt_range.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_mr.c_mlx4_alloc_mtt_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }

@RES_MTT = common dso_local global i32 0, align 4
@RES_OP_RESERVE_AND_MAP = common dso_local global i32 0, align 4
@MLX4_CMD_ALLOC_RES = common dso_local global i32 0, align 4
@MLX4_CMD_TIME_CLASS_A = common dso_local global i32 0, align 4
@MLX4_CMD_WRAPPED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_dev*, i32)* @mlx4_alloc_mtt_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_alloc_mtt_range(%struct.mlx4_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx4_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %9 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %10 = call i64 @mlx4_is_mfunc(%struct.mlx4_dev* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %28

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @set_param_l(i32* %6, i32 %13)
  %15 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @RES_MTT, align 4
  %18 = load i32, i32* @RES_OP_RESERVE_AND_MAP, align 4
  %19 = load i32, i32* @MLX4_CMD_ALLOC_RES, align 4
  %20 = load i32, i32* @MLX4_CMD_TIME_CLASS_A, align 4
  %21 = load i32, i32* @MLX4_CMD_WRAPPED, align 4
  %22 = call i32 @mlx4_cmd_imm(%struct.mlx4_dev* %15, i32 %16, i32* %7, i32 %17, i32 %18, i32 %19, i32 %20, i32 %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %12
  store i32 -1, i32* %3, align 4
  br label %32

26:                                               ; preds = %12
  %27 = call i32 @get_param_l(i32* %7)
  store i32 %27, i32* %3, align 4
  br label %32

28:                                               ; preds = %2
  %29 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @__mlx4_alloc_mtt_range(%struct.mlx4_dev* %29, i32 %30)
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %28, %26, %25
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i64 @mlx4_is_mfunc(%struct.mlx4_dev*) #1

declare dso_local i32 @set_param_l(i32*, i32) #1

declare dso_local i32 @mlx4_cmd_imm(%struct.mlx4_dev*, i32, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @get_param_l(i32*) #1

declare dso_local i32 @__mlx4_alloc_mtt_range(%struct.mlx4_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
