; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_alloc.c_mlx4_bitmap_free_range.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_alloc.c_mlx4_bitmap_free_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_bitmap = type { i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx4_bitmap_free_range(%struct.mlx4_bitmap* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mlx4_bitmap*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mlx4_bitmap* %0, %struct.mlx4_bitmap** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.mlx4_bitmap*, %struct.mlx4_bitmap** %4, align 8
  %8 = getelementptr inbounds %struct.mlx4_bitmap, %struct.mlx4_bitmap* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.mlx4_bitmap*, %struct.mlx4_bitmap** %4, align 8
  %11 = getelementptr inbounds %struct.mlx4_bitmap, %struct.mlx4_bitmap* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = add nsw i32 %9, %12
  %14 = sub nsw i32 %13, 1
  %15 = load i32, i32* %5, align 4
  %16 = and i32 %15, %14
  store i32 %16, i32* %5, align 4
  %17 = load %struct.mlx4_bitmap*, %struct.mlx4_bitmap** %4, align 8
  %18 = getelementptr inbounds %struct.mlx4_bitmap, %struct.mlx4_bitmap* %17, i32 0, i32 3
  %19 = call i32 @spin_lock(i32* %18)
  %20 = load %struct.mlx4_bitmap*, %struct.mlx4_bitmap** %4, align 8
  %21 = getelementptr inbounds %struct.mlx4_bitmap, %struct.mlx4_bitmap* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @bitmap_clear(i32 %22, i32 %23, i32 %24)
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.mlx4_bitmap*, %struct.mlx4_bitmap** %4, align 8
  %28 = getelementptr inbounds %struct.mlx4_bitmap, %struct.mlx4_bitmap* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, %26
  store i32 %30, i32* %28, align 4
  %31 = load %struct.mlx4_bitmap*, %struct.mlx4_bitmap** %4, align 8
  %32 = getelementptr inbounds %struct.mlx4_bitmap, %struct.mlx4_bitmap* %31, i32 0, i32 3
  %33 = call i32 @spin_unlock(i32* %32)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @bitmap_clear(i32, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
