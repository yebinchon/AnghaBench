; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/agp/extr_parisc-agp.c_parisc_agp_configure.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/agp/extr_parisc-agp.c_parisc_agp_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._parisc_agp_info = type { i64, i64, i32 }
%struct.TYPE_2__ = type { i32, i64, i32 }

@parisc_agp_info = common dso_local global %struct._parisc_agp_info zeroinitializer, align 8
@agp_bridge = common dso_local global %struct.TYPE_2__* null, align 8
@PCI_AGP_STATUS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @parisc_agp_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parisc_agp_configure() #0 {
  %1 = alloca %struct._parisc_agp_info*, align 8
  store %struct._parisc_agp_info* @parisc_agp_info, %struct._parisc_agp_info** %1, align 8
  %2 = load %struct._parisc_agp_info*, %struct._parisc_agp_info** %1, align 8
  %3 = getelementptr inbounds %struct._parisc_agp_info, %struct._parisc_agp_info* %2, i32 0, i32 2
  %4 = load i32, i32* %3, align 8
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** @agp_bridge, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 2
  store i32 %4, i32* %6, align 8
  %7 = load %struct._parisc_agp_info*, %struct._parisc_agp_info** %1, align 8
  %8 = getelementptr inbounds %struct._parisc_agp_info, %struct._parisc_agp_info* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @agp_bridge, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  store i64 %9, i64* %11, align 8
  %12 = load %struct._parisc_agp_info*, %struct._parisc_agp_info** %1, align 8
  %13 = getelementptr inbounds %struct._parisc_agp_info, %struct._parisc_agp_info* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load %struct._parisc_agp_info*, %struct._parisc_agp_info** %1, align 8
  %16 = getelementptr inbounds %struct._parisc_agp_info, %struct._parisc_agp_info* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = add nsw i64 %14, %17
  %19 = load i64, i64* @PCI_AGP_STATUS, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @readl(i64 %20)
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @agp_bridge, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  ret i32 0
}

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
