; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/um/kernel/extr_irq.c_sigio_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/um/kernel/extr_irq.c_sigio_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_fd = type { i64, i32, %struct.irq_fd* }
%struct.uml_pt_regs = type { i32 }

@active_fds = common dso_local global %struct.irq_fd* null, align 8
@EINTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sigio_handler(i32 %0, %struct.uml_pt_regs* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.uml_pt_regs*, align 8
  %5 = alloca %struct.irq_fd*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.uml_pt_regs* %1, %struct.uml_pt_regs** %4, align 8
  %7 = call i64 (...) @smp_sigio_handler()
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  br label %49

10:                                               ; preds = %2
  br label %11

11:                                               ; preds = %10, %21, %46
  %12 = load %struct.irq_fd*, %struct.irq_fd** @active_fds, align 8
  %13 = call i32 @os_waiting_for_events(%struct.irq_fd* %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp sle i32 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %11
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @EINTR, align 4
  %19 = sub nsw i32 0, %18
  %20 = icmp eq i32 %17, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  br label %11

22:                                               ; preds = %16
  br label %47

23:                                               ; preds = %11
  %24 = load %struct.irq_fd*, %struct.irq_fd** @active_fds, align 8
  store %struct.irq_fd* %24, %struct.irq_fd** %5, align 8
  br label %25

25:                                               ; preds = %42, %23
  %26 = load %struct.irq_fd*, %struct.irq_fd** %5, align 8
  %27 = icmp ne %struct.irq_fd* %26, null
  br i1 %27, label %28, label %46

28:                                               ; preds = %25
  %29 = load %struct.irq_fd*, %struct.irq_fd** %5, align 8
  %30 = getelementptr inbounds %struct.irq_fd, %struct.irq_fd* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %28
  %34 = load %struct.irq_fd*, %struct.irq_fd** %5, align 8
  %35 = getelementptr inbounds %struct.irq_fd, %struct.irq_fd* %34, i32 0, i32 0
  store i64 0, i64* %35, align 8
  %36 = load %struct.irq_fd*, %struct.irq_fd** %5, align 8
  %37 = getelementptr inbounds %struct.irq_fd, %struct.irq_fd* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.uml_pt_regs*, %struct.uml_pt_regs** %4, align 8
  %40 = call i32 @do_IRQ(i32 %38, %struct.uml_pt_regs* %39)
  br label %41

41:                                               ; preds = %33, %28
  br label %42

42:                                               ; preds = %41
  %43 = load %struct.irq_fd*, %struct.irq_fd** %5, align 8
  %44 = getelementptr inbounds %struct.irq_fd, %struct.irq_fd* %43, i32 0, i32 2
  %45 = load %struct.irq_fd*, %struct.irq_fd** %44, align 8
  store %struct.irq_fd* %45, %struct.irq_fd** %5, align 8
  br label %25

46:                                               ; preds = %25
  br label %11

47:                                               ; preds = %22
  %48 = call i32 (...) @free_irqs()
  br label %49

49:                                               ; preds = %47, %9
  ret void
}

declare dso_local i64 @smp_sigio_handler(...) #1

declare dso_local i32 @os_waiting_for_events(%struct.irq_fd*) #1

declare dso_local i32 @do_IRQ(i32, %struct.uml_pt_regs*) #1

declare dso_local i32 @free_irqs(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
