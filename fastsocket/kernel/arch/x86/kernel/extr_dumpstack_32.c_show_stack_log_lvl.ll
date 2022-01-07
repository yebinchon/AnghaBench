; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_dumpstack_32.c_show_stack_log_lvl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_dumpstack_32.c_show_stack_log_lvl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.pt_regs = type { i32 }

@kstack_depth_to_print = common dso_local global i32 0, align 4
@STACKSLOTS_PER_LINE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"\0A%s\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c" %08lx\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @show_stack_log_lvl(%struct.task_struct* %0, %struct.pt_regs* %1, i64* %2, i8* %3) #0 {
  %5 = alloca %struct.task_struct*, align 8
  %6 = alloca %struct.pt_regs*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %5, align 8
  store %struct.pt_regs* %1, %struct.pt_regs** %6, align 8
  store i64* %2, i64** %7, align 8
  store i8* %3, i8** %8, align 8
  %11 = load i64*, i64** %7, align 8
  %12 = icmp eq i64* %11, null
  br i1 %12, label %13, label %25

13:                                               ; preds = %4
  %14 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %15 = icmp ne %struct.task_struct* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %13
  %17 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %18 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to i64*
  store i64* %21, i64** %7, align 8
  br label %24

22:                                               ; preds = %13
  %23 = bitcast i64** %7 to i64*
  store i64* %23, i64** %7, align 8
  br label %24

24:                                               ; preds = %22, %16
  br label %25

25:                                               ; preds = %24, %4
  %26 = load i64*, i64** %7, align 8
  store i64* %26, i64** %9, align 8
  store i32 0, i32* %10, align 4
  br label %27

27:                                               ; preds = %53, %25
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* @kstack_depth_to_print, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %56

31:                                               ; preds = %27
  %32 = load i64*, i64** %9, align 8
  %33 = call i64 @kstack_end(i64* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  br label %56

36:                                               ; preds = %31
  %37 = load i32, i32* %10, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %36
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* @STACKSLOTS_PER_LINE, align 4
  %42 = srem i32 %40, %41
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load i8*, i8** %8, align 8
  %46 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %45)
  br label %47

47:                                               ; preds = %44, %39, %36
  %48 = load i64*, i64** %9, align 8
  %49 = getelementptr inbounds i64, i64* %48, i32 1
  store i64* %49, i64** %9, align 8
  %50 = load i64, i64* %48, align 8
  %51 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i64 %50)
  %52 = call i32 (...) @touch_nmi_watchdog()
  br label %53

53:                                               ; preds = %47
  %54 = load i32, i32* %10, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %10, align 4
  br label %27

56:                                               ; preds = %35, %27
  %57 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %58 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %59 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %60 = load i64*, i64** %7, align 8
  %61 = load i8*, i8** %8, align 8
  %62 = call i32 @show_trace_log_lvl(%struct.task_struct* %58, %struct.pt_regs* %59, i64* %60, i8* %61)
  ret void
}

declare dso_local i64 @kstack_end(i64*) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @touch_nmi_watchdog(...) #1

declare dso_local i32 @show_trace_log_lvl(%struct.task_struct*, %struct.pt_regs*, i64*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
