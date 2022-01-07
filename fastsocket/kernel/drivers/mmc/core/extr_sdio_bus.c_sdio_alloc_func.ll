; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/core/extr_sdio_bus.c_sdio_alloc_func.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/core/extr_sdio_bus.c_sdio_alloc_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdio_func = type { %struct.TYPE_2__, %struct.mmc_card* }
%struct.TYPE_2__ = type { i32, i32*, i32* }
%struct.mmc_card = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@sdio_bus_type = common dso_local global i32 0, align 4
@sdio_release_func = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sdio_func* @sdio_alloc_func(%struct.mmc_card* %0) #0 {
  %2 = alloca %struct.sdio_func*, align 8
  %3 = alloca %struct.mmc_card*, align 8
  %4 = alloca %struct.sdio_func*, align 8
  store %struct.mmc_card* %0, %struct.mmc_card** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.sdio_func* @kzalloc(i32 32, i32 %5)
  store %struct.sdio_func* %6, %struct.sdio_func** %4, align 8
  %7 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %8 = icmp ne %struct.sdio_func* %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  %12 = call %struct.sdio_func* @ERR_PTR(i32 %11)
  store %struct.sdio_func* %12, %struct.sdio_func** %2, align 8
  br label %33

13:                                               ; preds = %1
  %14 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %15 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %16 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %15, i32 0, i32 1
  store %struct.mmc_card* %14, %struct.mmc_card** %16, align 8
  %17 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %18 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %17, i32 0, i32 0
  %19 = call i32 @device_initialize(%struct.TYPE_2__* %18)
  %20 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %21 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %20, i32 0, i32 0
  %22 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %23 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 2
  store i32* %21, i32** %24, align 8
  %25 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %26 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  store i32* @sdio_bus_type, i32** %27, align 8
  %28 = load i32, i32* @sdio_release_func, align 4
  %29 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %30 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store i32 %28, i32* %31, align 8
  %32 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  store %struct.sdio_func* %32, %struct.sdio_func** %2, align 8
  br label %33

33:                                               ; preds = %13, %9
  %34 = load %struct.sdio_func*, %struct.sdio_func** %2, align 8
  ret %struct.sdio_func* %34
}

declare dso_local %struct.sdio_func* @kzalloc(i32, i32) #1

declare dso_local %struct.sdio_func* @ERR_PTR(i32) #1

declare dso_local i32 @device_initialize(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
