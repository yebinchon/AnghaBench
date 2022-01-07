; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/um/kernel/extr_irq.c_deactivate_all_fds.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/um/kernel/extr_irq.c_deactivate_all_fds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_fd = type { i32, %struct.irq_fd* }

@active_fds = common dso_local global %struct.irq_fd* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @deactivate_all_fds() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.irq_fd*, align 8
  %3 = alloca i32, align 4
  %4 = load %struct.irq_fd*, %struct.irq_fd** @active_fds, align 8
  store %struct.irq_fd* %4, %struct.irq_fd** %2, align 8
  br label %5

5:                                                ; preds = %18, %0
  %6 = load %struct.irq_fd*, %struct.irq_fd** %2, align 8
  %7 = icmp ne %struct.irq_fd* %6, null
  br i1 %7, label %8, label %22

8:                                                ; preds = %5
  %9 = load %struct.irq_fd*, %struct.irq_fd** %2, align 8
  %10 = getelementptr inbounds %struct.irq_fd, %struct.irq_fd* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @os_clear_fd_async(i32 %11)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %8
  %16 = load i32, i32* %3, align 4
  store i32 %16, i32* %1, align 4
  br label %24

17:                                               ; preds = %8
  br label %18

18:                                               ; preds = %17
  %19 = load %struct.irq_fd*, %struct.irq_fd** %2, align 8
  %20 = getelementptr inbounds %struct.irq_fd, %struct.irq_fd* %19, i32 0, i32 1
  %21 = load %struct.irq_fd*, %struct.irq_fd** %20, align 8
  store %struct.irq_fd* %21, %struct.irq_fd** %2, align 8
  br label %5

22:                                               ; preds = %5
  %23 = call i32 (...) @os_set_ioignore()
  store i32 0, i32* %1, align 4
  br label %24

24:                                               ; preds = %22, %15
  %25 = load i32, i32* %1, align 4
  ret i32 %25
}

declare dso_local i32 @os_clear_fd_async(i32) #1

declare dso_local i32 @os_set_ioignore(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
