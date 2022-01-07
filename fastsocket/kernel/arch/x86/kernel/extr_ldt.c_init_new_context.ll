; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_ldt.c_init_new_context.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_ldt.c_init_new_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.mm_struct* }
%struct.mm_struct = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i32 }
%struct.task_struct = type { i32 }

@current = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @init_new_context(%struct.task_struct* %0, %struct.mm_struct* %1) #0 {
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca %struct.mm_struct*, align 8
  %5 = alloca %struct.mm_struct*, align 8
  %6 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %3, align 8
  store %struct.mm_struct* %1, %struct.mm_struct** %4, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %8 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 1
  %10 = call i32 @mutex_init(i32* %9)
  %11 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %12 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  store i64 0, i64* %13, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.mm_struct*, %struct.mm_struct** %15, align 8
  store %struct.mm_struct* %16, %struct.mm_struct** %5, align 8
  %17 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %18 = icmp ne %struct.mm_struct* %17, null
  br i1 %18, label %19, label %39

19:                                               ; preds = %2
  %20 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %21 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp sgt i64 %23, 0
  br i1 %24, label %25, label %39

25:                                               ; preds = %19
  %26 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %27 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  %29 = call i32 @mutex_lock(i32* %28)
  %30 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %31 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %30, i32 0, i32 0
  %32 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %33 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %32, i32 0, i32 0
  %34 = call i32 @copy_ldt(%struct.TYPE_5__* %31, %struct.TYPE_5__* %33)
  store i32 %34, i32* %6, align 4
  %35 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %36 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = call i32 @mutex_unlock(i32* %37)
  br label %39

39:                                               ; preds = %25, %19, %2
  %40 = load i32, i32* %6, align 4
  ret i32 %40
}

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @copy_ldt(%struct.TYPE_5__*, %struct.TYPE_5__*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
