; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/cell/spufs/extr_sched.c_spu_activate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/cell/spufs/extr_sched.c_spu_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spu_context = type { i32, %struct.TYPE_2__*, i32, i64 }
%struct.TYPE_2__ = type { i64 (%struct.spu_context*)* }
%struct.spu = type { i32 }

@current = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@SPU_RUNCNTL_RUNNABLE = common dso_local global i64 0, align 8
@SPU_UTIL_USER = common dso_local global i32 0, align 4
@SPU_CREATE_NOSCHED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @spu_activate(%struct.spu_context* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.spu_context*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.spu*, align 8
  %7 = alloca i64, align 8
  store %struct.spu_context* %0, %struct.spu_context** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.spu_context*, %struct.spu_context** %4, align 8
  %9 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %8, i32 0, i32 3
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %71

13:                                               ; preds = %2
  br label %14

14:                                               ; preds = %65, %13
  %15 = load i32, i32* @current, align 4
  %16 = call i64 @signal_pending(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = load i32, i32* @ERESTARTSYS, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %71

21:                                               ; preds = %14
  %22 = load %struct.spu_context*, %struct.spu_context** %4, align 8
  %23 = call %struct.spu* @spu_get_idle(%struct.spu_context* %22)
  store %struct.spu* %23, %struct.spu** %6, align 8
  %24 = load %struct.spu*, %struct.spu** %6, align 8
  %25 = icmp ne %struct.spu* %24, null
  br i1 %25, label %35, label %26

26:                                               ; preds = %21
  %27 = load %struct.spu_context*, %struct.spu_context** %4, align 8
  %28 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call i64 @rt_prio(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load %struct.spu_context*, %struct.spu_context** %4, align 8
  %34 = call %struct.spu* @find_victim(%struct.spu_context* %33)
  store %struct.spu* %34, %struct.spu** %6, align 8
  br label %35

35:                                               ; preds = %32, %26, %21
  %36 = load %struct.spu*, %struct.spu** %6, align 8
  %37 = icmp ne %struct.spu* %36, null
  br i1 %37, label %38, label %58

38:                                               ; preds = %35
  %39 = load %struct.spu_context*, %struct.spu_context** %4, align 8
  %40 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i64 (%struct.spu_context*)*, i64 (%struct.spu_context*)** %42, align 8
  %44 = load %struct.spu_context*, %struct.spu_context** %4, align 8
  %45 = call i64 %43(%struct.spu_context* %44)
  store i64 %45, i64* %7, align 8
  %46 = load %struct.spu*, %struct.spu** %6, align 8
  %47 = load %struct.spu_context*, %struct.spu_context** %4, align 8
  %48 = call i32 @__spu_schedule(%struct.spu* %46, %struct.spu_context* %47)
  %49 = load i64, i64* %7, align 8
  %50 = load i64, i64* @SPU_RUNCNTL_RUNNABLE, align 8
  %51 = and i64 %49, %50
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %38
  %54 = load %struct.spu_context*, %struct.spu_context** %4, align 8
  %55 = load i32, i32* @SPU_UTIL_USER, align 4
  %56 = call i32 @spuctx_switch_state(%struct.spu_context* %54, i32 %55)
  br label %57

57:                                               ; preds = %53, %38
  store i32 0, i32* %3, align 4
  br label %71

58:                                               ; preds = %35
  %59 = load %struct.spu_context*, %struct.spu_context** %4, align 8
  %60 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @SPU_CREATE_NOSCHED, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %58
  %66 = load %struct.spu_context*, %struct.spu_context** %4, align 8
  %67 = call i32 @spu_prio_wait(%struct.spu_context* %66)
  br label %14

68:                                               ; preds = %58
  %69 = load %struct.spu_context*, %struct.spu_context** %4, align 8
  %70 = call i32 @spu_add_to_rq(%struct.spu_context* %69)
  store i32 0, i32* %3, align 4
  br label %71

71:                                               ; preds = %68, %57, %18, %12
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i64 @signal_pending(i32) #1

declare dso_local %struct.spu* @spu_get_idle(%struct.spu_context*) #1

declare dso_local i64 @rt_prio(i32) #1

declare dso_local %struct.spu* @find_victim(%struct.spu_context*) #1

declare dso_local i32 @__spu_schedule(%struct.spu*, %struct.spu_context*) #1

declare dso_local i32 @spuctx_switch_state(%struct.spu_context*, i32) #1

declare dso_local i32 @spu_prio_wait(%struct.spu_context*) #1

declare dso_local i32 @spu_add_to_rq(%struct.spu_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
