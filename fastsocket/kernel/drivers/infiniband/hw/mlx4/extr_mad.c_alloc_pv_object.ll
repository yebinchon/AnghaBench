; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mlx4/extr_mad.c_alloc_pv_object.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mlx4/extr_mad.c_alloc_pv_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_ib_dev = type { i32 }
%struct.mlx4_ib_demux_pv_ctx = type { i32, i32, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"failed allocating pv resource context for port %d, slave %d\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_ib_dev*, i32, i32, %struct.mlx4_ib_demux_pv_ctx**)* @alloc_pv_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_pv_object(%struct.mlx4_ib_dev* %0, i32 %1, i32 %2, %struct.mlx4_ib_demux_pv_ctx** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx4_ib_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mlx4_ib_demux_pv_ctx**, align 8
  %10 = alloca %struct.mlx4_ib_demux_pv_ctx*, align 8
  store %struct.mlx4_ib_dev* %0, %struct.mlx4_ib_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.mlx4_ib_demux_pv_ctx** %3, %struct.mlx4_ib_demux_pv_ctx*** %9, align 8
  %11 = load %struct.mlx4_ib_demux_pv_ctx**, %struct.mlx4_ib_demux_pv_ctx*** %9, align 8
  store %struct.mlx4_ib_demux_pv_ctx* null, %struct.mlx4_ib_demux_pv_ctx** %11, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.mlx4_ib_demux_pv_ctx* @kzalloc(i32 16, i32 %12)
  store %struct.mlx4_ib_demux_pv_ctx* %13, %struct.mlx4_ib_demux_pv_ctx** %10, align 8
  %14 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %10, align 8
  %15 = icmp ne %struct.mlx4_ib_demux_pv_ctx* %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %4
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @pr_err(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %18)
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %35

22:                                               ; preds = %4
  %23 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %6, align 8
  %24 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %23, i32 0, i32 0
  %25 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %10, align 8
  %26 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %25, i32 0, i32 2
  store i32* %24, i32** %26, align 8
  %27 = load i32, i32* %8, align 4
  %28 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %10, align 8
  %29 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %10, align 8
  %32 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %10, align 8
  %34 = load %struct.mlx4_ib_demux_pv_ctx**, %struct.mlx4_ib_demux_pv_ctx*** %9, align 8
  store %struct.mlx4_ib_demux_pv_ctx* %33, %struct.mlx4_ib_demux_pv_ctx** %34, align 8
  store i32 0, i32* %5, align 4
  br label %35

35:                                               ; preds = %22, %16
  %36 = load i32, i32* %5, align 4
  ret i32 %36
}

declare dso_local %struct.mlx4_ib_demux_pv_ctx* @kzalloc(i32, i32) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
