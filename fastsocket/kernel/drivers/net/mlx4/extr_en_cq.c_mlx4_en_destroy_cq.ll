; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_en_cq.c_mlx4_en_destroy_cq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_en_cq.c_mlx4_en_destroy_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_en_priv = type { %struct.mlx4_en_dev* }
%struct.mlx4_en_dev = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.mlx4_en_cq = type { i32*, i32, i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx4_en_destroy_cq(%struct.mlx4_en_priv* %0, %struct.mlx4_en_cq* %1) #0 {
  %3 = alloca %struct.mlx4_en_priv*, align 8
  %4 = alloca %struct.mlx4_en_cq*, align 8
  %5 = alloca %struct.mlx4_en_dev*, align 8
  store %struct.mlx4_en_priv* %0, %struct.mlx4_en_priv** %3, align 8
  store %struct.mlx4_en_cq* %1, %struct.mlx4_en_cq** %4, align 8
  %6 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %7 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %6, i32 0, i32 0
  %8 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %7, align 8
  store %struct.mlx4_en_dev* %8, %struct.mlx4_en_dev** %5, align 8
  %9 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %4, align 8
  %10 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = call i32 @mlx4_en_unmap_buffer(i32* %11)
  %13 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %5, align 8
  %14 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %13, i32 0, i32 0
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %4, align 8
  %17 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %16, i32 0, i32 3
  %18 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %4, align 8
  %19 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @mlx4_free_hwq_res(%struct.TYPE_6__* %15, %struct.TYPE_7__* %17, i32 %20)
  %22 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %23 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %22, i32 0, i32 0
  %24 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %23, align 8
  %25 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %24, i32 0, i32 0
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %46

31:                                               ; preds = %2
  %32 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %4, align 8
  %33 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %31
  %37 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %38 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %37, i32 0, i32 0
  %39 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %38, align 8
  %40 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %39, i32 0, i32 0
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %4, align 8
  %43 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @mlx4_release_eq(%struct.TYPE_6__* %41, i64 %44)
  br label %46

46:                                               ; preds = %36, %31, %2
  %47 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %4, align 8
  %48 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %47, i32 0, i32 2
  store i64 0, i64* %48, align 8
  %49 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %4, align 8
  %50 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %49, i32 0, i32 1
  store i32 0, i32* %50, align 8
  %51 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %4, align 8
  %52 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %51, i32 0, i32 0
  store i32* null, i32** %52, align 8
  ret void
}

declare dso_local i32 @mlx4_en_unmap_buffer(i32*) #1

declare dso_local i32 @mlx4_free_hwq_res(%struct.TYPE_6__*, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @mlx4_release_eq(%struct.TYPE_6__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
