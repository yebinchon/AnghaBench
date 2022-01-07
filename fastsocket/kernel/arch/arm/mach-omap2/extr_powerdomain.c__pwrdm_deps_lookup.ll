; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap2/extr_powerdomain.c__pwrdm_deps_lookup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap2/extr_powerdomain.c__pwrdm_deps_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.powerdomain = type { i32 }
%struct.pwrdm_dep = type { %struct.powerdomain*, i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.powerdomain* (%struct.powerdomain*, %struct.pwrdm_dep*)* @_pwrdm_deps_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.powerdomain* @_pwrdm_deps_lookup(%struct.powerdomain* %0, %struct.pwrdm_dep* %1) #0 {
  %3 = alloca %struct.powerdomain*, align 8
  %4 = alloca %struct.powerdomain*, align 8
  %5 = alloca %struct.pwrdm_dep*, align 8
  %6 = alloca %struct.pwrdm_dep*, align 8
  store %struct.powerdomain* %0, %struct.powerdomain** %4, align 8
  store %struct.pwrdm_dep* %1, %struct.pwrdm_dep** %5, align 8
  %7 = load %struct.powerdomain*, %struct.powerdomain** %4, align 8
  %8 = icmp ne %struct.powerdomain* %7, null
  br i1 %8, label %9, label %18

9:                                                ; preds = %2
  %10 = load %struct.pwrdm_dep*, %struct.pwrdm_dep** %5, align 8
  %11 = icmp ne %struct.pwrdm_dep* %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %9
  %13 = load %struct.powerdomain*, %struct.powerdomain** %4, align 8
  %14 = getelementptr inbounds %struct.powerdomain, %struct.powerdomain* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @omap_chip_is(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %12, %9, %2
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  %21 = call %struct.powerdomain* @ERR_PTR(i32 %20)
  store %struct.powerdomain* %21, %struct.powerdomain** %3, align 8
  br label %77

22:                                               ; preds = %12
  %23 = load %struct.pwrdm_dep*, %struct.pwrdm_dep** %5, align 8
  store %struct.pwrdm_dep* %23, %struct.pwrdm_dep** %6, align 8
  br label %24

24:                                               ; preds = %61, %22
  %25 = load %struct.pwrdm_dep*, %struct.pwrdm_dep** %6, align 8
  %26 = getelementptr inbounds %struct.pwrdm_dep, %struct.pwrdm_dep* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %64

29:                                               ; preds = %24
  %30 = load %struct.pwrdm_dep*, %struct.pwrdm_dep** %6, align 8
  %31 = getelementptr inbounds %struct.pwrdm_dep, %struct.pwrdm_dep* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @omap_chip_is(i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %29
  br label %61

36:                                               ; preds = %29
  %37 = load %struct.pwrdm_dep*, %struct.pwrdm_dep** %6, align 8
  %38 = getelementptr inbounds %struct.pwrdm_dep, %struct.pwrdm_dep* %37, i32 0, i32 0
  %39 = load %struct.powerdomain*, %struct.powerdomain** %38, align 8
  %40 = icmp ne %struct.powerdomain* %39, null
  br i1 %40, label %53, label %41

41:                                               ; preds = %36
  %42 = load %struct.pwrdm_dep*, %struct.pwrdm_dep** %6, align 8
  %43 = getelementptr inbounds %struct.pwrdm_dep, %struct.pwrdm_dep* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %41
  %47 = load %struct.pwrdm_dep*, %struct.pwrdm_dep** %6, align 8
  %48 = getelementptr inbounds %struct.pwrdm_dep, %struct.pwrdm_dep* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = call %struct.powerdomain* @pwrdm_lookup(i64 %49)
  %51 = load %struct.pwrdm_dep*, %struct.pwrdm_dep** %6, align 8
  %52 = getelementptr inbounds %struct.pwrdm_dep, %struct.pwrdm_dep* %51, i32 0, i32 0
  store %struct.powerdomain* %50, %struct.powerdomain** %52, align 8
  br label %53

53:                                               ; preds = %46, %41, %36
  %54 = load %struct.pwrdm_dep*, %struct.pwrdm_dep** %6, align 8
  %55 = getelementptr inbounds %struct.pwrdm_dep, %struct.pwrdm_dep* %54, i32 0, i32 0
  %56 = load %struct.powerdomain*, %struct.powerdomain** %55, align 8
  %57 = load %struct.powerdomain*, %struct.powerdomain** %4, align 8
  %58 = icmp eq %struct.powerdomain* %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  br label %64

60:                                               ; preds = %53
  br label %61

61:                                               ; preds = %60, %35
  %62 = load %struct.pwrdm_dep*, %struct.pwrdm_dep** %6, align 8
  %63 = getelementptr inbounds %struct.pwrdm_dep, %struct.pwrdm_dep* %62, i32 1
  store %struct.pwrdm_dep* %63, %struct.pwrdm_dep** %6, align 8
  br label %24

64:                                               ; preds = %59, %24
  %65 = load %struct.pwrdm_dep*, %struct.pwrdm_dep** %6, align 8
  %66 = getelementptr inbounds %struct.pwrdm_dep, %struct.pwrdm_dep* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %64
  %70 = load i32, i32* @ENOENT, align 4
  %71 = sub nsw i32 0, %70
  %72 = call %struct.powerdomain* @ERR_PTR(i32 %71)
  store %struct.powerdomain* %72, %struct.powerdomain** %3, align 8
  br label %77

73:                                               ; preds = %64
  %74 = load %struct.pwrdm_dep*, %struct.pwrdm_dep** %6, align 8
  %75 = getelementptr inbounds %struct.pwrdm_dep, %struct.pwrdm_dep* %74, i32 0, i32 0
  %76 = load %struct.powerdomain*, %struct.powerdomain** %75, align 8
  store %struct.powerdomain* %76, %struct.powerdomain** %3, align 8
  br label %77

77:                                               ; preds = %73, %69, %18
  %78 = load %struct.powerdomain*, %struct.powerdomain** %3, align 8
  ret %struct.powerdomain* %78
}

declare dso_local i32 @omap_chip_is(i32) #1

declare dso_local %struct.powerdomain* @ERR_PTR(i32) #1

declare dso_local %struct.powerdomain* @pwrdm_lookup(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
