; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_mr.c_mlx4_buddy_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_mr.c_mlx4_buddy_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_buddy = type { i32, i32, i64*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_buddy*, i32)* @mlx4_buddy_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_buddy_alloc(%struct.mlx4_buddy* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx4_buddy*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mlx4_buddy* %0, %struct.mlx4_buddy** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.mlx4_buddy*, %struct.mlx4_buddy** %4, align 8
  %10 = getelementptr inbounds %struct.mlx4_buddy, %struct.mlx4_buddy* %9, i32 0, i32 1
  %11 = call i32 @spin_lock(i32* %10)
  %12 = load i32, i32* %5, align 4
  store i32 %12, i32* %6, align 4
  br label %13

13:                                               ; preds = %50, %2
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.mlx4_buddy*, %struct.mlx4_buddy** %4, align 8
  %16 = getelementptr inbounds %struct.mlx4_buddy, %struct.mlx4_buddy* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp sle i32 %14, %17
  br i1 %18, label %19, label %53

19:                                               ; preds = %13
  %20 = load %struct.mlx4_buddy*, %struct.mlx4_buddy** %4, align 8
  %21 = getelementptr inbounds %struct.mlx4_buddy, %struct.mlx4_buddy* %20, i32 0, i32 2
  %22 = load i64*, i64** %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i64, i64* %22, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %49

28:                                               ; preds = %19
  %29 = load %struct.mlx4_buddy*, %struct.mlx4_buddy** %4, align 8
  %30 = getelementptr inbounds %struct.mlx4_buddy, %struct.mlx4_buddy* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sub nsw i32 %31, %32
  %34 = shl i32 1, %33
  store i32 %34, i32* %7, align 4
  %35 = load %struct.mlx4_buddy*, %struct.mlx4_buddy** %4, align 8
  %36 = getelementptr inbounds %struct.mlx4_buddy, %struct.mlx4_buddy* %35, i32 0, i32 3
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @find_first_bit(i32 %41, i32 %42)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %28
  br label %57

48:                                               ; preds = %28
  br label %49

49:                                               ; preds = %48, %19
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %6, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %6, align 4
  br label %13

53:                                               ; preds = %13
  %54 = load %struct.mlx4_buddy*, %struct.mlx4_buddy** %4, align 8
  %55 = getelementptr inbounds %struct.mlx4_buddy, %struct.mlx4_buddy* %54, i32 0, i32 1
  %56 = call i32 @spin_unlock(i32* %55)
  store i32 -1, i32* %3, align 4
  br label %110

57:                                               ; preds = %47
  %58 = load i32, i32* %8, align 4
  %59 = load %struct.mlx4_buddy*, %struct.mlx4_buddy** %4, align 8
  %60 = getelementptr inbounds %struct.mlx4_buddy, %struct.mlx4_buddy* %59, i32 0, i32 3
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %6, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @clear_bit(i32 %58, i32 %65)
  %67 = load %struct.mlx4_buddy*, %struct.mlx4_buddy** %4, align 8
  %68 = getelementptr inbounds %struct.mlx4_buddy, %struct.mlx4_buddy* %67, i32 0, i32 2
  %69 = load i64*, i64** %68, align 8
  %70 = load i32, i32* %6, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i64, i64* %69, i64 %71
  %73 = load i64, i64* %72, align 8
  %74 = add nsw i64 %73, -1
  store i64 %74, i64* %72, align 8
  br label %75

75:                                               ; preds = %79, %57
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* %5, align 4
  %78 = icmp sgt i32 %76, %77
  br i1 %78, label %79, label %102

79:                                               ; preds = %75
  %80 = load i32, i32* %6, align 4
  %81 = add nsw i32 %80, -1
  store i32 %81, i32* %6, align 4
  %82 = load i32, i32* %8, align 4
  %83 = shl i32 %82, 1
  store i32 %83, i32* %8, align 4
  %84 = load i32, i32* %8, align 4
  %85 = xor i32 %84, 1
  %86 = load %struct.mlx4_buddy*, %struct.mlx4_buddy** %4, align 8
  %87 = getelementptr inbounds %struct.mlx4_buddy, %struct.mlx4_buddy* %86, i32 0, i32 3
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %6, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @set_bit(i32 %85, i32 %92)
  %94 = load %struct.mlx4_buddy*, %struct.mlx4_buddy** %4, align 8
  %95 = getelementptr inbounds %struct.mlx4_buddy, %struct.mlx4_buddy* %94, i32 0, i32 2
  %96 = load i64*, i64** %95, align 8
  %97 = load i32, i32* %6, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i64, i64* %96, i64 %98
  %100 = load i64, i64* %99, align 8
  %101 = add nsw i64 %100, 1
  store i64 %101, i64* %99, align 8
  br label %75

102:                                              ; preds = %75
  %103 = load %struct.mlx4_buddy*, %struct.mlx4_buddy** %4, align 8
  %104 = getelementptr inbounds %struct.mlx4_buddy, %struct.mlx4_buddy* %103, i32 0, i32 1
  %105 = call i32 @spin_unlock(i32* %104)
  %106 = load i32, i32* %5, align 4
  %107 = load i32, i32* %8, align 4
  %108 = shl i32 %107, %106
  store i32 %108, i32* %8, align 4
  %109 = load i32, i32* %8, align 4
  store i32 %109, i32* %3, align 4
  br label %110

110:                                              ; preds = %102, %53
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @find_first_bit(i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @clear_bit(i32, i32) #1

declare dso_local i32 @set_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
