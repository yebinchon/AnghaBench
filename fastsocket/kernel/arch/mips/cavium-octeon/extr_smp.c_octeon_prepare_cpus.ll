; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/cavium-octeon/extr_smp.c_octeon_prepare_cpus.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/cavium-octeon/extr_smp.c_octeon_prepare_cpus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OCTEON_IRQ_MBOX0 = common dso_local global i32 0, align 4
@mailbox_interrupt = common dso_local global i32 0, align 4
@IRQF_DISABLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"mailbox0\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Cannot request_irq(OCTEON_IRQ_MBOX0)\0A\00", align 1
@OCTEON_IRQ_MBOX1 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"mailbox1\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"Cannot request_irq(OCTEON_IRQ_MBOX1)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @octeon_prepare_cpus(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = call i32 (...) @cvmx_get_core_num()
  %4 = call i32 @CVMX_CIU_MBOX_CLRX(i32 %3)
  %5 = call i32 @cvmx_write_csr(i32 %4, i32 -1)
  %6 = load i32, i32* @OCTEON_IRQ_MBOX0, align 4
  %7 = load i32, i32* @mailbox_interrupt, align 4
  %8 = load i32, i32* @IRQF_DISABLED, align 4
  %9 = load i32, i32* @mailbox_interrupt, align 4
  %10 = call i64 @request_irq(i32 %6, i32 %7, i32 %8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = call i32 @panic(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %14

14:                                               ; preds = %12, %1
  %15 = load i32, i32* @OCTEON_IRQ_MBOX1, align 4
  %16 = load i32, i32* @mailbox_interrupt, align 4
  %17 = load i32, i32* @IRQF_DISABLED, align 4
  %18 = load i32, i32* @mailbox_interrupt, align 4
  %19 = call i64 @request_irq(i32 %15, i32 %16, i32 %17, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %14
  %22 = call i32 @panic(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21, %14
  ret void
}

declare dso_local i32 @cvmx_write_csr(i32, i32) #1

declare dso_local i32 @CVMX_CIU_MBOX_CLRX(i32) #1

declare dso_local i32 @cvmx_get_core_num(...) #1

declare dso_local i64 @request_irq(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
