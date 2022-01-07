; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/async_tx/extr_async_raid6_recov.c___2data_recov_5.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/async_tx/extr_async_raid6_recov.c___2data_recov_5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_async_tx_descriptor = type { i32 }
%struct.page = type { i32 }
%struct.async_submit_ctl = type { i32, i8*, i8*, i32* }

@ASYNC_TX_FENCE = common dso_local global i32 0, align 4
@raid6_gfexp = common dso_local global i64* null, align 8
@ASYNC_TX_XOR_DROP_DST = common dso_local global i32 0, align 4
@raid6_gfexi = common dso_local global i8* null, align 8
@raid6_gfinv = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dma_async_tx_descriptor* (i32, i64, i32, i32, %struct.page**, %struct.async_submit_ctl*)* @__2data_recov_5 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dma_async_tx_descriptor* @__2data_recov_5(i32 %0, i64 %1, i32 %2, i32 %3, %struct.page** %4, %struct.async_submit_ctl* %5) #0 {
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
  %18 = alloca %struct.page*, align 8
  %19 = alloca [2 x %struct.page*], align 16
  %20 = alloca [2 x i8], align 1
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.page** %4, %struct.page*** %11, align 8
  store %struct.async_submit_ctl* %5, %struct.async_submit_ctl** %12, align 8
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %13, align 8
  %28 = load %struct.async_submit_ctl*, %struct.async_submit_ctl** %12, align 8
  %29 = getelementptr inbounds %struct.async_submit_ctl, %struct.async_submit_ctl* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %21, align 4
  %31 = load %struct.async_submit_ctl*, %struct.async_submit_ctl** %12, align 8
  %32 = getelementptr inbounds %struct.async_submit_ctl, %struct.async_submit_ctl* %31, i32 0, i32 3
  %33 = load i32*, i32** %32, align 8
  store i32* %33, i32** %22, align 8
  %34 = load %struct.async_submit_ctl*, %struct.async_submit_ctl** %12, align 8
  %35 = getelementptr inbounds %struct.async_submit_ctl, %struct.async_submit_ctl* %34, i32 0, i32 2
  %36 = load i8*, i8** %35, align 8
  store i8* %36, i8** %23, align 8
  %37 = load %struct.async_submit_ctl*, %struct.async_submit_ctl** %12, align 8
  %38 = getelementptr inbounds %struct.async_submit_ctl, %struct.async_submit_ctl* %37, i32 0, i32 1
  %39 = load i8*, i8** %38, align 8
  store i8* %39, i8** %24, align 8
  store i32 0, i32* %25, align 4
  store i32 -1, i32* %26, align 4
  store i32 0, i32* %27, align 4
  br label %40

40:                                               ; preds = %66, %6
  %41 = load i32, i32* %27, align 4
  %42 = load i32, i32* %7, align 4
  %43 = sub nsw i32 %42, 2
  %44 = icmp slt i32 %41, %43
  br i1 %44, label %45, label %69

45:                                               ; preds = %40
  %46 = load %struct.page**, %struct.page*** %11, align 8
  %47 = load i32, i32* %27, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.page*, %struct.page** %46, i64 %48
  %50 = load %struct.page*, %struct.page** %49, align 8
  %51 = icmp eq %struct.page* %50, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %45
  br label %66

53:                                               ; preds = %45
  %54 = load i32, i32* %27, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %61, label %57

57:                                               ; preds = %53
  %58 = load i32, i32* %27, align 4
  %59 = load i32, i32* %10, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %57, %53
  br label %66

62:                                               ; preds = %57
  %63 = load i32, i32* %27, align 4
  store i32 %63, i32* %26, align 4
  %64 = load i32, i32* %25, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %25, align 4
  br label %66

66:                                               ; preds = %62, %61, %52
  %67 = load i32, i32* %27, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %27, align 4
  br label %40

