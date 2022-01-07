; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/agp/extr_via-agp.c_via_cleanup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/agp/extr_via-agp.c_via_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.aper_size_info_8 = type { i32 }

@agp_bridge = common dso_local global %struct.TYPE_2__* null, align 8
@VIA_APSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @via_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @via_cleanup() #0 {
  %1 = alloca %struct.aper_size_info_8*, align 8
  %2 = load %struct.TYPE_2__*, %struct.TYPE_2__** @agp_bridge, align 8
  %3 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %2, i32 0, i32 1
  %4 = load i32, i32* %3, align 4
  %5 = call %struct.aper_size_info_8* @A_SIZE_8(i32 %4)
  store %struct.aper_size_info_8* %5, %struct.aper_size_info_8** %1, align 8
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** @agp_bridge, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @VIA_APSIZE, align 4
  %10 = load %struct.aper_size_info_8*, %struct.aper_size_info_8** %1, align 8
  %11 = getelementptr inbounds %struct.aper_size_info_8, %struct.aper_size_info_8* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @pci_write_config_byte(i32 %8, i32 %9, i32 %12)
  ret void
}

declare dso_local %struct.aper_size_info_8* @A_SIZE_8(i32) #1

declare dso_local i32 @pci_write_config_byte(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
