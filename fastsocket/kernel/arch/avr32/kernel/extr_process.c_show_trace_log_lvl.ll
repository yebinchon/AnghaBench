; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/avr32/kernel/extr_process.c_show_trace_log_lvl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/avr32/kernel/extr_process.c_show_trace_log_lvl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.pt_regs = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"%sCall trace:\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c" [<%08lx>] \00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.task_struct*, i64*, %struct.pt_regs*, i8*)* @show_trace_log_lvl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_trace_log_lvl(%struct.task_struct* %0, i64* %1, %struct.pt_regs* %2, i8* %3) #0 {
  %5 = alloca %struct.task_struct*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.pt_regs*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store %struct.task_struct* %0, %struct.task_struct** %5, align 8
  store i64* %1, i64** %6, align 8
  store %struct.pt_regs* %2, %struct.pt_regs** %7, align 8
  store i8* %3, i8** %8, align 8
  %10 = load i8*, i8** %8, align 8
  %11 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %10)
  br label %12

12:                                               ; preds = %29, %4
  %13 = load i64*, i64** %6, align 8
  %14 = call i32 @kstack_end(i64* %13)
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  br i1 %16, label %17, label %30

17:                                               ; preds = %12
  %18 = load i64*, i64** %6, align 8
  %19 = getelementptr inbounds i64, i64* %18, i32 1
  store i64* %19, i64** %6, align 8
  %20 = load i64, i64* %18, align 8
  store i64 %20, i64* %9, align 8
  %21 = load i64, i64* %9, align 8
  %22 = call i64 @kernel_text_address(i64 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %17
  %25 = load i64, i64* %9, align 8
  %26 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 %25)
  %27 = load i64, i64* %9, align 8
  %28 = call i32 @print_symbol(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i64 %27)
  br label %29

29:                                               ; preds = %24, %17
  br label %12

30:                                               ; preds = %12
  %31 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @kstack_end(i64*) #1

declare dso_local i64 @kernel_text_address(i64) #1

declare dso_local i32 @print_symbol(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
