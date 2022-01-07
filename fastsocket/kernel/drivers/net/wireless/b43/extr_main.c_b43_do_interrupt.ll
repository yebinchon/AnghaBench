; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_main.c_b43_do_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_main.c_b43_do_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { i32, i32*, i32 }

@B43_MMIO_GEN_IRQ_REASON = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@B43_MMIO_DMA0_REASON = common dso_local global i32 0, align 4
@B43_MMIO_DMA1_REASON = common dso_local global i32 0, align 4
@B43_MMIO_DMA2_REASON = common dso_local global i32 0, align 4
@B43_MMIO_DMA3_REASON = common dso_local global i32 0, align 4
@B43_MMIO_DMA4_REASON = common dso_local global i32 0, align 4
@B43_MMIO_GEN_IRQ_MASK = common dso_local global i32 0, align 4
@IRQ_WAKE_THREAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.b43_wldev*)* @b43_do_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b43_do_interrupt(%struct.b43_wldev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.b43_wldev*, align 8
  %4 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %3, align 8
  %5 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %6 = load i32, i32* @B43_MMIO_GEN_IRQ_REASON, align 4
  %7 = call i32 @b43_read32(%struct.b43_wldev* %5, i32 %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* @IRQ_NONE, align 4
  store i32 %11, i32* %2, align 4
  br label %114

12:                                               ; preds = %1
  %13 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %14 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = and i32 %16, %15
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %12
  %21 = load i32, i32* @IRQ_NONE, align 4
  store i32 %21, i32* %2, align 4
  br label %114

22:                                               ; preds = %12
  %23 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %24 = load i32, i32* @B43_MMIO_DMA0_REASON, align 4
  %25 = call i32 @b43_read32(%struct.b43_wldev* %23, i32 %24)
  %26 = and i32 %25, 130048
  %27 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %28 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  store i32 %26, i32* %30, align 4
  %31 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %32 = load i32, i32* @B43_MMIO_DMA1_REASON, align 4
  %33 = call i32 @b43_read32(%struct.b43_wldev* %31, i32 %32)
  %34 = and i32 %33, 56320
  %35 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %36 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 1
  store i32 %34, i32* %38, align 4
  %39 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %40 = load i32, i32* @B43_MMIO_DMA2_REASON, align 4
  %41 = call i32 @b43_read32(%struct.b43_wldev* %39, i32 %40)
  %42 = and i32 %41, 56320
  %43 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %44 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 2
  store i32 %42, i32* %46, align 4
  %47 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %48 = load i32, i32* @B43_MMIO_DMA3_REASON, align 4
  %49 = call i32 @b43_read32(%struct.b43_wldev* %47, i32 %48)
  %50 = and i32 %49, 121856
  %51 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %52 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 3
  store i32 %50, i32* %54, align 4
  %55 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %56 = load i32, i32* @B43_MMIO_DMA4_REASON, align 4
  %57 = call i32 @b43_read32(%struct.b43_wldev* %55, i32 %56)
  %58 = and i32 %57, 56320
  %59 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %60 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 4
  store i32 %58, i32* %62, align 4
  %63 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %64 = load i32, i32* @B43_MMIO_GEN_IRQ_REASON, align 4
  %65 = load i32, i32* %4, align 4
  %66 = call i32 @b43_write32(%struct.b43_wldev* %63, i32 %64, i32 %65)
  %67 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %68 = load i32, i32* @B43_MMIO_DMA0_REASON, align 4
  %69 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %70 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @b43_write32(%struct.b43_wldev* %67, i32 %68, i32 %73)
  %75 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %76 = load i32, i32* @B43_MMIO_DMA1_REASON, align 4
  %77 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %78 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @b43_write32(%struct.b43_wldev* %75, i32 %76, i32 %81)
  %83 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %84 = load i32, i32* @B43_MMIO_DMA2_REASON, align 4
  %85 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %86 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 2
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @b43_write32(%struct.b43_wldev* %83, i32 %84, i32 %89)
  %91 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %92 = load i32, i32* @B43_MMIO_DMA3_REASON, align 4
  %93 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %94 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %93, i32 0, i32 1
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 3
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @b43_write32(%struct.b43_wldev* %91, i32 %92, i32 %97)
  %99 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %100 = load i32, i32* @B43_MMIO_DMA4_REASON, align 4
  %101 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %102 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %101, i32 0, i32 1
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 4
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @b43_write32(%struct.b43_wldev* %99, i32 %100, i32 %105)
  %107 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %108 = load i32, i32* @B43_MMIO_GEN_IRQ_MASK, align 4
  %109 = call i32 @b43_write32(%struct.b43_wldev* %107, i32 %108, i32 0)
  %110 = load i32, i32* %4, align 4
  %111 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %112 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %111, i32 0, i32 2
  store i32 %110, i32* %112, align 8
  %113 = load i32, i32* @IRQ_WAKE_THREAD, align 4
  store i32 %113, i32* %2, align 4
  br label %114

114:                                              ; preds = %22, %20, %10
  %115 = load i32, i32* %2, align 4
  ret i32 %115
}

declare dso_local i32 @b43_read32(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_write32(%struct.b43_wldev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
