; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/parisc/extr_eisa.c_eisa_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/parisc/extr_eisa.c_eisa_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@eisa_irq_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"irq IAR %02x 8259-1 irr %02x 8259-2 irr %02x\0A\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"irq 8259-1 isr %02x imr %02x 8259-2 isr %02x imr %02x\0A\00", align 1
@slave_mask = common dso_local global i32 0, align 4
@master_mask = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @eisa_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eisa_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = call i32 @gsc_readb(i32 -66981888)
  store i32 %7, i32* %5, align 4
  %8 = load i64, i64* %6, align 8
  %9 = call i32 @spin_lock_irqsave(i32* @eisa_irq_lock, i64 %8)
  %10 = call i32 @eisa_out8(i32 10, i32 32)
  %11 = call i32 @eisa_out8(i32 10, i32 160)
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @eisa_in8(i32 32)
  %14 = call i32 @eisa_in8(i32 160)
  %15 = call i32 (i8*, i32, i32, i32, ...) @EISA_DBG(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %13, i32 %14)
  %16 = call i32 @eisa_out8(i32 10, i32 32)
  %17 = call i32 @eisa_out8(i32 10, i32 160)
  %18 = call i32 @eisa_in8(i32 32)
  %19 = call i32 @eisa_in8(i32 33)
  %20 = call i32 @eisa_in8(i32 160)
  %21 = call i32 @eisa_in8(i32 161)
  %22 = call i32 (i8*, i32, i32, i32, ...) @EISA_DBG(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i32 %18, i32 %19, i32 %20, i32 %21)
  %23 = load i32, i32* %5, align 4
  %24 = and i32 %23, 15
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = and i32 %25, 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %41

28:                                               ; preds = %2
  %29 = load i32, i32* %5, align 4
  %30 = and i32 %29, 7
  %31 = shl i32 1, %30
  %32 = load i32, i32* @slave_mask, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* @slave_mask, align 4
  %34 = load i32, i32* @slave_mask, align 4
  %35 = call i32 @eisa_out8(i32 %34, i32 161)
  %36 = load i32, i32* %5, align 4
  %37 = and i32 %36, 7
  %38 = or i32 96, %37
  %39 = call i32 @eisa_out8(i32 %38, i32 160)
  %40 = call i32 @eisa_out8(i32 98, i32 32)
  br label %52

41:                                               ; preds = %2
  %42 = load i32, i32* %5, align 4
  %43 = and i32 %42, 7
  %44 = shl i32 1, %43
  %45 = load i32, i32* @master_mask, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* @master_mask, align 4
  %47 = load i32, i32* @master_mask, align 4
  %48 = call i32 @eisa_out8(i32 %47, i32 33)
  %49 = load i32, i32* %5, align 4
  %50 = or i32 96, %49
  %51 = call i32 @eisa_out8(i32 %50, i32 32)
  br label %52

52:                                               ; preds = %41, %28
  %53 = load i64, i64* %6, align 8
  %54 = call i32 @spin_unlock_irqrestore(i32* @eisa_irq_lock, i64 %53)
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @__do_IRQ(i32 %55)
  %57 = load i64, i64* %6, align 8
  %58 = call i32 @spin_lock_irqsave(i32* @eisa_irq_lock, i64 %57)
  %59 = load i32, i32* %5, align 4
  %60 = and i32 %59, 8
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %71

62:                                               ; preds = %52
  %63 = load i32, i32* %5, align 4
  %64 = and i32 %63, 7
  %65 = shl i32 1, %64
  %66 = xor i32 %65, -1
  %67 = load i32, i32* @slave_mask, align 4
  %68 = and i32 %67, %66
  store i32 %68, i32* @slave_mask, align 4
  %69 = load i32, i32* @slave_mask, align 4
  %70 = call i32 @eisa_out8(i32 %69, i32 161)
  br label %80

71:                                               ; preds = %52
  %72 = load i32, i32* %5, align 4
  %73 = and i32 %72, 7
  %74 = shl i32 1, %73
  %75 = xor i32 %74, -1
  %76 = load i32, i32* @master_mask, align 4
  %77 = and i32 %76, %75
  store i32 %77, i32* @master_mask, align 4
  %78 = load i32, i32* @master_mask, align 4
  %79 = call i32 @eisa_out8(i32 %78, i32 33)
  br label %80

80:                                               ; preds = %71, %62
  %81 = load i64, i64* %6, align 8
  %82 = call i32 @spin_unlock_irqrestore(i32* @eisa_irq_lock, i64 %81)
  %83 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %83
}

declare dso_local i32 @gsc_readb(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @eisa_out8(i32, i32) #1

declare dso_local i32 @EISA_DBG(i8*, i32, i32, i32, ...) #1

declare dso_local i32 @eisa_in8(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @__do_IRQ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
