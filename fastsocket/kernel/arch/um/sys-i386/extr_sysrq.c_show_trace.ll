; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/um/sys-i386/extr_sysrq.c_show_trace.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/um/sys-i386/extr_sysrq.c_show_trace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.thread_info = type { i32 }

@.str = private unnamed_addr constant [64 x i8] c"show_trace: got NULL stack, implicit assumption task == current\00", align 1
@current = common dso_local global %struct.task_struct* null, align 8
@THREAD_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @show_trace(%struct.task_struct* %0, i64* %1) #0 {
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.thread_info*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %3, align 8
  store i64* %1, i64** %4, align 8
  %7 = load i64*, i64** %4, align 8
  %8 = icmp ne i64* %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = bitcast i64** %4 to i64*
  store i64* %10, i64** %4, align 8
  %11 = call i32 @printk(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0))
  %12 = call i32 @WARN_ON(i32 1)
  br label %13

13:                                               ; preds = %9, %2
  %14 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %15 = icmp ne %struct.task_struct* %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %13
  %17 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  store %struct.task_struct* %17, %struct.task_struct** %3, align 8
  br label %18

18:                                               ; preds = %16, %13
  %19 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %20 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  %21 = icmp ne %struct.task_struct* %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %24 = call i64 @KSTK_EBP(%struct.task_struct* %23)
  store i64 %24, i64* %5, align 8
  br label %27

25:                                               ; preds = %18
  %26 = call i64 asm "movl %ebp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !2
  store i64 %26, i64* %5, align 8
  br label %27

27:                                               ; preds = %25, %22
  %28 = load i64*, i64** %4, align 8
  %29 = ptrtoint i64* %28 to i64
  %30 = load i32, i32* @THREAD_SIZE, align 4
  %31 = sub nsw i32 %30, 1
  %32 = xor i32 %31, -1
  %33 = sext i32 %32 to i64
  %34 = and i64 %29, %33
  %35 = inttoptr i64 %34 to %struct.thread_info*
  store %struct.thread_info* %35, %struct.thread_info** %6, align 8
  %36 = load %struct.thread_info*, %struct.thread_info** %6, align 8
  %37 = load i64*, i64** %4, align 8
  %38 = load i64, i64* %5, align 8
  %39 = call i32 @print_context_stack(%struct.thread_info* %36, i64* %37, i64 %38)
  %40 = call i32 @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @KSTK_EBP(%struct.task_struct*) #1

declare dso_local i32 @print_context_stack(%struct.thread_info*, i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 804}
