; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid5.c_handle_stripe_expansion.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid5.c_handle_stripe_expansion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r5conf = type { i32 }
%struct.stripe_head = type { i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.dma_async_tx_descriptor = type { i32 }
%struct.async_submit_ctl = type { i32 }

@STRIPE_EXPAND_SOURCE = common dso_local global i32 0, align 4
@STRIPE_EXPANDING = common dso_local global i32 0, align 4
@R5_Expanded = common dso_local global i32 0, align 4
@STRIPE_SIZE = common dso_local global i32 0, align 4
@R5_UPTODATE = common dso_local global i32 0, align 4
@STRIPE_EXPAND_READY = common dso_local global i32 0, align 4
@STRIPE_HANDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r5conf*, %struct.stripe_head*)* @handle_stripe_expansion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_stripe_expansion(%struct.r5conf* %0, %struct.stripe_head* %1) #0 {
  %3 = alloca %struct.r5conf*, align 8
  %4 = alloca %struct.stripe_head*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dma_async_tx_descriptor*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.stripe_head*, align 8
  %10 = alloca %struct.async_submit_ctl, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.r5conf* %0, %struct.r5conf** %3, align 8
  store %struct.stripe_head* %1, %struct.stripe_head** %4, align 8
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %6, align 8
  %13 = load i32, i32* @STRIPE_EXPAND_SOURCE, align 4
  %14 = load %struct.stripe_head*, %struct.stripe_head** %4, align 8
  %15 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %14, i32 0, i32 3
  %16 = call i32 @clear_bit(i32 %13, i32* %15)
  store i32 0, i32* %5, align 4
  br label %17

17:                                               ; preds = %160, %2
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.stripe_head*, %struct.stripe_head** %4, align 8
  %20 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %163

23:                                               ; preds = %17
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.stripe_head*, %struct.stripe_head** %4, align 8
  %26 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %24, %27
  br i1 %28, label %29, label %159

29:                                               ; preds = %23
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.stripe_head*, %struct.stripe_head** %4, align 8
  %32 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %30, %33
  br i1 %34, label %35, label %159

35:                                               ; preds = %29
  %36 = load %struct.stripe_head*, %struct.stripe_head** %4, align 8
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @compute_blocknr(%struct.stripe_head* %36, i32 %37, i32 1)
  store i32 %38, i32* %11, align 4
  %39 = load %struct.r5conf*, %struct.r5conf** %3, align 8
  %40 = load i32, i32* %11, align 4
  %41 = call i32 @raid5_compute_sector(%struct.r5conf* %39, i32 %40, i32 0, i32* %7, i32* null)
  store i32 %41, i32* %12, align 4
  %42 = load %struct.r5conf*, %struct.r5conf** %3, align 8
  %43 = load i32, i32* %12, align 4
  %44 = call %struct.stripe_head* @get_active_stripe(%struct.r5conf* %42, i32 %43, i32 0, i32 1, i32 1)
  store %struct.stripe_head* %44, %struct.stripe_head** %9, align 8
  %45 = load %struct.stripe_head*, %struct.stripe_head** %9, align 8
  %46 = icmp eq %struct.stripe_head* %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %35
  br label %160

