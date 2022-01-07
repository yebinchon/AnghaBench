; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/mm/extr_fault.c_notify_page_fault.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/mm/extr_fault.c_notify_page_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_regs*)* @notify_page_fault to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @notify_page_fault(%struct.pt_regs* %0) #0 {
  %2 = alloca %struct.pt_regs*, align 8
  %3 = alloca i32, align 4
  store %struct.pt_regs* %0, %struct.pt_regs** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = call i64 (...) @kprobes_built_in()
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %21

6:                                                ; preds = %1
  %7 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %8 = call i32 @user_mode_vm(%struct.pt_regs* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %21, label %10

10:                                               ; preds = %6
  %11 = call i32 (...) @preempt_disable()
  %12 = call i64 (...) @kprobe_running()
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %10
  %15 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %16 = call i64 @kprobe_fault_handler(%struct.pt_regs* %15, i32 14)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  store i32 1, i32* %3, align 4
  br label %19

19:                                               ; preds = %18, %14, %10
  %20 = call i32 (...) @preempt_enable()
  br label %21

21:                                               ; preds = %19, %6, %1
  %22 = load i32, i32* %3, align 4
  ret i32 %22
}

declare dso_local i64 @kprobes_built_in(...) #1

declare dso_local i32 @user_mode_vm(%struct.pt_regs*) #1

declare dso_local i32 @preempt_disable(...) #1

declare dso_local i64 @kprobe_running(...) #1

declare dso_local i64 @kprobe_fault_handler(%struct.pt_regs*, i32) #1

declare dso_local i32 @preempt_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
