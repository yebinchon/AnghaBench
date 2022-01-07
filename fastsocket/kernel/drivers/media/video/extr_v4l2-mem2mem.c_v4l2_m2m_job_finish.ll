; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_v4l2-mem2mem.c_v4l2_m2m_job_finish.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_v4l2-mem2mem.c_v4l2_m2m_job_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_m2m_dev = type { i32, %struct.v4l2_m2m_ctx* }
%struct.v4l2_m2m_ctx = type { i32, i32 }

@.str = private unnamed_addr constant [45 x i8] c"Called by an instance not currently running\0A\00", align 1
@TRANS_QUEUED = common dso_local global i32 0, align 4
@TRANS_RUNNING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @v4l2_m2m_job_finish(%struct.v4l2_m2m_dev* %0, %struct.v4l2_m2m_ctx* %1) #0 {
  %3 = alloca %struct.v4l2_m2m_dev*, align 8
  %4 = alloca %struct.v4l2_m2m_ctx*, align 8
  %5 = alloca i64, align 8
  store %struct.v4l2_m2m_dev* %0, %struct.v4l2_m2m_dev** %3, align 8
  store %struct.v4l2_m2m_ctx* %1, %struct.v4l2_m2m_ctx** %4, align 8
  %6 = load %struct.v4l2_m2m_dev*, %struct.v4l2_m2m_dev** %3, align 8
  %7 = getelementptr inbounds %struct.v4l2_m2m_dev, %struct.v4l2_m2m_dev* %6, i32 0, i32 0
  %8 = load i64, i64* %5, align 8
  %9 = call i32 @spin_lock_irqsave(i32* %7, i64 %8)
  %10 = load %struct.v4l2_m2m_dev*, %struct.v4l2_m2m_dev** %3, align 8
  %11 = getelementptr inbounds %struct.v4l2_m2m_dev, %struct.v4l2_m2m_dev* %10, i32 0, i32 1
  %12 = load %struct.v4l2_m2m_ctx*, %struct.v4l2_m2m_ctx** %11, align 8
  %13 = icmp ne %struct.v4l2_m2m_ctx* %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %2
  %15 = load %struct.v4l2_m2m_dev*, %struct.v4l2_m2m_dev** %3, align 8
  %16 = getelementptr inbounds %struct.v4l2_m2m_dev, %struct.v4l2_m2m_dev* %15, i32 0, i32 1
  %17 = load %struct.v4l2_m2m_ctx*, %struct.v4l2_m2m_ctx** %16, align 8
  %18 = load %struct.v4l2_m2m_ctx*, %struct.v4l2_m2m_ctx** %4, align 8
  %19 = icmp ne %struct.v4l2_m2m_ctx* %17, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %14, %2
  %21 = load %struct.v4l2_m2m_dev*, %struct.v4l2_m2m_dev** %3, align 8
  %22 = getelementptr inbounds %struct.v4l2_m2m_dev, %struct.v4l2_m2m_dev* %21, i32 0, i32 0
  %23 = load i64, i64* %5, align 8
  %24 = call i32 @spin_unlock_irqrestore(i32* %22, i64 %23)
  %25 = call i32 @dprintk(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  br label %52

26:                                               ; preds = %14
  %27 = load %struct.v4l2_m2m_dev*, %struct.v4l2_m2m_dev** %3, align 8
  %28 = getelementptr inbounds %struct.v4l2_m2m_dev, %struct.v4l2_m2m_dev* %27, i32 0, i32 1
  %29 = load %struct.v4l2_m2m_ctx*, %struct.v4l2_m2m_ctx** %28, align 8
  %30 = getelementptr inbounds %struct.v4l2_m2m_ctx, %struct.v4l2_m2m_ctx* %29, i32 0, i32 1
  %31 = call i32 @list_del(i32* %30)
  %32 = load i32, i32* @TRANS_QUEUED, align 4
  %33 = load i32, i32* @TRANS_RUNNING, align 4
  %34 = or i32 %32, %33
  %35 = xor i32 %34, -1
  %36 = load %struct.v4l2_m2m_dev*, %struct.v4l2_m2m_dev** %3, align 8
  %37 = getelementptr inbounds %struct.v4l2_m2m_dev, %struct.v4l2_m2m_dev* %36, i32 0, i32 1
  %38 = load %struct.v4l2_m2m_ctx*, %struct.v4l2_m2m_ctx** %37, align 8
  %39 = getelementptr inbounds %struct.v4l2_m2m_ctx, %struct.v4l2_m2m_ctx* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %40, %35
  store i32 %41, i32* %39, align 4
  %42 = load %struct.v4l2_m2m_dev*, %struct.v4l2_m2m_dev** %3, align 8
  %43 = getelementptr inbounds %struct.v4l2_m2m_dev, %struct.v4l2_m2m_dev* %42, i32 0, i32 1
  store %struct.v4l2_m2m_ctx* null, %struct.v4l2_m2m_ctx** %43, align 8
  %44 = load %struct.v4l2_m2m_dev*, %struct.v4l2_m2m_dev** %3, align 8
  %45 = getelementptr inbounds %struct.v4l2_m2m_dev, %struct.v4l2_m2m_dev* %44, i32 0, i32 0
  %46 = load i64, i64* %5, align 8
  %47 = call i32 @spin_unlock_irqrestore(i32* %45, i64 %46)
  %48 = load %struct.v4l2_m2m_ctx*, %struct.v4l2_m2m_ctx** %4, align 8
  %49 = call i32 @v4l2_m2m_try_schedule(%struct.v4l2_m2m_ctx* %48)
  %50 = load %struct.v4l2_m2m_dev*, %struct.v4l2_m2m_dev** %3, align 8
  %51 = call i32 @v4l2_m2m_try_run(%struct.v4l2_m2m_dev* %50)
  br label %52

52:                                               ; preds = %26, %20
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dprintk(i8*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @v4l2_m2m_try_schedule(%struct.v4l2_m2m_ctx*) #1

declare dso_local i32 @v4l2_m2m_try_run(%struct.v4l2_m2m_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
