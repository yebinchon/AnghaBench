; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/async_tx/extr_async_raid6_recov.c___2data_recov_n.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/async_tx/extr_async_raid6_recov.c___2data_recov_n.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_async_tx_descriptor = type { i32 }
%struct.page = type { i32 }
%struct.async_submit_ctl = type { i32, i8*, i8*, i32* }

@ASYNC_TX_FENCE = common dso_local global i32 0, align 4
@ASYNC_TX_XOR_DROP_DST = common dso_local global i32 0, align 4
@raid6_gfexi = common dso_local global i8* null, align 8
@raid6_gfinv = common dso_local global i8* null, align 8
@raid6_gfexp = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dma_async_tx_descriptor* (i32, i64, i32, i32, %struct.page**, %struct.async_submit_ctl*)* @__2data_recov_n to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dma_async_tx_descriptor* @__2data_recov_n(i32 %0, i64 %1, i32 %2, i32 %3, %struct.page** %4, %struct.async_submit_ctl* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.page**, align 8
  %12 = alloca %struct.async_submit_ctl*, align 8
  %13 = alloca %struct.dma_async_tx_descriptor*, align 8
  %14 = alloca %struct.page*, align 8
  %15 = alloca %struct.page*, align 8
  %16 = alloca %struct.page*, align 8
  %17 = alloca %struct.page*, align 8
  %18 = alloca [2 x %struct.page*], align 16
  %19 = alloca [2 x i8], align 1
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  store i32 %0, i32* %7, align 4
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.page** %4, %struct.page*** %11, align 8
  store %struct.async_submit_ctl* %5, %struct.async_submit_ctl** %12, align 8
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %13, align 8
  %24 = load %struct.async_submit_ctl*, %struct.async_submit_ctl** %12, align 8
  %25 = getelementptr inbounds %struct.async_submit_ctl, %struct.async_submit_ctl* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %20, align 4
  %27 = load %struct.async_submit_ctl*, %struct.async_submit_ctl** %12, align 8
  %28 = getelementptr inbounds %struct.async_submit_ctl, %struct.async_submit_ctl* %27, i32 0, i32 3
  %29 = load i32*, i32** %28, align 8
  store i32* %29, i32** %21, align 8
  %30 = load %struct.async_submit_ctl*, %struct.async_submit_ctl** %12, align 8
  %31 = getelementptr inbounds %struct.async_submit_ctl, %struct.async_submit_ctl* %30, i32 0, i32 2
  %32 = load i8*, i8** %31, align 8
  store i8* %32, i8** %22, align 8
  %33 = load %struct.async_submit_ctl*, %struct.async_submit_ctl** %12, align 8
  %34 = getelementptr inbounds %struct.async_submit_ctl, %struct.async_submit_ctl* %33, i32 0, i32 1
  %35 = load i8*, i8** %34, align 8
  store i8* %35, i8** %23, align 8
  %36 = load %struct.page**, %struct.page*** %11, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sub nsw i32 %37, 2
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.page*, %struct.page** %36, i64 %39
  %41 = load %struct.page*, %struct.page** %40, align 8
  store %struct.page* %41, %struct.page** %14, align 8
  %42 = load %struct.page**, %struct.page*** %11, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sub nsw i32 %43, 1
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.page*, %struct.page** %42, i64 %45
  %47 = load %struct.page*, %struct.page** %46, align 8
  store %struct.page* %47, %struct.page** %15, align 8
  %48 = load %struct.page**, %struct.page*** %11, align 8
  %49 = load i32, i32* %9, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.page*, %struct.page** %48, i64 %50
  %52 = load %struct.page*, %struct.page** %51, align 8
  store %struct.page* %52, %struct.page** %16, align 8
  %53 = load %struct.page**, %struct.page*** %11, align 8
  %54 = load i32, i32* %9, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.page*, %struct.page** %53, i64 %55
  store %struct.page* null, %struct.page** %56, align 8
  %57 = load %struct.page*, %struct.page** %16, align 8
  %58 = load %struct.page**, %struct.page*** %11, align 8
  %59 = load i32, i32* %7, align 4
  %60 = sub nsw i32 %59, 2
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.page*, %struct.page** %58, i64 %61
  store %struct.page* %57, %struct.page** %62, align 8
  %63 = load %struct.page**, %struct.page*** %11, align 8
  %64 = load i32, i32* %10, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.page*, %struct.page** %63, i64 %65
  %67 = load %struct.page*, %struct.page** %66, align 8
  store %struct.page* %67, %struct.page** %17, align 8
  %68 = load %struct.page**, %struct.page*** %11, align 8
  %69 = load i32, i32* %10, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.page*, %struct.page** %68, i64 %70
  store %struct.page* null, %struct.page** %71, align 8
  %72 = load %struct.page*, %struct.page** %17, align 8
  %73 = load %struct.page**, %struct.page*** %11, align 8
  %74 = load i32, i32* %7, align 4
  %75 = sub nsw i32 %74, 1
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.page*, %struct.page** %73, i64 %76
  store %struct.page* %72, %struct.page** %77, align 8
  %78 = load %struct.async_submit_ctl*, %struct.async_submit_ctl** %12, align 8
  %79 = load i32, i32* @ASYNC_TX_FENCE, align 4
  %80 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %13, align 8
  %81 = load i8*, i8** %23, align 8
  %82 = call i32 @init_async_submit(%struct.async_submit_ctl* %78, i32 %79, %struct.dma_async_tx_descriptor* %80, i32* null, i8* null, i8* %81)
  %83 = load %struct.page**, %struct.page*** %11, align 8
  %84 = load i32, i32* %7, align 4
  %85 = load i64, i64* %8, align 8
  %86 = load %struct.async_submit_ctl*, %struct.async_submit_ctl** %12, align 8
  %87 = call %struct.dma_async_tx_descriptor* @async_gen_syndrome(%struct.page** %83, i32 0, i32 %84, i64 %85, %struct.async_submit_ctl* %86)
  store %struct.dma_async_tx_descriptor* %87, %struct.dma_async_tx_descriptor** %13, align 8
  %88 = load %struct.page*, %struct.page** %16, align 8
  %89 = load %struct.page**, %struct.page*** %11, align 8
  %90 = load i32, i32* %9, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.page*, %struct.page** %89, i64 %91
  store %struct.page* %88, %struct.page** %92, align 8
  %93 = load %struct.page*, %struct.page** %17, align 8
  %94 = load %struct.page**, %struct.page*** %11, align 8
  %95 = load i32, i32* %10, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.page*, %struct.page** %94, i64 %96
  store %struct.page* %93, %struct.page** %97, align 8
  %98 = load %struct.page*, %struct.page** %14, align 8
  %99 = load %struct.page**, %struct.page*** %11, align 8
  %100 = load i32, i32* %7, align 4
  %101 = sub nsw i32 %100, 2
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.page*, %struct.page** %99, i64 %102
  store %struct.page* %98, %struct.page** %103, align 8
  %104 = load %struct.page*, %struct.page** %15, align 8
  %105 = load %struct.page**, %struct.page*** %11, align 8
  %106 = load i32, i32* %7, align 4
  %107 = sub nsw i32 %106, 1
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.page*, %struct.page** %105, i64 %108
  store %struct.page* %104, %struct.page** %109, align 8
  %110 = load %struct.page*, %struct.page** %16, align 8
  %111 = getelementptr inbounds [2 x %struct.page*], [2 x %struct.page*]* %18, i64 0, i64 0
  store %struct.page* %110, %struct.page** %111, align 16
  %112 = load %struct.page*, %struct.page** %14, align 8
  %113 = getelementptr inbounds [2 x %struct.page*], [2 x %struct.page*]* %18, i64 0, i64 1
  store %struct.page* %112, %struct.page** %113, align 8
  %114 = load %struct.async_submit_ctl*, %struct.async_submit_ctl** %12, align 8
  %115 = load i32, i32* @ASYNC_TX_FENCE, align 4
  %116 = load i32, i32* @ASYNC_TX_XOR_DROP_DST, align 4
  %117 = or i32 %115, %116
  %118 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %13, align 8
  %119 = load i8*, i8** %23, align 8
  %120 = call i32 @init_async_submit(%struct.async_submit_ctl* %114, i32 %117, %struct.dma_async_tx_descriptor* %118, i32* null, i8* null, i8* %119)
  %121 = load %struct.page*, %struct.page** %16, align 8
  %122 = getelementptr inbounds [2 x %struct.page*], [2 x %struct.page*]* %18, i64 0, i64 0
  %123 = load i64, i64* %8, align 8
  %124 = load %struct.async_submit_ctl*, %struct.async_submit_ctl** %12, align 8
  %125 = call %struct.dma_async_tx_descriptor* @async_xor(%struct.page* %121, %struct.page** %122, i32 0, i32 2, i64 %123, %struct.async_submit_ctl* %124)
  store %struct.dma_async_tx_descriptor* %125, %struct.dma_async_tx_descriptor** %13, align 8
  %126 = load %struct.page*, %struct.page** %17, align 8
  %127 = getelementptr inbounds [2 x %struct.page*], [2 x %struct.page*]* %18, i64 0, i64 0
  store %struct.page* %126, %struct.page** %127, align 16
  %128 = load %struct.page*, %struct.page** %15, align 8
  %129 = getelementptr inbounds [2 x %struct.page*], [2 x %struct.page*]* %18, i64 0, i64 1
  store %struct.page* %128, %struct.page** %129, align 8
  %130 = load %struct.async_submit_ctl*, %struct.async_submit_ctl** %12, align 8
  %131 = load i32, i32* @ASYNC_TX_FENCE, align 4
  %132 = load i32, i32* @ASYNC_TX_XOR_DROP_DST, align 4
  %133 = or i32 %131, %132
  %134 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %13, align 8
  %135 = load i8*, i8** %23, align 8
  %136 = call i32 @init_async_submit(%struct.async_submit_ctl* %130, i32 %133, %struct.dma_async_tx_descriptor* %134, i32* null, i8* null, i8* %135)
  %137 = load %struct.page*, %struct.page** %17, align 8
  %138 = getelementptr inbounds [2 x %struct.page*], [2 x %struct.page*]* %18, i64 0, i64 0
  %139 = load i64, i64* %8, align 8
  %140 = load %struct.async_submit_ctl*, %struct.async_submit_ctl** %12, align 8
  %141 = call %struct.dma_async_tx_descriptor* @async_xor(%struct.page* %137, %struct.page** %138, i32 0, i32 2, i64 %139, %struct.async_submit_ctl* %140)
  store %struct.dma_async_tx_descriptor* %141, %struct.dma_async_tx_descriptor** %13, align 8
  %142 = load %struct.page*, %struct.page** %16, align 8
  %143 = getelementptr inbounds [2 x %struct.page*], [2 x %struct.page*]* %18, i64 0, i64 0
  store %struct.page* %142, %struct.page** %143, align 16
  %144 = load %struct.page*, %struct.page** %17, align 8
  %145 = getelementptr inbounds [2 x %struct.page*], [2 x %struct.page*]* %18, i64 0, i64 1
  store %struct.page* %144, %struct.page** %145, align 8
  %146 = load i8*, i8** @raid6_gfexi, align 8
  %147 = load i32, i32* %10, align 4
  %148 = load i32, i32* %9, align 4
  %149 = sub nsw i32 %147, %148
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i8, i8* %146, i64 %150
  %152 = load i8, i8* %151, align 1
  %153 = getelementptr inbounds [2 x i8], [2 x i8]* %19, i64 0, i64 0
  store i8 %152, i8* %153, align 1
  %154 = load i8*, i8** @raid6_gfinv, align 8
  %155 = load i64*, i64** @raid6_gfexp, align 8
  %156 = load i32, i32* %9, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i64, i64* %155, i64 %157
  %159 = load i64, i64* %158, align 8
  %160 = load i64*, i64** @raid6_gfexp, align 8
  %161 = load i32, i32* %10, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i64, i64* %160, i64 %162
  %164 = load i64, i64* %163, align 8
  %165 = xor i64 %159, %164
  %166 = getelementptr inbounds i8, i8* %154, i64 %165
  %167 = load i8, i8* %166, align 1
  %168 = getelementptr inbounds [2 x i8], [2 x i8]* %19, i64 0, i64 1
  store i8 %167, i8* %168, align 1
  %169 = load %struct.async_submit_ctl*, %struct.async_submit_ctl** %12, align 8
  %170 = load i32, i32* @ASYNC_TX_FENCE, align 4
  %171 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %13, align 8
  %172 = load i8*, i8** %23, align 8
  %173 = call i32 @init_async_submit(%struct.async_submit_ctl* %169, i32 %170, %struct.dma_async_tx_descriptor* %171, i32* null, i8* null, i8* %172)
  %174 = load %struct.page*, %struct.page** %17, align 8
  %175 = getelementptr inbounds [2 x %struct.page*], [2 x %struct.page*]* %18, i64 0, i64 0
  %176 = getelementptr inbounds [2 x i8], [2 x i8]* %19, i64 0, i64 0
  %177 = load i64, i64* %8, align 8
  %178 = load %struct.async_submit_ctl*, %struct.async_submit_ctl** %12, align 8
  %179 = call %struct.dma_async_tx_descriptor* @async_sum_product(%struct.page* %174, %struct.page** %175, i8* %176, i64 %177, %struct.async_submit_ctl* %178)
  store %struct.dma_async_tx_descriptor* %179, %struct.dma_async_tx_descriptor** %13, align 8
  %180 = load %struct.page*, %struct.page** %16, align 8
  %181 = getelementptr inbounds [2 x %struct.page*], [2 x %struct.page*]* %18, i64 0, i64 0
  store %struct.page* %180, %struct.page** %181, align 16
  %182 = load %struct.page*, %struct.page** %17, align 8
  %183 = getelementptr inbounds [2 x %struct.page*], [2 x %struct.page*]* %18, i64 0, i64 1
  store %struct.page* %182, %struct.page** %183, align 8
  %184 = load %struct.async_submit_ctl*, %struct.async_submit_ctl** %12, align 8
  %185 = load i32, i32* %20, align 4
  %186 = load i32, i32* @ASYNC_TX_XOR_DROP_DST, align 4
  %187 = or i32 %185, %186
  %188 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %13, align 8
  %189 = load i32*, i32** %21, align 8
  %190 = load i8*, i8** %22, align 8
  %191 = load i8*, i8** %23, align 8
  %192 = call i32 @init_async_submit(%struct.async_submit_ctl* %184, i32 %187, %struct.dma_async_tx_descriptor* %188, i32* %189, i8* %190, i8* %191)
  %193 = load %struct.page*, %struct.page** %16, align 8
  %194 = getelementptr inbounds [2 x %struct.page*], [2 x %struct.page*]* %18, i64 0, i64 0
  %195 = load i64, i64* %8, align 8
  %196 = load %struct.async_submit_ctl*, %struct.async_submit_ctl** %12, align 8
  %197 = call %struct.dma_async_tx_descriptor* @async_xor(%struct.page* %193, %struct.page** %194, i32 0, i32 2, i64 %195, %struct.async_submit_ctl* %196)
  store %struct.dma_async_tx_descriptor* %197, %struct.dma_async_tx_descriptor** %13, align 8
  %198 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %13, align 8
  ret %struct.dma_async_tx_descriptor* %198
}

declare dso_local i32 @init_async_submit(%struct.async_submit_ctl*, i32, %struct.dma_async_tx_descriptor*, i32*, i8*, i8*) #1

declare dso_local %struct.dma_async_tx_descriptor* @async_gen_syndrome(%struct.page**, i32, i32, i64, %struct.async_submit_ctl*) #1

declare dso_local %struct.dma_async_tx_descriptor* @async_xor(%struct.page*, %struct.page**, i32, i32, i64, %struct.async_submit_ctl*) #1

declare dso_local %struct.dma_async_tx_descriptor* @async_sum_product(%struct.page*, %struct.page**, i8*, i64, %struct.async_submit_ctl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
