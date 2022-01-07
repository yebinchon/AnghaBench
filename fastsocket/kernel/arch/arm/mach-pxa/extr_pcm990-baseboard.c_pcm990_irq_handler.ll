; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-pxa/extr_pcm990-baseboard.c_pcm990_irq_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-pxa/extr_pcm990-baseboard.c_pcm990_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_desc = type { i32 }

@PCM990_INTSETCLR = common dso_local global i64 0, align 8
@pcm990_irq_enabled = common dso_local global i64 0, align 8
@PCM990_CTRL_INT_IRQ_GPIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.irq_desc*)* @pcm990_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcm990_irq_handler(i32 %0, %struct.irq_desc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.irq_desc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.irq_desc* %1, %struct.irq_desc** %4, align 8
  %7 = load i64, i64* @PCM990_INTSETCLR, align 8
  %8 = xor i64 %7, -1
  %9 = load i64, i64* @pcm990_irq_enabled, align 8
  %10 = and i64 %8, %9
  store i64 %10, i64* %5, align 8
  br label %11

11:                                               ; preds = %29, %2
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @GPIO_bit(i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load i64, i64* %5, align 8
  %15 = call i64 @likely(i64 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %11
  %18 = call i32 @PCM027_IRQ(i32 0)
  %19 = load i64, i64* %5, align 8
  %20 = call i32 @__ffs(i64 %19)
  %21 = add i32 %18, %20
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @generic_handle_irq(i32 %22)
  br label %24

24:                                               ; preds = %17, %11
  %25 = load i64, i64* @PCM990_INTSETCLR, align 8
  %26 = xor i64 %25, -1
  %27 = load i64, i64* @pcm990_irq_enabled, align 8
  %28 = and i64 %26, %27
  store i64 %28, i64* %5, align 8
  br label %29

29:                                               ; preds = %24
  %30 = load i64, i64* %5, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %11, label %32

32:                                               ; preds = %29
  ret void
}

declare dso_local i32 @GPIO_bit(i32) #1

declare dso_local i64 @likely(i64) #1

declare dso_local i32 @PCM027_IRQ(i32) #1

declare dso_local i32 @__ffs(i64) #1

declare dso_local i32 @generic_handle_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
