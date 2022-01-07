; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap2/extr_powerdomain.c_pwrdm_add_sleepdep.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap2/extr_powerdomain.c_pwrdm_add_sleepdep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.powerdomain = type { i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [78 x i8] c"powerdomain: hardware cannot set/clear sleep dependency affecting %s from %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [60 x i8] c"powerdomain: will prevent %s from sleeping if %s is active\0A\00", align 1
@OMAP3430_CM_SLEEPDEP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pwrdm_add_sleepdep(%struct.powerdomain* %0, %struct.powerdomain* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.powerdomain*, align 8
  %5 = alloca %struct.powerdomain*, align 8
  %6 = alloca %struct.powerdomain*, align 8
  store %struct.powerdomain* %0, %struct.powerdomain** %4, align 8
  store %struct.powerdomain* %1, %struct.powerdomain** %5, align 8
  %7 = load %struct.powerdomain*, %struct.powerdomain** %4, align 8
  %8 = icmp ne %struct.powerdomain* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* @EINVAL, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %3, align 4
  br label %54

12:                                               ; preds = %2
  %13 = call i32 (...) @cpu_is_omap34xx()
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %12
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %54

18:                                               ; preds = %12
  %19 = load %struct.powerdomain*, %struct.powerdomain** %5, align 8
  %20 = load %struct.powerdomain*, %struct.powerdomain** %4, align 8
  %21 = getelementptr inbounds %struct.powerdomain, %struct.powerdomain* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.powerdomain* @_pwrdm_deps_lookup(%struct.powerdomain* %19, i32 %22)
  store %struct.powerdomain* %23, %struct.powerdomain** %6, align 8
  %24 = load %struct.powerdomain*, %struct.powerdomain** %6, align 8
  %25 = call i32 @IS_ERR(%struct.powerdomain* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %18
  %28 = load %struct.powerdomain*, %struct.powerdomain** %4, align 8
  %29 = getelementptr inbounds %struct.powerdomain, %struct.powerdomain* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.powerdomain*, %struct.powerdomain** %5, align 8
  %32 = getelementptr inbounds %struct.powerdomain, %struct.powerdomain* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @pr_debug(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %33)
  %35 = load %struct.powerdomain*, %struct.powerdomain** %6, align 8
  %36 = call i32 @IS_ERR(%struct.powerdomain* %35)
  store i32 %36, i32* %3, align 4
  br label %54

37:                                               ; preds = %18
  %38 = load %struct.powerdomain*, %struct.powerdomain** %4, align 8
  %39 = getelementptr inbounds %struct.powerdomain, %struct.powerdomain* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.powerdomain*, %struct.powerdomain** %5, align 8
  %42 = getelementptr inbounds %struct.powerdomain, %struct.powerdomain* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @pr_debug(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), i32 %40, i32 %43)
  %45 = load %struct.powerdomain*, %struct.powerdomain** %5, align 8
  %46 = getelementptr inbounds %struct.powerdomain, %struct.powerdomain* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = shl i32 1, %47
  %49 = load %struct.powerdomain*, %struct.powerdomain** %4, align 8
  %50 = getelementptr inbounds %struct.powerdomain, %struct.powerdomain* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @OMAP3430_CM_SLEEPDEP, align 4
  %53 = call i32 @cm_set_mod_reg_bits(i32 %48, i32 %51, i32 %52)
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %37, %27, %15, %9
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @cpu_is_omap34xx(...) #1

declare dso_local %struct.powerdomain* @_pwrdm_deps_lookup(%struct.powerdomain*, i32) #1

declare dso_local i32 @IS_ERR(%struct.powerdomain*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local i32 @cm_set_mod_reg_bits(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
