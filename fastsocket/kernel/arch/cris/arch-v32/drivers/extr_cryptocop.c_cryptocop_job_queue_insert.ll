; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v32/drivers/extr_cryptocop.c_cryptocop_job_queue_insert.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v32/drivers/extr_cryptocop.c_cryptocop_job_queue_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.cryptocop_operation = type { i32 }
%struct.cryptocop_prio_job = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"cryptocop_job_queue_insert(%d, 0x%p)\0A\00", align 1
@.str.1 = private unnamed_addr constant [66 x i8] c"cryptocop_job_queue_insert oper=0x%p, NULL operation or callback\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"cryptocop_job_queue_insert: job setup failed\0A\00", align 1
@cryptocop_job_queue_lock = common dso_local global i32 0, align 4
@cryptocop_job_queues = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.cryptocop_operation*)* @cryptocop_job_queue_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cryptocop_job_queue_insert(i64 %0, %struct.cryptocop_operation* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.cryptocop_operation*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.cryptocop_prio_job*, align 8
  %8 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store %struct.cryptocop_operation* %1, %struct.cryptocop_operation** %5, align 8
  store %struct.cryptocop_prio_job* null, %struct.cryptocop_prio_job** %7, align 8
  %9 = load i64, i64* %4, align 8
  %10 = load %struct.cryptocop_operation*, %struct.cryptocop_operation** %5, align 8
  %11 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %9, %struct.cryptocop_operation* %10)
  %12 = call i32 @DEBUG(i32 %11)
  %13 = load %struct.cryptocop_operation*, %struct.cryptocop_operation** %5, align 8
  %14 = icmp ne %struct.cryptocop_operation* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load %struct.cryptocop_operation*, %struct.cryptocop_operation** %5, align 8
  %17 = getelementptr inbounds %struct.cryptocop_operation, %struct.cryptocop_operation* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %15, %2
  %21 = load %struct.cryptocop_operation*, %struct.cryptocop_operation** %5, align 8
  %22 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0), %struct.cryptocop_operation* %21)
  %23 = call i32 @DEBUG_API(i32 %22)
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %51

26:                                               ; preds = %15
  %27 = load %struct.cryptocop_operation*, %struct.cryptocop_operation** %5, align 8
  %28 = call i32 @cryptocop_job_setup(%struct.cryptocop_prio_job** %7, %struct.cryptocop_operation* %27)
  store i32 %28, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  %32 = call i32 @DEBUG_API(i32 %31)
  %33 = load i32, i32* %6, align 4
  store i32 %33, i32* %3, align 4
  br label %51

34:                                               ; preds = %26
  %35 = load %struct.cryptocop_prio_job*, %struct.cryptocop_prio_job** %7, align 8
  %36 = icmp ne %struct.cryptocop_prio_job* %35, null
  %37 = zext i1 %36 to i32
  %38 = call i32 @assert(i32 %37)
  %39 = load i64, i64* %8, align 8
  %40 = call i32 @spin_lock_irqsave(i32* @cryptocop_job_queue_lock, i64 %39)
  %41 = load %struct.cryptocop_prio_job*, %struct.cryptocop_prio_job** %7, align 8
  %42 = getelementptr inbounds %struct.cryptocop_prio_job, %struct.cryptocop_prio_job* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cryptocop_job_queues, align 8
  %44 = load i64, i64* %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = call i32 @list_add_tail(i32* %42, i32* %46)
  %48 = load i64, i64* %8, align 8
  %49 = call i32 @spin_unlock_irqrestore(i32* @cryptocop_job_queue_lock, i64 %48)
  %50 = call i32 (...) @cryptocop_start_job()
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %34, %30, %20
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @DEBUG(i32) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @DEBUG_API(i32) #1

declare dso_local i32 @cryptocop_job_setup(%struct.cryptocop_prio_job**, %struct.cryptocop_operation*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @cryptocop_start_job(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
