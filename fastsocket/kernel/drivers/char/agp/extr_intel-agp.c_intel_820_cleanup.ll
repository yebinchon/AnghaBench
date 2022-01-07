; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/agp/extr_intel-agp.c_intel_820_cleanup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/agp/extr_intel-agp.c_intel_820_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.aper_size_info_8 = type { i32 }

@agp_bridge = common dso_local global %struct.TYPE_2__* null, align 8
@INTEL_I820_RDCR = common dso_local global i32 0, align 4
@INTEL_APSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @intel_820_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_820_cleanup() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.aper_size_info_8*, align 8
  %3 = load %struct.TYPE_2__*, %struct.TYPE_2__** @agp_bridge, align 8
  %4 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %6 = call %struct.aper_size_info_8* @A_SIZE_8(i32 %5)
  store %struct.aper_size_info_8* %6, %struct.aper_size_info_8** %2, align 8
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @agp_bridge, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @INTEL_I820_RDCR, align 4
  %11 = call i32 @pci_read_config_byte(i32 %9, i32 %10, i32* %1)
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @agp_bridge, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @INTEL_I820_RDCR, align 4
  %16 = load i32, i32* %1, align 4
  %17 = and i32 %16, -3
  %18 = call i32 @pci_write_config_byte(i32 %14, i32 %15, i32 %17)
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @agp_bridge, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @INTEL_APSIZE, align 4
  %23 = load %struct.aper_size_info_8*, %struct.aper_size_info_8** %2, align 8
  %24 = getelementptr inbounds %struct.aper_size_info_8, %struct.aper_size_info_8* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @pci_write_config_byte(i32 %21, i32 %22, i32 %25)
  ret void
}

declare dso_local %struct.aper_size_info_8* @A_SIZE_8(i32) #1

declare dso_local i32 @pci_read_config_byte(i32, i32, i32*) #1

declare dso_local i32 @pci_write_config_byte(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
