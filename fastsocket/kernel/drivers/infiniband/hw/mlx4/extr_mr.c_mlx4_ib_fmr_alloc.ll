; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mlx4/extr_mr.c_mlx4_ib_fmr_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mlx4/extr_mr.c_mlx4_ib_fmr_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_fmr = type { i32, i32 }
%struct.ib_pd = type { i32 }
%struct.ib_fmr_attr = type { i32, i32, i32 }
%struct.mlx4_ib_dev = type { i32 }
%struct.mlx4_ib_fmr = type { %struct.TYPE_7__, %struct.ib_fmr }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ib_fmr* @mlx4_ib_fmr_alloc(%struct.ib_pd* %0, i32 %1, %struct.ib_fmr_attr* %2) #0 {
  %4 = alloca %struct.ib_fmr*, align 8
  %5 = alloca %struct.ib_pd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ib_fmr_attr*, align 8
  %8 = alloca %struct.mlx4_ib_dev*, align 8
  %9 = alloca %struct.mlx4_ib_fmr*, align 8
  %10 = alloca i32, align 4
  store %struct.ib_pd* %0, %struct.ib_pd** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ib_fmr_attr* %2, %struct.ib_fmr_attr** %7, align 8
  %11 = load %struct.ib_pd*, %struct.ib_pd** %5, align 8
  %12 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.mlx4_ib_dev* @to_mdev(i32 %13)
  store %struct.mlx4_ib_dev* %14, %struct.mlx4_ib_dev** %8, align 8
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.mlx4_ib_fmr* @kmalloc(i32 12, i32 %17)
  store %struct.mlx4_ib_fmr* %18, %struct.mlx4_ib_fmr** %9, align 8
  %19 = load %struct.mlx4_ib_fmr*, %struct.mlx4_ib_fmr** %9, align 8
  %20 = icmp ne %struct.mlx4_ib_fmr* %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  %24 = call %struct.ib_fmr* @ERR_PTR(i32 %23)
  store %struct.ib_fmr* %24, %struct.ib_fmr** %4, align 8
  br label %93

25:                                               ; preds = %3
  %26 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %8, align 8
  %27 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.ib_pd*, %struct.ib_pd** %5, align 8
  %30 = call %struct.TYPE_5__* @to_mpd(%struct.ib_pd* %29)
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @convert_access(i32 %33)
  %35 = load %struct.ib_fmr_attr*, %struct.ib_fmr_attr** %7, align 8
  %36 = getelementptr inbounds %struct.ib_fmr_attr, %struct.ib_fmr_attr* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.ib_fmr_attr*, %struct.ib_fmr_attr** %7, align 8
  %39 = getelementptr inbounds %struct.ib_fmr_attr, %struct.ib_fmr_attr* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.ib_fmr_attr*, %struct.ib_fmr_attr** %7, align 8
  %42 = getelementptr inbounds %struct.ib_fmr_attr, %struct.ib_fmr_attr* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.mlx4_ib_fmr*, %struct.mlx4_ib_fmr** %9, align 8
  %45 = getelementptr inbounds %struct.mlx4_ib_fmr, %struct.mlx4_ib_fmr* %44, i32 0, i32 0
  %46 = call i32 @mlx4_fmr_alloc(i32 %28, i32 %32, i32 %34, i32 %37, i32 %40, i32 %43, %struct.TYPE_7__* %45)
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %10, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %25
  br label %88

50:                                               ; preds = %25
  %51 = load %struct.ib_pd*, %struct.ib_pd** %5, align 8
  %52 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call %struct.mlx4_ib_dev* @to_mdev(i32 %53)
  %55 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.mlx4_ib_fmr*, %struct.mlx4_ib_fmr** %9, align 8
  %58 = getelementptr inbounds %struct.mlx4_ib_fmr, %struct.mlx4_ib_fmr* %57, i32 0, i32 0
  %59 = call i32 @mlx4_fmr_enable(i32 %56, %struct.TYPE_7__* %58)
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* %10, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %50
  br label %77

63:                                               ; preds = %50
  %64 = load %struct.mlx4_ib_fmr*, %struct.mlx4_ib_fmr** %9, align 8
  %65 = getelementptr inbounds %struct.mlx4_ib_fmr, %struct.mlx4_ib_fmr* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.mlx4_ib_fmr*, %struct.mlx4_ib_fmr** %9, align 8
  %70 = getelementptr inbounds %struct.mlx4_ib_fmr, %struct.mlx4_ib_fmr* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.ib_fmr, %struct.ib_fmr* %70, i32 0, i32 0
  store i32 %68, i32* %71, align 4
  %72 = load %struct.mlx4_ib_fmr*, %struct.mlx4_ib_fmr** %9, align 8
  %73 = getelementptr inbounds %struct.mlx4_ib_fmr, %struct.mlx4_ib_fmr* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.ib_fmr, %struct.ib_fmr* %73, i32 0, i32 1
  store i32 %68, i32* %74, align 4
  %75 = load %struct.mlx4_ib_fmr*, %struct.mlx4_ib_fmr** %9, align 8
  %76 = getelementptr inbounds %struct.mlx4_ib_fmr, %struct.mlx4_ib_fmr* %75, i32 0, i32 1
  store %struct.ib_fmr* %76, %struct.ib_fmr** %4, align 8
  br label %93

77:                                               ; preds = %62
  %78 = load %struct.ib_pd*, %struct.ib_pd** %5, align 8
  %79 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call %struct.mlx4_ib_dev* @to_mdev(i32 %80)
  %82 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.mlx4_ib_fmr*, %struct.mlx4_ib_fmr** %9, align 8
  %85 = getelementptr inbounds %struct.mlx4_ib_fmr, %struct.mlx4_ib_fmr* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = call i32 @mlx4_mr_free(i32 %83, %struct.TYPE_6__* %86)
  br label %88

88:                                               ; preds = %77, %49
  %89 = load %struct.mlx4_ib_fmr*, %struct.mlx4_ib_fmr** %9, align 8
  %90 = call i32 @kfree(%struct.mlx4_ib_fmr* %89)
  %91 = load i32, i32* %10, align 4
  %92 = call %struct.ib_fmr* @ERR_PTR(i32 %91)
  store %struct.ib_fmr* %92, %struct.ib_fmr** %4, align 8
  br label %93

93:                                               ; preds = %88, %63, %21
  %94 = load %struct.ib_fmr*, %struct.ib_fmr** %4, align 8
  ret %struct.ib_fmr* %94
}

declare dso_local %struct.mlx4_ib_dev* @to_mdev(i32) #1

declare dso_local %struct.mlx4_ib_fmr* @kmalloc(i32, i32) #1

declare dso_local %struct.ib_fmr* @ERR_PTR(i32) #1

declare dso_local i32 @mlx4_fmr_alloc(i32, i32, i32, i32, i32, i32, %struct.TYPE_7__*) #1

declare dso_local %struct.TYPE_5__* @to_mpd(%struct.ib_pd*) #1

declare dso_local i32 @convert_access(i32) #1

declare dso_local i32 @mlx4_fmr_enable(i32, %struct.TYPE_7__*) #1

declare dso_local i32 @mlx4_mr_free(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @kfree(%struct.mlx4_ib_fmr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
