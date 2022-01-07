; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap2/extr_pm34xx.c_prcm_interrupt_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap2/extr_pm34xx.c_prcm_interrupt_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OCP_MOD = common dso_local global i32 0, align 4
@OMAP3_PRM_IRQSTATUS_MPU_OFFSET = common dso_local global i32 0, align 4
@OMAP3430_WKUP_ST = common dso_local global i32 0, align 4
@OMAP3430_IO_ST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [75 x i8] c"prcm: WARNING: PRCM indicated MPU wakeup but no wakeup sources are marked\0A\00", align 1
@.str.1 = private unnamed_addr constant [73 x i8] c"prcm: WARNING: PRCM interrupt received, but no code to handle it (%08x)\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @prcm_interrupt_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prcm_interrupt_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %31, %2
  %8 = load i32, i32* @OCP_MOD, align 4
  %9 = load i32, i32* @OMAP3_PRM_IRQSTATUS_MPU_OFFSET, align 4
  %10 = call i32 @prm_read_mod_reg(i32 %8, i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @OMAP3430_WKUP_ST, align 4
  %13 = load i32, i32* @OMAP3430_IO_ST, align 4
  %14 = or i32 %12, %13
  %15 = and i32 %11, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %7
  %18 = call i32 (...) @_prcm_int_handle_wakeup()
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp eq i32 %19, 0
  %21 = zext i1 %20 to i32
  %22 = call i32 (i32, i8*, ...) @WARN(i32 %21, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0))
  br label %26

23:                                               ; preds = %7
  %24 = load i32, i32* %5, align 4
  %25 = call i32 (i32, i8*, ...) @WARN(i32 1, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  br label %26

26:                                               ; preds = %23, %17
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @OCP_MOD, align 4
  %29 = load i32, i32* @OMAP3_PRM_IRQSTATUS_MPU_OFFSET, align 4
  %30 = call i32 @prm_write_mod_reg(i32 %27, i32 %28, i32 %29)
  br label %31

31:                                               ; preds = %26
  %32 = load i32, i32* @OCP_MOD, align 4
  %33 = load i32, i32* @OMAP3_PRM_IRQSTATUS_MPU_OFFSET, align 4
  %34 = call i32 @prm_read_mod_reg(i32 %32, i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %7, label %36

36:                                               ; preds = %31
  %37 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %37
}

declare dso_local i32 @prm_read_mod_reg(i32, i32) #1

declare dso_local i32 @_prcm_int_handle_wakeup(...) #1

declare dso_local i32 @WARN(i32, i8*, ...) #1

declare dso_local i32 @prm_write_mod_reg(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
