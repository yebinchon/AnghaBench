; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_main.c_brcms_b_attach_dmapio.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_main.c_brcms_b_attach_dmapio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_c_info = type { %struct.brcms_hardware* }
%struct.brcms_hardware = type { i32, i32**, %struct.TYPE_2__*, i32**, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"wl%d\00", align 1
@DMA_TX = common dso_local global i32 0, align 4
@DMA_RX = common dso_local global i32 0, align 4
@NTXD = common dso_local global i32 0, align 4
@NRXD = common dso_local global i32 0, align 4
@RXBUFSZ = common dso_local global i32 0, align 4
@NRXBUFPOST = common dso_local global i32 0, align 4
@BRCMS_HWRXOFF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"wl%d: wlc_attach: dma_attach failed\0A\00", align 1
@NFIFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"&txavail\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcms_c_info*, i32, i32)* @brcms_b_attach_dmapio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcms_b_attach_dmapio(%struct.brcms_c_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.brcms_c_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [8 x i8], align 1
  %10 = alloca i32, align 4
  %11 = alloca %struct.brcms_hardware*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.brcms_c_info* %0, %struct.brcms_c_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %10, align 4
  %14 = load %struct.brcms_c_info*, %struct.brcms_c_info** %5, align 8
  %15 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %14, i32 0, i32 0
  %16 = load %struct.brcms_hardware*, %struct.brcms_hardware** %15, align 8
  store %struct.brcms_hardware* %16, %struct.brcms_hardware** %11, align 8
  %17 = load %struct.brcms_hardware*, %struct.brcms_hardware** %11, align 8
  %18 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %12, align 4
  %20 = getelementptr inbounds [8 x i8], [8 x i8]* %9, i64 0, i64 0
  %21 = load i32, i32* %12, align 4
  %22 = call i32 @snprintf(i8* %20, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load %struct.brcms_hardware*, %struct.brcms_hardware** %11, align 8
  %24 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %23, i32 0, i32 3
  %25 = load i32**, i32*** %24, align 8
  %26 = getelementptr inbounds i32*, i32** %25, i64 0
  %27 = load i32*, i32** %26, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %171

29:                                               ; preds = %3
  store i32 0, i32* %13, align 4
  %30 = getelementptr inbounds [8 x i8], [8 x i8]* %9, i64 0, i64 0
  %31 = load %struct.brcms_c_info*, %struct.brcms_c_info** %5, align 8
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load i32, i32* @DMA_TX, align 4
  %36 = call i32 @dmareg(i32 %35, i32 0)
  br label %38

37:                                               ; preds = %29
  br label %38

38:                                               ; preds = %37, %34
  %39 = phi i32 [ %36, %34 ], [ 0, %37 ]
  %40 = load i32, i32* @DMA_RX, align 4
  %41 = call i32 @dmareg(i32 %40, i32 0)
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = load i32, i32* @NTXD, align 4
  br label %47

46:                                               ; preds = %38
  br label %47

47:                                               ; preds = %46, %44
  %48 = phi i32 [ %45, %44 ], [ 0, %46 ]
  %49 = load i32, i32* @NRXD, align 4
  %50 = load i32, i32* @RXBUFSZ, align 4
  %51 = load i32, i32* @NRXBUFPOST, align 4
  %52 = load i32, i32* @BRCMS_HWRXOFF, align 4
  %53 = call i8* @dma_attach(i8* %30, %struct.brcms_c_info* %31, i32 %39, i32 %41, i32 %48, i32 %49, i32 %50, i32 -1, i32 %51, i32 %52)
  %54 = bitcast i8* %53 to i32*
  %55 = load %struct.brcms_hardware*, %struct.brcms_hardware** %11, align 8
  %56 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %55, i32 0, i32 3
  %57 = load i32**, i32*** %56, align 8
  %58 = getelementptr inbounds i32*, i32** %57, i64 0
  store i32* %54, i32** %58, align 8
  %59 = load %struct.brcms_hardware*, %struct.brcms_hardware** %11, align 8
  %60 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %59, i32 0, i32 3
  %61 = load i32**, i32*** %60, align 8
  %62 = getelementptr inbounds i32*, i32** %61, i64 0
  %63 = load i32*, i32** %62, align 8
  %64 = icmp eq i32* null, %63
  %65 = zext i1 %64 to i32
  %66 = load i32, i32* %13, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %13, align 4
  %68 = getelementptr inbounds [8 x i8], [8 x i8]* %9, i64 0, i64 0
  %69 = load %struct.brcms_c_info*, %struct.brcms_c_info** %5, align 8
  %70 = load i32, i32* @DMA_TX, align 4
  %71 = call i32 @dmareg(i32 %70, i32 1)
  %72 = load i32, i32* @NTXD, align 4
  %73 = call i8* @dma_attach(i8* %68, %struct.brcms_c_info* %69, i32 %71, i32 0, i32 %72, i32 0, i32 0, i32 -1, i32 0, i32 0)
  %74 = bitcast i8* %73 to i32*
  %75 = load %struct.brcms_hardware*, %struct.brcms_hardware** %11, align 8
  %76 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %75, i32 0, i32 3
  %77 = load i32**, i32*** %76, align 8
  %78 = getelementptr inbounds i32*, i32** %77, i64 1
  store i32* %74, i32** %78, align 8
  %79 = load %struct.brcms_hardware*, %struct.brcms_hardware** %11, align 8
  %80 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %79, i32 0, i32 3
  %81 = load i32**, i32*** %80, align 8
  %82 = getelementptr inbounds i32*, i32** %81, i64 1
  %83 = load i32*, i32** %82, align 8
  %84 = icmp eq i32* null, %83
  %85 = zext i1 %84 to i32
  %86 = load i32, i32* %13, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %13, align 4
  %88 = getelementptr inbounds [8 x i8], [8 x i8]* %9, i64 0, i64 0
  %89 = load %struct.brcms_c_info*, %struct.brcms_c_info** %5, align 8
  %90 = load i32, i32* @DMA_TX, align 4
  %91 = call i32 @dmareg(i32 %90, i32 2)
  %92 = load i32, i32* @NTXD, align 4
  %93 = call i8* @dma_attach(i8* %88, %struct.brcms_c_info* %89, i32 %91, i32 0, i32 %92, i32 0, i32 0, i32 -1, i32 0, i32 0)
  %94 = bitcast i8* %93 to i32*
  %95 = load %struct.brcms_hardware*, %struct.brcms_hardware** %11, align 8
  %96 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %95, i32 0, i32 3
  %97 = load i32**, i32*** %96, align 8
  %98 = getelementptr inbounds i32*, i32** %97, i64 2
  store i32* %94, i32** %98, align 8
  %99 = load %struct.brcms_hardware*, %struct.brcms_hardware** %11, align 8
  %100 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %99, i32 0, i32 3
  %101 = load i32**, i32*** %100, align 8
  %102 = getelementptr inbounds i32*, i32** %101, i64 2
  %103 = load i32*, i32** %102, align 8
  %104 = icmp eq i32* null, %103
  %105 = zext i1 %104 to i32
  %106 = load i32, i32* %13, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %13, align 4
  %108 = getelementptr inbounds [8 x i8], [8 x i8]* %9, i64 0, i64 0
  %109 = load %struct.brcms_c_info*, %struct.brcms_c_info** %5, align 8
  %110 = load i32, i32* @DMA_TX, align 4
  %111 = call i32 @dmareg(i32 %110, i32 3)
  %112 = load i32, i32* @NTXD, align 4
  %113 = call i8* @dma_attach(i8* %108, %struct.brcms_c_info* %109, i32 %111, i32 0, i32 %112, i32 0, i32 0, i32 -1, i32 0, i32 0)
  %114 = bitcast i8* %113 to i32*
  %115 = load %struct.brcms_hardware*, %struct.brcms_hardware** %11, align 8
  %116 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %115, i32 0, i32 3
  %117 = load i32**, i32*** %116, align 8
  %118 = getelementptr inbounds i32*, i32** %117, i64 3
  store i32* %114, i32** %118, align 8
  %119 = load %struct.brcms_hardware*, %struct.brcms_hardware** %11, align 8
  %120 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %119, i32 0, i32 3
  %121 = load i32**, i32*** %120, align 8
  %122 = getelementptr inbounds i32*, i32** %121, i64 3
  %123 = load i32*, i32** %122, align 8
  %124 = icmp eq i32* null, %123
  %125 = zext i1 %124 to i32
  %126 = load i32, i32* %13, align 4
  %127 = or i32 %126, %125
  store i32 %127, i32* %13, align 4
  %128 = load i32, i32* %13, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %136

130:                                              ; preds = %47
  %131 = load %struct.brcms_hardware*, %struct.brcms_hardware** %11, align 8
  %132 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %131, i32 0, i32 4
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* %12, align 4
  %135 = call i32 @brcms_err(i32 %133, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %134)
  store i32 0, i32* %4, align 4
  br label %180

136:                                              ; preds = %47
  store i32 0, i32* %8, align 4
  br label %137

137:                                              ; preds = %167, %136
  %138 = load i32, i32* %8, align 4
  %139 = load i32, i32* @NFIFO, align 4
  %140 = icmp slt i32 %138, %139
  br i1 %140, label %141, label %170

141:                                              ; preds = %137
  %142 = load %struct.brcms_hardware*, %struct.brcms_hardware** %11, align 8
  %143 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %142, i32 0, i32 3
  %144 = load i32**, i32*** %143, align 8
  %145 = load i32, i32* %8, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32*, i32** %144, i64 %146
  %148 = load i32*, i32** %147, align 8
  %149 = icmp ne i32* %148, null
  br i1 %149, label %150, label %166

150:                                              ; preds = %141
  %151 = load %struct.brcms_hardware*, %struct.brcms_hardware** %11, align 8
  %152 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %151, i32 0, i32 3
  %153 = load i32**, i32*** %152, align 8
  %154 = load i32, i32* %8, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32*, i32** %153, i64 %155
  %157 = load i32*, i32** %156, align 8
  %158 = call i64 @dma_getvar(i32* %157, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %159 = inttoptr i64 %158 to i32*
  %160 = load %struct.brcms_hardware*, %struct.brcms_hardware** %11, align 8
  %161 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %160, i32 0, i32 1
  %162 = load i32**, i32*** %161, align 8
  %163 = load i32, i32* %8, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32*, i32** %162, i64 %164
  store i32* %159, i32** %165, align 8
  br label %166

166:                                              ; preds = %150, %141
  br label %167

167:                                              ; preds = %166
  %168 = load i32, i32* %8, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %8, align 4
  br label %137

170:                                              ; preds = %137
  br label %171

171:                                              ; preds = %170, %3
  %172 = load %struct.brcms_c_info*, %struct.brcms_c_info** %5, align 8
  %173 = load %struct.brcms_hardware*, %struct.brcms_hardware** %11, align 8
  %174 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %173, i32 0, i32 2
  %175 = load %struct.TYPE_2__*, %struct.TYPE_2__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = load i32, i32* %10, align 4
  %179 = call i32 @brcms_c_mhfdef(%struct.brcms_c_info* %172, i32 %177, i32 %178)
  store i32 1, i32* %4, align 4
  br label %180

180:                                              ; preds = %171, %130
  %181 = load i32, i32* %4, align 4
  ret i32 %181
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i8* @dma_attach(i8*, %struct.brcms_c_info*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @dmareg(i32, i32) #1

declare dso_local i32 @brcms_err(i32, i8*, i32) #1

declare dso_local i64 @dma_getvar(i32*, i8*) #1

declare dso_local i32 @brcms_c_mhfdef(%struct.brcms_c_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
