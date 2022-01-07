; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_vm86_32.c_return_to_32bit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_vm86_32.c_return_to_32bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kernel_vm86_regs = type { i32 }
%struct.pt_regs = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kernel_vm86_regs*, i32)* @return_to_32bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @return_to_32bit(%struct.kernel_vm86_regs* %0, i32 %1) #0 {
  %3 = alloca %struct.kernel_vm86_regs*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pt_regs*, align 8
  store %struct.kernel_vm86_regs* %0, %struct.kernel_vm86_regs** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.kernel_vm86_regs*, %struct.kernel_vm86_regs** %3, align 8
  %7 = call %struct.pt_regs* @save_v86_state(%struct.kernel_vm86_regs* %6)
  store %struct.pt_regs* %7, %struct.pt_regs** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %10 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %9, i32 0, i32 0
  store i32 %8, i32* %10, align 4
  %11 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %12 = call i32 (...) @current_thread_info()
  call void asm sideeffect "movl $0,%esp\0A\09movl $1,%ebp\0A\09jmp resume_userspace", "r,r,~{dirflag},~{fpsr},~{flags}"(%struct.pt_regs* %11, i32 %12) #2, !srcloc !2
  ret void
}

declare dso_local %struct.pt_regs* @save_v86_state(%struct.kernel_vm86_regs*) #1

declare dso_local i32 @current_thread_info(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 479, i32 495, i32 517}
