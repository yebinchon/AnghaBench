; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-ixp23xx/extr_core.c_ixp23xx_irq_edge_unmask.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-ixp23xx/extr_core.c_ixp23xx_irq_edge_unmask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IXP23XX_INTR_EN1 = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @ixp23xx_irq_edge_unmask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixp23xx_irq_edge_unmask(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = icmp uge i32 %4, 56
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = load i32, i32* %2, align 4
  %8 = add i32 %7, 8
  store i32 %8, i32* %2, align 4
  br label %9

9:                                                ; preds = %6, %1
  %10 = load i64*, i64** @IXP23XX_INTR_EN1, align 8
  %11 = load i32, i32* %2, align 4
  %12 = udiv i32 %11, 32
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds i64, i64* %10, i64 %13
  store i64* %14, i64** %3, align 8
  %15 = load i32, i32* %2, align 4
  %16 = urem i32 %15, 32
  %17 = shl i32 1, %16
  %18 = sext i32 %17 to i64
  %19 = load i64*, i64** %3, align 8
  %20 = load volatile i64, i64* %19, align 8
  %21 = or i64 %20, %18
  store volatile i64 %21, i64* %19, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
