; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/sibyte/bcm1480/extr_irq.c_ack_bcm1480_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/sibyte/bcm1480/extr_irq.c_ack_bcm1480_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BCM1480_NR_IRQS_HALF = common dso_local global i32 0, align 4
@BCM1480_NR_IRQS = common dso_local global i32 0, align 4
@bcm1480_irq_owner = common dso_local global i32* null, align 8
@R_BCM1480_IMR_LDT_INTERRUPT_H = common dso_local global i64 0, align 8
@BCM1480_IMR_HL_SPACING = common dso_local global i32 0, align 4
@R_BCM1480_IMR_LDT_INTERRUPT_CLR_H = common dso_local global i64 0, align 8
@NR_CPUS = common dso_local global i32 0, align 4
@ht_eoi_space = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @ack_bcm1480_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ack_bcm1480_irq(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @BCM1480_NR_IRQS_HALF, align 4
  %9 = icmp uge i32 %7, %8
  br i1 %9, label %10, label %18

10:                                               ; preds = %1
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @BCM1480_NR_IRQS, align 4
  %13 = icmp ule i32 %11, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %10
  %15 = load i32, i32* @BCM1480_NR_IRQS_HALF, align 4
  %16 = load i32, i32* %4, align 4
  %17 = sub i32 %16, %15
  store i32 %17, i32* %4, align 4
  br label %18

18:                                               ; preds = %14, %10, %1
  store i32 0, i32* %5, align 4
  br label %19

19:                                               ; preds = %55, %18
  %20 = load i32, i32* %5, align 4
  %21 = icmp slt i32 %20, 2
  br i1 %21, label %22, label %58

22:                                               ; preds = %19
  %23 = load i32*, i32** @bcm1480_irq_owner, align 8
  %24 = load i32, i32* %2, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = load i64, i64* @R_BCM1480_IMR_LDT_INTERRUPT_H, align 8
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @BCM1480_IMR_HL_SPACING, align 4
  %31 = mul nsw i32 %29, %30
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %28, %32
  %34 = call i32 @A_BCM1480_IMR_REGISTER(i32 %27, i64 %33)
  %35 = call i32 @IOADDR(i32 %34)
  %36 = call i32 @__raw_readq(i32 %35)
  store i32 %36, i32* %3, align 4
  %37 = load i32, i32* %4, align 4
  %38 = shl i32 1, %37
  %39 = load i32, i32* %3, align 4
  %40 = and i32 %39, %38
  store i32 %40, i32* %3, align 4
  %41 = load i32, i32* %3, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %54

43:                                               ; preds = %22
  %44 = load i32, i32* %3, align 4
  %45 = load i64, i64* @R_BCM1480_IMR_LDT_INTERRUPT_CLR_H, align 8
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @BCM1480_IMR_HL_SPACING, align 4
  %48 = mul nsw i32 %46, %47
  %49 = sext i32 %48 to i64
  %50 = add nsw i64 %45, %49
  %51 = call i32 @A_BCM1480_IMR_REGISTER(i32 0, i64 %50)
  %52 = call i32 @IOADDR(i32 %51)
  %53 = call i32 @__raw_writeq(i32 %44, i32 %52)
  br label %54

54:                                               ; preds = %43, %22
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %5, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %5, align 4
  br label %19

58:                                               ; preds = %19
  %59 = load i32*, i32** @bcm1480_irq_owner, align 8
  %60 = load i32, i32* %2, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %2, align 4
  %65 = call i32 @bcm1480_mask_irq(i32 %63, i32 %64)
  ret void
}

declare dso_local i32 @__raw_readq(i32) #1

declare dso_local i32 @IOADDR(i32) #1

declare dso_local i32 @A_BCM1480_IMR_REGISTER(i32, i64) #1

declare dso_local i32 @__raw_writeq(i32, i32) #1

declare dso_local i32 @bcm1480_mask_irq(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
