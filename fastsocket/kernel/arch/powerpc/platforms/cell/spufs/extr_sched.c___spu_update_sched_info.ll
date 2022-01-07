; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/cell/spufs/extr_sched.c___spu_update_sched_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/cell/spufs/extr_sched.c___spu_update_sched_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }
%struct.spu_context = type { i32, i32, i32, i32, i32, i32 }

@current = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__spu_update_sched_info(%struct.spu_context* %0) #0 {
  %2 = alloca %struct.spu_context*, align 8
  store %struct.spu_context* %0, %struct.spu_context** %2, align 8
  %3 = load %struct.spu_context*, %struct.spu_context** %2, align 8
  %4 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %3, i32 0, i32 5
  %5 = call i32 @list_empty(i32* %4)
  %6 = icmp ne i32 %5, 0
  %7 = xor i1 %6, true
  %8 = zext i1 %7 to i32
  %9 = call i32 @BUG_ON(i32 %8)
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.spu_context*, %struct.spu_context** %2, align 8
  %14 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %13, i32 0, i32 4
  store i32 %12, i32* %14, align 4
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @rt_prio(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.spu_context*, %struct.spu_context** %2, align 8
  %25 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %24, i32 0, i32 3
  store i32 %23, i32* %25, align 4
  br label %32

26:                                               ; preds = %1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.spu_context*, %struct.spu_context** %2, align 8
  %31 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %30, i32 0, i32 3
  store i32 %29, i32* %31, align 4
  br label %32

32:                                               ; preds = %26, %20
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.spu_context*, %struct.spu_context** %2, align 8
  %37 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 4
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.spu_context*, %struct.spu_context** %2, align 8
  %42 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = call i32 (...) @raw_smp_processor_id()
  %44 = load %struct.spu_context*, %struct.spu_context** %2, align 8
  %45 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i64 @rt_prio(i32) #1

declare dso_local i32 @raw_smp_processor_id(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
