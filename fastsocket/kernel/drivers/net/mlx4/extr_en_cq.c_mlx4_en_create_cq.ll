; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_en_cq.c_mlx4_en_create_cq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_en_cq.c_mlx4_en_create_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_en_priv = type { %struct.mlx4_en_dev* }
%struct.mlx4_en_dev = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.mlx4_en_cq = type { i32, i32, i32, i32, %struct.TYPE_11__, %struct.mlx4_cqe*, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }
%struct.mlx4_cqe = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_en_create_cq(%struct.mlx4_en_priv* %0, %struct.mlx4_en_cq* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx4_en_priv*, align 8
  %8 = alloca %struct.mlx4_en_cq*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.mlx4_en_dev*, align 8
  %13 = alloca i32, align 4
  store %struct.mlx4_en_priv* %0, %struct.mlx4_en_priv** %7, align 8
  store %struct.mlx4_en_cq* %1, %struct.mlx4_en_cq** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %7, align 8
  %15 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %14, i32 0, i32 0
  %16 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %15, align 8
  store %struct.mlx4_en_dev* %16, %struct.mlx4_en_dev** %12, align 8
  %17 = load i32, i32* %9, align 4
  %18 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %8, align 8
  %19 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %8, align 8
  %21 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %12, align 8
  %24 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %23, i32 0, i32 0
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = mul nsw i32 %22, %28
  %30 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %8, align 8
  %31 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* %10, align 4
  %33 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %8, align 8
  %34 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 8
  %35 = load i32, i32* %11, align 4
  %36 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %8, align 8
  %37 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %36, i32 0, i32 3
  store i32 %35, i32* %37, align 4
  %38 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %8, align 8
  %39 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %38, i32 0, i32 6
  %40 = call i32 @spin_lock_init(i32* %39)
  %41 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %12, align 8
  %42 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %41, i32 0, i32 0
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %42, align 8
  %44 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %8, align 8
  %45 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %44, i32 0, i32 4
  %46 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %8, align 8
  %47 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @PAGE_SIZE, align 4
  %50 = mul nsw i32 2, %49
  %51 = call i32 @mlx4_alloc_hwq_res(%struct.TYPE_10__* %43, %struct.TYPE_11__* %45, i32 %48, i32 %50)
  store i32 %51, i32* %13, align 4
  %52 = load i32, i32* %13, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %5
  %55 = load i32, i32* %13, align 4
  store i32 %55, i32* %6, align 4
  br label %85

56:                                               ; preds = %5
  %57 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %8, align 8
  %58 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %57, i32 0, i32 4
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 0
  %60 = call i32 @mlx4_en_map_buffer(%struct.TYPE_12__* %59)
  store i32 %60, i32* %13, align 4
  %61 = load i32, i32* %13, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %73

63:                                               ; preds = %56
  %64 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %12, align 8
  %65 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %64, i32 0, i32 0
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %65, align 8
  %67 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %8, align 8
  %68 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %67, i32 0, i32 4
  %69 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %8, align 8
  %70 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @mlx4_free_hwq_res(%struct.TYPE_10__* %66, %struct.TYPE_11__* %68, i32 %71)
  br label %83

73:                                               ; preds = %56
  %74 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %8, align 8
  %75 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %74, i32 0, i32 4
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = inttoptr i64 %79 to %struct.mlx4_cqe*
  %81 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %8, align 8
  %82 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %81, i32 0, i32 5
  store %struct.mlx4_cqe* %80, %struct.mlx4_cqe** %82, align 8
  br label %83

83:                                               ; preds = %73, %63
  %84 = load i32, i32* %13, align 4
  store i32 %84, i32* %6, align 4
  br label %85

85:                                               ; preds = %83, %54
  %86 = load i32, i32* %6, align 4
  ret i32 %86
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mlx4_alloc_hwq_res(%struct.TYPE_10__*, %struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @mlx4_en_map_buffer(%struct.TYPE_12__*) #1

declare dso_local i32 @mlx4_free_hwq_res(%struct.TYPE_10__*, %struct.TYPE_11__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
