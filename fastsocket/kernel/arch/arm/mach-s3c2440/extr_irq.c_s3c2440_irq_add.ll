; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-s3c2440/extr_irq.c_s3c2440_irq_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-s3c2440/extr_irq.c_s3c2440_irq_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sys_device = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"S3C2440: IRQ Support\0A\00", align 1
@IRQ_WDT = common dso_local global i32 0, align 4
@s3c_irq_level_chip = common dso_local global i32 0, align 4
@handle_level_irq = common dso_local global i32 0, align 4
@s3c_irq_demux_wdtac97 = common dso_local global i32 0, align 4
@IRQ_S3C2440_WDT = common dso_local global i32 0, align 4
@IRQ_S3C2440_AC97 = common dso_local global i32 0, align 4
@s3c_irq_wdtac97 = common dso_local global i32 0, align 4
@IRQF_VALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sys_device*)* @s3c2440_irq_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c2440_irq_add(%struct.sys_device* %0) #0 {
  %2 = alloca %struct.sys_device*, align 8
  %3 = alloca i32, align 4
  store %struct.sys_device* %0, %struct.sys_device** %2, align 8
  %4 = call i32 @printk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %5 = load i32, i32* @IRQ_WDT, align 4
  %6 = call i32 @set_irq_chip(i32 %5, i32* @s3c_irq_level_chip)
  %7 = load i32, i32* @IRQ_WDT, align 4
  %8 = load i32, i32* @handle_level_irq, align 4
  %9 = call i32 @set_irq_handler(i32 %7, i32 %8)
  %10 = load i32, i32* @IRQ_WDT, align 4
  %11 = load i32, i32* @s3c_irq_demux_wdtac97, align 4
  %12 = call i32 @set_irq_chained_handler(i32 %10, i32 %11)
  %13 = load i32, i32* @IRQ_S3C2440_WDT, align 4
  store i32 %13, i32* %3, align 4
  br label %14

14:                                               ; preds = %27, %1
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @IRQ_S3C2440_AC97, align 4
  %17 = icmp ule i32 %15, %16
  br i1 %17, label %18, label %30

18:                                               ; preds = %14
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @set_irq_chip(i32 %19, i32* @s3c_irq_wdtac97)
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @handle_level_irq, align 4
  %23 = call i32 @set_irq_handler(i32 %21, i32 %22)
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @IRQF_VALID, align 4
  %26 = call i32 @set_irq_flags(i32 %24, i32 %25)
  br label %27

27:                                               ; preds = %18
  %28 = load i32, i32* %3, align 4
  %29 = add i32 %28, 1
  store i32 %29, i32* %3, align 4
  br label %14

30:                                               ; preds = %14
  ret i32 0
}

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @set_irq_chip(i32, i32*) #1

declare dso_local i32 @set_irq_handler(i32, i32) #1

declare dso_local i32 @set_irq_chained_handler(i32, i32) #1

declare dso_local i32 @set_irq_flags(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
