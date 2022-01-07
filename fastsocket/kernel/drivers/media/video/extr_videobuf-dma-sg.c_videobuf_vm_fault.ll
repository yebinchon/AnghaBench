; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_videobuf-dma-sg.c_videobuf_vm_fault.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_videobuf-dma-sg.c_videobuf_vm_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i32, i32 }
%struct.vm_fault = type { %struct.page*, i64 }
%struct.page = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"fault: fault @ %08lx [vma %08lx-%08lx]\0A\00", align 1
@GFP_USER = common dso_local global i32 0, align 4
@__GFP_DMA32 = common dso_local global i32 0, align 4
@VM_FAULT_OOM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm_area_struct*, %struct.vm_fault*)* @videobuf_vm_fault to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @videobuf_vm_fault(%struct.vm_area_struct* %0, %struct.vm_fault* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vm_area_struct*, align 8
  %5 = alloca %struct.vm_fault*, align 8
  %6 = alloca %struct.page*, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %4, align 8
  store %struct.vm_fault* %1, %struct.vm_fault** %5, align 8
  %7 = load %struct.vm_fault*, %struct.vm_fault** %5, align 8
  %8 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %11 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %14 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @dprintk(i32 3, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %9, i32 %12, i32 %15)
  %17 = load i32, i32* @GFP_USER, align 4
  %18 = load i32, i32* @__GFP_DMA32, align 4
  %19 = or i32 %17, %18
  %20 = call %struct.page* @alloc_page(i32 %19)
  store %struct.page* %20, %struct.page** %6, align 8
  %21 = load %struct.page*, %struct.page** %6, align 8
  %22 = icmp ne %struct.page* %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %2
  %24 = load i32, i32* @VM_FAULT_OOM, align 4
  store i32 %24, i32* %3, align 4
  br label %34

25:                                               ; preds = %2
  %26 = load %struct.page*, %struct.page** %6, align 8
  %27 = load %struct.vm_fault*, %struct.vm_fault** %5, align 8
  %28 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @clear_user_highpage(%struct.page* %26, i64 %29)
  %31 = load %struct.page*, %struct.page** %6, align 8
  %32 = load %struct.vm_fault*, %struct.vm_fault** %5, align 8
  %33 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %32, i32 0, i32 0
  store %struct.page* %31, %struct.page** %33, align 8
  store i32 0, i32* %3, align 4
  br label %34

34:                                               ; preds = %25, %23
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @dprintk(i32, i8*, i64, i32, i32) #1

declare dso_local %struct.page* @alloc_page(i32) #1

declare dso_local i32 @clear_user_highpage(%struct.page*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
