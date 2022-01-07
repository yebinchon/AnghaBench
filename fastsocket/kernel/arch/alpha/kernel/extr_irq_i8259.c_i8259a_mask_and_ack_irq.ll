; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/alpha/kernel/extr_irq_i8259.c_i8259a_mask_and_ack_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/alpha/kernel/extr_irq_i8259.c_i8259a_mask_and_ack_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@i8259_irq_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i8259a_mask_and_ack_irq(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = call i32 @spin_lock(i32* @i8259_irq_lock)
  %4 = load i32, i32* %2, align 4
  %5 = call i32 @__i8259a_disable_irq(i32 %4)
  %6 = load i32, i32* %2, align 4
  %7 = icmp uge i32 %6, 8
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load i32, i32* %2, align 4
  %10 = sub i32 %9, 8
  %11 = or i32 224, %10
  %12 = call i32 @outb(i32 %11, i32 160)
  store i32 2, i32* %2, align 4
  br label %13

13:                                               ; preds = %8, %1
  %14 = load i32, i32* %2, align 4
  %15 = or i32 224, %14
  %16 = call i32 @outb(i32 %15, i32 32)
  %17 = call i32 @spin_unlock(i32* @i8259_irq_lock)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @__i8259a_disable_irq(i32) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
