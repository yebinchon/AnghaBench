; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/boards/mach-cayman/extr_irq.c_disable_cayman_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/boards/mach-cayman/extr_irq.c_disable_cayman_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@START_EXT_IRQS = common dso_local global i64 0, align 8
@EPLD_MASK_BASE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @disable_cayman_irq(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  store i32 %0, i32* %2, align 4
  %7 = load i64, i64* @START_EXT_IRQS, align 8
  %8 = load i32, i32* %2, align 4
  %9 = zext i32 %8 to i64
  %10 = sub nsw i64 %9, %7
  %11 = trunc i64 %10 to i32
  store i32 %11, i32* %2, align 4
  %12 = load i32, i32* @EPLD_MASK_BASE, align 4
  %13 = load i32, i32* %2, align 4
  %14 = udiv i32 %13, 8
  %15 = shl i32 %14, 2
  %16 = add i32 %12, %15
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %2, align 4
  %18 = urem i32 %17, 8
  %19 = shl i32 1, %18
  %20 = trunc i32 %19 to i8
  store i8 %20, i8* %6, align 1
  %21 = load i64, i64* %3, align 8
  %22 = call i32 @local_irq_save(i64 %21)
  %23 = load i32, i32* %5, align 4
  %24 = call i64 @ctrl_inl(i32 %23)
  store i64 %24, i64* %4, align 8
  %25 = load i8, i8* %6, align 1
  %26 = zext i8 %25 to i32
  %27 = xor i32 %26, -1
  %28 = sext i32 %27 to i64
  %29 = load i64, i64* %4, align 8
  %30 = and i64 %29, %28
  store i64 %30, i64* %4, align 8
  %31 = load i64, i64* %4, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @ctrl_outl(i64 %31, i32 %32)
  %34 = load i64, i64* %3, align 8
  %35 = call i32 @local_irq_restore(i64 %34)
  ret void
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i64 @ctrl_inl(i32) #1

declare dso_local i32 @ctrl_outl(i64, i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
