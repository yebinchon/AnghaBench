; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/85xx/extr_socrates_fpga_pic.c_socrates_fpga_pic_set_type.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/85xx/extr_socrates_fpga_pic.c_socrates_fpga_pic_set_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@fpga_irqs = common dso_local global %struct.TYPE_2__* null, align 8
@IRQ_TYPE_NONE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@IRQ_TYPE_SENSE_MASK = common dso_local global i32 0, align 4
@socrates_fpga_pic_lock = common dso_local global i32 0, align 4
@FPGA_PIC_IRQCFG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @socrates_fpga_pic_set_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @socrates_fpga_pic_set_type(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @socrates_fpga_irq_to_hw(i32 %10)
  store i32 %11, i32* %7, align 4
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @fpga_irqs, align 8
  %13 = load i32, i32* %7, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @IRQ_TYPE_NONE, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %56

23:                                               ; preds = %2
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @IRQ_TYPE_SENSE_MASK, align 4
  %26 = and i32 %24, %25
  switch i32 %26, label %29 [
    i32 129, label %27
    i32 128, label %28
  ]

27:                                               ; preds = %23
  store i32 1, i32* %8, align 4
  br label %32

28:                                               ; preds = %23
  store i32 0, i32* %8, align 4
  br label %32

29:                                               ; preds = %23
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %56

32:                                               ; preds = %28, %27
  %33 = load i64, i64* %6, align 8
  %34 = call i32 @spin_lock_irqsave(i32* @socrates_fpga_pic_lock, i64 %33)
  %35 = load i32, i32* @FPGA_PIC_IRQCFG, align 4
  %36 = call i32 @socrates_fpga_pic_read(i32 %35)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %32
  %40 = load i32, i32* %7, align 4
  %41 = shl i32 1, %40
  %42 = load i32, i32* %9, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %9, align 4
  br label %50

44:                                               ; preds = %32
  %45 = load i32, i32* %7, align 4
  %46 = shl i32 1, %45
  %47 = xor i32 %46, -1
  %48 = load i32, i32* %9, align 4
  %49 = and i32 %48, %47
  store i32 %49, i32* %9, align 4
  br label %50

50:                                               ; preds = %44, %39
  %51 = load i32, i32* @FPGA_PIC_IRQCFG, align 4
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @socrates_fpga_pic_write(i32 %51, i32 %52)
  %54 = load i64, i64* %6, align 8
  %55 = call i32 @spin_unlock_irqrestore(i32* @socrates_fpga_pic_lock, i64 %54)
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %50, %29, %20
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @socrates_fpga_irq_to_hw(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @socrates_fpga_pic_read(i32) #1

declare dso_local i32 @socrates_fpga_pic_write(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
