; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/math-emu/extr_fpu_entry.c_math_abort.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/math-emu/extr_fpu_entry.c_math_abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64 }
%struct.math_emu_info = type { i32 }

@FPU_ORIG_EIP = common dso_local global i32 0, align 4
@FPU_EIP = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_5__* null, align 8
@RE_ENTRANT_CHECK_OFF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @math_abort(%struct.math_emu_info* %0, i32 %1) #0 {
  %3 = alloca %struct.math_emu_info*, align 8
  %4 = alloca i32, align 4
  store %struct.math_emu_info* %0, %struct.math_emu_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @FPU_ORIG_EIP, align 4
  store i32 %5, i32* @FPU_EIP, align 4
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  store i32 16, i32* %8, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  store i64 0, i64* %11, align 8
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %14 = call i32 @send_sig(i32 %12, %struct.TYPE_5__* %13, i32 1)
  %15 = load i32, i32* @RE_ENTRANT_CHECK_OFF, align 4
  %16 = load %struct.math_emu_info*, %struct.math_emu_info** %3, align 8
  %17 = ptrtoint %struct.math_emu_info* %16 to i64
  %18 = sub nsw i64 %17, 4
  call void asm sideeffect "movl $0,%esp ; ret", "imr,~{dirflag},~{fpsr},~{flags}"(i64 %18) #2, !srcloc !2
  ret void
}

declare dso_local i32 @send_sig(i32, %struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 719}
