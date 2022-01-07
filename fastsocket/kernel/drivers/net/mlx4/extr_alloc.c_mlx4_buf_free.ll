; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_alloc.c_mlx4_buf_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_alloc.c_mlx4_buf_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.mlx4_buf = type { i32, %struct.TYPE_6__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, i64 }
%struct.TYPE_4__ = type { i64, i32 }

@BITS_PER_LONG = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx4_buf_free(%struct.mlx4_dev* %0, i32 %1, %struct.mlx4_buf* %2) #0 {
  %4 = alloca %struct.mlx4_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx4_buf*, align 8
  %7 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.mlx4_buf* %2, %struct.mlx4_buf** %6, align 8
  %8 = load %struct.mlx4_buf*, %struct.mlx4_buf** %6, align 8
  %9 = getelementptr inbounds %struct.mlx4_buf, %struct.mlx4_buf* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %27

12:                                               ; preds = %3
  %13 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %14 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %13, i32 0, i32 0
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.mlx4_buf*, %struct.mlx4_buf** %6, align 8
  %19 = getelementptr inbounds %struct.mlx4_buf, %struct.mlx4_buf* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.mlx4_buf*, %struct.mlx4_buf** %6, align 8
  %23 = getelementptr inbounds %struct.mlx4_buf, %struct.mlx4_buf* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @dma_free_coherent(i32* %16, i32 %17, i64 %21, i32 %25)
  br label %91

27:                                               ; preds = %3
  %28 = load i32, i32* @BITS_PER_LONG, align 4
  %29 = icmp eq i32 %28, 64
  br i1 %29, label %30, label %42

30:                                               ; preds = %27
  %31 = load %struct.mlx4_buf*, %struct.mlx4_buf** %6, align 8
  %32 = getelementptr inbounds %struct.mlx4_buf, %struct.mlx4_buf* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %30
  %37 = load %struct.mlx4_buf*, %struct.mlx4_buf** %6, align 8
  %38 = getelementptr inbounds %struct.mlx4_buf, %struct.mlx4_buf* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @vunmap(i64 %40)
  br label %42

42:                                               ; preds = %36, %30, %27
  store i32 0, i32* %7, align 4
  br label %43

43:                                               ; preds = %83, %42
  %44 = load i32, i32* %7, align 4
  %45 = load %struct.mlx4_buf*, %struct.mlx4_buf** %6, align 8
  %46 = getelementptr inbounds %struct.mlx4_buf, %struct.mlx4_buf* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp slt i32 %44, %47
  br i1 %48, label %49, label %86

49:                                               ; preds = %43
  %50 = load %struct.mlx4_buf*, %struct.mlx4_buf** %6, align 8
  %51 = getelementptr inbounds %struct.mlx4_buf, %struct.mlx4_buf* %50, i32 0, i32 1
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %82

59:                                               ; preds = %49
  %60 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %61 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %60, i32 0, i32 0
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i32, i32* @PAGE_SIZE, align 4
  %65 = load %struct.mlx4_buf*, %struct.mlx4_buf** %6, align 8
  %66 = getelementptr inbounds %struct.mlx4_buf, %struct.mlx4_buf* %65, i32 0, i32 1
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  %68 = load i32, i32* %7, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.mlx4_buf*, %struct.mlx4_buf** %6, align 8
  %74 = getelementptr inbounds %struct.mlx4_buf, %struct.mlx4_buf* %73, i32 0, i32 1
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %74, align 8
  %76 = load i32, i32* %7, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @dma_free_coherent(i32* %63, i32 %64, i64 %72, i32 %80)
  br label %82

82:                                               ; preds = %59, %49
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %7, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %7, align 4
  br label %43

86:                                               ; preds = %43
  %87 = load %struct.mlx4_buf*, %struct.mlx4_buf** %6, align 8
  %88 = getelementptr inbounds %struct.mlx4_buf, %struct.mlx4_buf* %87, i32 0, i32 1
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %88, align 8
  %90 = call i32 @kfree(%struct.TYPE_6__* %89)
  br label %91

91:                                               ; preds = %86, %12
  ret void
}

declare dso_local i32 @dma_free_coherent(i32*, i32, i64, i32) #1

declare dso_local i32 @vunmap(i64) #1

declare dso_local i32 @kfree(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
