; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/mm/extr_tsb.c_init_new_context.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/mm/extr_tsb.c_init_new_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.mm_struct = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32* }

@MM_NUM_TSBS = common dso_local global i32 0, align 4
@MM_TSB_BASE = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@MM_TSB_HUGE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @init_new_context(%struct.task_struct* %0, %struct.mm_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca %struct.mm_struct*, align 8
  %6 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %4, align 8
  store %struct.mm_struct* %1, %struct.mm_struct** %5, align 8
  %7 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %8 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 3
  %10 = call i32 @spin_lock_init(i32* %9)
  %11 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %12 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  store i64 0, i64* %13, align 8
  store i32 0, i32* %6, align 4
  br label %14

14:                                               ; preds = %27, %2
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @MM_NUM_TSBS, align 4
  %17 = icmp ult i32 %15, %16
  br i1 %17, label %18, label %30

18:                                               ; preds = %14
  %19 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %20 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 2
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  store i32* null, i32** %26, align 8
  br label %27

27:                                               ; preds = %18
  %28 = load i32, i32* %6, align 4
  %29 = add i32 %28, 1
  store i32 %29, i32* %6, align 4
  br label %14

30:                                               ; preds = %14
  %31 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %32 = load i64, i64* @MM_TSB_BASE, align 8
  %33 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %34 = call i64 @get_mm_rss(%struct.mm_struct* %33)
  %35 = call i32 @tsb_grow(%struct.mm_struct* %31, i64 %32, i64 %34)
  %36 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %37 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 2
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = load i64, i64* @MM_TSB_BASE, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = icmp ne i32* %43, null
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = call i64 @unlikely(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %30
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %53

52:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %52, %49
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @tsb_grow(%struct.mm_struct*, i64, i64) #1

declare dso_local i64 @get_mm_rss(%struct.mm_struct*) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
