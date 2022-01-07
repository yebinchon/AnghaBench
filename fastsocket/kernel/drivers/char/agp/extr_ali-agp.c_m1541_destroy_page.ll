; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/agp/extr_ali-agp.c_m1541_destroy_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/agp/extr_ali-agp.c_m1541_destroy_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.page = type { i32 }

@AGP_PAGE_DESTROY_UNMAP = common dso_local global i32 0, align 4
@agp_bridge = common dso_local global %struct.TYPE_2__* null, align 8
@ALI_CACHE_FLUSH_CTRL = common dso_local global i32 0, align 4
@ALI_CACHE_FLUSH_ADDR_MASK = common dso_local global i32 0, align 4
@ALI_CACHE_FLUSH_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.page*, i32)* @m1541_destroy_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @m1541_destroy_page(%struct.page* %0, i32 %1) #0 {
  %3 = alloca %struct.page*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.page* %0, %struct.page** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.page*, %struct.page** %3, align 8
  %7 = icmp eq %struct.page* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  br label %38

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @AGP_PAGE_DESTROY_UNMAP, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %34

14:                                               ; preds = %9
  %15 = call i32 (...) @global_cache_flush()
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @agp_bridge, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @ALI_CACHE_FLUSH_CTRL, align 4
  %20 = call i32 @pci_read_config_dword(i32 %18, i32 %19, i32* %5)
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @agp_bridge, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @ALI_CACHE_FLUSH_CTRL, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @ALI_CACHE_FLUSH_ADDR_MASK, align 4
  %27 = and i32 %25, %26
  %28 = load %struct.page*, %struct.page** %3, align 8
  %29 = call i32 @page_to_phys(%struct.page* %28)
  %30 = or i32 %27, %29
  %31 = load i32, i32* @ALI_CACHE_FLUSH_EN, align 4
  %32 = or i32 %30, %31
  %33 = call i32 @pci_write_config_dword(i32 %23, i32 %24, i32 %32)
  br label %34

34:                                               ; preds = %14, %9
  %35 = load %struct.page*, %struct.page** %3, align 8
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @agp_generic_destroy_page(%struct.page* %35, i32 %36)
  br label %38

38:                                               ; preds = %34, %8
  ret void
}

declare dso_local i32 @global_cache_flush(...) #1

declare dso_local i32 @pci_read_config_dword(i32, i32, i32*) #1

declare dso_local i32 @pci_write_config_dword(i32, i32, i32) #1

declare dso_local i32 @page_to_phys(%struct.page*) #1

declare dso_local i32 @agp_generic_destroy_page(%struct.page*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
