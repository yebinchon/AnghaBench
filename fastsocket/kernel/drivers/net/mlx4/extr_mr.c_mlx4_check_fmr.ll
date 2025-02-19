; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_mr.c_mlx4_check_fmr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_mr.c_mlx4_check_fmr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_fmr = type { i32, i32, i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_fmr*, i32*, i32, i32)* @mlx4_check_fmr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_check_fmr(%struct.mlx4_fmr* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx4_fmr*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mlx4_fmr* %0, %struct.mlx4_fmr** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %8, align 4
  %13 = load %struct.mlx4_fmr*, %struct.mlx4_fmr** %6, align 8
  %14 = getelementptr inbounds %struct.mlx4_fmr, %struct.mlx4_fmr* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp sgt i32 %12, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %45

20:                                               ; preds = %4
  %21 = load %struct.mlx4_fmr*, %struct.mlx4_fmr** %6, align 8
  %22 = getelementptr inbounds %struct.mlx4_fmr, %struct.mlx4_fmr* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = shl i32 1, %23
  %25 = sub nsw i32 %24, 1
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %11, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %20
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %45

33:                                               ; preds = %20
  %34 = load %struct.mlx4_fmr*, %struct.mlx4_fmr** %6, align 8
  %35 = getelementptr inbounds %struct.mlx4_fmr, %struct.mlx4_fmr* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.mlx4_fmr*, %struct.mlx4_fmr** %6, align 8
  %38 = getelementptr inbounds %struct.mlx4_fmr, %struct.mlx4_fmr* %37, i32 0, i32 3
  %39 = load i64, i64* %38, align 8
  %40 = icmp sge i64 %36, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %33
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %5, align 4
  br label %45

44:                                               ; preds = %33
  store i32 0, i32* %5, align 4
  br label %45

45:                                               ; preds = %44, %41, %30, %17
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
