; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_resource_tracker.c_mtt_alloc_res.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_resource_tracker.c_mtt_alloc_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@RES_OP_RESERVE_AND_MAP = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@RES_MTT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_dev*, i32, i32, i32, i32, i32*)* @mtt_alloc_res to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtt_alloc_res(%struct.mlx4_dev* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx4_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %14, align 4
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* @RES_OP_RESERVE_AND_MAP, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %6
  %23 = load i32, i32* %14, align 4
  store i32 %23, i32* %7, align 4
  br label %54

24:                                               ; preds = %6
  %25 = call i32 @get_param_l(i32* %12)
  store i32 %25, i32* %16, align 4
  %26 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %27 = load i32, i32* %16, align 4
  %28 = call i32 @__mlx4_alloc_mtt_range(%struct.mlx4_dev* %26, i32 %27)
  store i32 %28, i32* %15, align 4
  %29 = load i32, i32* %15, align 4
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %31, label %34

31:                                               ; preds = %24
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %7, align 4
  br label %54

34:                                               ; preds = %24
  %35 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* %15, align 4
  %38 = load i32, i32* @RES_MTT, align 4
  %39 = load i32, i32* %16, align 4
  %40 = call i32 @add_res_range(%struct.mlx4_dev* %35, i32 %36, i32 %37, i32 1, i32 %38, i32 %39)
  store i32 %40, i32* %14, align 4
  %41 = load i32, i32* %14, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %34
  %44 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %45 = load i32, i32* %15, align 4
  %46 = load i32, i32* %16, align 4
  %47 = call i32 @__mlx4_free_mtt_range(%struct.mlx4_dev* %44, i32 %45, i32 %46)
  br label %52

48:                                               ; preds = %34
  %49 = load i32*, i32** %13, align 8
  %50 = load i32, i32* %15, align 4
  %51 = call i32 @set_param_l(i32* %49, i32 %50)
  br label %52

52:                                               ; preds = %48, %43
  %53 = load i32, i32* %14, align 4
  store i32 %53, i32* %7, align 4
  br label %54

54:                                               ; preds = %52, %31, %22
  %55 = load i32, i32* %7, align 4
  ret i32 %55
}

declare dso_local i32 @get_param_l(i32*) #1

declare dso_local i32 @__mlx4_alloc_mtt_range(%struct.mlx4_dev*, i32) #1

declare dso_local i32 @add_res_range(%struct.mlx4_dev*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @__mlx4_free_mtt_range(%struct.mlx4_dev*, i32, i32) #1

declare dso_local i32 @set_param_l(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
