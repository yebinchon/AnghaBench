; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/um/os-Linux/sys-x86_64/extr_signal.c_hard_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/um/os-Linux/sys-x86_64/extr_signal.c_hard_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucontext = type { i32 }
%struct.sigcontext = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hard_handler(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ucontext*, align 8
  store i32 %0, i32* %2, align 4
  %4 = call %struct.ucontext* asm "movq %rdx, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !2
  store %struct.ucontext* %4, %struct.ucontext** %3, align 8
  %5 = load i32, i32* %2, align 4
  %6 = load %struct.ucontext*, %struct.ucontext** %3, align 8
  %7 = getelementptr inbounds %struct.ucontext, %struct.ucontext* %6, i32 0, i32 0
  %8 = bitcast i32* %7 to %struct.sigcontext*
  %9 = call i32 @handle_signal(i32 %5, %struct.sigcontext* %8)
  ret void
}

declare dso_local i32 @handle_signal(i32, %struct.sigcontext*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 316}
