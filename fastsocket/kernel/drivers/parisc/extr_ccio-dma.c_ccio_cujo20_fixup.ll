; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/parisc/extr_ccio-dma.c_ccio_cujo20_fixup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/parisc/extr_ccio-dma.c_ccio_cujo20_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parisc_device = type { i32 }
%struct.ioc = type { i32, i32*, i32 }

@CUJO_20_STEP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ccio_cujo20_fixup(%struct.parisc_device* %0, i32 %1) #0 {
  %3 = alloca %struct.parisc_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.parisc_device*, align 8
  %7 = alloca %struct.ioc*, align 8
  %8 = alloca i32*, align 8
  store %struct.parisc_device* %0, %struct.parisc_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.parisc_device*, %struct.parisc_device** %3, align 8
  %10 = call %struct.parisc_device* @parisc_parent(%struct.parisc_device* %9)
  store %struct.parisc_device* %10, %struct.parisc_device** %6, align 8
  %11 = load %struct.parisc_device*, %struct.parisc_device** %6, align 8
  %12 = call %struct.ioc* @ccio_get_iommu(%struct.parisc_device* %11)
  store %struct.ioc* %12, %struct.ioc** %7, align 8
  %13 = load %struct.ioc*, %struct.ioc** %7, align 8
  %14 = getelementptr inbounds %struct.ioc, %struct.ioc* %13, i32 0, i32 0
  store i32 1, i32* %14, align 8
  %15 = load %struct.ioc*, %struct.ioc** %7, align 8
  %16 = getelementptr inbounds %struct.ioc, %struct.ioc* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %8, align 8
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @PDIR_INDEX(i32 %18)
  %20 = ashr i32 %19, 3
  store i32 %20, i32* %5, align 4
  br label %21

21:                                               ; preds = %27, %2
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.ioc*, %struct.ioc** %7, align 8
  %24 = getelementptr inbounds %struct.ioc, %struct.ioc* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = icmp ult i32 %22, %25
  br i1 %26, label %27, label %39

27:                                               ; preds = %21
  %28 = load i32*, i32** %8, align 8
  %29 = load i32, i32* %5, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, 255
  store i32 %33, i32* %31, align 4
  %34 = load i32, i32* @CUJO_20_STEP, align 4
  %35 = call i32 @PDIR_INDEX(i32 %34)
  %36 = ashr i32 %35, 3
  %37 = load i32, i32* %5, align 4
  %38 = add i32 %37, %36
  store i32 %38, i32* %5, align 4
  br label %21

39:                                               ; preds = %21
  ret void
}

declare dso_local %struct.parisc_device* @parisc_parent(%struct.parisc_device*) #1

declare dso_local %struct.ioc* @ccio_get_iommu(%struct.parisc_device*) #1

declare dso_local i32 @PDIR_INDEX(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
