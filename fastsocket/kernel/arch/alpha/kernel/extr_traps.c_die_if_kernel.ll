; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/alpha/kernel/extr_traps.c_die_if_kernel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/alpha/kernel/extr_traps.c_die_if_kernel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.pt_regs = type { i32, i64 }

@.str = private unnamed_addr constant [16 x i8] c"%s(%d): %s %ld\0A\00", align 1
@current = common dso_local global %struct.TYPE_3__* null, align 8
@TAINT_DIE = common dso_local global i32 0, align 4
@TIF_DIE_IF_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"die_if_kernel recursion detected.\0A\00", align 1
@SIGSEGV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @die_if_kernel(i8* %0, %struct.pt_regs* %1, i64 %2, i64* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.pt_regs*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.pt_regs* %1, %struct.pt_regs** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64* %3, i64** %8, align 8
  %9 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %10 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = and i32 %11, 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  br label %48

15:                                               ; preds = %4
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %20 = call i32 @task_pid_nr(%struct.TYPE_3__* %19)
  %21 = load i8*, i8** %5, align 8
  %22 = load i64, i64* %7, align 8
  %23 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %20, i8* %21, i64 %22)
  %24 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %25 = load i64*, i64** %8, align 8
  %26 = call i32 @dik_show_regs(%struct.pt_regs* %24, i64* %25)
  %27 = load i32, i32* @TAINT_DIE, align 4
  %28 = call i32 @add_taint(i32 %27)
  %29 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %30 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %29, i64 1
  %31 = bitcast %struct.pt_regs* %30 to i64*
  %32 = call i32 @dik_show_trace(i64* %31)
  %33 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %34 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to i32*
  %37 = call i32 @dik_show_code(i32* %36)
  %38 = load i32, i32* @TIF_DIE_IF_KERNEL, align 4
  %39 = call i64 @test_and_set_thread_flag(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %15
  %42 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %43 = call i32 (...) @local_irq_enable()
  br label %44

44:                                               ; preds = %41, %44
  br label %44

45:                                               ; preds = %15
  %46 = load i32, i32* @SIGSEGV, align 4
  %47 = call i32 @do_exit(i32 %46)
  br label %48

48:                                               ; preds = %45, %14
  ret void
}

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @task_pid_nr(%struct.TYPE_3__*) #1

declare dso_local i32 @dik_show_regs(%struct.pt_regs*, i64*) #1

declare dso_local i32 @add_taint(i32) #1

declare dso_local i32 @dik_show_trace(i64*) #1

declare dso_local i32 @dik_show_code(i32*) #1

declare dso_local i64 @test_and_set_thread_flag(i32) #1

declare dso_local i32 @local_irq_enable(...) #1

declare dso_local i32 @do_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
