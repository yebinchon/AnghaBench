; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mlx4/extr_mcg.c_mlx4_ib_mcg_port_cleanup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mlx4/extr_mcg.c_mlx4_ib_mcg_port_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_ib_demux_ctx = type { i32 }
%struct.clean_work = type { i32, i32, %struct.mlx4_ib_demux_ctx* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"failed allocating work for cleanup\0A\00", align 1
@mcg_clean_task = common dso_local global i32 0, align 4
@clean_wq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx4_ib_mcg_port_cleanup(%struct.mlx4_ib_demux_ctx* %0, i32 %1) #0 {
  %3 = alloca %struct.mlx4_ib_demux_ctx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.clean_work*, align 8
  store %struct.mlx4_ib_demux_ctx* %0, %struct.mlx4_ib_demux_ctx** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.mlx4_ib_demux_ctx*, %struct.mlx4_ib_demux_ctx** %3, align 8
  %7 = getelementptr inbounds %struct.mlx4_ib_demux_ctx, %struct.mlx4_ib_demux_ctx* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %46

11:                                               ; preds = %2
  %12 = load %struct.mlx4_ib_demux_ctx*, %struct.mlx4_ib_demux_ctx** %3, align 8
  %13 = getelementptr inbounds %struct.mlx4_ib_demux_ctx, %struct.mlx4_ib_demux_ctx* %12, i32 0, i32 0
  store i32 1, i32* %13, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %11
  %17 = load %struct.mlx4_ib_demux_ctx*, %struct.mlx4_ib_demux_ctx** %3, align 8
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @_mlx4_ib_mcg_port_cleanup(%struct.mlx4_ib_demux_ctx* %17, i32 %18)
  %20 = load %struct.mlx4_ib_demux_ctx*, %struct.mlx4_ib_demux_ctx** %3, align 8
  %21 = getelementptr inbounds %struct.mlx4_ib_demux_ctx, %struct.mlx4_ib_demux_ctx* %20, i32 0, i32 0
  store i32 0, i32* %21, align 4
  br label %46

22:                                               ; preds = %11
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.clean_work* @kmalloc(i32 16, i32 %23)
  store %struct.clean_work* %24, %struct.clean_work** %5, align 8
  %25 = load %struct.clean_work*, %struct.clean_work** %5, align 8
  %26 = icmp ne %struct.clean_work* %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %22
  %28 = load %struct.mlx4_ib_demux_ctx*, %struct.mlx4_ib_demux_ctx** %3, align 8
  %29 = getelementptr inbounds %struct.mlx4_ib_demux_ctx, %struct.mlx4_ib_demux_ctx* %28, i32 0, i32 0
  store i32 0, i32* %29, align 4
  %30 = call i32 @mcg_warn(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %46

31:                                               ; preds = %22
  %32 = load %struct.mlx4_ib_demux_ctx*, %struct.mlx4_ib_demux_ctx** %3, align 8
  %33 = load %struct.clean_work*, %struct.clean_work** %5, align 8
  %34 = getelementptr inbounds %struct.clean_work, %struct.clean_work* %33, i32 0, i32 2
  store %struct.mlx4_ib_demux_ctx* %32, %struct.mlx4_ib_demux_ctx** %34, align 8
  %35 = load i32, i32* %4, align 4
  %36 = load %struct.clean_work*, %struct.clean_work** %5, align 8
  %37 = getelementptr inbounds %struct.clean_work, %struct.clean_work* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load %struct.clean_work*, %struct.clean_work** %5, align 8
  %39 = getelementptr inbounds %struct.clean_work, %struct.clean_work* %38, i32 0, i32 1
  %40 = load i32, i32* @mcg_clean_task, align 4
  %41 = call i32 @INIT_WORK(i32* %39, i32 %40)
  %42 = load i32, i32* @clean_wq, align 4
  %43 = load %struct.clean_work*, %struct.clean_work** %5, align 8
  %44 = getelementptr inbounds %struct.clean_work, %struct.clean_work* %43, i32 0, i32 1
  %45 = call i32 @queue_work(i32 %42, i32* %44)
  br label %46

46:                                               ; preds = %31, %27, %16, %10
  ret void
}

declare dso_local i32 @_mlx4_ib_mcg_port_cleanup(%struct.mlx4_ib_demux_ctx*, i32) #1

declare dso_local %struct.clean_work* @kmalloc(i32, i32) #1

declare dso_local i32 @mcg_warn(i8*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
