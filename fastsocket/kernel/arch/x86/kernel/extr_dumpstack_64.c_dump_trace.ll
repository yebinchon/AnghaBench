; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_dumpstack_64.c_dump_trace.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_dumpstack_64.c_dump_trace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.pt_regs = type { i32 }
%struct.stacktrace_ops = type { i64 (i8*, i8*)*, i64 (%struct.thread_info*, i64*, i64, %struct.stacktrace_ops*, i8*, i64*, i32*)* }
%struct.thread_info = type { i32 }

@irq_stack_ptr = common dso_local global i32 0, align 4
@current = common dso_local global %struct.task_struct* null, align 8
@.str = private unnamed_addr constant [6 x i8] c"<EOE>\00", align 1
@IRQ_STACK_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"IRQ\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"EOI\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dump_trace(%struct.task_struct* %0, %struct.pt_regs* %1, i64* %2, %struct.stacktrace_ops* %3, i8* %4) #0 {
  %6 = alloca %struct.task_struct*, align 8
  %7 = alloca %struct.pt_regs*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %struct.stacktrace_ops*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.thread_info*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64*, align 8
  %20 = alloca i64*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %6, align 8
  store %struct.pt_regs* %1, %struct.pt_regs** %7, align 8
  store i64* %2, i64** %8, align 8
  store %struct.stacktrace_ops* %3, %struct.stacktrace_ops** %9, align 8
  store i8* %4, i8** %10, align 8
  %21 = call i32 (...) @get_cpu()
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* @irq_stack_ptr, align 4
  %23 = load i32, i32* %11, align 4
  %24 = call i64 @per_cpu(i32 %22, i32 %23)
  %25 = inttoptr i64 %24 to i64*
  store i64* %25, i64** %12, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %15, align 4
  %26 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %27 = icmp ne %struct.task_struct* %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %5
  %29 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  store %struct.task_struct* %29, %struct.task_struct** %6, align 8
  br label %30

30:                                               ; preds = %28, %5
  %31 = load i64*, i64** %8, align 8
  %32 = icmp ne i64* %31, null
  br i1 %32, label %47, label %33

33:                                               ; preds = %30
  store i64* %17, i64** %8, align 8
  %34 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %35 = icmp ne %struct.task_struct* %34, null
  br i1 %35, label %36, label %46

36:                                               ; preds = %33
  %37 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %38 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  %39 = icmp ne %struct.task_struct* %37, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %36
  %41 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %42 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = inttoptr i64 %44 to i64*
  store i64* %45, i64** %8, align 8
  br label %46

46:                                               ; preds = %40, %36, %33
  br label %47

47:                                               ; preds = %46, %30
  %48 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %49 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %50 = call i64 @stack_frame(%struct.task_struct* %48, %struct.pt_regs* %49)
  store i64 %50, i64* %16, align 8
  %51 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %52 = call %struct.thread_info* @task_thread_info(%struct.task_struct* %51)
  store %struct.thread_info* %52, %struct.thread_info** %14, align 8
  br label %53

53:                                               ; preds = %113, %69, %47
  %54 = load i32, i32* %11, align 4
  %55 = load i64*, i64** %8, align 8
  %56 = ptrtoint i64* %55 to i64
  %57 = call i64* @in_exception_stack(i32 %54, i64 %56, i32* %13, i8** %18)
  store i64* %57, i64** %19, align 8
  %58 = load i64*, i64** %19, align 8
  %59 = icmp ne i64* %58, null
  br i1 %59, label %60, label %89

60:                                               ; preds = %53
  %61 = load %struct.stacktrace_ops*, %struct.stacktrace_ops** %9, align 8
  %62 = getelementptr inbounds %struct.stacktrace_ops, %struct.stacktrace_ops* %61, i32 0, i32 0
  %63 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %62, align 8
  %64 = load i8*, i8** %10, align 8
  %65 = load i8*, i8** %18, align 8
  %66 = call i64 %63(i8* %64, i8* %65)
  %67 = icmp slt i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %60
  br label %140

