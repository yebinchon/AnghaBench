; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mlx4/extr_cq.c_mlx4_alloc_resize_umem.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mlx4/extr_cq.c_mlx4_alloc_resize_umem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_ib_dev = type { i32 }
%struct.mlx4_ib_cq = type { %struct.TYPE_5__*, i64, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.ib_udata = type { i32 }
%struct.mlx4_ib_resize_cq = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_ib_dev*, %struct.mlx4_ib_cq*, i32, %struct.ib_udata*)* @mlx4_alloc_resize_umem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_alloc_resize_umem(%struct.mlx4_ib_dev* %0, %struct.mlx4_ib_cq* %1, i32 %2, %struct.ib_udata* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx4_ib_dev*, align 8
  %7 = alloca %struct.mlx4_ib_cq*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ib_udata*, align 8
  %10 = alloca %struct.mlx4_ib_resize_cq, align 4
  %11 = alloca i32, align 4
  store %struct.mlx4_ib_dev* %0, %struct.mlx4_ib_dev** %6, align 8
  store %struct.mlx4_ib_cq* %1, %struct.mlx4_ib_cq** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.ib_udata* %3, %struct.ib_udata** %9, align 8
  %12 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %7, align 8
  %13 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = load i32, i32* @EBUSY, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %5, align 4
  br label %72

19:                                               ; preds = %4
  %20 = load %struct.ib_udata*, %struct.ib_udata** %9, align 8
  %21 = call i64 @ib_copy_from_udata(%struct.mlx4_ib_resize_cq* %10, %struct.ib_udata* %20, i32 4)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load i32, i32* @EFAULT, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %72

26:                                               ; preds = %19
  %27 = load i32, i32* @GFP_ATOMIC, align 4
  %28 = call %struct.TYPE_5__* @kmalloc(i32 8, i32 %27)
  %29 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %7, align 8
  %30 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %29, i32 0, i32 0
  store %struct.TYPE_5__* %28, %struct.TYPE_5__** %30, align 8
  %31 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %7, align 8
  %32 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %31, i32 0, i32 0
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = icmp ne %struct.TYPE_5__* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %26
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %5, align 4
  br label %72

38:                                               ; preds = %26
  %39 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %6, align 8
  %40 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %7, align 8
  %41 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %40, i32 0, i32 2
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %7, align 8
  %46 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %45, i32 0, i32 0
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 1
  %49 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %7, align 8
  %50 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.mlx4_ib_resize_cq, %struct.mlx4_ib_resize_cq* %10, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @mlx4_ib_get_cq_umem(%struct.mlx4_ib_dev* %39, i32 %44, i32* %48, i64* %50, i32 %52, i32 %53)
  store i32 %54, i32* %11, align 4
  %55 = load i32, i32* %11, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %38
  %58 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %7, align 8
  %59 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %58, i32 0, i32 0
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  %61 = call i32 @kfree(%struct.TYPE_5__* %60)
  %62 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %7, align 8
  %63 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %62, i32 0, i32 0
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %63, align 8
  %64 = load i32, i32* %11, align 4
  store i32 %64, i32* %5, align 4
  br label %72

65:                                               ; preds = %38
  %66 = load i32, i32* %8, align 4
  %67 = sub nsw i32 %66, 1
  %68 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %7, align 8
  %69 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %68, i32 0, i32 0
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  store i32 %67, i32* %71, align 4
  store i32 0, i32* %5, align 4
  br label %72

72:                                               ; preds = %65, %57, %35, %23, %16
  %73 = load i32, i32* %5, align 4
  ret i32 %73
}

declare dso_local i64 @ib_copy_from_udata(%struct.mlx4_ib_resize_cq*, %struct.ib_udata*, i32) #1

declare dso_local %struct.TYPE_5__* @kmalloc(i32, i32) #1

declare dso_local i32 @mlx4_ib_get_cq_umem(%struct.mlx4_ib_dev*, i32, i32*, i64*, i32, i32) #1

declare dso_local i32 @kfree(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
