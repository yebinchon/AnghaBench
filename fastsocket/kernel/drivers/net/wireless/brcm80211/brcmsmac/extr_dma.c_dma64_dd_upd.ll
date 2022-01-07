; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_dma.c_dma64_dd_upd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_dma.c_dma64_dd_upd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_info = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.dma64desc = type { i8*, i8*, i8*, i8* }

@D64_CTRL2_BC_MASK = common dso_local global i32 0, align 4
@PCI32ADDR_HIGH = common dso_local global i32 0, align 4
@PCI32ADDR_HIGH_SHIFT = common dso_local global i32 0, align 4
@D64_CTRL2_AE_SHIFT = common dso_local global i32 0, align 4
@D64_CTRL2_AE = common dso_local global i32 0, align 4
@DMA_CTRL_PEN = common dso_local global i32 0, align 4
@D64_CTRL2_PARITY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dma_info*, %struct.dma64desc*, i32, i64, i32*, i32)* @dma64_dd_upd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dma64_dd_upd(%struct.dma_info* %0, %struct.dma64desc* %1, i32 %2, i64 %3, i32* %4, i32 %5) #0 {
  %7 = alloca %struct.dma_info*, align 8
  %8 = alloca %struct.dma64desc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.dma_info* %0, %struct.dma_info** %7, align 8
  store %struct.dma64desc* %1, %struct.dma64desc** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  %15 = load i32, i32* %12, align 4
  %16 = load i32, i32* @D64_CTRL2_BC_MASK, align 4
  %17 = and i32 %15, %16
  store i32 %17, i32* %13, align 4
  %18 = load %struct.dma_info*, %struct.dma_info** %7, align 8
  %19 = getelementptr inbounds %struct.dma_info, %struct.dma_info* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %6
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @PCI32ADDR_HIGH, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %61, label %27

27:                                               ; preds = %22, %6
  %28 = load i32, i32* %9, align 4
  %29 = sext i32 %28 to i64
  %30 = load %struct.dma_info*, %struct.dma_info** %7, align 8
  %31 = getelementptr inbounds %struct.dma_info, %struct.dma_info* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %29, %32
  %34 = trunc i64 %33 to i32
  %35 = call i8* @cpu_to_le32(i32 %34)
  %36 = load %struct.dma64desc*, %struct.dma64desc** %8, align 8
  %37 = load i64, i64* %10, align 8
  %38 = getelementptr inbounds %struct.dma64desc, %struct.dma64desc* %36, i64 %37
  %39 = getelementptr inbounds %struct.dma64desc, %struct.dma64desc* %38, i32 0, i32 3
  store i8* %35, i8** %39, align 8
  %40 = load %struct.dma_info*, %struct.dma_info** %7, align 8
  %41 = getelementptr inbounds %struct.dma_info, %struct.dma_info* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i8* @cpu_to_le32(i32 %42)
  %44 = load %struct.dma64desc*, %struct.dma64desc** %8, align 8
  %45 = load i64, i64* %10, align 8
  %46 = getelementptr inbounds %struct.dma64desc, %struct.dma64desc* %44, i64 %45
  %47 = getelementptr inbounds %struct.dma64desc, %struct.dma64desc* %46, i32 0, i32 2
  store i8* %43, i8** %47, align 8
  %48 = load i32*, i32** %11, align 8
  %49 = load i32, i32* %48, align 4
  %50 = call i8* @cpu_to_le32(i32 %49)
  %51 = load %struct.dma64desc*, %struct.dma64desc** %8, align 8
  %52 = load i64, i64* %10, align 8
  %53 = getelementptr inbounds %struct.dma64desc, %struct.dma64desc* %51, i64 %52
  %54 = getelementptr inbounds %struct.dma64desc, %struct.dma64desc* %53, i32 0, i32 1
  store i8* %50, i8** %54, align 8
  %55 = load i32, i32* %13, align 4
  %56 = call i8* @cpu_to_le32(i32 %55)
  %57 = load %struct.dma64desc*, %struct.dma64desc** %8, align 8
  %58 = load i64, i64* %10, align 8
  %59 = getelementptr inbounds %struct.dma64desc, %struct.dma64desc* %57, i64 %58
  %60 = getelementptr inbounds %struct.dma64desc, %struct.dma64desc* %59, i32 0, i32 0
  store i8* %56, i8** %60, align 8
  br label %111

