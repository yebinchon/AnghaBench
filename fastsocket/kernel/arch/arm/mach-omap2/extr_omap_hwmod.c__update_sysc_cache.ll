; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap2/extr_omap_hwmod.c__update_sysc_cache.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap2/extr_omap_hwmod.c__update_sysc_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_hwmod = type { i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [65 x i8] c"omap_hwmod: %s: cannot read OCP_SYSCONFIG: not defined on hwmod\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@_HWMOD_SYSCONFIG_LOADED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_hwmod*)* @_update_sysc_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_update_sysc_cache(%struct.omap_hwmod* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.omap_hwmod*, align 8
  store %struct.omap_hwmod* %0, %struct.omap_hwmod** %3, align 8
  %4 = load %struct.omap_hwmod*, %struct.omap_hwmod** %3, align 8
  %5 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %4, i32 0, i32 1
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = icmp ne %struct.TYPE_2__* %6, null
  br i1 %7, label %21, label %8

8:                                                ; preds = %1
  %9 = load %struct.omap_hwmod*, %struct.omap_hwmod** %3, align 8
  %10 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = icmp ne %struct.TYPE_2__* %11, null
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = load %struct.omap_hwmod*, %struct.omap_hwmod** %3, align 8
  %16 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @WARN(i32 %14, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %36

21:                                               ; preds = %1
  %22 = load %struct.omap_hwmod*, %struct.omap_hwmod** %3, align 8
  %23 = load %struct.omap_hwmod*, %struct.omap_hwmod** %3, align 8
  %24 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @omap_hwmod_readl(%struct.omap_hwmod* %22, i32 %27)
  %29 = load %struct.omap_hwmod*, %struct.omap_hwmod** %3, align 8
  %30 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 8
  %31 = load i32, i32* @_HWMOD_SYSCONFIG_LOADED, align 4
  %32 = load %struct.omap_hwmod*, %struct.omap_hwmod** %3, align 8
  %33 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 8
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %21, %8
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32 @WARN(i32, i8*, i32) #1

declare dso_local i32 @omap_hwmod_readl(%struct.omap_hwmod*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
