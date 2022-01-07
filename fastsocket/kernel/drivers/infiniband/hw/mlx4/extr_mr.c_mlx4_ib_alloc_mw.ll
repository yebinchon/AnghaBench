; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mlx4/extr_mr.c_mlx4_ib_alloc_mw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mlx4/extr_mr.c_mlx4_ib_alloc_mw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mw = type { i32 }
%struct.ib_pd = type { i32 }
%struct.mlx4_ib_dev = type { i32 }
%struct.mlx4_ib_mw = type { %struct.TYPE_6__, %struct.ib_mw }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ib_mw* @mlx4_ib_alloc_mw(%struct.ib_pd* %0, i32 %1) #0 {
  %3 = alloca %struct.ib_mw*, align 8
  %4 = alloca %struct.ib_pd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx4_ib_dev*, align 8
  %7 = alloca %struct.mlx4_ib_mw*, align 8
  %8 = alloca i32, align 4
  store %struct.ib_pd* %0, %struct.ib_pd** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.ib_pd*, %struct.ib_pd** %4, align 8
  %10 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.mlx4_ib_dev* @to_mdev(i32 %11)
  store %struct.mlx4_ib_dev* %12, %struct.mlx4_ib_dev** %6, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.mlx4_ib_mw* @kmalloc(i32 8, i32 %13)
  store %struct.mlx4_ib_mw* %14, %struct.mlx4_ib_mw** %7, align 8
  %15 = load %struct.mlx4_ib_mw*, %struct.mlx4_ib_mw** %7, align 8
  %16 = icmp ne %struct.mlx4_ib_mw* %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  %20 = call %struct.ib_mw* @ERR_PTR(i32 %19)
  store %struct.ib_mw* %20, %struct.ib_mw** %3, align 8
  br label %69

21:                                               ; preds = %2
  %22 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %6, align 8
  %23 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.ib_pd*, %struct.ib_pd** %4, align 8
  %26 = call %struct.TYPE_5__* @to_mpd(%struct.ib_pd* %25)
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @to_mlx4_type(i32 %29)
  %31 = load %struct.mlx4_ib_mw*, %struct.mlx4_ib_mw** %7, align 8
  %32 = getelementptr inbounds %struct.mlx4_ib_mw, %struct.mlx4_ib_mw* %31, i32 0, i32 0
  %33 = call i32 @mlx4_mw_alloc(i32 %24, i32 %28, i32 %30, %struct.TYPE_6__* %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %21
  br label %64

37:                                               ; preds = %21
  %38 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %6, align 8
  %39 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.mlx4_ib_mw*, %struct.mlx4_ib_mw** %7, align 8
  %42 = getelementptr inbounds %struct.mlx4_ib_mw, %struct.mlx4_ib_mw* %41, i32 0, i32 0
  %43 = call i32 @mlx4_mw_enable(i32 %40, %struct.TYPE_6__* %42)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %37
  br label %57

47:                                               ; preds = %37
  %48 = load %struct.mlx4_ib_mw*, %struct.mlx4_ib_mw** %7, align 8
  %49 = getelementptr inbounds %struct.mlx4_ib_mw, %struct.mlx4_ib_mw* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.mlx4_ib_mw*, %struct.mlx4_ib_mw** %7, align 8
  %53 = getelementptr inbounds %struct.mlx4_ib_mw, %struct.mlx4_ib_mw* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.ib_mw, %struct.ib_mw* %53, i32 0, i32 0
  store i32 %51, i32* %54, align 4
  %55 = load %struct.mlx4_ib_mw*, %struct.mlx4_ib_mw** %7, align 8
  %56 = getelementptr inbounds %struct.mlx4_ib_mw, %struct.mlx4_ib_mw* %55, i32 0, i32 1
  store %struct.ib_mw* %56, %struct.ib_mw** %3, align 8
  br label %69

57:                                               ; preds = %46
  %58 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %6, align 8
  %59 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.mlx4_ib_mw*, %struct.mlx4_ib_mw** %7, align 8
  %62 = getelementptr inbounds %struct.mlx4_ib_mw, %struct.mlx4_ib_mw* %61, i32 0, i32 0
  %63 = call i32 @mlx4_mw_free(i32 %60, %struct.TYPE_6__* %62)
  br label %64

64:                                               ; preds = %57, %36
  %65 = load %struct.mlx4_ib_mw*, %struct.mlx4_ib_mw** %7, align 8
  %66 = call i32 @kfree(%struct.mlx4_ib_mw* %65)
  %67 = load i32, i32* %8, align 4
  %68 = call %struct.ib_mw* @ERR_PTR(i32 %67)
  store %struct.ib_mw* %68, %struct.ib_mw** %3, align 8
  br label %69

69:                                               ; preds = %64, %47, %17
  %70 = load %struct.ib_mw*, %struct.ib_mw** %3, align 8
  ret %struct.ib_mw* %70
}

declare dso_local %struct.mlx4_ib_dev* @to_mdev(i32) #1

declare dso_local %struct.mlx4_ib_mw* @kmalloc(i32, i32) #1

declare dso_local %struct.ib_mw* @ERR_PTR(i32) #1

declare dso_local i32 @mlx4_mw_alloc(i32, i32, i32, %struct.TYPE_6__*) #1

declare dso_local %struct.TYPE_5__* @to_mpd(%struct.ib_pd*) #1

declare dso_local i32 @to_mlx4_type(i32) #1

declare dso_local i32 @mlx4_mw_enable(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @mlx4_mw_free(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @kfree(%struct.mlx4_ib_mw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
