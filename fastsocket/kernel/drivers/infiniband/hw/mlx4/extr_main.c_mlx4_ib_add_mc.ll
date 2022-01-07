; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mlx4/extr_main.c_mlx4_ib_add_mc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mlx4/extr_main.c_mlx4_ib_add_mc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_ib_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.net_device**, i32 }
%struct.net_device = type { i32 }
%struct.mlx4_ib_qp = type { i32 }
%union.ib_gid = type { i32 }
%struct.in6_addr = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_ib_add_mc(%struct.mlx4_ib_dev* %0, %struct.mlx4_ib_qp* %1, %union.ib_gid* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx4_ib_dev*, align 8
  %6 = alloca %struct.mlx4_ib_qp*, align 8
  %7 = alloca %union.ib_gid*, align 8
  %8 = alloca [6 x i32], align 16
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca i32, align 4
  store %struct.mlx4_ib_dev* %0, %struct.mlx4_ib_dev** %5, align 8
  store %struct.mlx4_ib_qp* %1, %struct.mlx4_ib_qp** %6, align 8
  store %union.ib_gid* %2, %union.ib_gid** %7, align 8
  store i32 0, i32* %10, align 4
  %11 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %6, align 8
  %12 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %68

16:                                               ; preds = %3
  %17 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %5, align 8
  %18 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = call i32 @spin_lock(i32* %19)
  %21 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %5, align 8
  %22 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load %struct.net_device**, %struct.net_device*** %23, align 8
  %25 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %6, align 8
  %26 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = sub nsw i32 %27, 1
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.net_device*, %struct.net_device** %24, i64 %29
  %31 = load %struct.net_device*, %struct.net_device** %30, align 8
  store %struct.net_device* %31, %struct.net_device** %9, align 8
  %32 = load %struct.net_device*, %struct.net_device** %9, align 8
  %33 = icmp ne %struct.net_device* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %16
  %35 = load %struct.net_device*, %struct.net_device** %9, align 8
  %36 = call i32 @dev_hold(%struct.net_device* %35)
  br label %37

37:                                               ; preds = %34, %16
  %38 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %5, align 8
  %39 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = call i32 @spin_unlock(i32* %40)
  %42 = load %struct.net_device*, %struct.net_device** %9, align 8
  %43 = icmp ne %struct.net_device* %42, null
  br i1 %43, label %44, label %66

44:                                               ; preds = %37
  %45 = load %union.ib_gid*, %union.ib_gid** %7, align 8
  %46 = bitcast %union.ib_gid* %45 to %struct.in6_addr*
  %47 = getelementptr inbounds [6 x i32], [6 x i32]* %8, i64 0, i64 0
  %48 = call i32 @rdma_get_mcast_mac(%struct.in6_addr* %46, i32* %47)
  %49 = call i32 (...) @rtnl_lock()
  %50 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %5, align 8
  %51 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load %struct.net_device**, %struct.net_device*** %52, align 8
  %54 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %6, align 8
  %55 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = sub nsw i32 %56, 1
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.net_device*, %struct.net_device** %53, i64 %58
  %60 = load %struct.net_device*, %struct.net_device** %59, align 8
  %61 = getelementptr inbounds [6 x i32], [6 x i32]* %8, i64 0, i64 0
  %62 = call i32 @dev_mc_add(%struct.net_device* %60, i32* %61, i32 6, i32 0)
  store i32 1, i32* %10, align 4
  %63 = call i32 (...) @rtnl_unlock()
  %64 = load %struct.net_device*, %struct.net_device** %9, align 8
  %65 = call i32 @dev_put(%struct.net_device* %64)
  br label %66

66:                                               ; preds = %44, %37
  %67 = load i32, i32* %10, align 4
  store i32 %67, i32* %4, align 4
  br label %68

68:                                               ; preds = %66, %15
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @dev_hold(%struct.net_device*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @rdma_get_mcast_mac(%struct.in6_addr*, i32*) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i32 @dev_mc_add(%struct.net_device*, i32*, i32, i32) #1

declare dso_local i32 @rtnl_unlock(...) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