69:                                               ; preds = %60
  %70 = load %struct.stacktrace_ops*, %struct.stacktrace_ops** %9, align 8
  %71 = getelementptr inbounds %struct.stacktrace_ops, %struct.stacktrace_ops* %70, i32 0, i32 1
  %72 = load i64 (%struct.thread_info*, i64*, i64, %struct.stacktrace_ops*, i8*, i64*, i32*)*, i64 (%struct.thread_info*, i64*, i64, %struct.stacktrace_ops*, i8*, i64*, i32*)** %71, align 8
  %73 = load %struct.thread_info*, %struct.thread_info** %14, align 8
  %74 = load i64*, i64** %8, align 8
  %75 = load i64, i64* %16, align 8
  %76 = load %struct.stacktrace_ops*, %struct.stacktrace_ops** %9, align 8
  %77 = load i8*, i8** %10, align 8
  %78 = load i64*, i64** %19, align 8
  %79 = call i64 %72(%struct.thread_info* %73, i64* %74, i64 %75, %struct.stacktrace_ops* %76, i8* %77, i64* %78, i32* %15)
  store i64 %79, i64* %16, align 8
  %80 = load %struct.stacktrace_ops*, %struct.stacktrace_ops** %9, align 8
  %81 = getelementptr inbounds %struct.stacktrace_ops, %struct.stacktrace_ops* %80, i32 0, i32 0
  %82 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %81, align 8
  %83 = load i8*, i8** %10, align 8
  %84 = call i64 %82(i8* %83, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %85 = load i64*, i64** %19, align 8
  %86 = getelementptr inbounds i64, i64* %85, i64 -2
  %87 = load i64, i64* %86, align 8
  %88 = inttoptr i64 %87 to i64*
  store i64* %88, i64** %8, align 8
  br label %53

89:                                               ; preds = %53
  %90 = load i64*, i64** %12, align 8
  %91 = icmp ne i64* %90, null
  br i1 %91, label %92, label %139

92:                                               ; preds = %89
  %93 = load i64*, i64** %12, align 8
  %94 = load i32, i32* @IRQ_STACK_SIZE, align 4
  %95 = sub nsw i32 %94, 64
  %96 = sext i32 %95 to i64
  %97 = udiv i64 %96, 8
  %98 = sub i64 0, %97
  %99 = getelementptr inbounds i64, i64* %93, i64 %98
  store i64* %99, i64** %20, align 8
  %100 = load i64*, i64** %8, align 8
  %101 = load i64*, i64** %20, align 8
  %102 = load i64*, i64** %12, align 8
  %103 = call i64 @in_irq_stack(i64* %100, i64* %101, i64* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %138

105:                                              ; preds = %92
  %106 = load %struct.stacktrace_ops*, %struct.stacktrace_ops** %9, align 8
  %107 = getelementptr inbounds %struct.stacktrace_ops, %struct.stacktrace_ops* %106, i32 0, i32 0
  %108 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %107, align 8
  %109 = load i8*, i8** %10, align 8
  %110 = call i64 %108(i8* %109, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %111 = icmp slt i64 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %105
  br label %140

113:                                              ; preds = %105
  %114 = load %struct.stacktrace_ops*, %struct.stacktrace_ops** %9, align 8
  %115 = getelementptr inbounds %struct.stacktrace_ops, %struct.stacktrace_ops* %114, i32 0, i32 1
  %116 = load i64 (%struct.thread_info*, i64*, i64, %struct.stacktrace_ops*, i8*, i64*, i32*)*, i64 (%struct.thread_info*, i64*, i64, %struct.stacktrace_ops*, i8*, i64*, i32*)** %115, align 8
  %117 = load %struct.thread_info*, %struct.thread_info** %14, align 8
  %118 = load i64*, i64** %8, align 8
  %119 = load i64, i64* %16, align 8
  %120 = load %struct.stacktrace_ops*, %struct.stacktrace_ops** %9, align 8
  %121 = load i8*, i8** %10, align 8
  %122 = load i64*, i64** %12, align 8
  %123 = call i64 %116(%struct.thread_info* %117, i64* %118, i64 %119, %struct.stacktrace_ops* %120, i8* %121, i64* %122, i32* %15)
  store i64 %123, i64* %16, align 8
  %124 = load i64*, i64** %12, align 8
  %125 = getelementptr inbounds i64, i64* %124, i64 -1
  %126 = load i64, i64* %125, align 8
  %127 = inttoptr i64 %126 to i64*
  store i64* %127, i64** %8, align 8
  %128 = load i64, i64* %16, align 8
  %129 = load i64*, i64** %8, align 8
  %130 = load i64*, i64** %20, align 8
  %131 = load i64*, i64** %12, align 8
  %132 = call i64 @fixup_bp_irq_link(i64 %128, i64* %129, i64* %130, i64* %131)
  store i64 %132, i64* %16, align 8
  store i64* null, i64** %12, align 8
  %133 = load %struct.stacktrace_ops*, %struct.stacktrace_ops** %9, align 8
  %134 = getelementptr inbounds %struct.stacktrace_ops, %struct.stacktrace_ops* %133, i32 0, i32 0
  %135 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %134, align 8
  %136 = load i8*, i8** %10, align 8
  %137 = call i64 %135(i8* %136, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  br label %53

138:                                              ; preds = %92
  br label %139

139:                                              ; preds = %138, %89
  br label %140

140:                                              ; preds = %139, %112, %68
  %141 = load %struct.stacktrace_ops*, %struct.stacktrace_ops** %9, align 8
  %142 = getelementptr inbounds %struct.stacktrace_ops, %struct.stacktrace_ops* %141, i32 0, i32 1
  %143 = load i64 (%struct.thread_info*, i64*, i64, %struct.stacktrace_ops*, i8*, i64*, i32*)*, i64 (%struct.thread_info*, i64*, i64, %struct.stacktrace_ops*, i8*, i64*, i32*)** %142, align 8
  %144 = load %struct.thread_info*, %struct.thread_info** %14, align 8
  %145 = load i64*, i64** %8, align 8
  %146 = load i64, i64* %16, align 8
  %147 = load %struct.stacktrace_ops*, %struct.stacktrace_ops** %9, align 8
  %148 = load i8*, i8** %10, align 8
  %149 = call i64 %143(%struct.thread_info* %144, i64* %145, i64 %146, %struct.stacktrace_ops* %147, i8* %148, i64* null, i32* %15)
  store i64 %149, i64* %16, align 8
  %150 = call i32 (...) @put_cpu()
  ret void
}

declare dso_local i32 @get_cpu(...) #1

declare dso_local i64 @per_cpu(i32, i32) #1

declare dso_local i64 @stack_frame(%struct.task_struct*, %struct.pt_regs*) #1

declare dso_local %struct.thread_info* @task_thread_info(%struct.task_struct*) #1

declare dso_local i64* @in_exception_stack(i32, i64, i32*, i8**) #1

declare dso_local i64 @in_irq_stack(i64*, i64*, i64*) #1

declare dso_local i64 @fixup_bp_irq_link(i64, i64*, i64*, i64*) #1

declare dso_local i32 @put_cpu(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
