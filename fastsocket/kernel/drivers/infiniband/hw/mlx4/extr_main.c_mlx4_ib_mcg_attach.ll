; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mlx4/extr_main.c_mlx4_ib_mcg_attach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mlx4/extr_main.c_mlx4_ib_mcg_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_qp = type { i32 }
%union.ib_gid = type { i32 }
%struct.mlx4_ib_dev = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.mlx4_ib_qp = type { i32, i32, i32, i32, i32 }
%struct.mlx4_ib_steering = type { i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@MLX4_STEERING_MODE_DEVICE_MANAGED = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MLX4_IB_QP_BLOCK_MULTICAST_LOOPBACK = common dso_local global i32 0, align 4
@MLX4_PROT_IB_IPV6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_qp*, %union.ib_gid*, i32)* @mlx4_ib_mcg_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_ib_mcg_attach(%struct.ib_qp* %0, %union.ib_gid* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_qp*, align 8
  %6 = alloca %union.ib_gid*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mlx4_ib_dev*, align 8
  %10 = alloca %struct.mlx4_ib_qp*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.mlx4_ib_steering*, align 8
  store %struct.ib_qp* %0, %struct.ib_qp** %5, align 8
  store %union.ib_gid* %1, %union.ib_gid** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %14 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.mlx4_ib_dev* @to_mdev(i32 %15)
  store %struct.mlx4_ib_dev* %16, %struct.mlx4_ib_dev** %9, align 8
  %17 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %18 = call %struct.mlx4_ib_qp* @to_mqp(%struct.ib_qp* %17)
  store %struct.mlx4_ib_qp* %18, %struct.mlx4_ib_qp** %10, align 8
  store %struct.mlx4_ib_steering* null, %struct.mlx4_ib_steering** %12, align 8
  %19 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %9, align 8
  %20 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %19, i32 0, i32 0
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @MLX4_STEERING_MODE_DEVICE_MANAGED, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %36

27:                                               ; preds = %3
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call %struct.mlx4_ib_steering* @kmalloc(i32 12, i32 %28)
  store %struct.mlx4_ib_steering* %29, %struct.mlx4_ib_steering** %12, align 8
  %30 = load %struct.mlx4_ib_steering*, %struct.mlx4_ib_steering** %12, align 8
  %31 = icmp ne %struct.mlx4_ib_steering* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %27
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %112

35:                                               ; preds = %27
  br label %36

36:                                               ; preds = %35, %3
  %37 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %9, align 8
  %38 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %37, i32 0, i32 0
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %38, align 8
  %40 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %10, align 8
  %41 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %40, i32 0, i32 1
  %42 = load %union.ib_gid*, %union.ib_gid** %6, align 8
  %43 = bitcast %union.ib_gid* %42 to i32*
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %10, align 8
  %46 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %10, align 8
  %49 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @MLX4_IB_QP_BLOCK_MULTICAST_LOOPBACK, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  %55 = xor i1 %54, true
  %56 = zext i1 %55 to i32
  %57 = load i32, i32* @MLX4_PROT_IB_IPV6, align 4
  %58 = call i32 @mlx4_multicast_attach(%struct.TYPE_7__* %39, i32* %41, i32 %44, i32 %47, i32 %56, i32 %57, i32* %11)
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %36
  br label %108

62:                                               ; preds = %36
  %63 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %64 = load %union.ib_gid*, %union.ib_gid** %6, align 8
  %65 = call i32 @add_gid_entry(%struct.ib_qp* %63, %union.ib_gid* %64)
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %8, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %62
  br label %96

69:                                               ; preds = %62
  %70 = load %struct.mlx4_ib_steering*, %struct.mlx4_ib_steering** %12, align 8
  %71 = icmp ne %struct.mlx4_ib_steering* %70, null
  br i1 %71, label %72, label %95

72:                                               ; preds = %69
  %73 = load %struct.mlx4_ib_steering*, %struct.mlx4_ib_steering** %12, align 8
  %74 = getelementptr inbounds %struct.mlx4_ib_steering, %struct.mlx4_ib_steering* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %union.ib_gid*, %union.ib_gid** %6, align 8
  %78 = bitcast %union.ib_gid* %77 to i32*
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @memcpy(i32 %76, i32 %79, i32 16)
  %81 = load i32, i32* %11, align 4
  %82 = load %struct.mlx4_ib_steering*, %struct.mlx4_ib_steering** %12, align 8
  %83 = getelementptr inbounds %struct.mlx4_ib_steering, %struct.mlx4_ib_steering* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 4
  %84 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %10, align 8
  %85 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %84, i32 0, i32 2
  %86 = call i32 @mutex_lock(i32* %85)
  %87 = load %struct.mlx4_ib_steering*, %struct.mlx4_ib_steering** %12, align 8
  %88 = getelementptr inbounds %struct.mlx4_ib_steering, %struct.mlx4_ib_steering* %87, i32 0, i32 0
  %89 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %10, align 8
  %90 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %89, i32 0, i32 3
  %91 = call i32 @list_add(i32* %88, i32* %90)
  %92 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %10, align 8
  %93 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %92, i32 0, i32 2
  %94 = call i32 @mutex_unlock(i32* %93)
  br label %95

95:                                               ; preds = %72, %69
  store i32 0, i32* %4, align 4
  br label %112

96:                                               ; preds = %68
  %97 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %9, align 8
  %98 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %97, i32 0, i32 0
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %98, align 8
  %100 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %10, align 8
  %101 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %100, i32 0, i32 1
  %102 = load %union.ib_gid*, %union.ib_gid** %6, align 8
  %103 = bitcast %union.ib_gid* %102 to i32*
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @MLX4_PROT_IB_IPV6, align 4
  %106 = load i32, i32* %11, align 4
  %107 = call i32 @mlx4_multicast_detach(%struct.TYPE_7__* %99, i32* %101, i32 %104, i32 %105, i32 %106)
  br label %108

108:                                              ; preds = %96, %61
  %109 = load %struct.mlx4_ib_steering*, %struct.mlx4_ib_steering** %12, align 8
  %110 = call i32 @kfree(%struct.mlx4_ib_steering* %109)
  %111 = load i32, i32* %8, align 4
  store i32 %111, i32* %4, align 4
  br label %112

112:                                              ; preds = %108, %95, %32
  %113 = load i32, i32* %4, align 4
  ret i32 %113
}

declare dso_local %struct.mlx4_ib_dev* @to_mdev(i32) #1

declare dso_local %struct.mlx4_ib_qp* @to_mqp(%struct.ib_qp*) #1

declare dso_local %struct.mlx4_ib_steering* @kmalloc(i32, i32) #1

declare dso_local i32 @mlx4_multicast_attach(%struct.TYPE_7__*, i32*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @add_gid_entry(%struct.ib_qp*, %union.ib_gid*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @mlx4_multicast_detach(%struct.TYPE_7__*, i32*, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.mlx4_ib_steering*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
