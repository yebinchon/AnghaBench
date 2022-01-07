; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_alloc.c_mlx4_db_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_alloc.c_mlx4_db_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.mlx4_db = type { i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32*, i32 }
%struct.mlx4_priv = type { i32 }

@MLX4_DB_PER_PAGE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx4_db_free(%struct.mlx4_dev* %0, %struct.mlx4_db* %1) #0 {
  %3 = alloca %struct.mlx4_dev*, align 8
  %4 = alloca %struct.mlx4_db*, align 8
  %5 = alloca %struct.mlx4_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %3, align 8
  store %struct.mlx4_db* %1, %struct.mlx4_db** %4, align 8
  %8 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %9 = call %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev* %8)
  store %struct.mlx4_priv* %9, %struct.mlx4_priv** %5, align 8
  %10 = load %struct.mlx4_priv*, %struct.mlx4_priv** %5, align 8
  %11 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %10, i32 0, i32 0
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.mlx4_db*, %struct.mlx4_db** %4, align 8
  %14 = getelementptr inbounds %struct.mlx4_db, %struct.mlx4_db* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %6, align 4
  %16 = load %struct.mlx4_db*, %struct.mlx4_db** %4, align 8
  %17 = getelementptr inbounds %struct.mlx4_db, %struct.mlx4_db* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %7, align 4
  %19 = load %struct.mlx4_db*, %struct.mlx4_db** %4, align 8
  %20 = getelementptr inbounds %struct.mlx4_db, %struct.mlx4_db* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %46

23:                                               ; preds = %2
  %24 = load i32, i32* %7, align 4
  %25 = xor i32 %24, 1
  %26 = load %struct.mlx4_db*, %struct.mlx4_db** %4, align 8
  %27 = getelementptr inbounds %struct.mlx4_db, %struct.mlx4_db* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 8
  %32 = call i64 @test_bit(i32 %25, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %46

34:                                               ; preds = %23
  %35 = load i32, i32* %7, align 4
  %36 = xor i32 %35, 1
  %37 = load %struct.mlx4_db*, %struct.mlx4_db** %4, align 8
  %38 = getelementptr inbounds %struct.mlx4_db, %struct.mlx4_db* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @clear_bit(i32 %36, i32 %42)
  %44 = load i32, i32* %6, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %6, align 4
  br label %46

46:                                               ; preds = %34, %23, %2
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* %7, align 4
  %49 = ashr i32 %48, %47
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = load %struct.mlx4_db*, %struct.mlx4_db** %4, align 8
  %52 = getelementptr inbounds %struct.mlx4_db, %struct.mlx4_db* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 4
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %6, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @set_bit(i32 %50, i32 %60)
  %62 = load %struct.mlx4_db*, %struct.mlx4_db** %4, align 8
  %63 = getelementptr inbounds %struct.mlx4_db, %struct.mlx4_db* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @MLX4_DB_PER_PAGE, align 4
  %69 = sdiv i32 %68, 2
  %70 = call i64 @bitmap_full(i32 %67, i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %102

72:                                               ; preds = %46
  %73 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %74 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %73, i32 0, i32 0
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i32, i32* @PAGE_SIZE, align 4
  %78 = load %struct.mlx4_db*, %struct.mlx4_db** %4, align 8
  %79 = getelementptr inbounds %struct.mlx4_db, %struct.mlx4_db* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.mlx4_db*, %struct.mlx4_db** %4, align 8
  %85 = getelementptr inbounds %struct.mlx4_db, %struct.mlx4_db* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @dma_free_coherent(i32* %76, i32 %77, i32 %83, i32 %89)
  %91 = load %struct.mlx4_db*, %struct.mlx4_db** %4, align 8
  %92 = getelementptr inbounds %struct.mlx4_db, %struct.mlx4_db* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = call i32 @list_del(i32* %95)
  %97 = load %struct.mlx4_db*, %struct.mlx4_db** %4, align 8
  %98 = getelementptr inbounds %struct.mlx4_db, %struct.mlx4_db* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %99, align 8
  %101 = call i32 @kfree(%struct.TYPE_6__* %100)
  br label %102

102:                                              ; preds = %72, %46
  %103 = load %struct.mlx4_priv*, %struct.mlx4_priv** %5, align 8
  %104 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %103, i32 0, i32 0
  %105 = call i32 @mutex_unlock(i32* %104)
  ret void
}

declare dso_local %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @clear_bit(i32, i32) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i64 @bitmap_full(i32, i32) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i32, i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @kfree(%struct.TYPE_6__*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
