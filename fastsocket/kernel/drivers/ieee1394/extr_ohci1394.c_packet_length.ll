; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_ohci1394.c_packet_length.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_ohci1394.c_packet_length.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_rcv_ctx = type { i64, i32, i32, i32** }

@DMA_CTX_ASYNC_REQ = common dso_local global i64 0, align 8
@DMA_CTX_ASYNC_RESP = common dso_local global i64 0, align 8
@TCODE_SIZE = common dso_local global i32* null, align 8
@DMA_CTX_ISO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_rcv_ctx*, i32, i32*, i32, i8, i32)* @packet_length to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @packet_length(%struct.dma_rcv_ctx* %0, i32 %1, i32* %2, i32 %3, i8 zeroext %4, i32 %5) #0 {
  %7 = alloca %struct.dma_rcv_ctx*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.dma_rcv_ctx* %0, %struct.dma_rcv_ctx** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8 %4, i8* %11, align 1
  store i32 %5, i32* %12, align 4
  store i32 -1, i32* %13, align 4
  %14 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %7, align 8
  %15 = getelementptr inbounds %struct.dma_rcv_ctx, %struct.dma_rcv_ctx* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @DMA_CTX_ASYNC_REQ, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %25, label %19

19:                                               ; preds = %6
  %20 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %7, align 8
  %21 = getelementptr inbounds %struct.dma_rcv_ctx, %struct.dma_rcv_ctx* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @DMA_CTX_ASYNC_RESP, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %77

25:                                               ; preds = %19, %6
  %26 = load i32*, i32** @TCODE_SIZE, align 8
  %27 = load i8, i8* %11, align 1
  %28 = zext i8 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %13, align 4
  %31 = load i32, i32* %13, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %76

33:                                               ; preds = %25
  %34 = load i32, i32* %10, align 4
  %35 = add nsw i32 %34, 12
  %36 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %7, align 8
  %37 = getelementptr inbounds %struct.dma_rcv_ctx, %struct.dma_rcv_ctx* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = icmp sge i32 %35, %38
  br i1 %39, label %40, label %66

40:                                               ; preds = %33
  %41 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %7, align 8
  %42 = getelementptr inbounds %struct.dma_rcv_ctx, %struct.dma_rcv_ctx* %41, i32 0, i32 3
  %43 = load i32**, i32*** %42, align 8
  %44 = load i32, i32* %8, align 4
  %45 = add nsw i32 %44, 1
  %46 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %7, align 8
  %47 = getelementptr inbounds %struct.dma_rcv_ctx, %struct.dma_rcv_ctx* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = srem i32 %45, %48
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32*, i32** %43, i64 %50
  %52 = load i32*, i32** %51, align 8
  %53 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %7, align 8
  %54 = getelementptr inbounds %struct.dma_rcv_ctx, %struct.dma_rcv_ctx* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* %10, align 4
  %57 = sub nsw i32 %55, %56
  %58 = ashr i32 %57, 2
  %59 = sub nsw i32 3, %58
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %52, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %12, align 4
  %64 = call i32 @cond_le32_to_cpu(i32 %62, i32 %63)
  %65 = ashr i32 %64, 16
  store i32 %65, i32* %13, align 4
  br label %73

66:                                               ; preds = %33
  %67 = load i32*, i32** %9, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 3
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %12, align 4
  %71 = call i32 @cond_le32_to_cpu(i32 %69, i32 %70)
  %72 = ashr i32 %71, 16
  store i32 %72, i32* %13, align 4
  br label %73

73:                                               ; preds = %66, %40
  %74 = load i32, i32* %13, align 4
  %75 = add nsw i32 %74, 20
  store i32 %75, i32* %13, align 4
  br label %76

76:                                               ; preds = %73, %25
  br label %92

77:                                               ; preds = %19
  %78 = load %struct.dma_rcv_ctx*, %struct.dma_rcv_ctx** %7, align 8
  %79 = getelementptr inbounds %struct.dma_rcv_ctx, %struct.dma_rcv_ctx* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @DMA_CTX_ISO, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %91

83:                                               ; preds = %77
  %84 = load i32*, i32** %9, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %12, align 4
  %88 = call i32 @cond_le32_to_cpu(i32 %86, i32 %87)
  %89 = ashr i32 %88, 16
  %90 = add nsw i32 %89, 8
  store i32 %90, i32* %13, align 4
  br label %91

91:                                               ; preds = %83, %77
  br label %92

92:                                               ; preds = %91, %76
  %93 = load i32, i32* %13, align 4
  %94 = icmp sgt i32 %93, 0
  br i1 %94, label %95, label %105

95:                                               ; preds = %92
  %96 = load i32, i32* %13, align 4
  %97 = srem i32 %96, 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %95
  %100 = load i32, i32* %13, align 4
  %101 = srem i32 %100, 4
  %102 = sub nsw i32 4, %101
  %103 = load i32, i32* %13, align 4
  %104 = add nsw i32 %103, %102
  store i32 %104, i32* %13, align 4
  br label %105

105:                                              ; preds = %99, %95, %92
  %106 = load i32, i32* %13, align 4
  ret i32 %106
}

declare dso_local i32 @cond_le32_to_cpu(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
