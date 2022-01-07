; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_resource_tracker.c_qp_get_mtt_size.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_resource_tracker.c_qp_get_mtt_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_qp_context = type { i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_qp_context*)* @qp_get_mtt_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qp_get_mtt_size(%struct.mlx4_qp_context* %0) #0 {
  %2 = alloca %struct.mlx4_qp_context*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.mlx4_qp_context* %0, %struct.mlx4_qp_context** %2, align 8
  %16 = load %struct.mlx4_qp_context*, %struct.mlx4_qp_context** %2, align 8
  %17 = getelementptr inbounds %struct.mlx4_qp_context, %struct.mlx4_qp_context* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = and i32 %18, 63
  %20 = add nsw i32 %19, 12
  store i32 %20, i32* %3, align 4
  %21 = load %struct.mlx4_qp_context*, %struct.mlx4_qp_context** %2, align 8
  %22 = getelementptr inbounds %struct.mlx4_qp_context, %struct.mlx4_qp_context* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = ashr i32 %23, 3
  %25 = and i32 %24, 15
  store i32 %25, i32* %4, align 4
  %26 = load %struct.mlx4_qp_context*, %struct.mlx4_qp_context** %2, align 8
  %27 = getelementptr inbounds %struct.mlx4_qp_context, %struct.mlx4_qp_context* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, 7
  store i32 %29, i32* %5, align 4
  %30 = load %struct.mlx4_qp_context*, %struct.mlx4_qp_context** %2, align 8
  %31 = getelementptr inbounds %struct.mlx4_qp_context, %struct.mlx4_qp_context* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = ashr i32 %32, 3
  %34 = and i32 %33, 15
  store i32 %34, i32* %6, align 4
  %35 = load %struct.mlx4_qp_context*, %struct.mlx4_qp_context** %2, align 8
  %36 = getelementptr inbounds %struct.mlx4_qp_context, %struct.mlx4_qp_context* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, 7
  store i32 %38, i32* %7, align 4
  %39 = load %struct.mlx4_qp_context*, %struct.mlx4_qp_context** %2, align 8
  %40 = getelementptr inbounds %struct.mlx4_qp_context, %struct.mlx4_qp_context* %39, i32 0, i32 6
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @be32_to_cpu(i32 %41)
  %43 = ashr i32 %42, 24
  %44 = and i32 %43, 1
  store i32 %44, i32* %8, align 4
  %45 = load %struct.mlx4_qp_context*, %struct.mlx4_qp_context** %2, align 8
  %46 = getelementptr inbounds %struct.mlx4_qp_context, %struct.mlx4_qp_context* %45, i32 0, i32 5
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @be32_to_cpu(i32 %47)
  %49 = ashr i32 %48, 13
  %50 = and i32 %49, 1
  store i32 %50, i32* %9, align 4
  %51 = load %struct.mlx4_qp_context*, %struct.mlx4_qp_context** %2, align 8
  %52 = getelementptr inbounds %struct.mlx4_qp_context, %struct.mlx4_qp_context* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @be32_to_cpu(i32 %53)
  %55 = ashr i32 %54, 23
  %56 = and i32 %55, 1
  store i32 %56, i32* %10, align 4
  %57 = load %struct.mlx4_qp_context*, %struct.mlx4_qp_context** %2, align 8
  %58 = getelementptr inbounds %struct.mlx4_qp_context, %struct.mlx4_qp_context* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @be32_to_cpu(i32 %59)
  %61 = ashr i32 %60, 6
  %62 = and i32 %61, 63
  store i32 %62, i32* %15, align 4
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* %5, align 4
  %65 = add nsw i32 %63, %64
  %66 = add nsw i32 %65, 4
  %67 = shl i32 1, %66
  store i32 %67, i32* %11, align 4
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* %9, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* %10, align 4
  %72 = or i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %1
  br label %81

75:                                               ; preds = %1
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* %7, align 4
  %78 = add nsw i32 %76, %77
  %79 = add nsw i32 %78, 4
  %80 = shl i32 1, %79
  br label %81

81:                                               ; preds = %75, %74
  %82 = phi i32 [ 0, %74 ], [ %80, %75 ]
  store i32 %82, i32* %12, align 4
  %83 = load i32, i32* %11, align 4
  %84 = load i32, i32* %12, align 4
  %85 = add nsw i32 %83, %84
  store i32 %85, i32* %14, align 4
  %86 = load i32, i32* %14, align 4
  %87 = load i32, i32* %15, align 4
  %88 = shl i32 %87, 6
  %89 = add nsw i32 %86, %88
  %90 = load i32, i32* %3, align 4
  %91 = ashr i32 %89, %90
  %92 = call i32 @roundup_pow_of_two(i32 %91)
  store i32 %92, i32* %13, align 4
  %93 = load i32, i32* %13, align 4
  ret i32 %93
}

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @roundup_pow_of_two(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
