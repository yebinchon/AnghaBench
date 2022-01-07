; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mlx4/extr_mcg.c_mlx4_ib_mcg_port_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mlx4/extr_mcg.c_mlx4_ib_mcg_port_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_ib_demux_ctx = type { i32, i64, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"mlx4_ib_mcg%d\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@RB_ROOT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_ib_mcg_port_init(%struct.mlx4_ib_demux_ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx4_ib_demux_ctx*, align 8
  %4 = alloca [20 x i8], align 16
  store %struct.mlx4_ib_demux_ctx* %0, %struct.mlx4_ib_demux_ctx** %3, align 8
  %5 = load %struct.mlx4_ib_demux_ctx*, %struct.mlx4_ib_demux_ctx** %3, align 8
  %6 = getelementptr inbounds %struct.mlx4_ib_demux_ctx, %struct.mlx4_ib_demux_ctx* %5, i32 0, i32 6
  %7 = call i32 @atomic_set(i32* %6, i32 0)
  %8 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 0
  %9 = load %struct.mlx4_ib_demux_ctx*, %struct.mlx4_ib_demux_ctx** %3, align 8
  %10 = getelementptr inbounds %struct.mlx4_ib_demux_ctx, %struct.mlx4_ib_demux_ctx* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @sprintf(i8* %8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 0
  %14 = call i32 @create_singlethread_workqueue(i8* %13)
  %15 = load %struct.mlx4_ib_demux_ctx*, %struct.mlx4_ib_demux_ctx** %3, align 8
  %16 = getelementptr inbounds %struct.mlx4_ib_demux_ctx, %struct.mlx4_ib_demux_ctx* %15, i32 0, i32 5
  store i32 %14, i32* %16, align 4
  %17 = load %struct.mlx4_ib_demux_ctx*, %struct.mlx4_ib_demux_ctx** %3, align 8
  %18 = getelementptr inbounds %struct.mlx4_ib_demux_ctx, %struct.mlx4_ib_demux_ctx* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %36

24:                                               ; preds = %1
  %25 = load %struct.mlx4_ib_demux_ctx*, %struct.mlx4_ib_demux_ctx** %3, align 8
  %26 = getelementptr inbounds %struct.mlx4_ib_demux_ctx, %struct.mlx4_ib_demux_ctx* %25, i32 0, i32 4
  %27 = call i32 @mutex_init(i32* %26)
  %28 = load i32, i32* @RB_ROOT, align 4
  %29 = load %struct.mlx4_ib_demux_ctx*, %struct.mlx4_ib_demux_ctx** %3, align 8
  %30 = getelementptr inbounds %struct.mlx4_ib_demux_ctx, %struct.mlx4_ib_demux_ctx* %29, i32 0, i32 3
  store i32 %28, i32* %30, align 4
  %31 = load %struct.mlx4_ib_demux_ctx*, %struct.mlx4_ib_demux_ctx** %3, align 8
  %32 = getelementptr inbounds %struct.mlx4_ib_demux_ctx, %struct.mlx4_ib_demux_ctx* %31, i32 0, i32 2
  %33 = call i32 @INIT_LIST_HEAD(i32* %32)
  %34 = load %struct.mlx4_ib_demux_ctx*, %struct.mlx4_ib_demux_ctx** %3, align 8
  %35 = getelementptr inbounds %struct.mlx4_ib_demux_ctx, %struct.mlx4_ib_demux_ctx* %34, i32 0, i32 1
  store i64 0, i64* %35, align 8
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %24, %21
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @create_singlethread_workqueue(i8*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
