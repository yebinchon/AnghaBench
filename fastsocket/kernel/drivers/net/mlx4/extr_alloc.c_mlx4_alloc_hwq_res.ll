; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_alloc.c_mlx4_alloc_hwq_res.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_alloc.c_mlx4_alloc_hwq_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }
%struct.mlx4_hwq_resources = type { %struct.TYPE_6__, %struct.TYPE_7__, i32 }
%struct.TYPE_6__ = type { i64* }
%struct.TYPE_7__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_alloc_hwq_res(%struct.mlx4_dev* %0, %struct.mlx4_hwq_resources* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx4_dev*, align 8
  %7 = alloca %struct.mlx4_hwq_resources*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %6, align 8
  store %struct.mlx4_hwq_resources* %1, %struct.mlx4_hwq_resources** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %12 = load %struct.mlx4_hwq_resources*, %struct.mlx4_hwq_resources** %7, align 8
  %13 = getelementptr inbounds %struct.mlx4_hwq_resources, %struct.mlx4_hwq_resources* %12, i32 0, i32 0
  %14 = call i32 @mlx4_db_alloc(%struct.mlx4_dev* %11, %struct.TYPE_6__* %13, i32 1)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = load i32, i32* %10, align 4
  store i32 %18, i32* %5, align 4
  br label %77

19:                                               ; preds = %4
  %20 = load %struct.mlx4_hwq_resources*, %struct.mlx4_hwq_resources** %7, align 8
  %21 = getelementptr inbounds %struct.mlx4_hwq_resources, %struct.mlx4_hwq_resources* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i64*, i64** %22, align 8
  store i64 0, i64* %23, align 8
  %24 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %9, align 4
  %27 = load %struct.mlx4_hwq_resources*, %struct.mlx4_hwq_resources** %7, align 8
  %28 = getelementptr inbounds %struct.mlx4_hwq_resources, %struct.mlx4_hwq_resources* %27, i32 0, i32 1
  %29 = call i32 @mlx4_buf_alloc(%struct.mlx4_dev* %24, i32 %25, i32 %26, %struct.TYPE_7__* %28)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %19
  br label %71

33:                                               ; preds = %19
  %34 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %35 = load %struct.mlx4_hwq_resources*, %struct.mlx4_hwq_resources** %7, align 8
  %36 = getelementptr inbounds %struct.mlx4_hwq_resources, %struct.mlx4_hwq_resources* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.mlx4_hwq_resources*, %struct.mlx4_hwq_resources** %7, align 8
  %40 = getelementptr inbounds %struct.mlx4_hwq_resources, %struct.mlx4_hwq_resources* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.mlx4_hwq_resources*, %struct.mlx4_hwq_resources** %7, align 8
  %44 = getelementptr inbounds %struct.mlx4_hwq_resources, %struct.mlx4_hwq_resources* %43, i32 0, i32 2
  %45 = call i32 @mlx4_mtt_init(%struct.mlx4_dev* %34, i32 %38, i32 %42, i32* %44)
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %33
  br label %65

49:                                               ; preds = %33
  %50 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %51 = load %struct.mlx4_hwq_resources*, %struct.mlx4_hwq_resources** %7, align 8
  %52 = getelementptr inbounds %struct.mlx4_hwq_resources, %struct.mlx4_hwq_resources* %51, i32 0, i32 2
  %53 = load %struct.mlx4_hwq_resources*, %struct.mlx4_hwq_resources** %7, align 8
  %54 = getelementptr inbounds %struct.mlx4_hwq_resources, %struct.mlx4_hwq_resources* %53, i32 0, i32 1
  %55 = call i32 @mlx4_buf_write_mtt(%struct.mlx4_dev* %50, i32* %52, %struct.TYPE_7__* %54)
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %10, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %49
  br label %60

59:                                               ; preds = %49
  store i32 0, i32* %5, align 4
  br label %77

60:                                               ; preds = %58
  %61 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %62 = load %struct.mlx4_hwq_resources*, %struct.mlx4_hwq_resources** %7, align 8
  %63 = getelementptr inbounds %struct.mlx4_hwq_resources, %struct.mlx4_hwq_resources* %62, i32 0, i32 2
  %64 = call i32 @mlx4_mtt_cleanup(%struct.mlx4_dev* %61, i32* %63)
  br label %65

65:                                               ; preds = %60, %48
  %66 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %67 = load i32, i32* %8, align 4
  %68 = load %struct.mlx4_hwq_resources*, %struct.mlx4_hwq_resources** %7, align 8
  %69 = getelementptr inbounds %struct.mlx4_hwq_resources, %struct.mlx4_hwq_resources* %68, i32 0, i32 1
  %70 = call i32 @mlx4_buf_free(%struct.mlx4_dev* %66, i32 %67, %struct.TYPE_7__* %69)
  br label %71

71:                                               ; preds = %65, %32
  %72 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %73 = load %struct.mlx4_hwq_resources*, %struct.mlx4_hwq_resources** %7, align 8
  %74 = getelementptr inbounds %struct.mlx4_hwq_resources, %struct.mlx4_hwq_resources* %73, i32 0, i32 0
  %75 = call i32 @mlx4_db_free(%struct.mlx4_dev* %72, %struct.TYPE_6__* %74)
  %76 = load i32, i32* %10, align 4
  store i32 %76, i32* %5, align 4
  br label %77

77:                                               ; preds = %71, %59, %17
  %78 = load i32, i32* %5, align 4
  ret i32 %78
}

declare dso_local i32 @mlx4_db_alloc(%struct.mlx4_dev*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @mlx4_buf_alloc(%struct.mlx4_dev*, i32, i32, %struct.TYPE_7__*) #1

declare dso_local i32 @mlx4_mtt_init(%struct.mlx4_dev*, i32, i32, i32*) #1

declare dso_local i32 @mlx4_buf_write_mtt(%struct.mlx4_dev*, i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @mlx4_mtt_cleanup(%struct.mlx4_dev*, i32*) #1

declare dso_local i32 @mlx4_buf_free(%struct.mlx4_dev*, i32, %struct.TYPE_7__*) #1

declare dso_local i32 @mlx4_db_free(%struct.mlx4_dev*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
