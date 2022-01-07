; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-sa1100/extr_simpad.c_clear_cs3_bit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-sa1100/extr_simpad.c_clear_cs3_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cs3_shadow = common dso_local global i32 0, align 4
@CS3_BASE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @clear_cs3_bit(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = xor i32 %3, -1
  %5 = load i32, i32* @cs3_shadow, align 4
  %6 = and i32 %5, %4
  store i32 %6, i32* @cs3_shadow, align 4
  %7 = load i32, i32* @cs3_shadow, align 4
  %8 = load i64, i64* @CS3_BASE, align 8
  %9 = inttoptr i64 %8 to i32*
  store i32 %7, i32* %9, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
