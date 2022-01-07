; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/sysdev/extr_i8259.c_i8259_unmask_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/sysdev/extr_i8259.c_i8259_unmask_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [22 x i8] c"i8259_unmask_irq(%d)\0A\00", align 1
@i8259_lock = common dso_local global i32 0, align 4
@cached_21 = common dso_local global i32 0, align 4
@cached_A1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @i8259_unmask_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i8259_unmask_irq(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call i32 @pr_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %4)
  %6 = load i64, i64* %3, align 8
  %7 = call i32 @spin_lock_irqsave(i32* @i8259_lock, i64 %6)
  %8 = load i32, i32* %2, align 4
  %9 = icmp ult i32 %8, 8
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = load i32, i32* %2, align 4
  %12 = shl i32 1, %11
  %13 = xor i32 %12, -1
  %14 = load i32, i32* @cached_21, align 4
  %15 = and i32 %14, %13
  store i32 %15, i32* @cached_21, align 4
  br label %23

16:                                               ; preds = %1
  %17 = load i32, i32* %2, align 4
  %18 = sub i32 %17, 8
  %19 = shl i32 1, %18
  %20 = xor i32 %19, -1
  %21 = load i32, i32* @cached_A1, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* @cached_A1, align 4
  br label %23

23:                                               ; preds = %16, %10
  %24 = load i32, i32* %2, align 4
  %25 = call i32 @i8259_set_irq_mask(i32 %24)
  %26 = load i64, i64* %3, align 8
  %27 = call i32 @spin_unlock_irqrestore(i32* @i8259_lock, i64 %26)
  ret void
}

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @i8259_set_irq_mask(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
