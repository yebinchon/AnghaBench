; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-omap/extr_sram.c_is_sram_locked.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-omap/extr_sram.c_is_sram_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OMAP2_DEVICETYPE_MASK = common dso_local global i32 0, align 4
@GP_DEVICE = common dso_local global i32 0, align 4
@OMAP24XX_VA_REQINFOPERM0 = common dso_local global i32 0, align 4
@OMAP24XX_VA_READPERM0 = common dso_local global i32 0, align 4
@OMAP24XX_VA_WRITEPERM0 = common dso_local global i32 0, align 4
@OMAP34XX_VA_REQINFOPERM0 = common dso_local global i32 0, align 4
@OMAP34XX_VA_READPERM0 = common dso_local global i32 0, align 4
@OMAP34XX_VA_WRITEPERM0 = common dso_local global i32 0, align 4
@OMAP34XX_VA_ADDR_MATCH2 = common dso_local global i32 0, align 4
@OMAP34XX_VA_SMS_RG_ATT0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @is_sram_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_sram_locked() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  %3 = call i64 (...) @cpu_is_omap44xx()
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %43

6:                                                ; preds = %0
  %7 = call i64 (...) @cpu_is_omap242x()
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %6
  %10 = call i32 (...) @omap_rev()
  %11 = load i32, i32* @OMAP2_DEVICETYPE_MASK, align 4
  %12 = and i32 %10, %11
  store i32 %12, i32* %2, align 4
  br label %13

13:                                               ; preds = %9, %6
  %14 = load i32, i32* %2, align 4
  %15 = load i32, i32* @GP_DEVICE, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %42

17:                                               ; preds = %13
  %18 = call i64 (...) @cpu_is_omap242x()
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %17
  %21 = load i32, i32* @OMAP24XX_VA_REQINFOPERM0, align 4
  %22 = call i32 @__raw_writel(i32 255, i32 %21)
  %23 = load i32, i32* @OMAP24XX_VA_READPERM0, align 4
  %24 = call i32 @__raw_writel(i32 53214, i32 %23)
  %25 = load i32, i32* @OMAP24XX_VA_WRITEPERM0, align 4
  %26 = call i32 @__raw_writel(i32 53214, i32 %25)
  br label %27

27:                                               ; preds = %20, %17
  %28 = call i64 (...) @cpu_is_omap34xx()
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %27
  %31 = load i32, i32* @OMAP34XX_VA_REQINFOPERM0, align 4
  %32 = call i32 @__raw_writel(i32 65535, i32 %31)
  %33 = load i32, i32* @OMAP34XX_VA_READPERM0, align 4
  %34 = call i32 @__raw_writel(i32 65535, i32 %33)
  %35 = load i32, i32* @OMAP34XX_VA_WRITEPERM0, align 4
  %36 = call i32 @__raw_writel(i32 65535, i32 %35)
  %37 = load i32, i32* @OMAP34XX_VA_ADDR_MATCH2, align 4
  %38 = call i32 @__raw_writel(i32 0, i32 %37)
  %39 = load i32, i32* @OMAP34XX_VA_SMS_RG_ATT0, align 4
  %40 = call i32 @__raw_writel(i32 -1, i32 %39)
  br label %41

41:                                               ; preds = %30, %27
  store i32 0, i32* %1, align 4
  br label %43

42:                                               ; preds = %13
  store i32 1, i32* %1, align 4
  br label %43

43:                                               ; preds = %42, %41, %5
  %44 = load i32, i32* %1, align 4
  ret i32 %44
}

declare dso_local i64 @cpu_is_omap44xx(...) #1

declare dso_local i64 @cpu_is_omap242x(...) #1

declare dso_local i32 @omap_rev(...) #1

declare dso_local i32 @__raw_writel(i32, i32) #1

declare dso_local i64 @cpu_is_omap34xx(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
