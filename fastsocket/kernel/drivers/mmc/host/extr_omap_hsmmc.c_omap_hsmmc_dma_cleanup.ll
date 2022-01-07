; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_omap_hsmmc.c_omap_hsmmc_dma_cleanup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_omap_hsmmc.c_omap_hsmmc_dma_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_hsmmc_host = type { i32, %struct.TYPE_2__*, i32, i32, i32, i64 }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.omap_hsmmc_host*, i32)* @omap_hsmmc_dma_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap_hsmmc_dma_cleanup(%struct.omap_hsmmc_host* %0, i32 %1) #0 {
  %3 = alloca %struct.omap_hsmmc_host*, align 8
  %4 = alloca i32, align 4
  store %struct.omap_hsmmc_host* %0, %struct.omap_hsmmc_host** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %7 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store i32 %5, i32* %9, align 4
  %10 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %11 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %10, i32 0, i32 5
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %47

14:                                               ; preds = %2
  %15 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %16 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, -1
  br i1 %18, label %19, label %47

19:                                               ; preds = %14
  %20 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %21 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @mmc_dev(i32 %22)
  %24 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %25 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %30 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %33 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %34 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = call i32 @omap_hsmmc_get_dma_dir(%struct.omap_hsmmc_host* %32, %struct.TYPE_2__* %35)
  %37 = call i32 @dma_unmap_sg(i32 %23, i32 %28, i32 %31, i32 %36)
  %38 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %39 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @omap_free_dma(i32 %40)
  %42 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %43 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %42, i32 0, i32 0
  store i32 -1, i32* %43, align 8
  %44 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %45 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %44, i32 0, i32 2
  %46 = call i32 @up(i32* %45)
  br label %47

47:                                               ; preds = %19, %14, %2
  %48 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %49 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %48, i32 0, i32 1
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %49, align 8
  ret void
}

declare dso_local i32 @dma_unmap_sg(i32, i32, i32, i32) #1

declare dso_local i32 @mmc_dev(i32) #1

declare dso_local i32 @omap_hsmmc_get_dma_dir(%struct.omap_hsmmc_host*, %struct.TYPE_2__*) #1

declare dso_local i32 @omap_free_dma(i32) #1

declare dso_local i32 @up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
