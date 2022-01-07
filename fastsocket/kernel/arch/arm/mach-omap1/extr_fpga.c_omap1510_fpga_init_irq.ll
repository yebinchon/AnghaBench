; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap1/extr_fpga.c_omap1510_fpga_init_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap1/extr_fpga.c_omap1510_fpga_init_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OMAP1510_FPGA_IMR_LO = common dso_local global i32 0, align 4
@OMAP1510_FPGA_IMR_HI = common dso_local global i32 0, align 4
@INNOVATOR_FPGA_IMR2 = common dso_local global i32 0, align 4
@OMAP_FPGA_IRQ_BASE = common dso_local global i32 0, align 4
@OMAP_FPGA_IRQ_END = common dso_local global i32 0, align 4
@OMAP1510_INT_FPGA_TS = common dso_local global i32 0, align 4
@omap_fpga_irq_ack = common dso_local global i32 0, align 4
@omap_fpga_irq = common dso_local global i32 0, align 4
@handle_edge_irq = common dso_local global i32 0, align 4
@IRQF_VALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"FPGA irq\00", align 1
@IRQ_TYPE_EDGE_RISING = common dso_local global i32 0, align 4
@OMAP1510_INT_FPGA = common dso_local global i32 0, align 4
@innovator_fpga_IRQ_demux = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @omap1510_fpga_init_irq() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @OMAP1510_FPGA_IMR_LO, align 4
  %3 = call i32 @__raw_writeb(i32 0, i32 %2)
  %4 = load i32, i32* @OMAP1510_FPGA_IMR_HI, align 4
  %5 = call i32 @__raw_writeb(i32 0, i32 %4)
  %6 = load i32, i32* @INNOVATOR_FPGA_IMR2, align 4
  %7 = call i32 @__raw_writeb(i32 0, i32 %6)
  %8 = load i32, i32* @OMAP_FPGA_IRQ_BASE, align 4
  store i32 %8, i32* %1, align 4
  br label %9

9:                                                ; preds = %30, %0
  %10 = load i32, i32* %1, align 4
  %11 = load i32, i32* @OMAP_FPGA_IRQ_END, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %33

13:                                               ; preds = %9
  %14 = load i32, i32* %1, align 4
  %15 = load i32, i32* @OMAP1510_INT_FPGA_TS, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = load i32, i32* %1, align 4
  %19 = call i32 @set_irq_chip(i32 %18, i32* @omap_fpga_irq_ack)
  br label %23

20:                                               ; preds = %13
  %21 = load i32, i32* %1, align 4
  %22 = call i32 @set_irq_chip(i32 %21, i32* @omap_fpga_irq)
  br label %23

23:                                               ; preds = %20, %17
  %24 = load i32, i32* %1, align 4
  %25 = load i32, i32* @handle_edge_irq, align 4
  %26 = call i32 @set_irq_handler(i32 %24, i32 %25)
  %27 = load i32, i32* %1, align 4
  %28 = load i32, i32* @IRQF_VALID, align 4
  %29 = call i32 @set_irq_flags(i32 %27, i32 %28)
  br label %30

30:                                               ; preds = %23
  %31 = load i32, i32* %1, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %1, align 4
  br label %9

33:                                               ; preds = %9
  %34 = call i32 @gpio_request(i32 13, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %35 = call i32 @gpio_direction_input(i32 13)
  %36 = call i32 @gpio_to_irq(i32 13)
  %37 = load i32, i32* @IRQ_TYPE_EDGE_RISING, align 4
  %38 = call i32 @set_irq_type(i32 %36, i32 %37)
  %39 = load i32, i32* @OMAP1510_INT_FPGA, align 4
  %40 = load i32, i32* @innovator_fpga_IRQ_demux, align 4
  %41 = call i32 @set_irq_chained_handler(i32 %39, i32 %40)
  ret void
}

declare dso_local i32 @__raw_writeb(i32, i32) #1

declare dso_local i32 @set_irq_chip(i32, i32*) #1

declare dso_local i32 @set_irq_handler(i32, i32) #1

declare dso_local i32 @set_irq_flags(i32, i32) #1

declare dso_local i32 @gpio_request(i32, i8*) #1

declare dso_local i32 @gpio_direction_input(i32) #1

declare dso_local i32 @set_irq_type(i32, i32) #1

declare dso_local i32 @gpio_to_irq(i32) #1

declare dso_local i32 @set_irq_chained_handler(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
