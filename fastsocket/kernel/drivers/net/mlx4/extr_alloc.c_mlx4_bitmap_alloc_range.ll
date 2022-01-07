; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_alloc.c_mlx4_bitmap_alloc_range.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_alloc.c_mlx4_bitmap_alloc_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_bitmap = type { i32, i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_bitmap_alloc_range(%struct.mlx4_bitmap* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx4_bitmap*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mlx4_bitmap* %0, %struct.mlx4_bitmap** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = load i32, i32* %7, align 4
  %13 = icmp eq i32 %12, 1
  br label %14

14:                                               ; preds = %11, %3
  %15 = phi i1 [ false, %3 ], [ %13, %11 ]
  %16 = zext i1 %15 to i32
  %17 = call i64 @likely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load %struct.mlx4_bitmap*, %struct.mlx4_bitmap** %5, align 8
  %21 = call i32 @mlx4_bitmap_alloc(%struct.mlx4_bitmap* %20)
  store i32 %21, i32* %4, align 4
  br label %128

22:                                               ; preds = %14
  %23 = load %struct.mlx4_bitmap*, %struct.mlx4_bitmap** %5, align 8
  %24 = getelementptr inbounds %struct.mlx4_bitmap, %struct.mlx4_bitmap* %23, i32 0, i32 6
  %25 = call i32 @spin_lock(i32* %24)
  %26 = load %struct.mlx4_bitmap*, %struct.mlx4_bitmap** %5, align 8
  %27 = getelementptr inbounds %struct.mlx4_bitmap, %struct.mlx4_bitmap* %26, i32 0, i32 7
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.mlx4_bitmap*, %struct.mlx4_bitmap** %5, align 8
  %30 = getelementptr inbounds %struct.mlx4_bitmap, %struct.mlx4_bitmap* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.mlx4_bitmap*, %struct.mlx4_bitmap** %5, align 8
  %33 = getelementptr inbounds %struct.mlx4_bitmap, %struct.mlx4_bitmap* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %7, align 4
  %37 = sub nsw i32 %36, 1
  %38 = call i32 @bitmap_find_next_zero_area(i32 %28, i32 %31, i32 %34, i32 %35, i32 %37)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = load %struct.mlx4_bitmap*, %struct.mlx4_bitmap** %5, align 8
  %41 = getelementptr inbounds %struct.mlx4_bitmap, %struct.mlx4_bitmap* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp sge i32 %39, %42
  br i1 %43, label %44, label %72

44:                                               ; preds = %22
  %45 = load %struct.mlx4_bitmap*, %struct.mlx4_bitmap** %5, align 8
  %46 = getelementptr inbounds %struct.mlx4_bitmap, %struct.mlx4_bitmap* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.mlx4_bitmap*, %struct.mlx4_bitmap** %5, align 8
  %49 = getelementptr inbounds %struct.mlx4_bitmap, %struct.mlx4_bitmap* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %47, %50
  %52 = load %struct.mlx4_bitmap*, %struct.mlx4_bitmap** %5, align 8
  %53 = getelementptr inbounds %struct.mlx4_bitmap, %struct.mlx4_bitmap* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %51, %54
  %56 = load %struct.mlx4_bitmap*, %struct.mlx4_bitmap** %5, align 8
  %57 = getelementptr inbounds %struct.mlx4_bitmap, %struct.mlx4_bitmap* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 4
  %59 = and i32 %55, %58
  %60 = load %struct.mlx4_bitmap*, %struct.mlx4_bitmap** %5, align 8
  %61 = getelementptr inbounds %struct.mlx4_bitmap, %struct.mlx4_bitmap* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 4
  %62 = load %struct.mlx4_bitmap*, %struct.mlx4_bitmap** %5, align 8
  %63 = getelementptr inbounds %struct.mlx4_bitmap, %struct.mlx4_bitmap* %62, i32 0, i32 7
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.mlx4_bitmap*, %struct.mlx4_bitmap** %5, align 8
  %66 = getelementptr inbounds %struct.mlx4_bitmap, %struct.mlx4_bitmap* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* %7, align 4
  %70 = sub nsw i32 %69, 1
  %71 = call i32 @bitmap_find_next_zero_area(i32 %64, i32 %67, i32 0, i32 %68, i32 %70)
  store i32 %71, i32* %8, align 4
  br label %72

72:                                               ; preds = %44, %22
  %73 = load i32, i32* %8, align 4
  %74 = load %struct.mlx4_bitmap*, %struct.mlx4_bitmap** %5, align 8
  %75 = getelementptr inbounds %struct.mlx4_bitmap, %struct.mlx4_bitmap* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = icmp slt i32 %73, %76
  br i1 %77, label %78, label %113

78:                                               ; preds = %72
  %79 = load %struct.mlx4_bitmap*, %struct.mlx4_bitmap** %5, align 8
  %80 = getelementptr inbounds %struct.mlx4_bitmap, %struct.mlx4_bitmap* %79, i32 0, i32 7
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* %6, align 4
  %84 = call i32 @bitmap_set(i32 %81, i32 %82, i32 %83)
  %85 = load i32, i32* %8, align 4
  %86 = load %struct.mlx4_bitmap*, %struct.mlx4_bitmap** %5, align 8
  %87 = getelementptr inbounds %struct.mlx4_bitmap, %struct.mlx4_bitmap* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = icmp eq i32 %85, %88
  br i1 %89, label %90, label %107

90:                                               ; preds = %78
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* %6, align 4
  %93 = add nsw i32 %91, %92
  %94 = load %struct.mlx4_bitmap*, %struct.mlx4_bitmap** %5, align 8
  %95 = getelementptr inbounds %struct.mlx4_bitmap, %struct.mlx4_bitmap* %94, i32 0, i32 1
  store i32 %93, i32* %95, align 4
  %96 = load %struct.mlx4_bitmap*, %struct.mlx4_bitmap** %5, align 8
  %97 = getelementptr inbounds %struct.mlx4_bitmap, %struct.mlx4_bitmap* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.mlx4_bitmap*, %struct.mlx4_bitmap** %5, align 8
  %100 = getelementptr inbounds %struct.mlx4_bitmap, %struct.mlx4_bitmap* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = icmp sge i32 %98, %101
  br i1 %102, label %103, label %106

103:                                              ; preds = %90
  %104 = load %struct.mlx4_bitmap*, %struct.mlx4_bitmap** %5, align 8
  %105 = getelementptr inbounds %struct.mlx4_bitmap, %struct.mlx4_bitmap* %104, i32 0, i32 1
  store i32 0, i32* %105, align 4
  br label %106

106:                                              ; preds = %103, %90
  br label %107

107:                                              ; preds = %106, %78
  %108 = load %struct.mlx4_bitmap*, %struct.mlx4_bitmap** %5, align 8
  %109 = getelementptr inbounds %struct.mlx4_bitmap, %struct.mlx4_bitmap* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* %8, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %8, align 4
  br label %114

113:                                              ; preds = %72
  store i32 -1, i32* %8, align 4
  br label %114

114:                                              ; preds = %113, %107
  %115 = load i32, i32* %8, align 4
  %116 = icmp ne i32 %115, -1
  br i1 %116, label %117, label %123

117:                                              ; preds = %114
  %118 = load i32, i32* %6, align 4
  %119 = load %struct.mlx4_bitmap*, %struct.mlx4_bitmap** %5, align 8
  %120 = getelementptr inbounds %struct.mlx4_bitmap, %struct.mlx4_bitmap* %119, i32 0, i32 5
  %121 = load i32, i32* %120, align 4
  %122 = sub nsw i32 %121, %118
  store i32 %122, i32* %120, align 4
  br label %123

123:                                              ; preds = %117, %114
  %124 = load %struct.mlx4_bitmap*, %struct.mlx4_bitmap** %5, align 8
  %125 = getelementptr inbounds %struct.mlx4_bitmap, %struct.mlx4_bitmap* %124, i32 0, i32 6
  %126 = call i32 @spin_unlock(i32* %125)
  %127 = load i32, i32* %8, align 4
  store i32 %127, i32* %4, align 4
  br label %128

128:                                              ; preds = %123, %19
  %129 = load i32, i32* %4, align 4
  ret i32 %129
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @mlx4_bitmap_alloc(%struct.mlx4_bitmap*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @bitmap_find_next_zero_area(i32, i32, i32, i32, i32) #1

declare dso_local i32 @bitmap_set(i32, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