61:                                               ; preds = %22
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* @PCI32ADDR_HIGH, align 4
  %64 = and i32 %62, %63
  %65 = load i32, i32* @PCI32ADDR_HIGH_SHIFT, align 4
  %66 = ashr i32 %64, %65
  store i32 %66, i32* %14, align 4
  %67 = load i32, i32* @PCI32ADDR_HIGH, align 4
  %68 = xor i32 %67, -1
  %69 = load i32, i32* %9, align 4
  %70 = and i32 %69, %68
  store i32 %70, i32* %9, align 4
  %71 = load i32, i32* %14, align 4
  %72 = load i32, i32* @D64_CTRL2_AE_SHIFT, align 4
  %73 = shl i32 %71, %72
  %74 = load i32, i32* @D64_CTRL2_AE, align 4
  %75 = and i32 %73, %74
  %76 = load i32, i32* %13, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %13, align 4
  %78 = load i32, i32* %9, align 4
  %79 = sext i32 %78 to i64
  %80 = load %struct.dma_info*, %struct.dma_info** %7, align 8
  %81 = getelementptr inbounds %struct.dma_info, %struct.dma_info* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = add nsw i64 %79, %82
  %84 = trunc i64 %83 to i32
  %85 = call i8* @cpu_to_le32(i32 %84)
  %86 = load %struct.dma64desc*, %struct.dma64desc** %8, align 8
  %87 = load i64, i64* %10, align 8
  %88 = getelementptr inbounds %struct.dma64desc, %struct.dma64desc* %86, i64 %87
  %89 = getelementptr inbounds %struct.dma64desc, %struct.dma64desc* %88, i32 0, i32 3
  store i8* %85, i8** %89, align 8
  %90 = load %struct.dma_info*, %struct.dma_info** %7, align 8
  %91 = getelementptr inbounds %struct.dma_info, %struct.dma_info* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = call i8* @cpu_to_le32(i32 %92)
  %94 = load %struct.dma64desc*, %struct.dma64desc** %8, align 8
  %95 = load i64, i64* %10, align 8
  %96 = getelementptr inbounds %struct.dma64desc, %struct.dma64desc* %94, i64 %95
  %97 = getelementptr inbounds %struct.dma64desc, %struct.dma64desc* %96, i32 0, i32 2
  store i8* %93, i8** %97, align 8
  %98 = load i32*, i32** %11, align 8
  %99 = load i32, i32* %98, align 4
  %100 = call i8* @cpu_to_le32(i32 %99)
  %101 = load %struct.dma64desc*, %struct.dma64desc** %8, align 8
  %102 = load i64, i64* %10, align 8
  %103 = getelementptr inbounds %struct.dma64desc, %struct.dma64desc* %101, i64 %102
  %104 = getelementptr inbounds %struct.dma64desc, %struct.dma64desc* %103, i32 0, i32 1
  store i8* %100, i8** %104, align 8
  %105 = load i32, i32* %13, align 4
  %106 = call i8* @cpu_to_le32(i32 %105)
  %107 = load %struct.dma64desc*, %struct.dma64desc** %8, align 8
  %108 = load i64, i64* %10, align 8
  %109 = getelementptr inbounds %struct.dma64desc, %struct.dma64desc* %107, i64 %108
  %110 = getelementptr inbounds %struct.dma64desc, %struct.dma64desc* %109, i32 0, i32 0
  store i8* %106, i8** %110, align 8
  br label %111

111:                                              ; preds = %61, %27
  %112 = load %struct.dma_info*, %struct.dma_info** %7, align 8
  %113 = getelementptr inbounds %struct.dma_info, %struct.dma_info* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @DMA_CTRL_PEN, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %135

119:                                              ; preds = %111
  %120 = load %struct.dma64desc*, %struct.dma64desc** %8, align 8
  %121 = load i64, i64* %10, align 8
  %122 = getelementptr inbounds %struct.dma64desc, %struct.dma64desc* %120, i64 %121
  %123 = call i64 @dma64_dd_parity(%struct.dma64desc* %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %134

125:                                              ; preds = %119
  %126 = load i32, i32* %13, align 4
  %127 = load i32, i32* @D64_CTRL2_PARITY, align 4
  %128 = or i32 %126, %127
  %129 = call i8* @cpu_to_le32(i32 %128)
  %130 = load %struct.dma64desc*, %struct.dma64desc** %8, align 8
  %131 = load i64, i64* %10, align 8
  %132 = getelementptr inbounds %struct.dma64desc, %struct.dma64desc* %130, i64 %131
  %133 = getelementptr inbounds %struct.dma64desc, %struct.dma64desc* %132, i32 0, i32 0
  store i8* %129, i8** %133, align 8
  br label %134

134:                                              ; preds = %125, %119
  br label %135

135:                                              ; preds = %134, %111
  ret void
}

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i64 @dma64_dd_parity(%struct.dma64desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
