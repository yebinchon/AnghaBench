; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/cell/spufs/extr_sched.c___spu_deactivate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/cell/spufs/extr_sched.c___spu_deactivate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spu_context = type { i32, i32, i32, %struct.spu* }
%struct.spu = type { i32 }

@SPU_CREATE_NOSCHED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spu_context*, i32, i32)* @__spu_deactivate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__spu_deactivate(%struct.spu_context* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.spu_context*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.spu*, align 8
  %8 = alloca %struct.spu_context*, align 8
  store %struct.spu_context* %0, %struct.spu_context** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.spu_context*, %struct.spu_context** %4, align 8
  %10 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %9, i32 0, i32 3
  %11 = load %struct.spu*, %struct.spu** %10, align 8
  store %struct.spu* %11, %struct.spu** %7, align 8
  store %struct.spu_context* null, %struct.spu_context** %8, align 8
  %12 = load %struct.spu*, %struct.spu** %7, align 8
  %13 = icmp ne %struct.spu* %12, null
  br i1 %13, label %14, label %57

14:                                               ; preds = %3
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.spu*, %struct.spu** %7, align 8
  %17 = getelementptr inbounds %struct.spu, %struct.spu* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.spu_context* @grab_runnable_context(i32 %15, i32 %18)
  store %struct.spu_context* %19, %struct.spu_context** %8, align 8
  %20 = load %struct.spu_context*, %struct.spu_context** %8, align 8
  %21 = icmp ne %struct.spu_context* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %14
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %56

25:                                               ; preds = %22, %14
  %26 = load %struct.spu*, %struct.spu** %7, align 8
  %27 = load %struct.spu_context*, %struct.spu_context** %4, align 8
  %28 = load %struct.spu_context*, %struct.spu_context** %8, align 8
  %29 = icmp eq %struct.spu_context* %28, null
  %30 = zext i1 %29 to i32
  %31 = call i32 @spu_unschedule(%struct.spu* %26, %struct.spu_context* %27, i32 %30)
  %32 = load %struct.spu_context*, %struct.spu_context** %8, align 8
  %33 = icmp ne %struct.spu_context* %32, null
  br i1 %33, label %34, label %55

34:                                               ; preds = %25
  %35 = load %struct.spu_context*, %struct.spu_context** %8, align 8
  %36 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @SPU_CREATE_NOSCHED, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %34
  %42 = load %struct.spu_context*, %struct.spu_context** %8, align 8
  %43 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %42, i32 0, i32 2
  %44 = call i32 @wake_up(i32* %43)
  br label %54

45:                                               ; preds = %34
  %46 = load %struct.spu_context*, %struct.spu_context** %4, align 8
  %47 = call i32 @spu_release(%struct.spu_context* %46)
  %48 = load %struct.spu*, %struct.spu** %7, align 8
  %49 = load %struct.spu_context*, %struct.spu_context** %8, align 8
  %50 = call i32 @spu_schedule(%struct.spu* %48, %struct.spu_context* %49)
  %51 = load %struct.spu_context*, %struct.spu_context** %4, align 8
  %52 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %51, i32 0, i32 1
  %53 = call i32 @mutex_lock(i32* %52)
  br label %54

54:                                               ; preds = %45, %41
  br label %55

55:                                               ; preds = %54, %25
  br label %56

56:                                               ; preds = %55, %22
  br label %57

57:                                               ; preds = %56, %3
  %58 = load %struct.spu_context*, %struct.spu_context** %8, align 8
  %59 = icmp ne %struct.spu_context* %58, null
  %60 = zext i1 %59 to i32
  ret i32 %60
}

declare dso_local %struct.spu_context* @grab_runnable_context(i32, i32) #1

declare dso_local i32 @spu_unschedule(%struct.spu*, %struct.spu_context*, i32) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @spu_release(%struct.spu_context*) #1

declare dso_local i32 @spu_schedule(%struct.spu*, %struct.spu_context*) #1

declare dso_local i32 @mutex_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
