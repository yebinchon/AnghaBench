; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap2/extr_powerdomain.c_pwrdm_disable_hdwr_sar.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap2/extr_powerdomain.c_pwrdm_disable_hdwr_sar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.powerdomain = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@PWRDM_HAS_HDWR_SAR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"powerdomain: %s: clearing SAVEANDRESTORE bit\0A\00", align 1
@OMAP3430ES2_SAVEANDRESTORE_SHIFT = common dso_local global i32 0, align 4
@PM_PWSTCTRL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pwrdm_disable_hdwr_sar(%struct.powerdomain* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.powerdomain*, align 8
  store %struct.powerdomain* %0, %struct.powerdomain** %3, align 8
  %4 = load %struct.powerdomain*, %struct.powerdomain** %3, align 8
  %5 = icmp ne %struct.powerdomain* %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = load i32, i32* @EINVAL, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %2, align 4
  br label %31

9:                                                ; preds = %1
  %10 = load %struct.powerdomain*, %struct.powerdomain** %3, align 8
  %11 = getelementptr inbounds %struct.powerdomain, %struct.powerdomain* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @PWRDM_HAS_HDWR_SAR, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %9
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %31

19:                                               ; preds = %9
  %20 = load %struct.powerdomain*, %struct.powerdomain** %3, align 8
  %21 = getelementptr inbounds %struct.powerdomain, %struct.powerdomain* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @pr_debug(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* @OMAP3430ES2_SAVEANDRESTORE_SHIFT, align 4
  %25 = shl i32 1, %24
  %26 = load %struct.powerdomain*, %struct.powerdomain** %3, align 8
  %27 = getelementptr inbounds %struct.powerdomain, %struct.powerdomain* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @PM_PWSTCTRL, align 4
  %30 = call i32 @prm_rmw_mod_reg_bits(i32 %25, i32 0, i32 %28, i32 %29)
  store i32 0, i32* %2, align 4
  br label %31

31:                                               ; preds = %19, %16, %6
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @prm_rmw_mod_reg_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
