; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/blackfin/mach-common/extr_pm.c_bfin_pm_suspend_mem_enter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/blackfin/mach-common/extr_pm.c_bfin_pm_suspend_mem_enter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@L1_CODE_LENGTH = common dso_local global i64 0, align 8
@L1_DATA_A_LENGTH = common dso_local global i64 0, align 8
@L1_DATA_B_LENGTH = common dso_local global i64 0, align 8
@L1_SCRATCH_LENGTH = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"bf53x_suspend_l1_mem malloc failed\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@FREQ = common dso_local global i32 0, align 4
@SCKELOW = common dso_local global i32 0, align 4
@vr_wakeup = common dso_local global i32 0, align 4
@GPWE = common dso_local global i32 0, align 4
@PHYWE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bfin_pm_suspend_mem_enter() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = load i64, i64* @L1_CODE_LENGTH, align 8
  %7 = load i64, i64* @L1_DATA_A_LENGTH, align 8
  %8 = add nsw i64 %6, %7
  %9 = load i64, i64* @L1_DATA_B_LENGTH, align 8
  %10 = add nsw i64 %8, %9
  %11 = load i64, i64* @L1_SCRATCH_LENGTH, align 8
  %12 = add nsw i64 %10, %11
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call i8* @kmalloc(i64 %12, i32 %13)
  store i8* %14, i8** %5, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %0
  %18 = call i32 @panic(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %1, align 4
  br label %60

21:                                               ; preds = %0
  %22 = call i32 (...) @bfin_read_VR_CTL()
  %23 = load i32, i32* @FREQ, align 4
  %24 = xor i32 %23, -1
  %25 = and i32 %22, %24
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* @SCKELOW, align 4
  %27 = load i32, i32* %3, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %3, align 4
  %29 = load i64, i64* %2, align 8
  %30 = call i32 @local_irq_save_hw(i64 %29)
  %31 = call i32 (...) @blackfin_dma_suspend()
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %21
  %35 = load i64, i64* %2, align 8
  %36 = call i32 @local_irq_restore_hw(i64 %35)
  %37 = load i8*, i8** %5, align 8
  %38 = call i32 @kfree(i8* %37)
  %39 = load i32, i32* %4, align 4
  store i32 %39, i32* %1, align 4
  br label %60

40:                                               ; preds = %21
  %41 = call i32 (...) @bfin_gpio_pm_hibernate_suspend()
  %42 = call i32 (...) @_disable_dcplb()
  %43 = call i32 (...) @_disable_icplb()
  %44 = load i8*, i8** %5, align 8
  %45 = call i32 @bf53x_suspend_l1_mem(i8* %44)
  %46 = load i32, i32* %3, align 4
  %47 = load i32, i32* @vr_wakeup, align 4
  %48 = or i32 %46, %47
  %49 = call i32 @do_hibernate(i32 %48)
  %50 = load i8*, i8** %5, align 8
  %51 = call i32 @bf53x_resume_l1_mem(i8* %50)
  %52 = call i32 (...) @_enable_icplb()
  %53 = call i32 (...) @_enable_dcplb()
  %54 = call i32 (...) @bfin_gpio_pm_hibernate_restore()
  %55 = call i32 (...) @blackfin_dma_resume()
  %56 = load i64, i64* %2, align 8
  %57 = call i32 @local_irq_restore_hw(i64 %56)
  %58 = load i8*, i8** %5, align 8
  %59 = call i32 @kfree(i8* %58)
  store i32 0, i32* %1, align 4
  br label %60

60:                                               ; preds = %40, %34, %17
  %61 = load i32, i32* %1, align 4
  ret i32 %61
}

declare dso_local i8* @kmalloc(i64, i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @bfin_read_VR_CTL(...) #1

declare dso_local i32 @local_irq_save_hw(i64) #1

declare dso_local i32 @blackfin_dma_suspend(...) #1

declare dso_local i32 @local_irq_restore_hw(i64) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @bfin_gpio_pm_hibernate_suspend(...) #1

declare dso_local i32 @_disable_dcplb(...) #1

declare dso_local i32 @_disable_icplb(...) #1

declare dso_local i32 @bf53x_suspend_l1_mem(i8*) #1

declare dso_local i32 @do_hibernate(i32) #1

declare dso_local i32 @bf53x_resume_l1_mem(i8*) #1

declare dso_local i32 @_enable_icplb(...) #1

declare dso_local i32 @_enable_dcplb(...) #1

declare dso_local i32 @bfin_gpio_pm_hibernate_restore(...) #1

declare dso_local i32 @blackfin_dma_resume(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
