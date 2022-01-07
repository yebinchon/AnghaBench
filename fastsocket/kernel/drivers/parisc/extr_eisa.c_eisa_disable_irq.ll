; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/parisc/extr_eisa.c_eisa_disable_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/parisc/extr_eisa.c_eisa_disable_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"disable irq %d\0A\00", align 1
@eisa_irq_lock = common dso_local global i32 0, align 4
@slave_mask = common dso_local global i32 0, align 4
@master_mask = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"pic0 mask %02x\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"pic1 mask %02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @eisa_disable_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eisa_disable_irq(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call i32 @EISA_DBG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %4)
  %6 = load i64, i64* %3, align 8
  %7 = call i32 @spin_lock_irqsave(i32* @eisa_irq_lock, i64 %6)
  %8 = load i32, i32* %2, align 4
  %9 = and i32 %8, 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %1
  %12 = load i32, i32* %2, align 4
  %13 = and i32 %12, 7
  %14 = shl i32 1, %13
  %15 = load i32, i32* @slave_mask, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* @slave_mask, align 4
  %17 = load i32, i32* @slave_mask, align 4
  %18 = call i32 @eisa_out8(i32 %17, i32 161)
  br label %27

19:                                               ; preds = %1
  %20 = load i32, i32* %2, align 4
  %21 = and i32 %20, 7
  %22 = shl i32 1, %21
  %23 = load i32, i32* @master_mask, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* @master_mask, align 4
  %25 = load i32, i32* @master_mask, align 4
  %26 = call i32 @eisa_out8(i32 %25, i32 33)
  br label %27

27:                                               ; preds = %19, %11
  %28 = load i64, i64* %3, align 8
  %29 = call i32 @spin_unlock_irqrestore(i32* @eisa_irq_lock, i64 %28)
  %30 = call i32 @eisa_in8(i32 33)
  %31 = call i32 @EISA_DBG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  %32 = call i32 @eisa_in8(i32 161)
  %33 = call i32 @EISA_DBG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %32)
  ret void
}

declare dso_local i32 @EISA_DBG(i8*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @eisa_out8(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @eisa_in8(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
