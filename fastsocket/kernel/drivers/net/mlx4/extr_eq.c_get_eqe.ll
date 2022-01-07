; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_eq.c_get_eqe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_eq.c_get_eqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_eqe = type { i32 }
%struct.mlx4_eq = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.mlx4_eqe* }

@MLX4_EQ_ENTRY_SIZE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlx4_eqe* (%struct.mlx4_eq*, i32, i32)* @get_eqe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlx4_eqe* @get_eqe(%struct.mlx4_eq* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mlx4_eq*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.mlx4_eq* %0, %struct.mlx4_eq** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load %struct.mlx4_eq*, %struct.mlx4_eq** %4, align 8
  %10 = getelementptr inbounds %struct.mlx4_eq, %struct.mlx4_eq* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = sub nsw i32 %11, 1
  %13 = and i32 %8, %12
  %14 = load i32, i32* @MLX4_EQ_ENTRY_SIZE, align 4
  %15 = load i32, i32* %6, align 4
  %16 = shl i32 %14, %15
  %17 = mul nsw i32 %13, %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %7, align 8
  %19 = load %struct.mlx4_eq*, %struct.mlx4_eq** %4, align 8
  %20 = getelementptr inbounds %struct.mlx4_eq, %struct.mlx4_eq* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = load i64, i64* %7, align 8
  %23 = load i64, i64* @PAGE_SIZE, align 8
  %24 = udiv i64 %22, %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load %struct.mlx4_eqe*, %struct.mlx4_eqe** %26, align 8
  %28 = load i64, i64* %7, align 8
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %3
  %32 = load i32, i32* @MLX4_EQ_ENTRY_SIZE, align 4
  br label %34

33:                                               ; preds = %3
  br label %34

34:                                               ; preds = %33, %31
  %35 = phi i32 [ %32, %31 ], [ 0, %33 ]
  %36 = sext i32 %35 to i64
  %37 = add i64 %28, %36
  %38 = load i64, i64* @PAGE_SIZE, align 8
  %39 = urem i64 %37, %38
  %40 = getelementptr inbounds %struct.mlx4_eqe, %struct.mlx4_eqe* %27, i64 %39
  ret %struct.mlx4_eqe* %40
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
