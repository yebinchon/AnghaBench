; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_dumpstack_32.c_dump_trace.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_dumpstack_32.c_dump_trace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.pt_regs = type { i32 }
%struct.stacktrace_ops = type { i64 (%struct.thread_info*, i64*, i64, %struct.stacktrace_ops*, i8*, i32*, i32*)*, i64 (i8*, i8*)* }
%struct.thread_info = type { i64 }

@current = common dso_local global %struct.task_struct* null, align 8
@THREAD_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"IRQ\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dump_trace(%struct.task_struct* %0, %struct.pt_regs* %1, i64* %2, %struct.stacktrace_ops* %3, i8* %4) #0 {
  %6 = alloca %struct.task_struct*, align 8
  %7 = alloca %struct.pt_regs*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %struct.stacktrace_ops*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.thread_info*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %6, align 8
  store %struct.pt_regs* %1, %struct.pt_regs** %7, align 8
  store i64* %2, i64** %8, align 8
  store %struct.stacktrace_ops* %3, %struct.stacktrace_ops** %9, align 8
  store i8* %4, i8** %10, align 8
  store i32 0, i32* %11, align 4
  %15 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %16 = icmp ne %struct.task_struct* %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %5
  %18 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  store %struct.task_struct* %18, %struct.task_struct** %6, align 8
  br label %19

19:                                               ; preds = %17, %5
  %20 = load i64*, i64** %8, align 8
  %21 = icmp ne i64* %20, null
  br i1 %21, label %36, label %22

22:                                               ; preds = %19
  store i64* %13, i64** %8, align 8
  %23 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %24 = icmp ne %struct.task_struct* %23, null
  br i1 %24, label %25, label %35

25:                                               ; preds = %22
  %26 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %27 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  %28 = icmp ne %struct.task_struct* %26, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %25
  %30 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %31 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to i64*
  store i64* %34, i64** %8, align 8
  br label %35

35:                                               ; preds = %29, %25, %22
  br label %36

36:                                               ; preds = %35, %19
  %37 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %38 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %39 = call i64 @stack_frame(%struct.task_struct* %37, %struct.pt_regs* %38)
  store i64 %39, i64* %12, align 8
  br label %40

40:                                               ; preds = %73, %36
  %41 = load i64*, i64** %8, align 8
  %42 = ptrtoint i64* %41 to i64
  %43 = load i32, i32* @THREAD_SIZE, align 4
  %44 = sub nsw i32 %43, 1
  %45 = xor i32 %44, -1
  %46 = sext i32 %45 to i64
  %47 = and i64 %42, %46
  %48 = inttoptr i64 %47 to %struct.thread_info*
  store %struct.thread_info* %48, %struct.thread_info** %14, align 8
  %49 = load %struct.stacktrace_ops*, %struct.stacktrace_ops** %9, align 8
  %50 = getelementptr inbounds %struct.stacktrace_ops, %struct.stacktrace_ops* %49, i32 0, i32 0
  %51 = load i64 (%struct.thread_info*, i64*, i64, %struct.stacktrace_ops*, i8*, i32*, i32*)*, i64 (%struct.thread_info*, i64*, i64, %struct.stacktrace_ops*, i8*, i32*, i32*)** %50, align 8
  %52 = load %struct.thread_info*, %struct.thread_info** %14, align 8
  %53 = load i64*, i64** %8, align 8
  %54 = load i64, i64* %12, align 8
  %55 = load %struct.stacktrace_ops*, %struct.stacktrace_ops** %9, align 8
  %56 = load i8*, i8** %10, align 8
  %57 = call i64 %51(%struct.thread_info* %52, i64* %53, i64 %54, %struct.stacktrace_ops* %55, i8* %56, i32* null, i32* %11)
  store i64 %57, i64* %12, align 8
  %58 = load %struct.thread_info*, %struct.thread_info** %14, align 8
  %59 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = inttoptr i64 %60 to i64*
  store i64* %61, i64** %8, align 8
  %62 = load i64*, i64** %8, align 8
  %63 = icmp ne i64* %62, null
  br i1 %63, label %65, label %64

64:                                               ; preds = %40
  br label %75

65:                                               ; preds = %40
  %66 = load %struct.stacktrace_ops*, %struct.stacktrace_ops** %9, align 8
  %67 = getelementptr inbounds %struct.stacktrace_ops, %struct.stacktrace_ops* %66, i32 0, i32 1
  %68 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %67, align 8
  %69 = load i8*, i8** %10, align 8
  %70 = call i64 %68(i8* %69, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %71 = icmp slt i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %65
  br label %75

73:                                               ; preds = %65
  %74 = call i32 (...) @touch_nmi_watchdog()
  br label %40

75:                                               ; preds = %72, %64
  ret void
}

declare dso_local i64 @stack_frame(%struct.task_struct*, %struct.pt_regs*) #1

declare dso_local i32 @touch_nmi_watchdog(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
