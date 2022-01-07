; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap2/extr_clockdomain.c_clkdm_register.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap2/extr_clockdomain.c_clkdm_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clockdomain = type { i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { %struct.powerdomain*, i32 }
%struct.powerdomain = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"clockdomain: %s: powerdomain %s does not exist\0A\00", align 1
@clkdm_mutex = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@clkdm_list = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"clockdomain: registered %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @clkdm_register(%struct.clockdomain* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.clockdomain*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.powerdomain*, align 8
  store %struct.clockdomain* %0, %struct.clockdomain** %3, align 8
  %6 = load i32, i32* @EINVAL, align 4
  %7 = sub nsw i32 0, %6
  store i32 %7, i32* %4, align 4
  %8 = load %struct.clockdomain*, %struct.clockdomain** %3, align 8
  %9 = icmp ne %struct.clockdomain* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load %struct.clockdomain*, %struct.clockdomain** %3, align 8
  %12 = getelementptr inbounds %struct.clockdomain, %struct.clockdomain* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %10, %1
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %74

18:                                               ; preds = %10
  %19 = load %struct.clockdomain*, %struct.clockdomain** %3, align 8
  %20 = getelementptr inbounds %struct.clockdomain, %struct.clockdomain* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @omap_chip_is(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %18
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %74

27:                                               ; preds = %18
  %28 = load %struct.clockdomain*, %struct.clockdomain** %3, align 8
  %29 = getelementptr inbounds %struct.clockdomain, %struct.clockdomain* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call %struct.powerdomain* @pwrdm_lookup(i32 %31)
  store %struct.powerdomain* %32, %struct.powerdomain** %5, align 8
  %33 = load %struct.powerdomain*, %struct.powerdomain** %5, align 8
  %34 = icmp ne %struct.powerdomain* %33, null
  br i1 %34, label %46, label %35

35:                                               ; preds = %27
  %36 = load %struct.clockdomain*, %struct.clockdomain** %3, align 8
  %37 = getelementptr inbounds %struct.clockdomain, %struct.clockdomain* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.clockdomain*, %struct.clockdomain** %3, align 8
  %40 = getelementptr inbounds %struct.clockdomain, %struct.clockdomain* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @pr_err(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %38, i32 %42)
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %74

46:                                               ; preds = %27
  %47 = load %struct.powerdomain*, %struct.powerdomain** %5, align 8
  %48 = load %struct.clockdomain*, %struct.clockdomain** %3, align 8
  %49 = getelementptr inbounds %struct.clockdomain, %struct.clockdomain* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  store %struct.powerdomain* %47, %struct.powerdomain** %50, align 8
  %51 = call i32 @mutex_lock(i32* @clkdm_mutex)
  %52 = load %struct.clockdomain*, %struct.clockdomain** %3, align 8
  %53 = getelementptr inbounds %struct.clockdomain, %struct.clockdomain* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i64 @_clkdm_lookup(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %46
  %58 = load i32, i32* @EEXIST, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %4, align 4
  br label %71

60:                                               ; preds = %46
  %61 = load %struct.clockdomain*, %struct.clockdomain** %3, align 8
  %62 = getelementptr inbounds %struct.clockdomain, %struct.clockdomain* %61, i32 0, i32 1
  %63 = call i32 @list_add(i32* %62, i32* @clkdm_list)
  %64 = load %struct.powerdomain*, %struct.powerdomain** %5, align 8
  %65 = load %struct.clockdomain*, %struct.clockdomain** %3, align 8
  %66 = call i32 @pwrdm_add_clkdm(%struct.powerdomain* %64, %struct.clockdomain* %65)
  %67 = load %struct.clockdomain*, %struct.clockdomain** %3, align 8
  %68 = getelementptr inbounds %struct.clockdomain, %struct.clockdomain* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @pr_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %69)
  store i32 0, i32* %4, align 4
  br label %71

71:                                               ; preds = %60, %57
  %72 = call i32 @mutex_unlock(i32* @clkdm_mutex)
  %73 = load i32, i32* %4, align 4
  store i32 %73, i32* %2, align 4
  br label %74

74:                                               ; preds = %71, %35, %24, %15
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local i32 @omap_chip_is(i32) #1

declare dso_local %struct.powerdomain* @pwrdm_lookup(i32) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @_clkdm_lookup(i32) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @pwrdm_add_clkdm(%struct.powerdomain*, %struct.clockdomain*) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
