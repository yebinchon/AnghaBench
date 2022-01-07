; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_alloc.c_mlx4_bitmap_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_alloc.c_mlx4_bitmap_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_bitmap = type { i32, i64, i32, i64, i64, i64, i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_bitmap_init(%struct.mlx4_bitmap* %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx4_bitmap*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.mlx4_bitmap* %0, %struct.mlx4_bitmap** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %12 = load i64, i64* %8, align 8
  %13 = load i64, i64* %8, align 8
  %14 = call i64 @roundup_pow_of_two(i64 %13)
  %15 = icmp ne i64 %12, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %5
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %6, align 4
  br label %69

19:                                               ; preds = %5
  %20 = load %struct.mlx4_bitmap*, %struct.mlx4_bitmap** %7, align 8
  %21 = getelementptr inbounds %struct.mlx4_bitmap, %struct.mlx4_bitmap* %20, i32 0, i32 7
  store i64 0, i64* %21, align 8
  %22 = load %struct.mlx4_bitmap*, %struct.mlx4_bitmap** %7, align 8
  %23 = getelementptr inbounds %struct.mlx4_bitmap, %struct.mlx4_bitmap* %22, i32 0, i32 6
  store i64 0, i64* %23, align 8
  %24 = load i64, i64* %8, align 8
  %25 = load i64, i64* %11, align 8
  %26 = sub nsw i64 %24, %25
  %27 = load %struct.mlx4_bitmap*, %struct.mlx4_bitmap** %7, align 8
  %28 = getelementptr inbounds %struct.mlx4_bitmap, %struct.mlx4_bitmap* %27, i32 0, i32 1
  store i64 %26, i64* %28, align 8
  %29 = load i64, i64* %9, align 8
  %30 = load %struct.mlx4_bitmap*, %struct.mlx4_bitmap** %7, align 8
  %31 = getelementptr inbounds %struct.mlx4_bitmap, %struct.mlx4_bitmap* %30, i32 0, i32 5
  store i64 %29, i64* %31, align 8
  %32 = load i64, i64* %11, align 8
  %33 = load %struct.mlx4_bitmap*, %struct.mlx4_bitmap** %7, align 8
  %34 = getelementptr inbounds %struct.mlx4_bitmap, %struct.mlx4_bitmap* %33, i32 0, i32 4
  store i64 %32, i64* %34, align 8
  %35 = load i64, i64* %8, align 8
  %36 = load i64, i64* %11, align 8
  %37 = sub nsw i64 %35, %36
  %38 = load i64, i64* %10, align 8
  %39 = sub nsw i64 %37, %38
  %40 = load %struct.mlx4_bitmap*, %struct.mlx4_bitmap** %7, align 8
  %41 = getelementptr inbounds %struct.mlx4_bitmap, %struct.mlx4_bitmap* %40, i32 0, i32 3
  store i64 %39, i64* %41, align 8
  %42 = load %struct.mlx4_bitmap*, %struct.mlx4_bitmap** %7, align 8
  %43 = getelementptr inbounds %struct.mlx4_bitmap, %struct.mlx4_bitmap* %42, i32 0, i32 2
  %44 = call i32 @spin_lock_init(i32* %43)
  %45 = load %struct.mlx4_bitmap*, %struct.mlx4_bitmap** %7, align 8
  %46 = getelementptr inbounds %struct.mlx4_bitmap, %struct.mlx4_bitmap* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @BITS_TO_LONGS(i64 %47)
  %49 = sext i32 %48 to i64
  %50 = mul i64 %49, 8
  %51 = trunc i64 %50 to i32
  %52 = load i32, i32* @GFP_KERNEL, align 4
  %53 = call i32 @kzalloc(i32 %51, i32 %52)
  %54 = load %struct.mlx4_bitmap*, %struct.mlx4_bitmap** %7, align 8
  %55 = getelementptr inbounds %struct.mlx4_bitmap, %struct.mlx4_bitmap* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  %56 = load %struct.mlx4_bitmap*, %struct.mlx4_bitmap** %7, align 8
  %57 = getelementptr inbounds %struct.mlx4_bitmap, %struct.mlx4_bitmap* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %19
  %61 = load i32, i32* @ENOMEM, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %6, align 4
  br label %69

63:                                               ; preds = %19
  %64 = load %struct.mlx4_bitmap*, %struct.mlx4_bitmap** %7, align 8
  %65 = getelementptr inbounds %struct.mlx4_bitmap, %struct.mlx4_bitmap* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i64, i64* %10, align 8
  %68 = call i32 @bitmap_set(i32 %66, i32 0, i64 %67)
  store i32 0, i32* %6, align 4
  br label %69

69:                                               ; preds = %63, %60, %16
  %70 = load i32, i32* %6, align 4
  ret i32 %70
}

declare dso_local i64 @roundup_pow_of_two(i64) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @kzalloc(i32, i32) #1

declare dso_local i32 @BITS_TO_LONGS(i64) #1

declare dso_local i32 @bitmap_set(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
