; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/m68knommu/kernel/extr_signal.c_setup_sigcontext.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/m68knommu/kernel/extr_signal.c_setup_sigcontext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sigcontext = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pt_regs = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.switch_stack = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sigcontext*, %struct.pt_regs*, i64)* @setup_sigcontext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_sigcontext(%struct.sigcontext* %0, %struct.pt_regs* %1, i64 %2) #0 {
  %4 = alloca %struct.sigcontext*, align 8
  %5 = alloca %struct.pt_regs*, align 8
  %6 = alloca i64, align 8
  store %struct.sigcontext* %0, %struct.sigcontext** %4, align 8
  store %struct.pt_regs* %1, %struct.pt_regs** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i64, i64* %6, align 8
  %8 = load %struct.sigcontext*, %struct.sigcontext** %4, align 8
  %9 = getelementptr inbounds %struct.sigcontext, %struct.sigcontext* %8, i32 0, i32 0
  store i64 %7, i64* %9, align 8
  %10 = call i32 (...) @rdusp()
  %11 = load %struct.sigcontext*, %struct.sigcontext** %4, align 8
  %12 = getelementptr inbounds %struct.sigcontext, %struct.sigcontext* %11, i32 0, i32 9
  store i32 %10, i32* %12, align 8
  %13 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %14 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %13, i32 0, i32 7
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.sigcontext*, %struct.sigcontext** %4, align 8
  %17 = getelementptr inbounds %struct.sigcontext, %struct.sigcontext* %16, i32 0, i32 8
  store i32 %15, i32* %17, align 4
  %18 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %19 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %18, i32 0, i32 6
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.sigcontext*, %struct.sigcontext** %4, align 8
  %22 = getelementptr inbounds %struct.sigcontext, %struct.sigcontext* %21, i32 0, i32 7
  store i32 %20, i32* %22, align 8
  %23 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %24 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.sigcontext*, %struct.sigcontext** %4, align 8
  %27 = getelementptr inbounds %struct.sigcontext, %struct.sigcontext* %26, i32 0, i32 6
  store i32 %25, i32* %27, align 4
  %28 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %29 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.sigcontext*, %struct.sigcontext** %4, align 8
  %32 = getelementptr inbounds %struct.sigcontext, %struct.sigcontext* %31, i32 0, i32 5
  store i32 %30, i32* %32, align 8
  %33 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %34 = bitcast %struct.pt_regs* %33 to %struct.switch_stack*
  %35 = getelementptr inbounds %struct.switch_stack, %struct.switch_stack* %34, i64 -1
  %36 = getelementptr inbounds %struct.switch_stack, %struct.switch_stack* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.sigcontext*, %struct.sigcontext** %4, align 8
  %39 = getelementptr inbounds %struct.sigcontext, %struct.sigcontext* %38, i32 0, i32 4
  store i32 %37, i32* %39, align 4
  %40 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %41 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.sigcontext*, %struct.sigcontext** %4, align 8
  %44 = getelementptr inbounds %struct.sigcontext, %struct.sigcontext* %43, i32 0, i32 3
  store i32 %42, i32* %44, align 8
  %45 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %46 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.sigcontext*, %struct.sigcontext** %4, align 8
  %49 = getelementptr inbounds %struct.sigcontext, %struct.sigcontext* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 4
  %50 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %51 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = shl i32 %52, 12
  %54 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %55 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %53, %56
  %58 = load %struct.sigcontext*, %struct.sigcontext** %4, align 8
  %59 = getelementptr inbounds %struct.sigcontext, %struct.sigcontext* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 8
  ret void
}

declare dso_local i32 @rdusp(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
