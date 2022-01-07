; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap2/extr_omap_hwmod.c__set_softreset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap2/extr_omap_hwmod.c__set_softreset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_hwmod = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@SYSC_HAS_SOFTRESET = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SYSC_SOFTRESET_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_hwmod*, i32*)* @_set_softreset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_set_softreset(%struct.omap_hwmod* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.omap_hwmod*, align 8
  %5 = alloca i32*, align 8
  store %struct.omap_hwmod* %0, %struct.omap_hwmod** %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = load %struct.omap_hwmod*, %struct.omap_hwmod** %4, align 8
  %7 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = icmp ne %struct.TYPE_2__* %8, null
  br i1 %9, label %10, label %19

10:                                               ; preds = %2
  %11 = load %struct.omap_hwmod*, %struct.omap_hwmod** %4, align 8
  %12 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @SYSC_HAS_SOFTRESET, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %10, %2
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %27

22:                                               ; preds = %10
  %23 = load i32, i32* @SYSC_SOFTRESET_MASK, align 4
  %24 = load i32*, i32** %5, align 8
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %25, %23
  store i32 %26, i32* %24, align 4
  store i32 0, i32* %3, align 4
  br label %27

27:                                               ; preds = %22, %19
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
