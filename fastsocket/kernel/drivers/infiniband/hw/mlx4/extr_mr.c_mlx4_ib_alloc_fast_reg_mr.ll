; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mlx4/extr_mr.c_mlx4_ib_alloc_fast_reg_mr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mlx4/extr_mr.c_mlx4_ib_alloc_fast_reg_mr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mr = type { i32, i32 }
%struct.ib_pd = type { i32 }
%struct.mlx4_ib_dev = type { i32 }
%struct.mlx4_ib_mr = type { %struct.TYPE_6__, %struct.ib_mr, i32* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ib_mr* @mlx4_ib_alloc_fast_reg_mr(%struct.ib_pd* %0, i32 %1) #0 {
  %3 = alloca %struct.ib_mr*, align 8
  %4 = alloca %struct.ib_pd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx4_ib_dev*, align 8
  %7 = alloca %struct.mlx4_ib_mr*, align 8
  %8 = alloca i32, align 4
  store %struct.ib_pd* %0, %struct.ib_pd** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.ib_pd*, %struct.ib_pd** %4, align 8
  %10 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.mlx4_ib_dev* @to_mdev(i32 %11)
  store %struct.mlx4_ib_dev* %12, %struct.mlx4_ib_dev** %6, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.mlx4_ib_mr* @kmalloc(i32 24, i32 %13)
  store %struct.mlx4_ib_mr* %14, %struct.mlx4_ib_mr** %7, align 8
  %15 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %7, align 8
  %16 = icmp ne %struct.mlx4_ib_mr* %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  %20 = call %struct.ib_mr* @ERR_PTR(i32 %19)
  store %struct.ib_mr* %20, %struct.ib_mr** %3, align 8
  br label %73

21:                                               ; preds = %2
  %22 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %6, align 8
  %23 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.ib_pd*, %struct.ib_pd** %4, align 8
  %26 = call %struct.TYPE_5__* @to_mpd(%struct.ib_pd* %25)
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %7, align 8
  %31 = getelementptr inbounds %struct.mlx4_ib_mr, %struct.mlx4_ib_mr* %30, i32 0, i32 0
  %32 = call i32 @mlx4_mr_alloc(i32 %24, i32 %28, i32 0, i32 0, i32 0, i32 %29, i32 0, %struct.TYPE_6__* %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %21
  br label %68

36:                                               ; preds = %21
  %37 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %6, align 8
  %38 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %7, align 8
  %41 = getelementptr inbounds %struct.mlx4_ib_mr, %struct.mlx4_ib_mr* %40, i32 0, i32 0
  %42 = call i32 @mlx4_mr_enable(i32 %39, %struct.TYPE_6__* %41)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %36
  br label %61

46:                                               ; preds = %36
  %47 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %7, align 8
  %48 = getelementptr inbounds %struct.mlx4_ib_mr, %struct.mlx4_ib_mr* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %7, align 8
  %52 = getelementptr inbounds %struct.mlx4_ib_mr, %struct.mlx4_ib_mr* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %52, i32 0, i32 0
  store i32 %50, i32* %53, align 4
  %54 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %7, align 8
  %55 = getelementptr inbounds %struct.mlx4_ib_mr, %struct.mlx4_ib_mr* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %55, i32 0, i32 1
  store i32 %50, i32* %56, align 4
  %57 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %7, align 8
  %58 = getelementptr inbounds %struct.mlx4_ib_mr, %struct.mlx4_ib_mr* %57, i32 0, i32 2
  store i32* null, i32** %58, align 8
  %59 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %7, align 8
  %60 = getelementptr inbounds %struct.mlx4_ib_mr, %struct.mlx4_ib_mr* %59, i32 0, i32 1
  store %struct.ib_mr* %60, %struct.ib_mr** %3, align 8
  br label %73

61:                                               ; preds = %45
  %62 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %6, align 8
  %63 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %7, align 8
  %66 = getelementptr inbounds %struct.mlx4_ib_mr, %struct.mlx4_ib_mr* %65, i32 0, i32 0
  %67 = call i32 @mlx4_mr_free(i32 %64, %struct.TYPE_6__* %66)
  br label %68

68:                                               ; preds = %61, %35
  %69 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %7, align 8
  %70 = call i32 @kfree(%struct.mlx4_ib_mr* %69)
  %71 = load i32, i32* %8, align 4
  %72 = call %struct.ib_mr* @ERR_PTR(i32 %71)
  store %struct.ib_mr* %72, %struct.ib_mr** %3, align 8
  br label %73

73:                                               ; preds = %68, %46, %17
  %74 = load %struct.ib_mr*, %struct.ib_mr** %3, align 8
  ret %struct.ib_mr* %74
}

declare dso_local %struct.mlx4_ib_dev* @to_mdev(i32) #1

declare dso_local %struct.mlx4_ib_mr* @kmalloc(i32, i32) #1

declare dso_local %struct.ib_mr* @ERR_PTR(i32) #1

declare dso_local i32 @mlx4_mr_alloc(i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_6__*) #1

declare dso_local %struct.TYPE_5__* @to_mpd(%struct.ib_pd*) #1

declare dso_local i32 @mlx4_mr_enable(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @mlx4_mr_free(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @kfree(%struct.mlx4_ib_mr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
