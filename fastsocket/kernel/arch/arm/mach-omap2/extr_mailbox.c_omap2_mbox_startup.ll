; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap2/extr_mailbox.c_omap2_mbox_startup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap2/extr_mailbox.c_omap2_mbox_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_mbox = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"mailboxes_ick\00", align 1
@mbox_ick_handle = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Can't get mailboxes_ick\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@SOFTRESET = common dso_local global i32 0, align 4
@MAILBOX_SYSCONFIG = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@MAILBOX_SYSSTATUS = common dso_local global i32 0, align 4
@RESETDONE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"Can't take mmu out of reset\0A\00", align 1
@MAILBOX_REVISION = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"omap mailbox rev %d.%d\0A\00", align 1
@SMARTIDLE = common dso_local global i32 0, align 4
@AUTOIDLE = common dso_local global i32 0, align 4
@IRQ_RX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_mbox*)* @omap2_mbox_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap2_mbox_startup(%struct.omap_mbox* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.omap_mbox*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.omap_mbox* %0, %struct.omap_mbox** %3, align 8
  %6 = call i32 @clk_get(i32* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 %6, i32* @mbox_ick_handle, align 4
  %7 = load i32, i32* @mbox_ick_handle, align 4
  %8 = call i64 @IS_ERR(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = call i32 @pr_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %12 = load i32, i32* @ENODEV, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %65

14:                                               ; preds = %1
  %15 = load i32, i32* @mbox_ick_handle, align 4
  %16 = call i32 @clk_enable(i32 %15)
  %17 = load i32, i32* @SOFTRESET, align 4
  %18 = load i32, i32* @MAILBOX_SYSCONFIG, align 4
  %19 = call i32 @mbox_write_reg(i32 %17, i32 %18)
  %20 = load i64, i64* @jiffies, align 8
  %21 = call i64 @msecs_to_jiffies(i32 20)
  %22 = add i64 %20, %21
  store i64 %22, i64* %5, align 8
  br label %23

23:                                               ; preds = %32, %14
  %24 = load i32, i32* @MAILBOX_SYSSTATUS, align 4
  %25 = call i32 @mbox_read_reg(i32 %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @RESETDONE, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  br label %38

31:                                               ; preds = %23
  br label %32

32:                                               ; preds = %31
  %33 = load i64, i64* @jiffies, align 8
  %34 = load i64, i64* %5, align 8
  %35 = call i32 @time_after(i64 %33, i64 %34)
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  br i1 %37, label %23, label %38

38:                                               ; preds = %32, %30
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @RESETDONE, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %38
  %44 = call i32 @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %45 = load i32, i32* @ENODEV, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %65

47:                                               ; preds = %38
  %48 = load i32, i32* @MAILBOX_REVISION, align 4
  %49 = call i32 @mbox_read_reg(i32 %48)
  store i32 %49, i32* %4, align 4
  %50 = load i32, i32* %4, align 4
  %51 = and i32 %50, 240
  %52 = ashr i32 %51, 4
  %53 = load i32, i32* %4, align 4
  %54 = and i32 %53, 15
  %55 = call i32 @pr_info(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %52, i32 %54)
  %56 = load i32, i32* @SMARTIDLE, align 4
  %57 = load i32, i32* @AUTOIDLE, align 4
  %58 = or i32 %56, %57
  store i32 %58, i32* %4, align 4
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* @MAILBOX_SYSCONFIG, align 4
  %61 = call i32 @mbox_write_reg(i32 %59, i32 %60)
  %62 = load %struct.omap_mbox*, %struct.omap_mbox** %3, align 8
  %63 = load i32, i32* @IRQ_RX, align 4
  %64 = call i32 @omap2_mbox_enable_irq(%struct.omap_mbox* %62, i32 %63)
  store i32 0, i32* %2, align 4
  br label %65

65:                                               ; preds = %47, %43, %10
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i32 @clk_get(i32*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @mbox_write_reg(i32, i32) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @mbox_read_reg(i32) #1

declare dso_local i32 @time_after(i64, i64) #1

declare dso_local i32 @pr_info(i8*, i32, i32) #1

declare dso_local i32 @omap2_mbox_enable_irq(%struct.omap_mbox*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
