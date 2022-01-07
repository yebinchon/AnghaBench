; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_vpif_display.c_vpif_mmap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_vpif_display.c_vpif_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.vpif_fh* }
%struct.vpif_fh = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.common_obj* }
%struct.common_obj = type { i32 }
%struct.vm_area_struct = type { i32 }

@VPIF_VIDEO_INDEX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.vm_area_struct*)* @vpif_mmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vpif_mmap(%struct.file* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.vm_area_struct*, align 8
  %5 = alloca %struct.vpif_fh*, align 8
  %6 = alloca %struct.common_obj*, align 8
  store %struct.file* %0, %struct.file** %3, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %4, align 8
  %7 = load %struct.file*, %struct.file** %3, align 8
  %8 = getelementptr inbounds %struct.file, %struct.file* %7, i32 0, i32 0
  %9 = load %struct.vpif_fh*, %struct.vpif_fh** %8, align 8
  store %struct.vpif_fh* %9, %struct.vpif_fh** %5, align 8
  %10 = load %struct.vpif_fh*, %struct.vpif_fh** %5, align 8
  %11 = getelementptr inbounds %struct.vpif_fh, %struct.vpif_fh* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.common_obj*, %struct.common_obj** %13, align 8
  %15 = load i64, i64* @VPIF_VIDEO_INDEX, align 8
  %16 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %14, i64 %15
  store %struct.common_obj* %16, %struct.common_obj** %6, align 8
  %17 = load %struct.common_obj*, %struct.common_obj** %6, align 8
  %18 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %17, i32 0, i32 0
  %19 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %20 = call i32 @videobuf_mmap_mapper(i32* %18, %struct.vm_area_struct* %19)
  ret i32 %20
}

declare dso_local i32 @videobuf_mmap_mapper(i32*, %struct.vm_area_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
