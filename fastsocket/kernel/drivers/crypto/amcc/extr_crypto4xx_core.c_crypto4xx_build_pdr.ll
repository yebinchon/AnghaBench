; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/amcc/extr_crypto4xx_core.c_crypto4xx_build_pdr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/amcc/extr_crypto4xx_core.c_crypto4xx_build_pdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto4xx_device = type { i64, i8*, i64, i8*, i64, %struct.TYPE_2__*, i8*, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.pd_uinfo = type { i64, i8*, i64, i8* }

@PPC4XX_NUM_PD = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto4xx_device*)* @crypto4xx_build_pdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypto4xx_build_pdr(%struct.crypto4xx_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.crypto4xx_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pd_uinfo*, align 8
  store %struct.crypto4xx_device* %0, %struct.crypto4xx_device** %3, align 8
  %6 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %3, align 8
  %7 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %6, i32 0, i32 5
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @PPC4XX_NUM_PD, align 4
  %12 = sext i32 %11 to i64
  %13 = mul i64 4, %12
  %14 = trunc i64 %13 to i32
  %15 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %3, align 8
  %16 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %15, i32 0, i32 7
  %17 = load i32, i32* @GFP_ATOMIC, align 4
  %18 = call i8* @dma_alloc_coherent(i32 %10, i32 %14, i64* %16, i32 %17)
  %19 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %3, align 8
  %20 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %19, i32 0, i32 6
  store i8* %18, i8** %20, align 8
  %21 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %3, align 8
  %22 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %21, i32 0, i32 6
  %23 = load i8*, i8** %22, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %1
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %166

28:                                               ; preds = %1
  %29 = load i32, i32* @PPC4XX_NUM_PD, align 4
  %30 = sext i32 %29 to i64
  %31 = mul i64 32, %30
  %32 = trunc i64 %31 to i32
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = call i64 @kzalloc(i32 %32, i32 %33)
  %35 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %3, align 8
  %36 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %35, i32 0, i32 4
  store i64 %34, i64* %36, align 8
  %37 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %3, align 8
  %38 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %37, i32 0, i32 4
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %60, label %41

41:                                               ; preds = %28
  %42 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %3, align 8
  %43 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %42, i32 0, i32 5
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @PPC4XX_NUM_PD, align 4
  %48 = sext i32 %47 to i64
  %49 = mul i64 4, %48
  %50 = trunc i64 %49 to i32
  %51 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %3, align 8
  %52 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %51, i32 0, i32 6
  %53 = load i8*, i8** %52, align 8
  %54 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %3, align 8
  %55 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %54, i32 0, i32 7
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @dma_free_coherent(i32 %46, i32 %50, i8* %53, i64 %56)
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %2, align 4
  br label %166

60:                                               ; preds = %28
  %61 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %3, align 8
  %62 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %61, i32 0, i32 6
  %63 = load i8*, i8** %62, align 8
  %64 = load i32, i32* @PPC4XX_NUM_PD, align 4
  %65 = sext i32 %64 to i64
  %66 = mul i64 4, %65
  %67 = trunc i64 %66 to i32
  %68 = call i32 @memset(i8* %63, i32 0, i32 %67)
  %69 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %3, align 8
  %70 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %69, i32 0, i32 5
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @PPC4XX_NUM_PD, align 4
  %75 = mul nsw i32 256, %74
  %76 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %3, align 8
  %77 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %76, i32 0, i32 2
  %78 = load i32, i32* @GFP_ATOMIC, align 4
  %79 = call i8* @dma_alloc_coherent(i32 %73, i32 %75, i64* %77, i32 %78)
  %80 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %3, align 8
  %81 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %80, i32 0, i32 3
  store i8* %79, i8** %81, align 8
  %82 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %3, align 8
  %83 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %82, i32 0, i32 3
  %84 = load i8*, i8** %83, align 8
  %85 = icmp ne i8* %84, null
  br i1 %85, label %89, label %86

86:                                               ; preds = %60
  %87 = load i32, i32* @ENOMEM, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %2, align 4
  br label %166

89:                                               ; preds = %60
  %90 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %3, align 8
  %91 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %90, i32 0, i32 5
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @PPC4XX_NUM_PD, align 4
  %96 = sext i32 %95 to i64
  %97 = mul i64 4, %96
  %98 = trunc i64 %97 to i32
  %99 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %3, align 8
  %100 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %99, i32 0, i32 0
  %101 = load i32, i32* @GFP_ATOMIC, align 4
  %102 = call i8* @dma_alloc_coherent(i32 %94, i32 %98, i64* %100, i32 %101)
  %103 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %3, align 8
  %104 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %103, i32 0, i32 1
  store i8* %102, i8** %104, align 8
  %105 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %3, align 8
  %106 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %105, i32 0, i32 1
  %107 = load i8*, i8** %106, align 8
  %108 = icmp ne i8* %107, null
  br i1 %108, label %112, label %109

109:                                              ; preds = %89
  %110 = load i32, i32* @ENOMEM, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %2, align 4
  br label %166

112:                                              ; preds = %89
  store i32 0, i32* %4, align 4
  br label %113

113:                                              ; preds = %162, %112
  %114 = load i32, i32* %4, align 4
  %115 = load i32, i32* @PPC4XX_NUM_PD, align 4
  %116 = icmp slt i32 %114, %115
  br i1 %116, label %117, label %165

117:                                              ; preds = %113
  %118 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %3, align 8
  %119 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %118, i32 0, i32 4
  %120 = load i64, i64* %119, align 8
  %121 = load i32, i32* %4, align 4
  %122 = sext i32 %121 to i64
  %123 = mul i64 32, %122
  %124 = add i64 %120, %123
  %125 = inttoptr i64 %124 to %struct.pd_uinfo*
  store %struct.pd_uinfo* %125, %struct.pd_uinfo** %5, align 8
  %126 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %3, align 8
  %127 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %126, i32 0, i32 3
  %128 = load i8*, i8** %127, align 8
  %129 = load i32, i32* %4, align 4
  %130 = mul nsw i32 256, %129
  %131 = sext i32 %130 to i64
  %132 = getelementptr i8, i8* %128, i64 %131
  %133 = load %struct.pd_uinfo*, %struct.pd_uinfo** %5, align 8
  %134 = getelementptr inbounds %struct.pd_uinfo, %struct.pd_uinfo* %133, i32 0, i32 3
  store i8* %132, i8** %134, align 8
  %135 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %3, align 8
  %136 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %135, i32 0, i32 2
  %137 = load i64, i64* %136, align 8
  %138 = load i32, i32* %4, align 4
  %139 = mul nsw i32 256, %138
  %140 = sext i32 %139 to i64
  %141 = add nsw i64 %137, %140
  %142 = load %struct.pd_uinfo*, %struct.pd_uinfo** %5, align 8
  %143 = getelementptr inbounds %struct.pd_uinfo, %struct.pd_uinfo* %142, i32 0, i32 2
  store i64 %141, i64* %143, align 8
  %144 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %3, align 8
  %145 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %144, i32 0, i32 1
  %146 = load i8*, i8** %145, align 8
  %147 = load i32, i32* %4, align 4
  %148 = sext i32 %147 to i64
  %149 = mul i64 4, %148
  %150 = getelementptr i8, i8* %146, i64 %149
  %151 = load %struct.pd_uinfo*, %struct.pd_uinfo** %5, align 8
  %152 = getelementptr inbounds %struct.pd_uinfo, %struct.pd_uinfo* %151, i32 0, i32 1
  store i8* %150, i8** %152, align 8
  %153 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %3, align 8
  %154 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = load i32, i32* %4, align 4
  %157 = sext i32 %156 to i64
  %158 = mul i64 4, %157
  %159 = add i64 %155, %158
  %160 = load %struct.pd_uinfo*, %struct.pd_uinfo** %5, align 8
  %161 = getelementptr inbounds %struct.pd_uinfo, %struct.pd_uinfo* %160, i32 0, i32 0
  store i64 %159, i64* %161, align 8
  br label %162

162:                                              ; preds = %117
  %163 = load i32, i32* %4, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %4, align 4
  br label %113

165:                                              ; preds = %113
  store i32 0, i32* %2, align 4
  br label %166

166:                                              ; preds = %165, %109, %86, %41, %25
  %167 = load i32, i32* %2, align 4
  ret i32 %167
}

declare dso_local i8* @dma_alloc_coherent(i32, i32, i64*, i32) #1

declare dso_local i64 @kzalloc(i32, i32) #1

declare dso_local i32 @dma_free_coherent(i32, i32, i8*, i64) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
