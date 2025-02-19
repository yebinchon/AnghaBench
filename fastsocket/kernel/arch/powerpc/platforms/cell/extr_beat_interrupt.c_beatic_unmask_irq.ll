; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/cell/extr_beat_interrupt.c_beatic_unmask_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/cell/extr_beat_interrupt.c_beatic_unmask_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@beatic_irq_mask_lock = common dso_local global i32 0, align 4
@beatic_irq_mask_enable = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @beatic_unmask_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @beatic_unmask_irq(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i64, i64* %3, align 8
  %5 = call i32 @spin_lock_irqsave(i32* @beatic_irq_mask_lock, i64 %4)
  %6 = load i32, i32* %2, align 4
  %7 = urem i32 %6, 64
  %8 = sub i32 63, %7
  %9 = zext i32 %8 to i64
  %10 = shl i64 1, %9
  %11 = load i64*, i64** @beatic_irq_mask_enable, align 8
  %12 = load i32, i32* %2, align 4
  %13 = udiv i32 %12, 64
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds i64, i64* %11, i64 %14
  %16 = load i64, i64* %15, align 8
  %17 = or i64 %16, %10
  store i64 %17, i64* %15, align 8
  %18 = load i32, i32* %2, align 4
  %19 = call i32 @beatic_update_irq_mask(i32 %18)
  %20 = load i64, i64* %3, align 8
  %21 = call i32 @spin_unlock_irqrestore(i32* @beatic_irq_mask_lock, i64 %20)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @beatic_update_irq_mask(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
