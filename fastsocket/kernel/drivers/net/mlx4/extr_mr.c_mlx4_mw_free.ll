; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_mr.c_mlx4_mw_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_mr.c_mlx4_mw_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.mlx4_mw = type { i64, i32 }

@MLX4_MPT_EN_HW = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"xxx HW2SW_MPT failed (%d)\0A\00", align 1
@MLX4_MPT_EN_SW = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx4_mw_free(%struct.mlx4_dev* %0, %struct.mlx4_mw* %1) #0 {
  %3 = alloca %struct.mlx4_dev*, align 8
  %4 = alloca %struct.mlx4_mw*, align 8
  %5 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %3, align 8
  store %struct.mlx4_mw* %1, %struct.mlx4_mw** %4, align 8
  %6 = load %struct.mlx4_mw*, %struct.mlx4_mw** %4, align 8
  %7 = getelementptr inbounds %struct.mlx4_mw, %struct.mlx4_mw* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @MLX4_MPT_EN_HW, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %34

11:                                               ; preds = %2
  %12 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %13 = load %struct.mlx4_mw*, %struct.mlx4_mw** %4, align 8
  %14 = getelementptr inbounds %struct.mlx4_mw, %struct.mlx4_mw* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @key_to_hw_index(i32 %15)
  %17 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %18 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = sub nsw i32 %20, 1
  %22 = and i32 %16, %21
  %23 = call i32 @mlx4_HW2SW_MPT(%struct.mlx4_dev* %12, i32* null, i32 %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %11
  %27 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @mlx4_warn(%struct.mlx4_dev* %27, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %28)
  br label %30

30:                                               ; preds = %26, %11
  %31 = load i64, i64* @MLX4_MPT_EN_SW, align 8
  %32 = load %struct.mlx4_mw*, %struct.mlx4_mw** %4, align 8
  %33 = getelementptr inbounds %struct.mlx4_mw, %struct.mlx4_mw* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  br label %34

34:                                               ; preds = %30, %2
  %35 = load %struct.mlx4_mw*, %struct.mlx4_mw** %4, align 8
  %36 = getelementptr inbounds %struct.mlx4_mw, %struct.mlx4_mw* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %34
  %40 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %41 = load %struct.mlx4_mw*, %struct.mlx4_mw** %4, align 8
  %42 = getelementptr inbounds %struct.mlx4_mw, %struct.mlx4_mw* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @key_to_hw_index(i32 %43)
  %45 = call i32 @mlx4_mpt_free_icm(%struct.mlx4_dev* %40, i32 %44)
  br label %46

46:                                               ; preds = %39, %34
  %47 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %48 = load %struct.mlx4_mw*, %struct.mlx4_mw** %4, align 8
  %49 = getelementptr inbounds %struct.mlx4_mw, %struct.mlx4_mw* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @key_to_hw_index(i32 %50)
  %52 = call i32 @mlx4_mpt_release(%struct.mlx4_dev* %47, i32 %51)
  ret void
}

declare dso_local i32 @mlx4_HW2SW_MPT(%struct.mlx4_dev*, i32*, i32) #1

declare dso_local i32 @key_to_hw_index(i32) #1

declare dso_local i32 @mlx4_warn(%struct.mlx4_dev*, i8*, i32) #1

declare dso_local i32 @mlx4_mpt_free_icm(%struct.mlx4_dev*, i32) #1

declare dso_local i32 @mlx4_mpt_release(%struct.mlx4_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
