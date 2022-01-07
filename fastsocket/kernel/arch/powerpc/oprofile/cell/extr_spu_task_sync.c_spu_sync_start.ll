; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/oprofile/cell/extr_spu_task_sync.c_spu_sync_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/oprofile/cell/extr_spu_task_sync.c_spu_sync_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 }

@SKIP_GENERIC_SYNC = common dso_local global i32 0, align 4
@spu_prof_num_nodes = common dso_local global i32 0, align 4
@num_spu_nodes = common dso_local global i32 0, align 4
@spu_work = common dso_local global i32 0, align 4
@wq_sync_spu_buff = common dso_local global i32 0, align 4
@buffer_lock = common dso_local global i32 0, align 4
@ESCAPE_CODE = common dso_local global i32 0, align 4
@SPU_PROFILING_CODE = common dso_local global i32 0, align 4
@spu_buff = common dso_local global %struct.TYPE_2__* null, align 8
@spu_active = common dso_local global i32 0, align 4
@SYNC_START_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"spu_sync_start -- running.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @spu_sync_start() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = load i32, i32* @SKIP_GENERIC_SYNC, align 4
  store i32 %5, i32* %2, align 4
  store i64 0, i64* %4, align 8
  %6 = call i32 (...) @number_of_online_nodes()
  store i32 %6, i32* @spu_prof_num_nodes, align 4
  %7 = load i32, i32* @spu_prof_num_nodes, align 4
  %8 = mul nsw i32 %7, 8
  store i32 %8, i32* @num_spu_nodes, align 4
  %9 = load i32, i32* @wq_sync_spu_buff, align 4
  %10 = call i32 @INIT_DELAYED_WORK(i32* @spu_work, i32 %9)
  %11 = call i32 (...) @oprofile_spu_buff_create()
  store i32 %11, i32* %2, align 4
  %12 = load i32, i32* %2, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %0
  br label %64

15:                                               ; preds = %0
  %16 = load i64, i64* %4, align 8
  %17 = call i32 @spin_lock_irqsave(i32* @buffer_lock, i64 %16)
  store i32 0, i32* %1, align 4
  br label %18

18:                                               ; preds = %32, %15
  %19 = load i32, i32* %1, align 4
  %20 = load i32, i32* @num_spu_nodes, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %35

22:                                               ; preds = %18
  %23 = load i32, i32* @ESCAPE_CODE, align 4
  %24 = load i32, i32* %1, align 4
  %25 = call i32 @spu_buff_add(i32 %23, i32 %24)
  %26 = load i32, i32* @SPU_PROFILING_CODE, align 4
  %27 = load i32, i32* %1, align 4
  %28 = call i32 @spu_buff_add(i32 %26, i32 %27)
  %29 = load i32, i32* @num_spu_nodes, align 4
  %30 = load i32, i32* %1, align 4
  %31 = call i32 @spu_buff_add(i32 %29, i32 %30)
  br label %32

32:                                               ; preds = %22
  %33 = load i32, i32* %1, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %1, align 4
  br label %18

35:                                               ; preds = %18
  %36 = load i64, i64* %4, align 8
  %37 = call i32 @spin_unlock_irqrestore(i32* @buffer_lock, i64 %36)
  store i32 0, i32* %1, align 4
  br label %38

38:                                               ; preds = %53, %35
  %39 = load i32, i32* %1, align 4
  %40 = load i32, i32* @num_spu_nodes, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %56

42:                                               ; preds = %38
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** @spu_buff, align 8
  %44 = load i32, i32* %1, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  store i64 0, i64* %47, align 8
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** @spu_buff, align 8
  %49 = load i32, i32* %1, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  store i64 0, i64* %52, align 8
  br label %53

53:                                               ; preds = %42
  %54 = load i32, i32* %1, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %1, align 4
  br label %38

56:                                               ; preds = %38
  %57 = call i32 @spu_switch_event_register(i32* @spu_active)
  store i32 %57, i32* %3, align 4
  %58 = load i32, i32* %3, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  %61 = load i32, i32* @SYNC_START_ERROR, align 4
  store i32 %61, i32* %2, align 4
  br label %64

62:                                               ; preds = %56
  %63 = call i32 @pr_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %64

64:                                               ; preds = %62, %60, %14
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i32 @number_of_online_nodes(...) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @oprofile_spu_buff_create(...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spu_buff_add(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @spu_switch_event_register(i32*) #1

declare dso_local i32 @pr_debug(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
