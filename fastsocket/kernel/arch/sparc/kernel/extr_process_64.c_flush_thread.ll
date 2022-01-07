; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_process_64.c_flush_thread.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_process_64.c_flush_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread_info = type { i64*, i64, i32*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.mm_struct* }
%struct.mm_struct = type { i32 }

@TIF_ABI_PENDING = common dso_local global i32 0, align 4
@TIF_32BIT = common dso_local global i32 0, align 4
@TIF_PERFCTR = common dso_local global i32 0, align 4
@ASI_AIUS = common dso_local global i64 0, align 8
@USER_DS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @flush_thread() #0 {
  %1 = alloca %struct.thread_info*, align 8
  %2 = alloca %struct.mm_struct*, align 8
  %3 = call %struct.thread_info* (...) @current_thread_info()
  store %struct.thread_info* %3, %struct.thread_info** %1, align 8
  %4 = load %struct.thread_info*, %struct.thread_info** %1, align 8
  %5 = load i32, i32* @TIF_ABI_PENDING, align 4
  %6 = call i64 @test_ti_thread_flag(%struct.thread_info* %4, i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %25

8:                                                ; preds = %0
  %9 = load %struct.thread_info*, %struct.thread_info** %1, align 8
  %10 = load i32, i32* @TIF_ABI_PENDING, align 4
  %11 = call i32 @clear_ti_thread_flag(%struct.thread_info* %9, i32 %10)
  %12 = load %struct.thread_info*, %struct.thread_info** %1, align 8
  %13 = load i32, i32* @TIF_32BIT, align 4
  %14 = call i64 @test_ti_thread_flag(%struct.thread_info* %12, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %8
  %17 = load %struct.thread_info*, %struct.thread_info** %1, align 8
  %18 = load i32, i32* @TIF_32BIT, align 4
  %19 = call i32 @clear_ti_thread_flag(%struct.thread_info* %17, i32 %18)
  br label %24

20:                                               ; preds = %8
  %21 = load %struct.thread_info*, %struct.thread_info** %1, align 8
  %22 = load i32, i32* @TIF_32BIT, align 4
  %23 = call i32 @set_ti_thread_flag(%struct.thread_info* %21, i32 %22)
  br label %24

24:                                               ; preds = %20, %16
  br label %25

25:                                               ; preds = %24, %0
  %26 = load %struct.thread_info*, %struct.thread_info** %1, align 8
  %27 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %26, i32 0, i32 4
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load %struct.mm_struct*, %struct.mm_struct** %29, align 8
  store %struct.mm_struct* %30, %struct.mm_struct** %2, align 8
  %31 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %32 = icmp ne %struct.mm_struct* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %25
  %34 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %35 = call i32 @tsb_context_switch(%struct.mm_struct* %34)
  br label %36

36:                                               ; preds = %33, %25
  %37 = call i32 @set_thread_wsaved(i32 0)
  %38 = load i32, i32* @TIF_PERFCTR, align 4
  %39 = call i64 @test_and_clear_thread_flag(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %36
  %42 = load %struct.thread_info*, %struct.thread_info** %1, align 8
  %43 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %42, i32 0, i32 2
  store i32* null, i32** %43, align 8
  %44 = load %struct.thread_info*, %struct.thread_info** %1, align 8
  %45 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %44, i32 0, i32 3
  store i32 0, i32* %45, align 8
  %46 = load %struct.thread_info*, %struct.thread_info** %1, align 8
  %47 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %46, i32 0, i32 1
  store i64 0, i64* %47, align 8
  %48 = call i32 @write_pcr(i32 0)
  br label %49

49:                                               ; preds = %41, %36
  %50 = load %struct.thread_info*, %struct.thread_info** %1, align 8
  %51 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %50, i32 0, i32 0
  %52 = load i64*, i64** %51, align 8
  %53 = getelementptr inbounds i64, i64* %52, i64 0
  store i64 0, i64* %53, align 8
  %54 = call i64 (...) @get_thread_current_ds()
  %55 = load i64, i64* @ASI_AIUS, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %49
  %58 = load i32, i32* @USER_DS, align 4
  %59 = call i32 @set_fs(i32 %58)
  br label %60

60:                                               ; preds = %57, %49
  ret void
}

declare dso_local %struct.thread_info* @current_thread_info(...) #1

declare dso_local i64 @test_ti_thread_flag(%struct.thread_info*, i32) #1

declare dso_local i32 @clear_ti_thread_flag(%struct.thread_info*, i32) #1

declare dso_local i32 @set_ti_thread_flag(%struct.thread_info*, i32) #1

declare dso_local i32 @tsb_context_switch(%struct.mm_struct*) #1

declare dso_local i32 @set_thread_wsaved(i32) #1

declare dso_local i64 @test_and_clear_thread_flag(i32) #1

declare dso_local i32 @write_pcr(i32) #1

declare dso_local i64 @get_thread_current_ds(...) #1

declare dso_local i32 @set_fs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
