; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-pnx4008/extr_dma.c_pnx4008_dma_parse_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-pnx4008/extr_dma.c_pnx4008_dma_parse_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnx4008_dma_ch_config = type { i64, i64, i64, i64, i64, i64, i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@FC_MEM2MEM_DMA = common dso_local global i32 0, align 4
@FC_MEM2PER_DMA = common dso_local global i32 0, align 4
@FC_PER2MEM_DMA = common dso_local global i32 0, align 4
@FC_PER2PER_DMA = common dso_local global i32 0, align 4
@FC_PER2PER_DPER = common dso_local global i32 0, align 4
@FC_MEM2PER_PER = common dso_local global i32 0, align 4
@FC_PER2MEM_PER = common dso_local global i32 0, align 4
@FC_PER2PER_SPER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pnx4008_dma_parse_config(i64 %0, %struct.pnx4008_dma_ch_config* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.pnx4008_dma_ch_config*, align 8
  %5 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store %struct.pnx4008_dma_ch_config* %1, %struct.pnx4008_dma_ch_config** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.pnx4008_dma_ch_config*, %struct.pnx4008_dma_ch_config** %4, align 8
  %7 = icmp ne %struct.pnx4008_dma_ch_config* %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = load i32, i32* @EINVAL, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %5, align 4
  br label %91

11:                                               ; preds = %2
  %12 = load i64, i64* %3, align 8
  %13 = lshr i64 %12, 1
  store i64 %13, i64* %3, align 8
  %14 = load i64, i64* %3, align 8
  %15 = and i64 %14, 31
  %16 = load %struct.pnx4008_dma_ch_config*, %struct.pnx4008_dma_ch_config** %4, align 8
  %17 = getelementptr inbounds %struct.pnx4008_dma_ch_config, %struct.pnx4008_dma_ch_config* %16, i32 0, i32 0
  store i64 %15, i64* %17, align 8
  %18 = load i64, i64* %3, align 8
  %19 = lshr i64 %18, 5
  store i64 %19, i64* %3, align 8
  %20 = load i64, i64* %3, align 8
  %21 = and i64 %20, 31
  %22 = load %struct.pnx4008_dma_ch_config*, %struct.pnx4008_dma_ch_config** %4, align 8
  %23 = getelementptr inbounds %struct.pnx4008_dma_ch_config, %struct.pnx4008_dma_ch_config* %22, i32 0, i32 1
  store i64 %21, i64* %23, align 8
  %24 = load i64, i64* %3, align 8
  %25 = lshr i64 %24, 5
  store i64 %25, i64* %3, align 8
  %26 = load i64, i64* %3, align 8
  %27 = and i64 %26, 7
  switch i64 %27, label %60 [
    i64 0, label %28
    i64 1, label %32
    i64 2, label %36
    i64 3, label %40
    i64 4, label %44
    i64 5, label %48
    i64 6, label %52
    i64 7, label %56
  ]

28:                                               ; preds = %11
  %29 = load i32, i32* @FC_MEM2MEM_DMA, align 4
  %30 = load %struct.pnx4008_dma_ch_config*, %struct.pnx4008_dma_ch_config** %4, align 8
  %31 = getelementptr inbounds %struct.pnx4008_dma_ch_config, %struct.pnx4008_dma_ch_config* %30, i32 0, i32 7
  store i32 %29, i32* %31, align 8
  br label %60

32:                                               ; preds = %11
  %33 = load i32, i32* @FC_MEM2PER_DMA, align 4
  %34 = load %struct.pnx4008_dma_ch_config*, %struct.pnx4008_dma_ch_config** %4, align 8
  %35 = getelementptr inbounds %struct.pnx4008_dma_ch_config, %struct.pnx4008_dma_ch_config* %34, i32 0, i32 7
  store i32 %33, i32* %35, align 8
  br label %60

36:                                               ; preds = %11
  %37 = load i32, i32* @FC_PER2MEM_DMA, align 4
  %38 = load %struct.pnx4008_dma_ch_config*, %struct.pnx4008_dma_ch_config** %4, align 8
  %39 = getelementptr inbounds %struct.pnx4008_dma_ch_config, %struct.pnx4008_dma_ch_config* %38, i32 0, i32 7
  store i32 %37, i32* %39, align 8
  br label %60

40:                                               ; preds = %11
  %41 = load i32, i32* @FC_PER2PER_DMA, align 4
  %42 = load %struct.pnx4008_dma_ch_config*, %struct.pnx4008_dma_ch_config** %4, align 8
  %43 = getelementptr inbounds %struct.pnx4008_dma_ch_config, %struct.pnx4008_dma_ch_config* %42, i32 0, i32 7
  store i32 %41, i32* %43, align 8
  br label %60

44:                                               ; preds = %11
  %45 = load i32, i32* @FC_PER2PER_DPER, align 4
  %46 = load %struct.pnx4008_dma_ch_config*, %struct.pnx4008_dma_ch_config** %4, align 8
  %47 = getelementptr inbounds %struct.pnx4008_dma_ch_config, %struct.pnx4008_dma_ch_config* %46, i32 0, i32 7
  store i32 %45, i32* %47, align 8
  br label %60

48:                                               ; preds = %11
  %49 = load i32, i32* @FC_MEM2PER_PER, align 4
  %50 = load %struct.pnx4008_dma_ch_config*, %struct.pnx4008_dma_ch_config** %4, align 8
  %51 = getelementptr inbounds %struct.pnx4008_dma_ch_config, %struct.pnx4008_dma_ch_config* %50, i32 0, i32 7
  store i32 %49, i32* %51, align 8
  br label %60

52:                                               ; preds = %11
  %53 = load i32, i32* @FC_PER2MEM_PER, align 4
  %54 = load %struct.pnx4008_dma_ch_config*, %struct.pnx4008_dma_ch_config** %4, align 8
  %55 = getelementptr inbounds %struct.pnx4008_dma_ch_config, %struct.pnx4008_dma_ch_config* %54, i32 0, i32 7
  store i32 %53, i32* %55, align 8
  br label %60

56:                                               ; preds = %11
  %57 = load i32, i32* @FC_PER2PER_SPER, align 4
  %58 = load %struct.pnx4008_dma_ch_config*, %struct.pnx4008_dma_ch_config** %4, align 8
  %59 = getelementptr inbounds %struct.pnx4008_dma_ch_config, %struct.pnx4008_dma_ch_config* %58, i32 0, i32 7
  store i32 %57, i32* %59, align 8
  br label %60

60:                                               ; preds = %56, %11, %52, %48, %44, %40, %36, %32, %28
  %61 = load i64, i64* %3, align 8
  %62 = lshr i64 %61, 3
  store i64 %62, i64* %3, align 8
  %63 = load i64, i64* %3, align 8
  %64 = and i64 %63, 1
  %65 = load %struct.pnx4008_dma_ch_config*, %struct.pnx4008_dma_ch_config** %4, align 8
  %66 = getelementptr inbounds %struct.pnx4008_dma_ch_config, %struct.pnx4008_dma_ch_config* %65, i32 0, i32 2
  store i64 %64, i64* %66, align 8
  %67 = load i64, i64* %3, align 8
  %68 = lshr i64 %67, 1
  store i64 %68, i64* %3, align 8
  %69 = load i64, i64* %3, align 8
  %70 = and i64 %69, 1
  %71 = load %struct.pnx4008_dma_ch_config*, %struct.pnx4008_dma_ch_config** %4, align 8
  %72 = getelementptr inbounds %struct.pnx4008_dma_ch_config, %struct.pnx4008_dma_ch_config* %71, i32 0, i32 3
  store i64 %70, i64* %72, align 8
  %73 = load i64, i64* %3, align 8
  %74 = lshr i64 %73, 1
  store i64 %74, i64* %3, align 8
  %75 = load i64, i64* %3, align 8
  %76 = and i64 %75, 1
  %77 = load %struct.pnx4008_dma_ch_config*, %struct.pnx4008_dma_ch_config** %4, align 8
  %78 = getelementptr inbounds %struct.pnx4008_dma_ch_config, %struct.pnx4008_dma_ch_config* %77, i32 0, i32 4
  store i64 %76, i64* %78, align 8
  %79 = load i64, i64* %3, align 8
  %80 = lshr i64 %79, 1
  store i64 %80, i64* %3, align 8
  %81 = load i64, i64* %3, align 8
  %82 = and i64 %81, 1
  %83 = load %struct.pnx4008_dma_ch_config*, %struct.pnx4008_dma_ch_config** %4, align 8
  %84 = getelementptr inbounds %struct.pnx4008_dma_ch_config, %struct.pnx4008_dma_ch_config* %83, i32 0, i32 5
  store i64 %82, i64* %84, align 8
  %85 = load i64, i64* %3, align 8
  %86 = lshr i64 %85, 1
  store i64 %86, i64* %3, align 8
  %87 = load i64, i64* %3, align 8
  %88 = and i64 %87, 1
  %89 = load %struct.pnx4008_dma_ch_config*, %struct.pnx4008_dma_ch_config** %4, align 8
  %90 = getelementptr inbounds %struct.pnx4008_dma_ch_config, %struct.pnx4008_dma_ch_config* %89, i32 0, i32 6
  store i64 %88, i64* %90, align 8
  br label %91

91:                                               ; preds = %60, %8
  %92 = load i32, i32* %5, align 4
  ret i32 %92
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
