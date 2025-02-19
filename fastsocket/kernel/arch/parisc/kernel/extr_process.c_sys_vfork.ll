; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/parisc/kernel/extr_process.c_sys_vfork.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/parisc/kernel/extr_process.c_sys_vfork.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32* }

@CLONE_VFORK = common dso_local global i32 0, align 4
@CLONE_VM = common dso_local global i32 0, align 4
@SIGCHLD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_vfork(%struct.pt_regs* %0) #0 {
  %2 = alloca %struct.pt_regs*, align 8
  store %struct.pt_regs* %0, %struct.pt_regs** %2, align 8
  %3 = load i32, i32* @CLONE_VFORK, align 4
  %4 = load i32, i32* @CLONE_VM, align 4
  %5 = or i32 %3, %4
  %6 = load i32, i32* @SIGCHLD, align 4
  %7 = or i32 %5, %6
  %8 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %9 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 30
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %14 = call i32 @do_fork(i32 %7, i32 %12, %struct.pt_regs* %13, i32 0, i32* null, i32* null)
  ret i32 %14
}

declare dso_local i32 @do_fork(i32, i32, %struct.pt_regs*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
