; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_mr.c_mlx4_mr_free_reserved.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_mr.c_mlx4_mr_free_reserved.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.mlx4_mr = type { i64, i32, i32 }

@MLX4_MPT_EN_HW = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"HW2SW_MPT failed (%d),\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"MR has MWs bound to it.\0A\00", align 1
@MLX4_MPT_EN_SW = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_dev*, %struct.mlx4_mr*)* @mlx4_mr_free_reserved to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_mr_free_reserved(%struct.mlx4_dev* %0, %struct.mlx4_mr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx4_dev*, align 8
  %5 = alloca %struct.mlx4_mr*, align 8
  %6 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %4, align 8
  store %struct.mlx4_mr* %1, %struct.mlx4_mr** %5, align 8
  %7 = load %struct.mlx4_mr*, %struct.mlx4_mr** %5, align 8
  %8 = getelementptr inbounds %struct.mlx4_mr, %struct.mlx4_mr* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @MLX4_MPT_EN_HW, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %38

12:                                               ; preds = %2
  %13 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %14 = load %struct.mlx4_mr*, %struct.mlx4_mr** %5, align 8
  %15 = getelementptr inbounds %struct.mlx4_mr, %struct.mlx4_mr* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @key_to_hw_index(i32 %16)
  %18 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %19 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = sub nsw i32 %21, 1
  %23 = and i32 %17, %22
  %24 = call i32 @mlx4_HW2SW_MPT(%struct.mlx4_dev* %13, i32* null, i32 %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %12
  %28 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_warn(%struct.mlx4_dev* %28, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %32 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_warn(%struct.mlx4_dev* %31, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32, i32* %6, align 4
  store i32 %33, i32* %3, align 4
  br label %43

34:                                               ; preds = %12
  %35 = load i64, i64* @MLX4_MPT_EN_SW, align 8
  %36 = load %struct.mlx4_mr*, %struct.mlx4_mr** %5, align 8
  %37 = getelementptr inbounds %struct.mlx4_mr, %struct.mlx4_mr* %36, i32 0, i32 0
  store i64 %35, i64* %37, align 8
  br label %38

38:                                               ; preds = %34, %2
  %39 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %40 = load %struct.mlx4_mr*, %struct.mlx4_mr** %5, align 8
  %41 = getelementptr inbounds %struct.mlx4_mr, %struct.mlx4_mr* %40, i32 0, i32 1
  %42 = call i32 @mlx4_mtt_cleanup(%struct.mlx4_dev* %39, i32* %41)
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %38, %27
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @mlx4_HW2SW_MPT(%struct.mlx4_dev*, i32*, i32) #1

declare dso_local i32 @key_to_hw_index(i32) #1

declare dso_local i32 @mlx4_warn(%struct.mlx4_dev*, i8*, ...) #1

declare dso_local i32 @mlx4_mtt_cleanup(%struct.mlx4_dev*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
