; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/vr41xx/common/extr_icu.c_vr41xx_disable_bcuint.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/vr41xx/common/extr_icu.c_vr41xx_disable_bcuint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_desc = type { i32 }

@irq_desc = common dso_local global %struct.irq_desc* null, align 8
@BCU_IRQ = common dso_local global i32 0, align 4
@CPU_VR4122 = common dso_local global i64 0, align 8
@CPU_VR4131 = common dso_local global i64 0, align 8
@CPU_VR4133 = common dso_local global i64 0, align 8
@MBCUINTREG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vr41xx_disable_bcuint() #0 {
  %1 = alloca %struct.irq_desc*, align 8
  %2 = alloca i64, align 8
  %3 = load %struct.irq_desc*, %struct.irq_desc** @irq_desc, align 8
  %4 = load i32, i32* @BCU_IRQ, align 4
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %3, i64 %5
  store %struct.irq_desc* %6, %struct.irq_desc** %1, align 8
  %7 = call i64 (...) @current_cpu_type()
  %8 = load i64, i64* @CPU_VR4122, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %18, label %10

10:                                               ; preds = %0
  %11 = call i64 (...) @current_cpu_type()
  %12 = load i64, i64* @CPU_VR4131, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = call i64 (...) @current_cpu_type()
  %16 = load i64, i64* @CPU_VR4133, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %29

18:                                               ; preds = %14, %10, %0
  %19 = load %struct.irq_desc*, %struct.irq_desc** %1, align 8
  %20 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %19, i32 0, i32 0
  %21 = load i64, i64* %2, align 8
  %22 = call i32 @spin_lock_irqsave(i32* %20, i64 %21)
  %23 = load i32, i32* @MBCUINTREG, align 4
  %24 = call i32 @icu2_write(i32 %23, i32 0)
  %25 = load %struct.irq_desc*, %struct.irq_desc** %1, align 8
  %26 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %25, i32 0, i32 0
  %27 = load i64, i64* %2, align 8
  %28 = call i32 @spin_unlock_irqrestore(i32* %26, i64 %27)
  br label %29

29:                                               ; preds = %18, %14
  ret void
}

declare dso_local i64 @current_cpu_type(...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @icu2_write(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
