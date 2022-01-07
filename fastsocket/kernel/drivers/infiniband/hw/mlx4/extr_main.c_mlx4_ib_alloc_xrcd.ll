; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mlx4/extr_main.c_mlx4_ib_alloc_xrcd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mlx4/extr_main.c_mlx4_ib_alloc_xrcd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_xrcd = type { i32 }
%struct.ib_device = type { i32 }
%struct.ib_ucontext = type { i32 }
%struct.ib_udata = type { i32 }
%struct.mlx4_ib_xrcd = type { i32, i32, %struct.ib_xrcd, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@MLX4_DEV_CAP_FLAG_XRC = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ib_xrcd* (%struct.ib_device*, %struct.ib_ucontext*, %struct.ib_udata*)* @mlx4_ib_alloc_xrcd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ib_xrcd* @mlx4_ib_alloc_xrcd(%struct.ib_device* %0, %struct.ib_ucontext* %1, %struct.ib_udata* %2) #0 {
  %4 = alloca %struct.ib_xrcd*, align 8
  %5 = alloca %struct.ib_device*, align 8
  %6 = alloca %struct.ib_ucontext*, align 8
  %7 = alloca %struct.ib_udata*, align 8
  %8 = alloca %struct.mlx4_ib_xrcd*, align 8
  %9 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %5, align 8
  store %struct.ib_ucontext* %1, %struct.ib_ucontext** %6, align 8
  store %struct.ib_udata* %2, %struct.ib_udata** %7, align 8
  %10 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %11 = call %struct.TYPE_6__* @to_mdev(%struct.ib_device* %10)
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @MLX4_DEV_CAP_FLAG_XRC, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* @ENOSYS, align 4
  %22 = sub nsw i32 0, %21
  %23 = call %struct.ib_xrcd* @ERR_PTR(i32 %22)
  store %struct.ib_xrcd* %23, %struct.ib_xrcd** %4, align 8
  br label %97

24:                                               ; preds = %3
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.mlx4_ib_xrcd* @kmalloc(i32 16, i32 %25)
  store %struct.mlx4_ib_xrcd* %26, %struct.mlx4_ib_xrcd** %8, align 8
  %27 = load %struct.mlx4_ib_xrcd*, %struct.mlx4_ib_xrcd** %8, align 8
  %28 = icmp ne %struct.mlx4_ib_xrcd* %27, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %24
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  %32 = call %struct.ib_xrcd* @ERR_PTR(i32 %31)
  store %struct.ib_xrcd* %32, %struct.ib_xrcd** %4, align 8
  br label %97

33:                                               ; preds = %24
  %34 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %35 = call %struct.TYPE_6__* @to_mdev(%struct.ib_device* %34)
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %36, align 8
  %38 = load %struct.mlx4_ib_xrcd*, %struct.mlx4_ib_xrcd** %8, align 8
  %39 = getelementptr inbounds %struct.mlx4_ib_xrcd, %struct.mlx4_ib_xrcd* %38, i32 0, i32 0
  %40 = call i32 @mlx4_xrcd_alloc(%struct.TYPE_7__* %37, i32* %39)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %33
  br label %92

44:                                               ; preds = %33
  %45 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %46 = call i32 @ib_alloc_pd(%struct.ib_device* %45)
  %47 = load %struct.mlx4_ib_xrcd*, %struct.mlx4_ib_xrcd** %8, align 8
  %48 = getelementptr inbounds %struct.mlx4_ib_xrcd, %struct.mlx4_ib_xrcd* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load %struct.mlx4_ib_xrcd*, %struct.mlx4_ib_xrcd** %8, align 8
  %50 = getelementptr inbounds %struct.mlx4_ib_xrcd, %struct.mlx4_ib_xrcd* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @IS_ERR(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %44
  %55 = load %struct.mlx4_ib_xrcd*, %struct.mlx4_ib_xrcd** %8, align 8
  %56 = getelementptr inbounds %struct.mlx4_ib_xrcd, %struct.mlx4_ib_xrcd* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @PTR_ERR(i32 %57)
  store i32 %58, i32* %9, align 4
  br label %83

59:                                               ; preds = %44
  %60 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %61 = load %struct.mlx4_ib_xrcd*, %struct.mlx4_ib_xrcd** %8, align 8
  %62 = call i32 @ib_create_cq(%struct.ib_device* %60, i32* null, i32* null, %struct.mlx4_ib_xrcd* %61, i32 1, i32 0)
  %63 = load %struct.mlx4_ib_xrcd*, %struct.mlx4_ib_xrcd** %8, align 8
  %64 = getelementptr inbounds %struct.mlx4_ib_xrcd, %struct.mlx4_ib_xrcd* %63, i32 0, i32 3
  store i32 %62, i32* %64, align 4
  %65 = load %struct.mlx4_ib_xrcd*, %struct.mlx4_ib_xrcd** %8, align 8
  %66 = getelementptr inbounds %struct.mlx4_ib_xrcd, %struct.mlx4_ib_xrcd* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = call i64 @IS_ERR(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %59
  %71 = load %struct.mlx4_ib_xrcd*, %struct.mlx4_ib_xrcd** %8, align 8
  %72 = getelementptr inbounds %struct.mlx4_ib_xrcd, %struct.mlx4_ib_xrcd* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @PTR_ERR(i32 %73)
  store i32 %74, i32* %9, align 4
  br label %78

75:                                               ; preds = %59
  %76 = load %struct.mlx4_ib_xrcd*, %struct.mlx4_ib_xrcd** %8, align 8
  %77 = getelementptr inbounds %struct.mlx4_ib_xrcd, %struct.mlx4_ib_xrcd* %76, i32 0, i32 2
  store %struct.ib_xrcd* %77, %struct.ib_xrcd** %4, align 8
  br label %97

78:                                               ; preds = %70
  %79 = load %struct.mlx4_ib_xrcd*, %struct.mlx4_ib_xrcd** %8, align 8
  %80 = getelementptr inbounds %struct.mlx4_ib_xrcd, %struct.mlx4_ib_xrcd* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @ib_dealloc_pd(i32 %81)
  br label %83

83:                                               ; preds = %78, %54
  %84 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %85 = call %struct.TYPE_6__* @to_mdev(%struct.ib_device* %84)
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %86, align 8
  %88 = load %struct.mlx4_ib_xrcd*, %struct.mlx4_ib_xrcd** %8, align 8
  %89 = getelementptr inbounds %struct.mlx4_ib_xrcd, %struct.mlx4_ib_xrcd* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @mlx4_xrcd_free(%struct.TYPE_7__* %87, i32 %90)
  br label %92

92:                                               ; preds = %83, %43
  %93 = load %struct.mlx4_ib_xrcd*, %struct.mlx4_ib_xrcd** %8, align 8
  %94 = call i32 @kfree(%struct.mlx4_ib_xrcd* %93)
  %95 = load i32, i32* %9, align 4
  %96 = call %struct.ib_xrcd* @ERR_PTR(i32 %95)
  store %struct.ib_xrcd* %96, %struct.ib_xrcd** %4, align 8
  br label %97

97:                                               ; preds = %92, %75, %29, %20
  %98 = load %struct.ib_xrcd*, %struct.ib_xrcd** %4, align 8
  ret %struct.ib_xrcd* %98
}

declare dso_local %struct.TYPE_6__* @to_mdev(%struct.ib_device*) #1

declare dso_local %struct.ib_xrcd* @ERR_PTR(i32) #1

declare dso_local %struct.mlx4_ib_xrcd* @kmalloc(i32, i32) #1

declare dso_local i32 @mlx4_xrcd_alloc(%struct.TYPE_7__*, i32*) #1

declare dso_local i32 @ib_alloc_pd(%struct.ib_device*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @ib_create_cq(%struct.ib_device*, i32*, i32*, %struct.mlx4_ib_xrcd*, i32, i32) #1

declare dso_local i32 @ib_dealloc_pd(i32) #1

declare dso_local i32 @mlx4_xrcd_free(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @kfree(%struct.mlx4_ib_xrcd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