69:                                               ; preds = %40
  %70 = load i32, i32* %25, align 4
  %71 = icmp sgt i32 %70, 1
  %72 = zext i1 %71 to i32
  %73 = call i32 @BUG_ON(i32 %72)
  %74 = load %struct.page**, %struct.page*** %11, align 8
  %75 = load i32, i32* %7, align 4
  %76 = sub nsw i32 %75, 2
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.page*, %struct.page** %74, i64 %77
  %79 = load %struct.page*, %struct.page** %78, align 8
  store %struct.page* %79, %struct.page** %14, align 8
  %80 = load %struct.page**, %struct.page*** %11, align 8
  %81 = load i32, i32* %7, align 4
  %82 = sub nsw i32 %81, 1
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.page*, %struct.page** %80, i64 %83
  %85 = load %struct.page*, %struct.page** %84, align 8
  store %struct.page* %85, %struct.page** %15, align 8
  %86 = load %struct.page**, %struct.page*** %11, align 8
  %87 = load i32, i32* %26, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.page*, %struct.page** %86, i64 %88
  %90 = load %struct.page*, %struct.page** %89, align 8
  store %struct.page* %90, %struct.page** %16, align 8
  %91 = load %struct.page**, %struct.page*** %11, align 8
  %92 = load i32, i32* %9, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.page*, %struct.page** %91, i64 %93
  %95 = load %struct.page*, %struct.page** %94, align 8
  store %struct.page* %95, %struct.page** %17, align 8
  %96 = load %struct.page**, %struct.page*** %11, align 8
  %97 = load i32, i32* %10, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.page*, %struct.page** %96, i64 %98
  %100 = load %struct.page*, %struct.page** %99, align 8
  store %struct.page* %100, %struct.page** %18, align 8
  %101 = load %struct.async_submit_ctl*, %struct.async_submit_ctl** %12, align 8
  %102 = load i32, i32* @ASYNC_TX_FENCE, align 4
  %103 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %13, align 8
  %104 = load i8*, i8** %24, align 8
  %105 = call i32 @init_async_submit(%struct.async_submit_ctl* %101, i32 %102, %struct.dma_async_tx_descriptor* %103, i32* null, i8* null, i8* %104)
  %106 = load %struct.page*, %struct.page** %17, align 8
  %107 = load %struct.page*, %struct.page** %16, align 8
  %108 = load i64, i64* %8, align 8
  %109 = load %struct.async_submit_ctl*, %struct.async_submit_ctl** %12, align 8
  %110 = call %struct.dma_async_tx_descriptor* @async_memcpy(%struct.page* %106, %struct.page* %107, i32 0, i32 0, i64 %108, %struct.async_submit_ctl* %109)
  store %struct.dma_async_tx_descriptor* %110, %struct.dma_async_tx_descriptor** %13, align 8
  %111 = load %struct.async_submit_ctl*, %struct.async_submit_ctl** %12, align 8
  %112 = load i32, i32* @ASYNC_TX_FENCE, align 4
  %113 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %13, align 8
  %114 = load i8*, i8** %24, align 8
  %115 = call i32 @init_async_submit(%struct.async_submit_ctl* %111, i32 %112, %struct.dma_async_tx_descriptor* %113, i32* null, i8* null, i8* %114)
  %116 = load %struct.page*, %struct.page** %18, align 8
  %117 = load %struct.page*, %struct.page** %16, align 8
  %118 = load i64*, i64** @raid6_gfexp, align 8
  %119 = load i32, i32* %26, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i64, i64* %118, i64 %120
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* %8, align 8
  %124 = load %struct.async_submit_ctl*, %struct.async_submit_ctl** %12, align 8
  %125 = call %struct.dma_async_tx_descriptor* @async_mult(%struct.page* %116, %struct.page* %117, i64 %122, i64 %123, %struct.async_submit_ctl* %124)
  store %struct.dma_async_tx_descriptor* %125, %struct.dma_async_tx_descriptor** %13, align 8
  %126 = load %struct.page*, %struct.page** %17, align 8
  %127 = getelementptr inbounds [2 x %struct.page*], [2 x %struct.page*]* %19, i64 0, i64 0
  store %struct.page* %126, %struct.page** %127, align 16
  %128 = load %struct.page*, %struct.page** %14, align 8
  %129 = getelementptr inbounds [2 x %struct.page*], [2 x %struct.page*]* %19, i64 0, i64 1
  store %struct.page* %128, %struct.page** %129, align 8
  %130 = load %struct.async_submit_ctl*, %struct.async_submit_ctl** %12, align 8
  %131 = load i32, i32* @ASYNC_TX_FENCE, align 4
  %132 = load i32, i32* @ASYNC_TX_XOR_DROP_DST, align 4
  %133 = or i32 %131, %132
  %134 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %13, align 8
  %135 = load i8*, i8** %24, align 8
  %136 = call i32 @init_async_submit(%struct.async_submit_ctl* %130, i32 %133, %struct.dma_async_tx_descriptor* %134, i32* null, i8* null, i8* %135)
  %137 = load %struct.page*, %struct.page** %17, align 8
  %138 = getelementptr inbounds [2 x %struct.page*], [2 x %struct.page*]* %19, i64 0, i64 0
  %139 = load i64, i64* %8, align 8
  %140 = load %struct.async_submit_ctl*, %struct.async_submit_ctl** %12, align 8
  %141 = call %struct.dma_async_tx_descriptor* @async_xor(%struct.page* %137, %struct.page** %138, i32 0, i32 2, i64 %139, %struct.async_submit_ctl* %140)
  store %struct.dma_async_tx_descriptor* %141, %struct.dma_async_tx_descriptor** %13, align 8
  %142 = load %struct.page*, %struct.page** %18, align 8
  %143 = getelementptr inbounds [2 x %struct.page*], [2 x %struct.page*]* %19, i64 0, i64 0
  store %struct.page* %142, %struct.page** %143, align 16
  %144 = load %struct.page*, %struct.page** %15, align 8
  %145 = getelementptr inbounds [2 x %struct.page*], [2 x %struct.page*]* %19, i64 0, i64 1
  store %struct.page* %144, %struct.page** %145, align 8
  %146 = load %struct.async_submit_ctl*, %struct.async_submit_ctl** %12, align 8
  %147 = load i32, i32* @ASYNC_TX_FENCE, align 4
  %148 = load i32, i32* @ASYNC_TX_XOR_DROP_DST, align 4
  %149 = or i32 %147, %148
  %150 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %13, align 8
  %151 = load i8*, i8** %24, align 8
  %152 = call i32 @init_async_submit(%struct.async_submit_ctl* %146, i32 %149, %struct.dma_async_tx_descriptor* %150, i32* null, i8* null, i8* %151)
  %153 = load %struct.page*, %struct.page** %18, align 8
  %154 = getelementptr inbounds [2 x %struct.page*], [2 x %struct.page*]* %19, i64 0, i64 0
  %155 = load i64, i64* %8, align 8
  %156 = load %struct.async_submit_ctl*, %struct.async_submit_ctl** %12, align 8
  %157 = call %struct.dma_async_tx_descriptor* @async_xor(%struct.page* %153, %struct.page** %154, i32 0, i32 2, i64 %155, %struct.async_submit_ctl* %156)
  store %struct.dma_async_tx_descriptor* %157, %struct.dma_async_tx_descriptor** %13, align 8
  %158 = load %struct.page*, %struct.page** %17, align 8
  %159 = getelementptr inbounds [2 x %struct.page*], [2 x %struct.page*]* %19, i64 0, i64 0
  store %struct.page* %158, %struct.page** %159, align 16
  %160 = load %struct.page*, %struct.page** %18, align 8
  %161 = getelementptr inbounds [2 x %struct.page*], [2 x %struct.page*]* %19, i64 0, i64 1
  store %struct.page* %160, %struct.page** %161, align 8
  %162 = load i8*, i8** @raid6_gfexi, align 8
  %163 = load i32, i32* %10, align 4
  %164 = load i32, i32* %9, align 4
  %165 = sub nsw i32 %163, %164
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i8, i8* %162, i64 %166
  %168 = load i8, i8* %167, align 1
  %169 = getelementptr inbounds [2 x i8], [2 x i8]* %20, i64 0, i64 0
  store i8 %168, i8* %169, align 1
  %170 = load i8*, i8** @raid6_gfinv, align 8
  %171 = load i64*, i64** @raid6_gfexp, align 8
  %172 = load i32, i32* %9, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i64, i64* %171, i64 %173
  %175 = load i64, i64* %174, align 8
  %176 = load i64*, i64** @raid6_gfexp, align 8
  %177 = load i32, i32* %10, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i64, i64* %176, i64 %178
  %180 = load i64, i64* %179, align 8
  %181 = xor i64 %175, %180
  %182 = getelementptr inbounds i8, i8* %170, i64 %181
  %183 = load i8, i8* %182, align 1
  %184 = getelementptr inbounds [2 x i8], [2 x i8]* %20, i64 0, i64 1
  store i8 %183, i8* %184, align 1
  %185 = load %struct.async_submit_ctl*, %struct.async_submit_ctl** %12, align 8
  %186 = load i32, i32* @ASYNC_TX_FENCE, align 4
  %187 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %13, align 8
  %188 = load i8*, i8** %24, align 8
  %189 = call i32 @init_async_submit(%struct.async_submit_ctl* %185, i32 %186, %struct.dma_async_tx_descriptor* %187, i32* null, i8* null, i8* %188)
  %190 = load %struct.page*, %struct.page** %18, align 8
  %191 = getelementptr inbounds [2 x %struct.page*], [2 x %struct.page*]* %19, i64 0, i64 0
  %192 = getelementptr inbounds [2 x i8], [2 x i8]* %20, i64 0, i64 0
  %193 = load i64, i64* %8, align 8
  %194 = load %struct.async_submit_ctl*, %struct.async_submit_ctl** %12, align 8
  %195 = call %struct.dma_async_tx_descriptor* @async_sum_product(%struct.page* %190, %struct.page** %191, i8* %192, i64 %193, %struct.async_submit_ctl* %194)
  store %struct.dma_async_tx_descriptor* %195, %struct.dma_async_tx_descriptor** %13, align 8
  %196 = load %struct.page*, %struct.page** %17, align 8
  %197 = getelementptr inbounds [2 x %struct.page*], [2 x %struct.page*]* %19, i64 0, i64 0
  store %struct.page* %196, %struct.page** %197, align 16
  %198 = load %struct.page*, %struct.page** %18, align 8
  %199 = getelementptr inbounds [2 x %struct.page*], [2 x %struct.page*]* %19, i64 0, i64 1
  store %struct.page* %198, %struct.page** %199, align 8
  %200 = load %struct.async_submit_ctl*, %struct.async_submit_ctl** %12, align 8
  %201 = load i32, i32* %21, align 4
  %202 = load i32, i32* @ASYNC_TX_XOR_DROP_DST, align 4
  %203 = or i32 %201, %202
  %204 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %13, align 8
  %205 = load i32*, i32** %22, align 8
  %206 = load i8*, i8** %23, align 8
  %207 = load i8*, i8** %24, align 8
  %208 = call i32 @init_async_submit(%struct.async_submit_ctl* %200, i32 %203, %struct.dma_async_tx_descriptor* %204, i32* %205, i8* %206, i8* %207)
  %209 = load %struct.page*, %struct.page** %17, align 8
  %210 = getelementptr inbounds [2 x %struct.page*], [2 x %struct.page*]* %19, i64 0, i64 0
  %211 = load i64, i64* %8, align 8
  %212 = load %struct.async_submit_ctl*, %struct.async_submit_ctl** %12, align 8
  %213 = call %struct.dma_async_tx_descriptor* @async_xor(%struct.page* %209, %struct.page** %210, i32 0, i32 2, i64 %211, %struct.async_submit_ctl* %212)
  store %struct.dma_async_tx_descriptor* %213, %struct.dma_async_tx_descriptor** %13, align 8
  %214 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %13, align 8
  ret %struct.dma_async_tx_descriptor* %214
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @init_async_submit(%struct.async_submit_ctl*, i32, %struct.dma_async_tx_descriptor*, i32*, i8*, i8*) #1

declare dso_local %struct.dma_async_tx_descriptor* @async_memcpy(%struct.page*, %struct.page*, i32, i32, i64, %struct.async_submit_ctl*) #1

declare dso_local %struct.dma_async_tx_descriptor* @async_mult(%struct.page*, %struct.page*, i64, i64, %struct.async_submit_ctl*) #1

declare dso_local %struct.dma_async_tx_descriptor* @async_xor(%struct.page*, %struct.page**, i32, i32, i64, %struct.async_submit_ctl*) #1

declare dso_local %struct.dma_async_tx_descriptor* @async_sum_product(%struct.page*, %struct.page**, i8*, i64, %struct.async_submit_ctl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
