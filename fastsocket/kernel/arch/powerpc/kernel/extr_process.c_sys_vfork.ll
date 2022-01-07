; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_process.c_sys_vfork.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_process.c_sys_vfork.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32* }

@CLONE_VFORK = common dso_local global i32 0, align 4
@CLONE_VM = common dso_local global i32 0, align 4
@SIGCHLD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_vfork(i64 %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5, %struct.pt_regs* %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.pt_regs*, align 8
  store i64 %0, i64* %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  store %struct.pt_regs* %6, %struct.pt_regs** %14, align 8
  %15 = load %struct.pt_regs*, %struct.pt_regs** %14, align 8
  %16 = call i32 @CHECK_FULL_REGS(%struct.pt_regs* %15)
  %17 = load i32, i32* @CLONE_VFORK, align 4
  %18 = load i32, i32* @CLONE_VM, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @SIGCHLD, align 4
  %21 = or i32 %19, %20
  %22 = load %struct.pt_regs*, %struct.pt_regs** %14, align 8
  %23 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.pt_regs*, %struct.pt_regs** %14, align 8
  %28 = call i32 @do_fork(i32 %21, i32 %26, %struct.pt_regs* %27, i32 0, i32* null, i32* null)
  ret i32 %28
}

declare dso_local i32 @CHECK_FULL_REGS(%struct.pt_regs*) #1

declare dso_local i32 @do_fork(i32, i32, %struct.pt_regs*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
