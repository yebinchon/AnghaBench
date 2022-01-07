; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_mr.c_mlx4_mtt_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_mr.c_mlx4_mtt_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }
%struct.mlx4_mtt = type { i32, i32, i32 }

@MLX4_ICM_PAGE_SHIFT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_mtt_init(%struct.mlx4_dev* %0, i32 %1, i32 %2, %struct.mlx4_mtt* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx4_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mlx4_mtt*, align 8
  %10 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.mlx4_mtt* %3, %struct.mlx4_mtt** %9, align 8
  %11 = load i32, i32* %7, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %4
  %14 = load %struct.mlx4_mtt*, %struct.mlx4_mtt** %9, align 8
  %15 = getelementptr inbounds %struct.mlx4_mtt, %struct.mlx4_mtt* %14, i32 0, i32 0
  store i32 -1, i32* %15, align 4
  %16 = load i32, i32* @MLX4_ICM_PAGE_SHIFT, align 4
  %17 = load %struct.mlx4_mtt*, %struct.mlx4_mtt** %9, align 8
  %18 = getelementptr inbounds %struct.mlx4_mtt, %struct.mlx4_mtt* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  store i32 0, i32* %5, align 4
  br label %54

19:                                               ; preds = %4
  %20 = load i32, i32* %8, align 4
  %21 = load %struct.mlx4_mtt*, %struct.mlx4_mtt** %9, align 8
  %22 = getelementptr inbounds %struct.mlx4_mtt, %struct.mlx4_mtt* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  br label %23

23:                                               ; preds = %19
  %24 = load %struct.mlx4_mtt*, %struct.mlx4_mtt** %9, align 8
  %25 = getelementptr inbounds %struct.mlx4_mtt, %struct.mlx4_mtt* %24, i32 0, i32 0
  store i32 0, i32* %25, align 4
  store i32 1, i32* %10, align 4
  br label %26

26:                                               ; preds = %35, %23
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %38

30:                                               ; preds = %26
  %31 = load %struct.mlx4_mtt*, %struct.mlx4_mtt** %9, align 8
  %32 = getelementptr inbounds %struct.mlx4_mtt, %struct.mlx4_mtt* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %32, align 4
  br label %35

35:                                               ; preds = %30
  %36 = load i32, i32* %10, align 4
  %37 = shl i32 %36, 1
  store i32 %37, i32* %10, align 4
  br label %26

38:                                               ; preds = %26
  %39 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %40 = load %struct.mlx4_mtt*, %struct.mlx4_mtt** %9, align 8
  %41 = getelementptr inbounds %struct.mlx4_mtt, %struct.mlx4_mtt* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @mlx4_alloc_mtt_range(%struct.mlx4_dev* %39, i32 %42)
  %44 = load %struct.mlx4_mtt*, %struct.mlx4_mtt** %9, align 8
  %45 = getelementptr inbounds %struct.mlx4_mtt, %struct.mlx4_mtt* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 4
  %46 = load %struct.mlx4_mtt*, %struct.mlx4_mtt** %9, align 8
  %47 = getelementptr inbounds %struct.mlx4_mtt, %struct.mlx4_mtt* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = icmp eq i32 %48, -1
  br i1 %49, label %50, label %53

50:                                               ; preds = %38
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %5, align 4
  br label %54

53:                                               ; preds = %38
  store i32 0, i32* %5, align 4
  br label %54

54:                                               ; preds = %53, %50, %13
  %55 = load i32, i32* %5, align 4
  ret i32 %55
}

declare dso_local i32 @mlx4_alloc_mtt_range(%struct.mlx4_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
