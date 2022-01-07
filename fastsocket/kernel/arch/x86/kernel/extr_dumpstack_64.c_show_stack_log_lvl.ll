; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_dumpstack_64.c_show_stack_log_lvl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_dumpstack_64.c_show_stack_log_lvl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.pt_regs = type { i32 }

@irq_stack_ptr = common dso_local global i32 0, align 4
@IRQ_STACK_SIZE = common dso_local global i64 0, align 8
@kstack_depth_to_print = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c" <EOI> \00", align 1
@THREAD_SIZE = common dso_local global i32 0, align 4
@STACKSLOTS_PER_LINE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"\0A%s\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c" %016lx\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @show_stack_log_lvl(%struct.task_struct* %0, %struct.pt_regs* %1, i64* %2, i8* %3) #0 {
  %5 = alloca %struct.task_struct*, align 8
  %6 = alloca %struct.pt_regs*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %5, align 8
  store %struct.pt_regs* %1, %struct.pt_regs** %6, align 8
  store i64* %2, i64** %7, align 8
  store i8* %3, i8** %8, align 8
  %14 = call i32 (...) @preempt_disable()
  %15 = call i32 (...) @smp_processor_id()
  store i32 %15, i32* %12, align 4
  %16 = load i32, i32* @irq_stack_ptr, align 4
  %17 = load i32, i32* %12, align 4
  %18 = call i64 @per_cpu(i32 %16, i32 %17)
  %19 = inttoptr i64 %18 to i64*
  store i64* %19, i64** %9, align 8
  %20 = load i32, i32* @irq_stack_ptr, align 4
  %21 = load i32, i32* %12, align 4
  %22 = call i64 @per_cpu(i32 %20, i32 %21)
  %23 = load i64, i64* @IRQ_STACK_SIZE, align 8
  %24 = sub nsw i64 %22, %23
  %25 = inttoptr i64 %24 to i64*
  store i64* %25, i64** %10, align 8
  %26 = load i64*, i64** %7, align 8
  %27 = icmp eq i64* %26, null
  br i1 %27, label %28, label %40

28:                                               ; preds = %4
  %29 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %30 = icmp ne %struct.task_struct* %29, null
  br i1 %30, label %31, label %37

31:                                               ; preds = %28
  %32 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %33 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to i64*
  store i64* %36, i64** %7, align 8
  br label %39

37:                                               ; preds = %28
  %38 = bitcast i64** %7 to i64*
  store i64* %38, i64** %7, align 8
  br label %39

39:                                               ; preds = %37, %31
  br label %40

40:                                               ; preds = %39, %4
  %41 = load i64*, i64** %7, align 8
  store i64* %41, i64** %11, align 8
  store i32 0, i32* %13, align 4
  br label %42

42:                                               ; preds = %92, %40
  %43 = load i32, i32* %13, align 4
  %44 = load i32, i32* @kstack_depth_to_print, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %95

46:                                               ; preds = %42
  %47 = load i64*, i64** %11, align 8
  %48 = load i64*, i64** %10, align 8
  %49 = icmp uge i64* %47, %48
  br i1 %49, label %50, label %65

50:                                               ; preds = %46
  %51 = load i64*, i64** %11, align 8
  %52 = load i64*, i64** %9, align 8
  %53 = icmp ule i64* %51, %52
  br i1 %53, label %54, label %65

54:                                               ; preds = %50
  %55 = load i64*, i64** %11, align 8
  %56 = load i64*, i64** %9, align 8
  %57 = icmp eq i64* %55, %56
  br i1 %57, label %58, label %64

58:                                               ; preds = %54
  %59 = load i64*, i64** %9, align 8
  %60 = getelementptr inbounds i64, i64* %59, i64 -1
  %61 = load i64, i64* %60, align 8
  %62 = inttoptr i64 %61 to i64*
  store i64* %62, i64** %11, align 8
  %63 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  br label %64

64:                                               ; preds = %58, %54
  br label %75

65:                                               ; preds = %50, %46
  %66 = load i64*, i64** %11, align 8
  %67 = ptrtoint i64* %66 to i64
  %68 = load i32, i32* @THREAD_SIZE, align 4
  %69 = sub nsw i32 %68, 1
  %70 = sext i32 %69 to i64
  %71 = and i64 %67, %70
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %65
  br label %95

74:                                               ; preds = %65
  br label %75

75:                                               ; preds = %74, %64
  %76 = load i32, i32* %13, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %75
  %79 = load i32, i32* %13, align 4
  %80 = load i32, i32* @STACKSLOTS_PER_LINE, align 4
  %81 = srem i32 %79, %80
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %78
  %84 = load i8*, i8** %8, align 8
  %85 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %84)
  br label %86

86:                                               ; preds = %83, %78, %75
  %87 = load i64*, i64** %11, align 8
  %88 = getelementptr inbounds i64, i64* %87, i32 1
  store i64* %88, i64** %11, align 8
  %89 = load i64, i64* %87, align 8
  %90 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i64 %89)
  %91 = call i32 (...) @touch_nmi_watchdog()
  br label %92

92:                                               ; preds = %86
  %93 = load i32, i32* %13, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %13, align 4
  br label %42

95:                                               ; preds = %73, %42
  %96 = call i32 (...) @preempt_enable()
  %97 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %98 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %99 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %100 = load i64*, i64** %7, align 8
  %101 = load i8*, i8** %8, align 8
  %102 = call i32 @show_trace_log_lvl(%struct.task_struct* %98, %struct.pt_regs* %99, i64* %100, i8* %101)
  ret void
}

declare dso_local i32 @preempt_disable(...) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i64 @per_cpu(i32, i32) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @touch_nmi_watchdog(...) #1

declare dso_local i32 @preempt_enable(...) #1

declare dso_local i32 @show_trace_log_lvl(%struct.task_struct*, %struct.pt_regs*, i64*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
