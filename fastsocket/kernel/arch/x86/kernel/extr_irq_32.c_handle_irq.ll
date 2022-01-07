; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_irq_32.c_handle_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_irq_32.c_handle_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32 }
%struct.irq_desc = type { i32 (i32, %struct.irq_desc*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @handle_irq(i32 %0, %struct.pt_regs* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.pt_regs*, align 8
  %6 = alloca %struct.irq_desc*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.pt_regs* %1, %struct.pt_regs** %5, align 8
  %8 = call i32 (...) @check_stack_overflow()
  store i32 %8, i32* %7, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call %struct.irq_desc* @irq_to_desc(i32 %9)
  store %struct.irq_desc* %10, %struct.irq_desc** %6, align 8
  %11 = load %struct.irq_desc*, %struct.irq_desc** %6, align 8
  %12 = icmp ne %struct.irq_desc* %11, null
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i64 @unlikely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %38

18:                                               ; preds = %2
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.irq_desc*, %struct.irq_desc** %6, align 8
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @execute_on_irq_stack(i32 %19, %struct.irq_desc* %20, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %37, label %24

24:                                               ; preds = %18
  %25 = load i32, i32* %7, align 4
  %26 = call i64 @unlikely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = call i32 (...) @print_stack_overflow()
  br label %30

30:                                               ; preds = %28, %24
  %31 = load %struct.irq_desc*, %struct.irq_desc** %6, align 8
  %32 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %31, i32 0, i32 0
  %33 = load i32 (i32, %struct.irq_desc*)*, i32 (i32, %struct.irq_desc*)** %32, align 8
  %34 = load i32, i32* %4, align 4
  %35 = load %struct.irq_desc*, %struct.irq_desc** %6, align 8
  %36 = call i32 %33(i32 %34, %struct.irq_desc* %35)
  br label %37

37:                                               ; preds = %30, %18
  store i32 1, i32* %3, align 4
  br label %38

38:                                               ; preds = %37, %17
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @check_stack_overflow(...) #1

declare dso_local %struct.irq_desc* @irq_to_desc(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @execute_on_irq_stack(i32, %struct.irq_desc*, i32) #1

declare dso_local i32 @print_stack_overflow(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
