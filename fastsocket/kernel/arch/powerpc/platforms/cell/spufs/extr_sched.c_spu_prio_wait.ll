; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/cell/spufs/extr_sched.c_spu_prio_wait.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/cell/spufs/extr_sched.c_spu_prio_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.spu_context = type { i32, i32, i32 }

@wait = common dso_local global i32 0, align 4
@SPU_CREATE_NOSCHED = common dso_local global i32 0, align 4
@spu_prio = common dso_local global %struct.TYPE_2__* null, align 8
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@TASK_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spu_context*)* @spu_prio_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spu_prio_wait(%struct.spu_context* %0) #0 {
  %2 = alloca %struct.spu_context*, align 8
  store %struct.spu_context* %0, %struct.spu_context** %2, align 8
  %3 = load i32, i32* @wait, align 4
  %4 = call i32 @DEFINE_WAIT(i32 %3)
  %5 = load %struct.spu_context*, %struct.spu_context** %2, align 8
  %6 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @SPU_CREATE_NOSCHED, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i32 @BUG_ON(i32 %12)
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @spu_prio, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = call i32 @spin_lock(i32* %15)
  %17 = load %struct.spu_context*, %struct.spu_context** %2, align 8
  %18 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %17, i32 0, i32 1
  %19 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %20 = call i32 @prepare_to_wait_exclusive(i32* %18, i32* @wait, i32 %19)
  %21 = load i32, i32* @current, align 4
  %22 = call i32 @signal_pending(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %42, label %24

24:                                               ; preds = %1
  %25 = load %struct.spu_context*, %struct.spu_context** %2, align 8
  %26 = call i32 @__spu_add_to_rq(%struct.spu_context* %25)
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @spu_prio, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = call i32 @spin_unlock(i32* %28)
  %30 = load %struct.spu_context*, %struct.spu_context** %2, align 8
  %31 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %30, i32 0, i32 2
  %32 = call i32 @mutex_unlock(i32* %31)
  %33 = call i32 (...) @schedule()
  %34 = load %struct.spu_context*, %struct.spu_context** %2, align 8
  %35 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %34, i32 0, i32 2
  %36 = call i32 @mutex_lock(i32* %35)
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** @spu_prio, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = call i32 @spin_lock(i32* %38)
  %40 = load %struct.spu_context*, %struct.spu_context** %2, align 8
  %41 = call i32 @__spu_del_from_rq(%struct.spu_context* %40)
  br label %42

42:                                               ; preds = %24, %1
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** @spu_prio, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = call i32 @spin_unlock(i32* %44)
  %46 = load i32, i32* @TASK_RUNNING, align 4
  %47 = call i32 @__set_current_state(i32 %46)
  %48 = load %struct.spu_context*, %struct.spu_context** %2, align 8
  %49 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %48, i32 0, i32 1
  %50 = call i32 @remove_wait_queue(i32* %49, i32* @wait)
  ret void
}

declare dso_local i32 @DEFINE_WAIT(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @prepare_to_wait_exclusive(i32*, i32*, i32) #1

declare dso_local i32 @signal_pending(i32) #1

declare dso_local i32 @__spu_add_to_rq(%struct.spu_context*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @__spu_del_from_rq(%struct.spu_context*) #1

declare dso_local i32 @__set_current_state(i32) #1

declare dso_local i32 @remove_wait_queue(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
