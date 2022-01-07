; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/agp/extr_ali-agp.c_ali_cleanup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/agp/extr_ali-agp.c_ali_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.aper_size_info_32 = type { i32 }

@agp_bridge = common dso_local global %struct.TYPE_2__* null, align 8
@ALI_TLBCTRL = common dso_local global i32 0, align 4
@ALI_TAGCTRL = common dso_local global i32 0, align 4
@ALI_ATTBASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ali_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ali_cleanup() #0 {
  %1 = alloca %struct.aper_size_info_32*, align 8
  %2 = alloca i32, align 4
  %3 = load %struct.TYPE_2__*, %struct.TYPE_2__** @agp_bridge, align 8
  %4 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %6 = call %struct.aper_size_info_32* @A_SIZE_32(i32 %5)
  store %struct.aper_size_info_32* %6, %struct.aper_size_info_32** %1, align 8
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @agp_bridge, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @ALI_TLBCTRL, align 4
  %11 = call i32 @pci_read_config_dword(i32 %9, i32 %10, i32* %2)
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @agp_bridge, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @ALI_TAGCTRL, align 4
  %16 = load i32, i32* %2, align 4
  %17 = and i32 %16, -256
  %18 = or i32 %17, 1
  %19 = or i32 %18, 2
  %20 = call i32 @pci_write_config_dword(i32 %14, i32 %15, i32 %19)
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @agp_bridge, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @ALI_ATTBASE, align 4
  %25 = call i32 @pci_read_config_dword(i32 %23, i32 %24, i32* %2)
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @agp_bridge, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @ALI_ATTBASE, align 4
  %30 = load i32, i32* %2, align 4
  %31 = and i32 %30, 4080
  %32 = load %struct.aper_size_info_32*, %struct.aper_size_info_32** %1, align 8
  %33 = getelementptr inbounds %struct.aper_size_info_32, %struct.aper_size_info_32* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %31, %34
  %36 = call i32 @pci_write_config_dword(i32 %28, i32 %29, i32 %35)
  ret void
}

declare dso_local %struct.aper_size_info_32* @A_SIZE_32(i32) #1

declare dso_local i32 @pci_read_config_dword(i32, i32, i32*) #1

declare dso_local i32 @pci_write_config_dword(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
