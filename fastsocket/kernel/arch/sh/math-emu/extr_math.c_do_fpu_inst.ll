; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/math-emu/extr_math.c_do_fpu_inst.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/math-emu/extr_math.c_do_fpu_inst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.sh_fpu_soft_struct }
%struct.sh_fpu_soft_struct = type { i32 }
%struct.pt_regs = type { i32 }

@current = common dso_local global %struct.task_struct* null, align 8
@TIF_USEDFPU = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_fpu_inst(i16 zeroext %0, %struct.pt_regs* %1) #0 {
  %3 = alloca i16, align 2
  %4 = alloca %struct.pt_regs*, align 8
  %5 = alloca %struct.task_struct*, align 8
  %6 = alloca %struct.sh_fpu_soft_struct*, align 8
  store i16 %0, i16* %3, align 2
  store %struct.pt_regs* %1, %struct.pt_regs** %4, align 8
  %7 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  store %struct.task_struct* %7, %struct.task_struct** %5, align 8
  %8 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %9 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  store %struct.sh_fpu_soft_struct* %11, %struct.sh_fpu_soft_struct** %6, align 8
  %12 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %13 = load i32, i32* @TIF_USEDFPU, align 4
  %14 = call i32 @test_tsk_thread_flag(%struct.task_struct* %12, i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %2
  %17 = load %struct.sh_fpu_soft_struct*, %struct.sh_fpu_soft_struct** %6, align 8
  %18 = call i32 @fpu_init(%struct.sh_fpu_soft_struct* %17)
  %19 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %20 = load i32, i32* @TIF_USEDFPU, align 4
  %21 = call i32 @set_tsk_thread_flag(%struct.task_struct* %19, i32 %20)
  br label %22

22:                                               ; preds = %16, %2
  %23 = load i16, i16* %3, align 2
  %24 = load %struct.sh_fpu_soft_struct*, %struct.sh_fpu_soft_struct** %6, align 8
  %25 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %26 = call i32 @fpu_emulate(i16 zeroext %23, %struct.sh_fpu_soft_struct* %24, %struct.pt_regs* %25)
  ret i32 %26
}

declare dso_local i32 @test_tsk_thread_flag(%struct.task_struct*, i32) #1

declare dso_local i32 @fpu_init(%struct.sh_fpu_soft_struct*) #1

declare dso_local i32 @set_tsk_thread_flag(%struct.task_struct*, i32) #1

declare dso_local i32 @fpu_emulate(i16 zeroext, %struct.sh_fpu_soft_struct*, %struct.pt_regs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
