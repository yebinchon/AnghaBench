; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v32/drivers/extr_cryptocop.c_dma_done_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v32/drivers/extr_cryptocop.c_dma_done_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.cryptocop_prio_job = type { i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 (%struct.TYPE_5__*, i32)*, i64, i64 }

@__const.dma_done_interrupt.ack_intr = private unnamed_addr constant %struct.TYPE_4__ { i32 1 }, align 4
@dma = common dso_local global i32 0, align 4
@IN_DMA_INST = common dso_local global i32 0, align 4
@rw_ack_intr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"cryptocop DMA done\0A\00", align 1
@running_job_lock = common dso_local global i32 0, align 4
@cryptocop_running_job = common dso_local global %struct.cryptocop_prio_job* null, align 8
@.str.1 = private unnamed_addr constant [49 x i8] c"stream co-processor got interrupt when not busy\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@cryptocop_process_lock = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"cryptocop irq handler, not starting a job\0A\00", align 1
@cryptocop_completed_jobs_lock = common dso_local global i32 0, align 4
@cryptocop_completed_jobs = common dso_local global i32 0, align 4
@cryptocop_tasklet = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"cryptocop leave irq handler\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @dma_done_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dma_done_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.cryptocop_prio_job*, align 8
  %7 = alloca %struct.TYPE_4__, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %8 = bitcast %struct.TYPE_4__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %8, i8* align 4 bitcast (%struct.TYPE_4__* @__const.dma_done_interrupt.ack_intr to i8*), i64 4, i1 false)
  %9 = load i32, i32* @dma, align 4
  %10 = load i32, i32* @IN_DMA_INST, align 4
  %11 = load i32, i32* @rw_ack_intr, align 4
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @REG_WR(i32 %9, i32 %10, i32 %11, i32 %13)
  %15 = call i32 @printk(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %16 = call i32 @DEBUG(i32 %15)
  %17 = call i32 @spin_lock(i32* @running_job_lock)
  %18 = load %struct.cryptocop_prio_job*, %struct.cryptocop_prio_job** @cryptocop_running_job, align 8
  %19 = icmp eq %struct.cryptocop_prio_job* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = call i32 @printk(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  %22 = call i32 @spin_unlock(i32* @running_job_lock)
  %23 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %23, i32* %3, align 4
  br label %78

24:                                               ; preds = %2
  %25 = load %struct.cryptocop_prio_job*, %struct.cryptocop_prio_job** @cryptocop_running_job, align 8
  store %struct.cryptocop_prio_job* %25, %struct.cryptocop_prio_job** %6, align 8
  store %struct.cryptocop_prio_job* null, %struct.cryptocop_prio_job** @cryptocop_running_job, align 8
  %26 = call i32 @spin_unlock(i32* @running_job_lock)
  %27 = call i32 @spin_trylock(i32* @cryptocop_process_lock)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %24
  %30 = call i32 @printk(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  %31 = call i32 @DEBUG(i32 %30)
  br label %35

32:                                               ; preds = %24
  %33 = call i32 (...) @cryptocop_start_job()
  %34 = call i32 @spin_unlock(i32* @cryptocop_process_lock)
  br label %35

35:                                               ; preds = %32, %29
  %36 = load %struct.cryptocop_prio_job*, %struct.cryptocop_prio_job** %6, align 8
  %37 = getelementptr inbounds %struct.cryptocop_prio_job, %struct.cryptocop_prio_job* %36, i32 0, i32 2
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 3
  store i64 0, i64* %39, align 8
  %40 = load %struct.cryptocop_prio_job*, %struct.cryptocop_prio_job** %6, align 8
  %41 = getelementptr inbounds %struct.cryptocop_prio_job, %struct.cryptocop_prio_job* %40, i32 0, i32 2
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %67

46:                                               ; preds = %35
  %47 = load %struct.cryptocop_prio_job*, %struct.cryptocop_prio_job** %6, align 8
  %48 = getelementptr inbounds %struct.cryptocop_prio_job, %struct.cryptocop_prio_job* %47, i32 0, i32 2
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  %51 = load i32 (%struct.TYPE_5__*, i32)*, i32 (%struct.TYPE_5__*, i32)** %50, align 8
  %52 = load %struct.cryptocop_prio_job*, %struct.cryptocop_prio_job** %6, align 8
  %53 = getelementptr inbounds %struct.cryptocop_prio_job, %struct.cryptocop_prio_job* %52, i32 0, i32 2
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  %55 = load %struct.cryptocop_prio_job*, %struct.cryptocop_prio_job** %6, align 8
  %56 = getelementptr inbounds %struct.cryptocop_prio_job, %struct.cryptocop_prio_job* %55, i32 0, i32 2
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 %51(%struct.TYPE_5__* %54, i32 %59)
  %61 = load %struct.cryptocop_prio_job*, %struct.cryptocop_prio_job** %6, align 8
  %62 = getelementptr inbounds %struct.cryptocop_prio_job, %struct.cryptocop_prio_job* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @delete_internal_operation(i32 %63)
  %65 = load %struct.cryptocop_prio_job*, %struct.cryptocop_prio_job** %6, align 8
  %66 = call i32 @kfree(%struct.cryptocop_prio_job* %65)
  br label %74

67:                                               ; preds = %35
  %68 = call i32 @spin_lock(i32* @cryptocop_completed_jobs_lock)
  %69 = load %struct.cryptocop_prio_job*, %struct.cryptocop_prio_job** %6, align 8
  %70 = getelementptr inbounds %struct.cryptocop_prio_job, %struct.cryptocop_prio_job* %69, i32 0, i32 0
  %71 = call i32 @list_add_tail(i32* %70, i32* @cryptocop_completed_jobs)
  %72 = call i32 @spin_unlock(i32* @cryptocop_completed_jobs_lock)
  %73 = call i32 @tasklet_schedule(i32* @cryptocop_tasklet)
  br label %74

74:                                               ; preds = %67, %46
  %75 = call i32 @printk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %76 = call i32 @DEBUG(i32 %75)
  %77 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %77, i32* %3, align 4
  br label %78

78:                                               ; preds = %74, %20
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @REG_WR(i32, i32, i32, i32) #2

declare dso_local i32 @DEBUG(i32) #2

declare dso_local i32 @printk(i8*) #2

declare dso_local i32 @spin_lock(i32*) #2

declare dso_local i32 @spin_unlock(i32*) #2

declare dso_local i32 @spin_trylock(i32*) #2

declare dso_local i32 @cryptocop_start_job(...) #2

declare dso_local i32 @delete_internal_operation(i32) #2

declare dso_local i32 @kfree(%struct.cryptocop_prio_job*) #2

declare dso_local i32 @list_add_tail(i32*, i32*) #2

declare dso_local i32 @tasklet_schedule(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
