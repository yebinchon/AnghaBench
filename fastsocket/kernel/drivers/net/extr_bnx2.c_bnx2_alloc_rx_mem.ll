; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_bnx2.c_bnx2_alloc_rx_mem.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_bnx2.c_bnx2_alloc_rx_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2 = type { i32, i32, i32, %struct.TYPE_2__*, i64, %struct.bnx2_napi* }
%struct.TYPE_2__ = type { i32 }
%struct.bnx2_napi = type { %struct.bnx2_rx_ring_info }
%struct.bnx2_rx_ring_info = type { i32**, i32*, i32*, i32**, i32*, i32* }

@SW_RXBD_RING_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@RXBD_RING_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@SW_RXPG_RING_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2*)* @bnx2_alloc_rx_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2_alloc_rx_mem(%struct.bnx2* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bnx2*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bnx2_napi*, align 8
  %6 = alloca %struct.bnx2_rx_ring_info*, align 8
  %7 = alloca i32, align 4
  store %struct.bnx2* %0, %struct.bnx2** %3, align 8
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %167, %1
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %11 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %170

14:                                               ; preds = %8
  %15 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %16 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %15, i32 0, i32 5
  %17 = load %struct.bnx2_napi*, %struct.bnx2_napi** %16, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.bnx2_napi, %struct.bnx2_napi* %17, i64 %19
  store %struct.bnx2_napi* %20, %struct.bnx2_napi** %5, align 8
  %21 = load %struct.bnx2_napi*, %struct.bnx2_napi** %5, align 8
  %22 = getelementptr inbounds %struct.bnx2_napi, %struct.bnx2_napi* %21, i32 0, i32 0
  store %struct.bnx2_rx_ring_info* %22, %struct.bnx2_rx_ring_info** %6, align 8
  %23 = load i32, i32* @SW_RXBD_RING_SIZE, align 4
  %24 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %25 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = mul nsw i32 %23, %26
  %28 = call i8* @vmalloc(i32 %27)
  %29 = bitcast i8* %28 to i32*
  %30 = load %struct.bnx2_rx_ring_info*, %struct.bnx2_rx_ring_info** %6, align 8
  %31 = getelementptr inbounds %struct.bnx2_rx_ring_info, %struct.bnx2_rx_ring_info* %30, i32 0, i32 5
  store i32* %29, i32** %31, align 8
  %32 = load %struct.bnx2_rx_ring_info*, %struct.bnx2_rx_ring_info** %6, align 8
  %33 = getelementptr inbounds %struct.bnx2_rx_ring_info, %struct.bnx2_rx_ring_info* %32, i32 0, i32 5
  %34 = load i32*, i32** %33, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %14
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %171

39:                                               ; preds = %14
  %40 = load %struct.bnx2_rx_ring_info*, %struct.bnx2_rx_ring_info** %6, align 8
  %41 = getelementptr inbounds %struct.bnx2_rx_ring_info, %struct.bnx2_rx_ring_info* %40, i32 0, i32 5
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* @SW_RXBD_RING_SIZE, align 4
  %44 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %45 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = mul nsw i32 %43, %46
  %48 = call i32 @memset(i32* %42, i32 0, i32 %47)
  store i32 0, i32* %7, align 4
  br label %49

49:                                               ; preds = %88, %39
  %50 = load i32, i32* %7, align 4
  %51 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %52 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp slt i32 %50, %53
  br i1 %54, label %55, label %91

55:                                               ; preds = %49
  %56 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %57 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %56, i32 0, i32 3
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* @RXBD_RING_SIZE, align 4
  %61 = load %struct.bnx2_rx_ring_info*, %struct.bnx2_rx_ring_info** %6, align 8
  %62 = getelementptr inbounds %struct.bnx2_rx_ring_info, %struct.bnx2_rx_ring_info* %61, i32 0, i32 4
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %7, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* @GFP_KERNEL, align 4
  %68 = call i8* @dma_alloc_coherent(i32* %59, i32 %60, i32* %66, i32 %67)
  %69 = bitcast i8* %68 to i32*
  %70 = load %struct.bnx2_rx_ring_info*, %struct.bnx2_rx_ring_info** %6, align 8
  %71 = getelementptr inbounds %struct.bnx2_rx_ring_info, %struct.bnx2_rx_ring_info* %70, i32 0, i32 3
  %72 = load i32**, i32*** %71, align 8
  %73 = load i32, i32* %7, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32*, i32** %72, i64 %74
  store i32* %69, i32** %75, align 8
  %76 = load %struct.bnx2_rx_ring_info*, %struct.bnx2_rx_ring_info** %6, align 8
  %77 = getelementptr inbounds %struct.bnx2_rx_ring_info, %struct.bnx2_rx_ring_info* %76, i32 0, i32 3
  %78 = load i32**, i32*** %77, align 8
  %79 = load i32, i32* %7, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32*, i32** %78, i64 %80
  %82 = load i32*, i32** %81, align 8
  %83 = icmp eq i32* %82, null
  br i1 %83, label %84, label %87

84:                                               ; preds = %55
  %85 = load i32, i32* @ENOMEM, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %2, align 4
  br label %171

87:                                               ; preds = %55
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %7, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %7, align 4
  br label %49

91:                                               ; preds = %49
  %92 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %93 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %92, i32 0, i32 4
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %123

96:                                               ; preds = %91
  %97 = load i32, i32* @SW_RXPG_RING_SIZE, align 4
  %98 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %99 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = mul nsw i32 %97, %100
  %102 = call i8* @vmalloc(i32 %101)
  %103 = bitcast i8* %102 to i32*
  %104 = load %struct.bnx2_rx_ring_info*, %struct.bnx2_rx_ring_info** %6, align 8
  %105 = getelementptr inbounds %struct.bnx2_rx_ring_info, %struct.bnx2_rx_ring_info* %104, i32 0, i32 2
  store i32* %103, i32** %105, align 8
  %106 = load %struct.bnx2_rx_ring_info*, %struct.bnx2_rx_ring_info** %6, align 8
  %107 = getelementptr inbounds %struct.bnx2_rx_ring_info, %struct.bnx2_rx_ring_info* %106, i32 0, i32 2
  %108 = load i32*, i32** %107, align 8
  %109 = icmp eq i32* %108, null
  br i1 %109, label %110, label %113

110:                                              ; preds = %96
  %111 = load i32, i32* @ENOMEM, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %2, align 4
  br label %171

113:                                              ; preds = %96
  %114 = load %struct.bnx2_rx_ring_info*, %struct.bnx2_rx_ring_info** %6, align 8
  %115 = getelementptr inbounds %struct.bnx2_rx_ring_info, %struct.bnx2_rx_ring_info* %114, i32 0, i32 2
  %116 = load i32*, i32** %115, align 8
  %117 = load i32, i32* @SW_RXPG_RING_SIZE, align 4
  %118 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %119 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = mul nsw i32 %117, %120
  %122 = call i32 @memset(i32* %116, i32 0, i32 %121)
  br label %123

123:                                              ; preds = %113, %91
  store i32 0, i32* %7, align 4
  br label %124

124:                                              ; preds = %163, %123
  %125 = load i32, i32* %7, align 4
  %126 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %127 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = icmp slt i32 %125, %128
  br i1 %129, label %130, label %166

130:                                              ; preds = %124
  %131 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %132 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %131, i32 0, i32 3
  %133 = load %struct.TYPE_2__*, %struct.TYPE_2__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 0
  %135 = load i32, i32* @RXBD_RING_SIZE, align 4
  %136 = load %struct.bnx2_rx_ring_info*, %struct.bnx2_rx_ring_info** %6, align 8
  %137 = getelementptr inbounds %struct.bnx2_rx_ring_info, %struct.bnx2_rx_ring_info* %136, i32 0, i32 1
  %138 = load i32*, i32** %137, align 8
  %139 = load i32, i32* %7, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %138, i64 %140
  %142 = load i32, i32* @GFP_KERNEL, align 4
  %143 = call i8* @dma_alloc_coherent(i32* %134, i32 %135, i32* %141, i32 %142)
  %144 = bitcast i8* %143 to i32*
  %145 = load %struct.bnx2_rx_ring_info*, %struct.bnx2_rx_ring_info** %6, align 8
  %146 = getelementptr inbounds %struct.bnx2_rx_ring_info, %struct.bnx2_rx_ring_info* %145, i32 0, i32 0
  %147 = load i32**, i32*** %146, align 8
  %148 = load i32, i32* %7, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32*, i32** %147, i64 %149
  store i32* %144, i32** %150, align 8
  %151 = load %struct.bnx2_rx_ring_info*, %struct.bnx2_rx_ring_info** %6, align 8
  %152 = getelementptr inbounds %struct.bnx2_rx_ring_info, %struct.bnx2_rx_ring_info* %151, i32 0, i32 0
  %153 = load i32**, i32*** %152, align 8
  %154 = load i32, i32* %7, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32*, i32** %153, i64 %155
  %157 = load i32*, i32** %156, align 8
  %158 = icmp eq i32* %157, null
  br i1 %158, label %159, label %162

159:                                              ; preds = %130
  %160 = load i32, i32* @ENOMEM, align 4
  %161 = sub nsw i32 0, %160
  store i32 %161, i32* %2, align 4
  br label %171

162:                                              ; preds = %130
  br label %163

163:                                              ; preds = %162
  %164 = load i32, i32* %7, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %7, align 4
  br label %124

166:                                              ; preds = %124
  br label %167

167:                                              ; preds = %166
  %168 = load i32, i32* %4, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %4, align 4
  br label %8

170:                                              ; preds = %8
  store i32 0, i32* %2, align 4
  br label %171

171:                                              ; preds = %170, %159, %110, %84, %36
  %172 = load i32, i32* %2, align 4
  ret i32 %172
}

declare dso_local i8* @vmalloc(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i8* @dma_alloc_coherent(i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
