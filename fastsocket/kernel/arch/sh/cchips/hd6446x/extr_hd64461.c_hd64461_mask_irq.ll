; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/cchips/hd6446x/extr_hd64461.c_hd64461_mask_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/cchips/hd6446x/extr_hd64461.c_hd64461_mask_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HD64461_IRQBASE = common dso_local global i32 0, align 4
@HD64461_NIMR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @hd64461_mask_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hd64461_mask_irq(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = load i32, i32* @HD64461_IRQBASE, align 4
  %7 = sub i32 %5, %6
  %8 = shl i32 1, %7
  %9 = trunc i32 %8 to i16
  store i16 %9, i16* %4, align 2
  %10 = load i32, i32* @HD64461_NIMR, align 4
  %11 = call zeroext i16 @__raw_readw(i32 %10)
  store i16 %11, i16* %3, align 2
  %12 = load i16, i16* %4, align 2
  %13 = zext i16 %12 to i32
  %14 = load i16, i16* %3, align 2
  %15 = zext i16 %14 to i32
  %16 = or i32 %15, %13
  %17 = trunc i32 %16 to i16
  store i16 %17, i16* %3, align 2
  %18 = load i16, i16* %3, align 2
  %19 = load i32, i32* @HD64461_NIMR, align 4
  %20 = call i32 @__raw_writew(i16 zeroext %18, i32 %19)
  ret void
}

declare dso_local zeroext i16 @__raw_readw(i32) #1

declare dso_local i32 @__raw_writew(i16 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
