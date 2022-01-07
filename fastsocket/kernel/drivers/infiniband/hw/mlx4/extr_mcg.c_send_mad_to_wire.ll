; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mlx4/extr_mcg.c_send_mad_to_wire.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mlx4/extr_mcg.c_send_mad_to_wire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_ib_demux_ctx = type { i32, %struct.mlx4_ib_dev* }
%struct.mlx4_ib_dev = type { i32, i32, i32* }
%struct.ib_mad = type { i32 }
%struct.ib_ah_attr = type { i32 }

@EAGAIN = common dso_local global i32 0, align 4
@IB_QPT_GSI = common dso_local global i32 0, align 4
@IB_QP1_QKEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_ib_demux_ctx*, %struct.ib_mad*)* @send_mad_to_wire to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_mad_to_wire(%struct.mlx4_ib_demux_ctx* %0, %struct.ib_mad* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx4_ib_demux_ctx*, align 8
  %5 = alloca %struct.ib_mad*, align 8
  %6 = alloca %struct.mlx4_ib_dev*, align 8
  %7 = alloca %struct.ib_ah_attr, align 4
  store %struct.mlx4_ib_demux_ctx* %0, %struct.mlx4_ib_demux_ctx** %4, align 8
  store %struct.ib_mad* %1, %struct.ib_mad** %5, align 8
  %8 = load %struct.mlx4_ib_demux_ctx*, %struct.mlx4_ib_demux_ctx** %4, align 8
  %9 = getelementptr inbounds %struct.mlx4_ib_demux_ctx, %struct.mlx4_ib_demux_ctx* %8, i32 0, i32 1
  %10 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %9, align 8
  store %struct.mlx4_ib_dev* %10, %struct.mlx4_ib_dev** %6, align 8
  %11 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %6, align 8
  %12 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %11, i32 0, i32 1
  %13 = call i32 @spin_lock(i32* %12)
  %14 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %6, align 8
  %15 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %14, i32 0, i32 2
  %16 = load i32*, i32** %15, align 8
  %17 = load %struct.mlx4_ib_demux_ctx*, %struct.mlx4_ib_demux_ctx** %4, align 8
  %18 = getelementptr inbounds %struct.mlx4_ib_demux_ctx, %struct.mlx4_ib_demux_ctx* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sub nsw i32 %19, 1
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %16, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %2
  %26 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %6, align 8
  %27 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %26, i32 0, i32 1
  %28 = call i32 @spin_unlock(i32* %27)
  %29 = load i32, i32* @EAGAIN, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %58

31:                                               ; preds = %2
  %32 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %6, align 8
  %33 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %32, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  %35 = load %struct.mlx4_ib_demux_ctx*, %struct.mlx4_ib_demux_ctx** %4, align 8
  %36 = getelementptr inbounds %struct.mlx4_ib_demux_ctx, %struct.mlx4_ib_demux_ctx* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = sub nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %34, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @mlx4_ib_query_ah(i32 %41, %struct.ib_ah_attr* %7)
  %43 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %6, align 8
  %44 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %43, i32 0, i32 1
  %45 = call i32 @spin_unlock(i32* %44)
  %46 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %6, align 8
  %47 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %6, align 8
  %48 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @mlx4_master_func_num(i32 %49)
  %51 = load %struct.mlx4_ib_demux_ctx*, %struct.mlx4_ib_demux_ctx** %4, align 8
  %52 = getelementptr inbounds %struct.mlx4_ib_demux_ctx, %struct.mlx4_ib_demux_ctx* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @IB_QPT_GSI, align 4
  %55 = load i32, i32* @IB_QP1_QKEY, align 4
  %56 = load %struct.ib_mad*, %struct.ib_mad** %5, align 8
  %57 = call i32 @mlx4_ib_send_to_wire(%struct.mlx4_ib_dev* %46, i32 %50, i32 %53, i32 %54, i32 0, i32 1, i32 %55, %struct.ib_ah_attr* %7, %struct.ib_mad* %56)
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %31, %25
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @mlx4_ib_query_ah(i32, %struct.ib_ah_attr*) #1

declare dso_local i32 @mlx4_ib_send_to_wire(%struct.mlx4_ib_dev*, i32, i32, i32, i32, i32, i32, %struct.ib_ah_attr*, %struct.ib_mad*) #1

declare dso_local i32 @mlx4_master_func_num(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
