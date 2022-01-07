; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_dma.c_ipath_sg_dma_address.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_dma.c_ipath_sg_dma_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.scatterlist = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ib_device*, %struct.scatterlist*)* @ipath_sg_dma_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ipath_sg_dma_address(%struct.ib_device* %0, %struct.scatterlist* %1) #0 {
  %3 = alloca %struct.ib_device*, align 8
  %4 = alloca %struct.scatterlist*, align 8
  %5 = alloca i64, align 8
  store %struct.ib_device* %0, %struct.ib_device** %3, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %4, align 8
  %6 = load %struct.scatterlist*, %struct.scatterlist** %4, align 8
  %7 = call i32 @sg_page(%struct.scatterlist* %6)
  %8 = call i32 @page_address(i32 %7)
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %5, align 8
  %10 = load i64, i64* %5, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = load %struct.scatterlist*, %struct.scatterlist** %4, align 8
  %14 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* %5, align 8
  %17 = add nsw i64 %16, %15
  store i64 %17, i64* %5, align 8
  br label %18

18:                                               ; preds = %12, %2
  %19 = load i64, i64* %5, align 8
  ret i64 %19
}

declare dso_local i32 @page_address(i32) #1

declare dso_local i32 @sg_page(%struct.scatterlist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