48:                                               ; preds = %35
  %49 = load i32, i32* @STRIPE_EXPANDING, align 4
  %50 = load %struct.stripe_head*, %struct.stripe_head** %9, align 8
  %51 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %50, i32 0, i32 3
  %52 = call i64 @test_bit(i32 %49, i32* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %65

54:                                               ; preds = %48
  %55 = load i32, i32* @R5_Expanded, align 4
  %56 = load %struct.stripe_head*, %struct.stripe_head** %9, align 8
  %57 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %56, i32 0, i32 4
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = load i32, i32* %7, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = call i64 @test_bit(i32 %55, i32* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %54, %48
  %66 = load %struct.stripe_head*, %struct.stripe_head** %9, align 8
  %67 = call i32 @release_stripe(%struct.stripe_head* %66)
  br label %160

68:                                               ; preds = %54
  %69 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %6, align 8
  %70 = call i32 @init_async_submit(%struct.async_submit_ctl* %10, i32 0, %struct.dma_async_tx_descriptor* %69, i32* null, i32* null, i32* null)
  %71 = load %struct.stripe_head*, %struct.stripe_head** %9, align 8
  %72 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %71, i32 0, i32 4
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = load i32, i32* %7, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.stripe_head*, %struct.stripe_head** %4, align 8
  %80 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %79, i32 0, i32 4
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = load i32, i32* %5, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @STRIPE_SIZE, align 4
  %88 = call %struct.dma_async_tx_descriptor* @async_memcpy(i32 %78, i32 %86, i32 0, i32 0, i32 %87, %struct.async_submit_ctl* %10)
  store %struct.dma_async_tx_descriptor* %88, %struct.dma_async_tx_descriptor** %6, align 8
  %89 = load i32, i32* @R5_Expanded, align 4
  %90 = load %struct.stripe_head*, %struct.stripe_head** %9, align 8
  %91 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %90, i32 0, i32 4
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = load i32, i32* %7, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = call i32 @set_bit(i32 %89, i32* %96)
  %98 = load i32, i32* @R5_UPTODATE, align 4
  %99 = load %struct.stripe_head*, %struct.stripe_head** %9, align 8
  %100 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %99, i32 0, i32 4
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %100, align 8
  %102 = load i32, i32* %7, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  %106 = call i32 @set_bit(i32 %98, i32* %105)
  store i32 0, i32* %8, align 4
  br label %107

107:                                              ; preds = %138, %68
  %108 = load i32, i32* %8, align 4
  %109 = load %struct.r5conf*, %struct.r5conf** %3, align 8
  %110 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = icmp slt i32 %108, %111
  br i1 %112, label %113, label %141

113:                                              ; preds = %107
  %114 = load i32, i32* %8, align 4
  %115 = load %struct.stripe_head*, %struct.stripe_head** %9, align 8
  %116 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = icmp ne i32 %114, %117
  br i1 %118, label %119, label %137

119:                                              ; preds = %113
  %120 = load i32, i32* %8, align 4
  %121 = load %struct.stripe_head*, %struct.stripe_head** %9, align 8
  %122 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = icmp ne i32 %120, %123
  br i1 %124, label %125, label %137

125:                                              ; preds = %119
  %126 = load i32, i32* @R5_Expanded, align 4
  %127 = load %struct.stripe_head*, %struct.stripe_head** %9, align 8
  %128 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %127, i32 0, i32 4
  %129 = load %struct.TYPE_2__*, %struct.TYPE_2__** %128, align 8
  %130 = load i32, i32* %8, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 0
  %134 = call i64 @test_bit(i32 %126, i32* %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %137, label %136

136:                                              ; preds = %125
  br label %141

137:                                              ; preds = %125, %119, %113
  br label %138

138:                                              ; preds = %137
  %139 = load i32, i32* %8, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %8, align 4
  br label %107

141:                                              ; preds = %136, %107
  %142 = load i32, i32* %8, align 4
  %143 = load %struct.r5conf*, %struct.r5conf** %3, align 8
  %144 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = icmp eq i32 %142, %145
  br i1 %146, label %147, label %156

147:                                              ; preds = %141
  %148 = load i32, i32* @STRIPE_EXPAND_READY, align 4
  %149 = load %struct.stripe_head*, %struct.stripe_head** %9, align 8
  %150 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %149, i32 0, i32 3
  %151 = call i32 @set_bit(i32 %148, i32* %150)
  %152 = load i32, i32* @STRIPE_HANDLE, align 4
  %153 = load %struct.stripe_head*, %struct.stripe_head** %9, align 8
  %154 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %153, i32 0, i32 3
  %155 = call i32 @set_bit(i32 %152, i32* %154)
  br label %156

156:                                              ; preds = %147, %141
  %157 = load %struct.stripe_head*, %struct.stripe_head** %9, align 8
  %158 = call i32 @release_stripe(%struct.stripe_head* %157)
  br label %159

159:                                              ; preds = %156, %29, %23
  br label %160

160:                                              ; preds = %159, %65, %47
  %161 = load i32, i32* %5, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %5, align 4
  br label %17

163:                                              ; preds = %17
  %164 = call i32 @async_tx_quiesce(%struct.dma_async_tx_descriptor** %6)
  ret void
}

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @compute_blocknr(%struct.stripe_head*, i32, i32) #1

declare dso_local i32 @raid5_compute_sector(%struct.r5conf*, i32, i32, i32*, i32*) #1

declare dso_local %struct.stripe_head* @get_active_stripe(%struct.r5conf*, i32, i32, i32, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @release_stripe(%struct.stripe_head*) #1

declare dso_local i32 @init_async_submit(%struct.async_submit_ctl*, i32, %struct.dma_async_tx_descriptor*, i32*, i32*, i32*) #1

declare dso_local %struct.dma_async_tx_descriptor* @async_memcpy(i32, i32, i32, i32, i32, %struct.async_submit_ctl*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @async_tx_quiesce(%struct.dma_async_tx_descriptor**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
