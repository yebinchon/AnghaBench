; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap2/extr_powerdomain.c_pwrdm_add_wkdep.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap2/extr_powerdomain.c_pwrdm_add_wkdep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.powerdomain = type { i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [71 x i8] c"powerdomain: hardware cannot set/clear wake up of %s when %s wakes up\0A\00", align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"powerdomain: hardware will wake up %s when %s wakes up\0A\00", align 1
@PM_WKDEP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pwrdm_add_wkdep(%struct.powerdomain* %0, %struct.powerdomain* %1) #0 {
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
  br label %48

12:                                               ; preds = %2
  %13 = load %struct.powerdomain*, %struct.powerdomain** %5, align 8
  %14 = load %struct.powerdomain*, %struct.powerdomain** %4, align 8
  %15 = getelementptr inbounds %struct.powerdomain, %struct.powerdomain* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.powerdomain* @_pwrdm_deps_lookup(%struct.powerdomain* %13, i32 %16)
  store %struct.powerdomain* %17, %struct.powerdomain** %6, align 8
  %18 = load %struct.powerdomain*, %struct.powerdomain** %6, align 8
  %19 = call i32 @IS_ERR(%struct.powerdomain* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %12
  %22 = load %struct.powerdomain*, %struct.powerdomain** %4, align 8
  %23 = getelementptr inbounds %struct.powerdomain, %struct.powerdomain* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.powerdomain*, %struct.powerdomain** %5, align 8
  %26 = getelementptr inbounds %struct.powerdomain, %struct.powerdomain* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @pr_debug(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %27)
  %29 = load %struct.powerdomain*, %struct.powerdomain** %6, align 8
  %30 = call i32 @IS_ERR(%struct.powerdomain* %29)
  store i32 %30, i32* %3, align 4
  br label %48

31:                                               ; preds = %12
  %32 = load %struct.powerdomain*, %struct.powerdomain** %4, align 8
  %33 = getelementptr inbounds %struct.powerdomain, %struct.powerdomain* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.powerdomain*, %struct.powerdomain** %5, align 8
  %36 = getelementptr inbounds %struct.powerdomain, %struct.powerdomain* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @pr_debug(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i32 %34, i32 %37)
  %39 = load %struct.powerdomain*, %struct.powerdomain** %5, align 8
  %40 = getelementptr inbounds %struct.powerdomain, %struct.powerdomain* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = shl i32 1, %41
  %43 = load %struct.powerdomain*, %struct.powerdomain** %4, align 8
  %44 = getelementptr inbounds %struct.powerdomain, %struct.powerdomain* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @PM_WKDEP, align 4
  %47 = call i32 @prm_set_mod_reg_bits(i32 %42, i32 %45, i32 %46)
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %31, %21, %9
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local %struct.powerdomain* @_pwrdm_deps_lookup(%struct.powerdomain*, i32) #1

declare dso_local i32 @IS_ERR(%struct.powerdomain*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local i32 @prm_set_mod_reg_bits(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
