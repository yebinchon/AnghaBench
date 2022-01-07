; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-netx/extr_fb.c_netx_clcd_mmap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-netx/extr_fb.c_netx_clcd_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clcd_fb = type { %struct.TYPE_6__, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.vm_area_struct = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @netx_clcd_mmap(%struct.clcd_fb* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca %struct.clcd_fb*, align 8
  %4 = alloca %struct.vm_area_struct*, align 8
  store %struct.clcd_fb* %0, %struct.clcd_fb** %3, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %4, align 8
  %5 = load %struct.clcd_fb*, %struct.clcd_fb** %3, align 8
  %6 = getelementptr inbounds %struct.clcd_fb, %struct.clcd_fb* %5, i32 0, i32 1
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %10 = load %struct.clcd_fb*, %struct.clcd_fb** %3, align 8
  %11 = getelementptr inbounds %struct.clcd_fb, %struct.clcd_fb* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.clcd_fb*, %struct.clcd_fb** %3, align 8
  %15 = getelementptr inbounds %struct.clcd_fb, %struct.clcd_fb* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.clcd_fb*, %struct.clcd_fb** %3, align 8
  %20 = getelementptr inbounds %struct.clcd_fb, %struct.clcd_fb* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @dma_mmap_writecombine(i32* %8, %struct.vm_area_struct* %9, i32 %13, i32 %18, i32 %23)
  ret i32 %24
}

declare dso_local i32 @dma_mmap_writecombine(i32*, %struct.vm_area_struct*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
