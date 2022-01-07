; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/sni/extr_rm200.c_sni_rm200_init_8259A.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/sni/extr_rm200.c_sni_rm200_init_8259A.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sni_rm200_i8259A_lock = common dso_local global i32 0, align 4
@rm200_pic_master = common dso_local global i64 0, align 8
@PIC_IMR = common dso_local global i64 0, align 8
@rm200_pic_slave = common dso_local global i64 0, align 8
@PIC_CMD = common dso_local global i64 0, align 8
@PIC_CASCADE_IR = common dso_local global i32 0, align 4
@MASTER_ICW4_DEFAULT = common dso_local global i32 0, align 4
@SLAVE_ICW4_DEFAULT = common dso_local global i32 0, align 4
@cached_master_mask = common dso_local global i32 0, align 4
@cached_slave_mask = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sni_rm200_init_8259A() #0 {
  %1 = alloca i64, align 8
  %2 = load i64, i64* %1, align 8
  %3 = call i32 @spin_lock_irqsave(i32* @sni_rm200_i8259A_lock, i64 %2)
  %4 = load i64, i64* @rm200_pic_master, align 8
  %5 = load i64, i64* @PIC_IMR, align 8
  %6 = add nsw i64 %4, %5
  %7 = call i32 @writeb(i32 255, i64 %6)
  %8 = load i64, i64* @rm200_pic_slave, align 8
  %9 = load i64, i64* @PIC_IMR, align 8
  %10 = add nsw i64 %8, %9
  %11 = call i32 @writeb(i32 255, i64 %10)
  %12 = load i64, i64* @rm200_pic_master, align 8
  %13 = load i64, i64* @PIC_CMD, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @writeb(i32 17, i64 %14)
  %16 = load i64, i64* @rm200_pic_master, align 8
  %17 = load i64, i64* @PIC_IMR, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @writeb(i32 0, i64 %18)
  %20 = load i32, i32* @PIC_CASCADE_IR, align 4
  %21 = shl i32 1, %20
  %22 = load i64, i64* @rm200_pic_master, align 8
  %23 = load i64, i64* @PIC_IMR, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @writeb(i32 %21, i64 %24)
  %26 = load i32, i32* @MASTER_ICW4_DEFAULT, align 4
  %27 = load i64, i64* @rm200_pic_master, align 8
  %28 = load i64, i64* @PIC_IMR, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @writeb(i32 %26, i64 %29)
  %31 = load i64, i64* @rm200_pic_slave, align 8
  %32 = load i64, i64* @PIC_CMD, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @writeb(i32 17, i64 %33)
  %35 = load i64, i64* @rm200_pic_slave, align 8
  %36 = load i64, i64* @PIC_IMR, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @writeb(i32 8, i64 %37)
  %39 = load i32, i32* @PIC_CASCADE_IR, align 4
  %40 = load i64, i64* @rm200_pic_slave, align 8
  %41 = load i64, i64* @PIC_IMR, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @writeb(i32 %39, i64 %42)
  %44 = load i32, i32* @SLAVE_ICW4_DEFAULT, align 4
  %45 = load i64, i64* @rm200_pic_slave, align 8
  %46 = load i64, i64* @PIC_IMR, align 8
  %47 = add nsw i64 %45, %46
  %48 = call i32 @writeb(i32 %44, i64 %47)
  %49 = call i32 @udelay(i32 100)
  %50 = load i32, i32* @cached_master_mask, align 4
  %51 = load i64, i64* @rm200_pic_master, align 8
  %52 = load i64, i64* @PIC_IMR, align 8
  %53 = add nsw i64 %51, %52
  %54 = call i32 @writeb(i32 %50, i64 %53)
  %55 = load i32, i32* @cached_slave_mask, align 4
  %56 = load i64, i64* @rm200_pic_slave, align 8
  %57 = load i64, i64* @PIC_IMR, align 8
  %58 = add nsw i64 %56, %57
  %59 = call i32 @writeb(i32 %55, i64 %58)
  %60 = load i64, i64* %1, align 8
  %61 = call i32 @spin_unlock_irqrestore(i32* @sni_rm200_i8259A_lock, i64 %60)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @writeb(i32, i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
