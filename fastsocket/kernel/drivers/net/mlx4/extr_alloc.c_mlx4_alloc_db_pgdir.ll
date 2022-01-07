; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_alloc.c_mlx4_alloc_db_pgdir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_alloc.c_mlx4_alloc_db_pgdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_db_pgdir = type { i32, i32, i32, i32*, i32 }
%struct.device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@MLX4_DB_PER_PAGE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlx4_db_pgdir* (%struct.device*)* @mlx4_alloc_db_pgdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlx4_db_pgdir* @mlx4_alloc_db_pgdir(%struct.device* %0) #0 {
  %2 = alloca %struct.mlx4_db_pgdir*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.mlx4_db_pgdir*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.mlx4_db_pgdir* @kzalloc(i32 32, i32 %5)
  store %struct.mlx4_db_pgdir* %6, %struct.mlx4_db_pgdir** %4, align 8
  %7 = load %struct.mlx4_db_pgdir*, %struct.mlx4_db_pgdir** %4, align 8
  %8 = icmp ne %struct.mlx4_db_pgdir* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store %struct.mlx4_db_pgdir* null, %struct.mlx4_db_pgdir** %2, align 8
  br label %48

10:                                               ; preds = %1
  %11 = load %struct.mlx4_db_pgdir*, %struct.mlx4_db_pgdir** %4, align 8
  %12 = getelementptr inbounds %struct.mlx4_db_pgdir, %struct.mlx4_db_pgdir* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @MLX4_DB_PER_PAGE, align 4
  %15 = sdiv i32 %14, 2
  %16 = call i32 @bitmap_fill(i32 %13, i32 %15)
  %17 = load %struct.mlx4_db_pgdir*, %struct.mlx4_db_pgdir** %4, align 8
  %18 = getelementptr inbounds %struct.mlx4_db_pgdir, %struct.mlx4_db_pgdir* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.mlx4_db_pgdir*, %struct.mlx4_db_pgdir** %4, align 8
  %21 = getelementptr inbounds %struct.mlx4_db_pgdir, %struct.mlx4_db_pgdir* %20, i32 0, i32 3
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  store i32 %19, i32* %23, align 4
  %24 = load %struct.mlx4_db_pgdir*, %struct.mlx4_db_pgdir** %4, align 8
  %25 = getelementptr inbounds %struct.mlx4_db_pgdir, %struct.mlx4_db_pgdir* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.mlx4_db_pgdir*, %struct.mlx4_db_pgdir** %4, align 8
  %28 = getelementptr inbounds %struct.mlx4_db_pgdir, %struct.mlx4_db_pgdir* %27, i32 0, i32 3
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 1
  store i32 %26, i32* %30, align 4
  %31 = load %struct.device*, %struct.device** %3, align 8
  %32 = load i32, i32* @PAGE_SIZE, align 4
  %33 = load %struct.mlx4_db_pgdir*, %struct.mlx4_db_pgdir** %4, align 8
  %34 = getelementptr inbounds %struct.mlx4_db_pgdir, %struct.mlx4_db_pgdir* %33, i32 0, i32 1
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call i32 @dma_alloc_coherent(%struct.device* %31, i32 %32, i32* %34, i32 %35)
  %37 = load %struct.mlx4_db_pgdir*, %struct.mlx4_db_pgdir** %4, align 8
  %38 = getelementptr inbounds %struct.mlx4_db_pgdir, %struct.mlx4_db_pgdir* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load %struct.mlx4_db_pgdir*, %struct.mlx4_db_pgdir** %4, align 8
  %40 = getelementptr inbounds %struct.mlx4_db_pgdir, %struct.mlx4_db_pgdir* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %10
  %44 = load %struct.mlx4_db_pgdir*, %struct.mlx4_db_pgdir** %4, align 8
  %45 = call i32 @kfree(%struct.mlx4_db_pgdir* %44)
  store %struct.mlx4_db_pgdir* null, %struct.mlx4_db_pgdir** %2, align 8
  br label %48

46:                                               ; preds = %10
  %47 = load %struct.mlx4_db_pgdir*, %struct.mlx4_db_pgdir** %4, align 8
  store %struct.mlx4_db_pgdir* %47, %struct.mlx4_db_pgdir** %2, align 8
  br label %48

48:                                               ; preds = %46, %43, %9
  %49 = load %struct.mlx4_db_pgdir*, %struct.mlx4_db_pgdir** %2, align 8
  ret %struct.mlx4_db_pgdir* %49
}

declare dso_local %struct.mlx4_db_pgdir* @kzalloc(i32, i32) #1

declare dso_local i32 @bitmap_fill(i32, i32) #1

declare dso_local i32 @dma_alloc_coherent(%struct.device*, i32, i32*, i32) #1

declare dso_local i32 @kfree(%struct.mlx4_db_pgdir*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
