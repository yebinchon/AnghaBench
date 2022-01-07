; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_smp.c_smp_message_recv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_smp.c_smp_message_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [44 x i8] c"SMP %d: smp_message_recv(): unknown msg %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @smp_message_recv(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  switch i32 %3, label %15 [
    i32 131, label %4
    i32 128, label %6
    i32 130, label %8
    i32 129, label %10
  ]

4:                                                ; preds = %1
  %5 = call i32 (...) @generic_smp_call_function_interrupt()
  br label %19

6:                                                ; preds = %1
  %7 = call i32 (...) @scheduler_ipi()
  br label %19

8:                                                ; preds = %1
  %9 = call i32 (...) @generic_smp_call_function_single_interrupt()
  br label %19

10:                                               ; preds = %1
  br i1 true, label %11, label %14

11:                                               ; preds = %10
  %12 = call i32 (...) @get_irq_regs()
  %13 = call i32 @crash_ipi_function_ptr(i32 %12)
  br label %19

14:                                               ; preds = %10
  br label %15

15:                                               ; preds = %1, %14
  %16 = call i32 (...) @smp_processor_id()
  %17 = load i32, i32* %2, align 4
  %18 = call i32 @printk(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %17)
  br label %19

19:                                               ; preds = %15, %11, %8, %6, %4
  ret void
}

declare dso_local i32 @generic_smp_call_function_interrupt(...) #1

declare dso_local i32 @scheduler_ipi(...) #1

declare dso_local i32 @generic_smp_call_function_single_interrupt(...) #1

declare dso_local i32 @crash_ipi_function_ptr(i32) #1

declare dso_local i32 @get_irq_regs(...) #1

declare dso_local i32 @printk(i8*, i32, i32) #1

declare dso_local i32 @smp_processor_id(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
