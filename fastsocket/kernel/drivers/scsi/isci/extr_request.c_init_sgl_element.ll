; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/isci/extr_request.c_init_sgl_element.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/isci/extr_request.c_init_sgl_element.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scu_sgl_element = type { i64, i32, i32, i32 }
%struct.scatterlist = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scu_sgl_element*, %struct.scatterlist*)* @init_sgl_element to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_sgl_element(%struct.scu_sgl_element* %0, %struct.scatterlist* %1) #0 {
  %3 = alloca %struct.scu_sgl_element*, align 8
  %4 = alloca %struct.scatterlist*, align 8
  store %struct.scu_sgl_element* %0, %struct.scu_sgl_element** %3, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %4, align 8
  %5 = load %struct.scatterlist*, %struct.scatterlist** %4, align 8
  %6 = call i32 @sg_dma_len(%struct.scatterlist* %5)
  %7 = load %struct.scu_sgl_element*, %struct.scu_sgl_element** %3, align 8
  %8 = getelementptr inbounds %struct.scu_sgl_element, %struct.scu_sgl_element* %7, i32 0, i32 3
  store i32 %6, i32* %8, align 8
  %9 = load %struct.scatterlist*, %struct.scatterlist** %4, align 8
  %10 = call i32 @sg_dma_address(%struct.scatterlist* %9)
  %11 = call i32 @upper_32_bits(i32 %10)
  %12 = load %struct.scu_sgl_element*, %struct.scu_sgl_element** %3, align 8
  %13 = getelementptr inbounds %struct.scu_sgl_element, %struct.scu_sgl_element* %12, i32 0, i32 2
  store i32 %11, i32* %13, align 4
  %14 = load %struct.scatterlist*, %struct.scatterlist** %4, align 8
  %15 = call i32 @sg_dma_address(%struct.scatterlist* %14)
  %16 = call i32 @lower_32_bits(i32 %15)
  %17 = load %struct.scu_sgl_element*, %struct.scu_sgl_element** %3, align 8
  %18 = getelementptr inbounds %struct.scu_sgl_element, %struct.scu_sgl_element* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 8
  %19 = load %struct.scu_sgl_element*, %struct.scu_sgl_element** %3, align 8
  %20 = getelementptr inbounds %struct.scu_sgl_element, %struct.scu_sgl_element* %19, i32 0, i32 0
  store i64 0, i64* %20, align 8
  ret void
}

declare dso_local i32 @sg_dma_len(%struct.scatterlist*) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @sg_dma_address(%struct.scatterlist*) #1

declare dso_local i32 @lower_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
