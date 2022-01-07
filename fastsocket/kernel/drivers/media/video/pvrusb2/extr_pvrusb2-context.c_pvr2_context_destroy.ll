; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pvrusb2/extr_pvrusb2-context.c_pvr2_context_destroy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pvrusb2/extr_pvrusb2-context.c_pvr2_context_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.pvr2_context = type { %struct.TYPE_4__*, %struct.TYPE_3__*, i64 }

@PVR2_TRACE_CTXT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"pvr2_context %p (destroy)\00", align 1
@pvr2_context_mutex = common dso_local global i32 0, align 4
@pvr2_context_exist_last = common dso_local global %struct.TYPE_3__* null, align 8
@pvr2_context_exist_first = common dso_local global %struct.TYPE_4__* null, align 8
@pvr2_context_sync_data = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pvr2_context*)* @pvr2_context_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pvr2_context_destroy(%struct.pvr2_context* %0) #0 {
  %2 = alloca %struct.pvr2_context*, align 8
  store %struct.pvr2_context* %0, %struct.pvr2_context** %2, align 8
  %3 = load i32, i32* @PVR2_TRACE_CTXT, align 4
  %4 = load %struct.pvr2_context*, %struct.pvr2_context** %2, align 8
  %5 = call i32 @pvr2_trace(i32 %3, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), %struct.pvr2_context* %4)
  %6 = load %struct.pvr2_context*, %struct.pvr2_context** %2, align 8
  %7 = getelementptr inbounds %struct.pvr2_context, %struct.pvr2_context* %6, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load %struct.pvr2_context*, %struct.pvr2_context** %2, align 8
  %12 = getelementptr inbounds %struct.pvr2_context, %struct.pvr2_context* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = call i32 @pvr2_hdw_destroy(i64 %13)
  br label %15

15:                                               ; preds = %10, %1
  %16 = load %struct.pvr2_context*, %struct.pvr2_context** %2, align 8
  %17 = call i32 @pvr2_context_set_notify(%struct.pvr2_context* %16, i32 0)
  %18 = call i32 @mutex_lock(i32* @pvr2_context_mutex)
  %19 = load %struct.pvr2_context*, %struct.pvr2_context** %2, align 8
  %20 = getelementptr inbounds %struct.pvr2_context, %struct.pvr2_context* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = icmp ne %struct.TYPE_4__* %21, null
  br i1 %22, label %23, label %31

23:                                               ; preds = %15
  %24 = load %struct.pvr2_context*, %struct.pvr2_context** %2, align 8
  %25 = getelementptr inbounds %struct.pvr2_context, %struct.pvr2_context* %24, i32 0, i32 1
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = load %struct.pvr2_context*, %struct.pvr2_context** %2, align 8
  %28 = getelementptr inbounds %struct.pvr2_context, %struct.pvr2_context* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  store %struct.TYPE_3__* %26, %struct.TYPE_3__** %30, align 8
  br label %35

31:                                               ; preds = %15
  %32 = load %struct.pvr2_context*, %struct.pvr2_context** %2, align 8
  %33 = getelementptr inbounds %struct.pvr2_context, %struct.pvr2_context* %32, i32 0, i32 1
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  store %struct.TYPE_3__* %34, %struct.TYPE_3__** @pvr2_context_exist_last, align 8
  br label %35

35:                                               ; preds = %31, %23
  %36 = load %struct.pvr2_context*, %struct.pvr2_context** %2, align 8
  %37 = getelementptr inbounds %struct.pvr2_context, %struct.pvr2_context* %36, i32 0, i32 1
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = icmp ne %struct.TYPE_3__* %38, null
  br i1 %39, label %40, label %48

40:                                               ; preds = %35
  %41 = load %struct.pvr2_context*, %struct.pvr2_context** %2, align 8
  %42 = getelementptr inbounds %struct.pvr2_context, %struct.pvr2_context* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = load %struct.pvr2_context*, %struct.pvr2_context** %2, align 8
  %45 = getelementptr inbounds %struct.pvr2_context, %struct.pvr2_context* %44, i32 0, i32 1
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  store %struct.TYPE_4__* %43, %struct.TYPE_4__** %47, align 8
  br label %52

48:                                               ; preds = %35
  %49 = load %struct.pvr2_context*, %struct.pvr2_context** %2, align 8
  %50 = getelementptr inbounds %struct.pvr2_context, %struct.pvr2_context* %49, i32 0, i32 0
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  store %struct.TYPE_4__* %51, %struct.TYPE_4__** @pvr2_context_exist_first, align 8
  br label %52

52:                                               ; preds = %48, %40
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pvr2_context_exist_first, align 8
  %54 = icmp ne %struct.TYPE_4__* %53, null
  br i1 %54, label %57, label %55

55:                                               ; preds = %52
  %56 = call i32 @wake_up(i32* @pvr2_context_sync_data)
  br label %57

57:                                               ; preds = %55, %52
  %58 = call i32 @mutex_unlock(i32* @pvr2_context_mutex)
  %59 = load %struct.pvr2_context*, %struct.pvr2_context** %2, align 8
  %60 = call i32 @kfree(%struct.pvr2_context* %59)
  ret void
}

declare dso_local i32 @pvr2_trace(i32, i8*, %struct.pvr2_context*) #1

declare dso_local i32 @pvr2_hdw_destroy(i64) #1

declare dso_local i32 @pvr2_context_set_notify(%struct.pvr2_context*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.pvr2_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
