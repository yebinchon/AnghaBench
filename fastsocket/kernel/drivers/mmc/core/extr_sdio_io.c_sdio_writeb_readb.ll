; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/core/extr_sdio_io.c_sdio_writeb_readb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/core/extr_sdio_io.c_sdio_writeb_readb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdio_func = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sdio_writeb_readb(%struct.sdio_func* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.sdio_func*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.sdio_func* %0, %struct.sdio_func** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %11 = load %struct.sdio_func*, %struct.sdio_func** %5, align 8
  %12 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.sdio_func*, %struct.sdio_func** %5, align 8
  %15 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @mmc_io_rw_direct(i32 %13, i32 1, i32 %16, i32 %17, i32 %18, i32* %10)
  store i32 %19, i32* %9, align 4
  %20 = load i32*, i32** %8, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %4
  %23 = load i32, i32* %9, align 4
  %24 = load i32*, i32** %8, align 8
  store i32 %23, i32* %24, align 4
  br label %25

25:                                               ; preds = %22, %4
  %26 = load i32, i32* %9, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store i32 255, i32* %10, align 4
  br label %29

29:                                               ; preds = %28, %25
  %30 = load i32, i32* %10, align 4
  ret i32 %30
}

declare dso_local i32 @mmc_io_rw_direct(i32, i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
