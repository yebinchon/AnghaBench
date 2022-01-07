; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/extr_shdma.c_sh_dmae_prep_memcpy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/extr_shdma.c_sh_dmae_prep_memcpy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_async_tx_descriptor = type { i64, i32 }
%struct.dma_chan = type { i32 }
%struct.sh_dmae_chan = type { i32 }
%struct.sh_desc = type { %struct.dma_async_tx_descriptor, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64 }

@.str = private unnamed_addr constant [36 x i8] c"No free memory for link descriptor\0A\00", align 1
@SH_DMA_TCR_MAX = common dso_local global i64 0, align 8
@DESC_NCOMP = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dma_async_tx_descriptor* (%struct.dma_chan*, i64, i64, i64, i64)* @sh_dmae_prep_memcpy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dma_async_tx_descriptor* @sh_dmae_prep_memcpy(%struct.dma_chan* %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.dma_async_tx_descriptor*, align 8
  %7 = alloca %struct.dma_chan*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.sh_dmae_chan*, align 8
  %13 = alloca %struct.sh_desc*, align 8
  %14 = alloca %struct.sh_desc*, align 8
  %15 = alloca %struct.sh_desc*, align 8
  %16 = alloca i64, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store %struct.sh_desc* null, %struct.sh_desc** %13, align 8
  store %struct.sh_desc* null, %struct.sh_desc** %14, align 8
  %17 = load %struct.dma_chan*, %struct.dma_chan** %7, align 8
  %18 = icmp ne %struct.dma_chan* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %5
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %6, align 8
  br label %98

20:                                               ; preds = %5
  %21 = load i64, i64* %10, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %20
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %6, align 8
  br label %98

24:                                               ; preds = %20
  %25 = load %struct.dma_chan*, %struct.dma_chan** %7, align 8
  %26 = call %struct.sh_dmae_chan* @to_sh_chan(%struct.dma_chan* %25)
  store %struct.sh_dmae_chan* %26, %struct.sh_dmae_chan** %12, align 8
  br label %27

27:                                               ; preds = %79, %24
  %28 = load %struct.sh_dmae_chan*, %struct.sh_dmae_chan** %12, align 8
  %29 = call %struct.sh_desc* @sh_dmae_get_desc(%struct.sh_dmae_chan* %28)
  store %struct.sh_desc* %29, %struct.sh_desc** %15, align 8
  %30 = load %struct.sh_desc*, %struct.sh_desc** %15, align 8
  %31 = icmp ne %struct.sh_desc* %30, null
  br i1 %31, label %37, label %32

32:                                               ; preds = %27
  %33 = load %struct.sh_dmae_chan*, %struct.sh_dmae_chan** %12, align 8
  %34 = getelementptr inbounds %struct.sh_dmae_chan, %struct.sh_dmae_chan* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @dev_err(i32 %35, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %94

37:                                               ; preds = %27
  %38 = load i64, i64* %10, align 8
  %39 = load i64, i64* @SH_DMA_TCR_MAX, align 8
  %40 = call i64 @min(i64 %38, i64 %39)
  store i64 %40, i64* %16, align 8
  %41 = load i64, i64* %9, align 8
  %42 = load %struct.sh_desc*, %struct.sh_desc** %15, align 8
  %43 = getelementptr inbounds %struct.sh_desc, %struct.sh_desc* %42, i32 0, i32 4
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  store i64 %41, i64* %44, align 8
  %45 = load i64, i64* %8, align 8
  %46 = load %struct.sh_desc*, %struct.sh_desc** %15, align 8
  %47 = getelementptr inbounds %struct.sh_desc, %struct.sh_desc* %46, i32 0, i32 4
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  store i64 %45, i64* %48, align 8
  %49 = load i64, i64* %16, align 8
  %50 = load %struct.sh_desc*, %struct.sh_desc** %15, align 8
  %51 = getelementptr inbounds %struct.sh_desc, %struct.sh_desc* %50, i32 0, i32 4
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 2
  store i64 %49, i64* %52, align 8
  %53 = load %struct.sh_desc*, %struct.sh_desc** %13, align 8
  %54 = icmp ne %struct.sh_desc* %53, null
  br i1 %54, label %57, label %55

55:                                               ; preds = %37
  %56 = load %struct.sh_desc*, %struct.sh_desc** %15, align 8
  store %struct.sh_desc* %56, %struct.sh_desc** %13, align 8
  br label %57

57:                                               ; preds = %55, %37
  %58 = load i32, i32* @DESC_NCOMP, align 4
  %59 = load %struct.sh_desc*, %struct.sh_desc** %15, align 8
  %60 = getelementptr inbounds %struct.sh_desc, %struct.sh_desc* %59, i32 0, i32 3
  store i32 %58, i32* %60, align 8
  %61 = load %struct.sh_desc*, %struct.sh_desc** %15, align 8
  %62 = getelementptr inbounds %struct.sh_desc, %struct.sh_desc* %61, i32 0, i32 0
  %63 = call i32 @async_tx_ack(%struct.dma_async_tx_descriptor* %62)
  %64 = load %struct.sh_desc*, %struct.sh_desc** %15, align 8
  store %struct.sh_desc* %64, %struct.sh_desc** %14, align 8
  %65 = load i64, i64* %16, align 8
  %66 = load i64, i64* %10, align 8
  %67 = sub i64 %66, %65
  store i64 %67, i64* %10, align 8
  %68 = load i64, i64* %16, align 8
  %69 = load i64, i64* %9, align 8
  %70 = add i64 %69, %68
  store i64 %70, i64* %9, align 8
  %71 = load i64, i64* %16, align 8
  %72 = load i64, i64* %8, align 8
  %73 = add i64 %72, %71
  store i64 %73, i64* %8, align 8
  %74 = load %struct.sh_desc*, %struct.sh_desc** %15, align 8
  %75 = getelementptr inbounds %struct.sh_desc, %struct.sh_desc* %74, i32 0, i32 2
  %76 = load %struct.sh_desc*, %struct.sh_desc** %13, align 8
  %77 = getelementptr inbounds %struct.sh_desc, %struct.sh_desc* %76, i32 0, i32 1
  %78 = call i32 @list_add_tail(i32* %75, i32* %77)
  br label %79

79:                                               ; preds = %57
  %80 = load i64, i64* %10, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %27, label %82

82:                                               ; preds = %79
  %83 = load i64, i64* %11, align 8
  %84 = load %struct.sh_desc*, %struct.sh_desc** %15, align 8
  %85 = getelementptr inbounds %struct.sh_desc, %struct.sh_desc* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %85, i32 0, i32 0
  store i64 %83, i64* %86, align 8
  %87 = load i32, i32* @EBUSY, align 4
  %88 = sub nsw i32 0, %87
  %89 = load %struct.sh_desc*, %struct.sh_desc** %15, align 8
  %90 = getelementptr inbounds %struct.sh_desc, %struct.sh_desc* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %90, i32 0, i32 1
  store i32 %88, i32* %91, align 8
  %92 = load %struct.sh_desc*, %struct.sh_desc** %13, align 8
  %93 = getelementptr inbounds %struct.sh_desc, %struct.sh_desc* %92, i32 0, i32 0
  store %struct.dma_async_tx_descriptor* %93, %struct.dma_async_tx_descriptor** %6, align 8
  br label %98

94:                                               ; preds = %32
  %95 = load %struct.sh_dmae_chan*, %struct.sh_dmae_chan** %12, align 8
  %96 = load %struct.sh_desc*, %struct.sh_desc** %13, align 8
  %97 = call i32 @sh_dmae_put_desc(%struct.sh_dmae_chan* %95, %struct.sh_desc* %96)
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %6, align 8
  br label %98

98:                                               ; preds = %94, %82, %23, %19
  %99 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %6, align 8
  ret %struct.dma_async_tx_descriptor* %99
}

declare dso_local %struct.sh_dmae_chan* @to_sh_chan(%struct.dma_chan*) #1

declare dso_local %struct.sh_desc* @sh_dmae_get_desc(%struct.sh_dmae_chan*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @async_tx_ack(%struct.dma_async_tx_descriptor*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @sh_dmae_put_desc(%struct.sh_dmae_chan*, %struct.sh_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
