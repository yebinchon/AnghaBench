; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_ati_pcigart.c_drm_ati_alloc_pcigart_table.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_ati_pcigart.c_drm_ati_alloc_pcigart_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_ati_pcigart_info = type { i32*, i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, %struct.drm_ati_pcigart_info*)* @drm_ati_alloc_pcigart_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drm_ati_alloc_pcigart_table(%struct.drm_device* %0, %struct.drm_ati_pcigart_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.drm_ati_pcigart_info*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store %struct.drm_ati_pcigart_info* %1, %struct.drm_ati_pcigart_info** %5, align 8
  %6 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %7 = load %struct.drm_ati_pcigart_info*, %struct.drm_ati_pcigart_info** %5, align 8
  %8 = getelementptr inbounds %struct.drm_ati_pcigart_info, %struct.drm_ati_pcigart_info* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @PAGE_SIZE, align 4
  %11 = call i32* @drm_pci_alloc(%struct.drm_device* %6, i32 %9, i32 %10)
  %12 = load %struct.drm_ati_pcigart_info*, %struct.drm_ati_pcigart_info** %5, align 8
  %13 = getelementptr inbounds %struct.drm_ati_pcigart_info, %struct.drm_ati_pcigart_info* %12, i32 0, i32 0
  store i32* %11, i32** %13, align 8
  %14 = load %struct.drm_ati_pcigart_info*, %struct.drm_ati_pcigart_info** %5, align 8
  %15 = getelementptr inbounds %struct.drm_ati_pcigart_info, %struct.drm_ati_pcigart_info* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %22

21:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %22

22:                                               ; preds = %21, %18
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

declare dso_local i32* @drm_pci_alloc(%struct.drm_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
