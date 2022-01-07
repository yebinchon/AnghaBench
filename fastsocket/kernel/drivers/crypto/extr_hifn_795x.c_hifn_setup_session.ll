; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/extr_hifn_795x.c_hifn_setup_session.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/extr_hifn_795x.c_hifn_setup_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ablkcipher_request = type { i32, %struct.scatterlist*, i32, %struct.TYPE_4__ }
%struct.scatterlist = type { i64, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.hifn_context = type { i32, i32, %struct.hifn_device* }
%struct.hifn_device = type { i64, i32, i32, i32, i32 }
%struct.hifn_request_context = type { i64, i32, i32, i32, i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ACRYPTO_MODE_ECB = common dso_local global i64 0, align 8
@HIFN_D_DST_DALIGN = common dso_local global i32 0, align 4
@ASYNC_FLAGS_MISALIGNED = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@HIFN_QUEUE_LENGTH = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@HIFN_DEFAULT_ACTIVE_NUM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [69 x i8] c"%s: iv: %p [%d], key: %p [%d], mode: %u, op: %u, type: %u, err: %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ablkcipher_request*)* @hifn_setup_session to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hifn_setup_session(%struct.ablkcipher_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ablkcipher_request*, align 8
  %4 = alloca %struct.hifn_context*, align 8
  %5 = alloca %struct.hifn_request_context*, align 8
  %6 = alloca %struct.hifn_device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.scatterlist*, align 8
  store %struct.ablkcipher_request* %0, %struct.ablkcipher_request** %3, align 8
  %14 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %3, align 8
  %15 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.hifn_context* @crypto_tfm_ctx(i32 %17)
  store %struct.hifn_context* %18, %struct.hifn_context** %4, align 8
  %19 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %3, align 8
  %20 = call %struct.hifn_request_context* @ablkcipher_request_ctx(%struct.ablkcipher_request* %19)
  store %struct.hifn_request_context* %20, %struct.hifn_request_context** %5, align 8
  %21 = load %struct.hifn_context*, %struct.hifn_context** %4, align 8
  %22 = getelementptr inbounds %struct.hifn_context, %struct.hifn_context* %21, i32 0, i32 2
  %23 = load %struct.hifn_device*, %struct.hifn_device** %22, align 8
  store %struct.hifn_device* %23, %struct.hifn_device** %6, align 8
  %24 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %3, align 8
  %25 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %11, align 4
  %29 = load %struct.hifn_request_context*, %struct.hifn_request_context** %5, align 8
  %30 = getelementptr inbounds %struct.hifn_request_context, %struct.hifn_request_context* %29, i32 0, i32 4
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %45

33:                                               ; preds = %1
  %34 = load %struct.hifn_request_context*, %struct.hifn_request_context** %5, align 8
  %35 = getelementptr inbounds %struct.hifn_request_context, %struct.hifn_request_context* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %45, label %38

38:                                               ; preds = %33
  %39 = load %struct.hifn_request_context*, %struct.hifn_request_context** %5, align 8
  %40 = getelementptr inbounds %struct.hifn_request_context, %struct.hifn_request_context* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @ACRYPTO_MODE_ECB, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  br label %169

45:                                               ; preds = %38, %33, %1
  %46 = load %struct.hifn_request_context*, %struct.hifn_request_context** %5, align 8
  %47 = getelementptr inbounds %struct.hifn_request_context, %struct.hifn_request_context* %46, i32 0, i32 5
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  store i32 0, i32* %48, align 8
  br label %49

49:                                               ; preds = %82, %45
  %50 = load i32, i32* %9, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %90

52:                                               ; preds = %49
  %53 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %3, align 8
  %54 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %53, i32 0, i32 1
  %55 = load %struct.scatterlist*, %struct.scatterlist** %54, align 8
  %56 = load i32, i32* %10, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %55, i64 %57
  store %struct.scatterlist* %58, %struct.scatterlist** %13, align 8
  %59 = load %struct.scatterlist*, %struct.scatterlist** %13, align 8
  %60 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %9, align 4
  %63 = call i64 @min(i32 %61, i32 %62)
  store i64 %63, i64* %7, align 8
  %64 = load %struct.scatterlist*, %struct.scatterlist** %13, align 8
  %65 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i32, i32* @HIFN_D_DST_DALIGN, align 4
  %68 = call i32 @IS_ALIGNED(i64 %66, i32 %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %52
  %71 = load i64, i64* %7, align 8
  %72 = load i32, i32* @HIFN_D_DST_DALIGN, align 4
  %73 = call i32 @IS_ALIGNED(i64 %71, i32 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %82, label %75

75:                                               ; preds = %70, %52
  %76 = load i32, i32* @ASYNC_FLAGS_MISALIGNED, align 4
  %77 = load %struct.hifn_request_context*, %struct.hifn_request_context** %5, align 8
  %78 = getelementptr inbounds %struct.hifn_request_context, %struct.hifn_request_context* %77, i32 0, i32 5
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = or i32 %80, %76
  store i32 %81, i32* %79, align 8
  br label %82

82:                                               ; preds = %75, %70
  %83 = load i64, i64* %7, align 8
  %84 = load i32, i32* %9, align 4
  %85 = zext i32 %84 to i64
  %86 = sub i64 %85, %83
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %9, align 4
  %88 = load i32, i32* %10, align 4
  %89 = add i32 %88, 1
  store i32 %89, i32* %10, align 4
  br label %49

90:                                               ; preds = %49
  %91 = load %struct.hifn_request_context*, %struct.hifn_request_context** %5, align 8
  %92 = getelementptr inbounds %struct.hifn_request_context, %struct.hifn_request_context* %91, i32 0, i32 5
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @ASYNC_FLAGS_MISALIGNED, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %109

98:                                               ; preds = %90
  %99 = load %struct.hifn_request_context*, %struct.hifn_request_context** %5, align 8
  %100 = getelementptr inbounds %struct.hifn_request_context, %struct.hifn_request_context* %99, i32 0, i32 5
  %101 = load i32, i32* %10, align 4
  %102 = load i32, i32* @GFP_ATOMIC, align 4
  %103 = call i32 @ablkcipher_walk_init(%struct.TYPE_5__* %100, i32 %101, i32 %102)
  store i32 %103, i32* %11, align 4
  %104 = load i32, i32* %11, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %98
  %107 = load i32, i32* %11, align 4
  store i32 %107, i32* %2, align 4
  br label %201

108:                                              ; preds = %98
  br label %109

109:                                              ; preds = %108, %90
  %110 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %3, align 8
  %111 = load %struct.hifn_request_context*, %struct.hifn_request_context** %5, align 8
  %112 = getelementptr inbounds %struct.hifn_request_context, %struct.hifn_request_context* %111, i32 0, i32 5
  %113 = call i32 @ablkcipher_walk(%struct.ablkcipher_request* %110, %struct.TYPE_5__* %112)
  store i32 %113, i32* %12, align 4
  %114 = load i32, i32* %12, align 4
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %109
  %117 = load i32, i32* %12, align 4
  store i32 %117, i32* %11, align 4
  br label %169

118:                                              ; preds = %109
  %119 = load %struct.hifn_device*, %struct.hifn_device** %6, align 8
  %120 = getelementptr inbounds %struct.hifn_device, %struct.hifn_device* %119, i32 0, i32 2
  %121 = load i64, i64* %8, align 8
  %122 = call i32 @spin_lock_irqsave(i32* %120, i64 %121)
  %123 = load %struct.hifn_device*, %struct.hifn_device** %6, align 8
  %124 = getelementptr inbounds %struct.hifn_device, %struct.hifn_device* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i32, i32* %12, align 4
  %127 = sext i32 %126 to i64
  %128 = add nsw i64 %125, %127
  %129 = load i64, i64* @HIFN_QUEUE_LENGTH, align 8
  %130 = icmp sgt i64 %128, %129
  br i1 %130, label %131, label %134

131:                                              ; preds = %118
  %132 = load i32, i32* @EAGAIN, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %11, align 4
  br label %164

134:                                              ; preds = %118
  %135 = load %struct.hifn_device*, %struct.hifn_device** %6, align 8
  %136 = load %struct.hifn_context*, %struct.hifn_context** %4, align 8
  %137 = load %struct.hifn_request_context*, %struct.hifn_request_context** %5, align 8
  %138 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %3, align 8
  %139 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %3, align 8
  %142 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %141, i32 0, i32 1
  %143 = load %struct.scatterlist*, %struct.scatterlist** %142, align 8
  %144 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %3, align 8
  %145 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %3, align 8
  %148 = call i32 @hifn_setup_dma(%struct.hifn_device* %135, %struct.hifn_context* %136, %struct.hifn_request_context* %137, i32 %140, %struct.scatterlist* %143, i32 %146, %struct.ablkcipher_request* %147)
  store i32 %148, i32* %11, align 4
  %149 = load i32, i32* %11, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %134
  br label %164

152:                                              ; preds = %134
  %153 = load %struct.hifn_device*, %struct.hifn_device** %6, align 8
  %154 = getelementptr inbounds %struct.hifn_device, %struct.hifn_device* %153, i32 0, i32 4
  %155 = load i32, i32* %154, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %154, align 4
  %157 = load i32, i32* @HIFN_DEFAULT_ACTIVE_NUM, align 4
  %158 = load %struct.hifn_device*, %struct.hifn_device** %6, align 8
  %159 = getelementptr inbounds %struct.hifn_device, %struct.hifn_device* %158, i32 0, i32 3
  store i32 %157, i32* %159, align 8
  %160 = load %struct.hifn_device*, %struct.hifn_device** %6, align 8
  %161 = getelementptr inbounds %struct.hifn_device, %struct.hifn_device* %160, i32 0, i32 2
  %162 = load i64, i64* %8, align 8
  %163 = call i32 @spin_unlock_irqrestore(i32* %161, i64 %162)
  store i32 0, i32* %2, align 4
  br label %201

164:                                              ; preds = %151, %131
  %165 = load %struct.hifn_device*, %struct.hifn_device** %6, align 8
  %166 = getelementptr inbounds %struct.hifn_device, %struct.hifn_device* %165, i32 0, i32 2
  %167 = load i64, i64* %8, align 8
  %168 = call i32 @spin_unlock_irqrestore(i32* %166, i64 %167)
  br label %169

169:                                              ; preds = %164, %116, %44
  %170 = load i32, i32* %11, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %199

172:                                              ; preds = %169
  %173 = load %struct.hifn_device*, %struct.hifn_device** %6, align 8
  %174 = getelementptr inbounds %struct.hifn_device, %struct.hifn_device* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 8
  %176 = load %struct.hifn_request_context*, %struct.hifn_request_context** %5, align 8
  %177 = getelementptr inbounds %struct.hifn_request_context, %struct.hifn_request_context* %176, i32 0, i32 4
  %178 = load i64, i64* %177, align 8
  %179 = load %struct.hifn_request_context*, %struct.hifn_request_context** %5, align 8
  %180 = getelementptr inbounds %struct.hifn_request_context, %struct.hifn_request_context* %179, i32 0, i32 3
  %181 = load i32, i32* %180, align 8
  %182 = load %struct.hifn_context*, %struct.hifn_context** %4, align 8
  %183 = getelementptr inbounds %struct.hifn_context, %struct.hifn_context* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.hifn_context*, %struct.hifn_context** %4, align 8
  %186 = getelementptr inbounds %struct.hifn_context, %struct.hifn_context* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = load %struct.hifn_request_context*, %struct.hifn_request_context** %5, align 8
  %189 = getelementptr inbounds %struct.hifn_request_context, %struct.hifn_request_context* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = load %struct.hifn_request_context*, %struct.hifn_request_context** %5, align 8
  %192 = getelementptr inbounds %struct.hifn_request_context, %struct.hifn_request_context* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.hifn_request_context*, %struct.hifn_request_context** %5, align 8
  %195 = getelementptr inbounds %struct.hifn_request_context, %struct.hifn_request_context* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 8
  %197 = load i32, i32* %11, align 4
  %198 = call i32 @printk(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0), i32 %175, i64 %178, i32 %181, i32 %184, i32 %187, i64 %190, i32 %193, i32 %196, i32 %197)
  br label %199

199:                                              ; preds = %172, %169
  %200 = load i32, i32* %11, align 4
  store i32 %200, i32* %2, align 4
  br label %201

201:                                              ; preds = %199, %152, %106
  %202 = load i32, i32* %2, align 4
  ret i32 %202
}

declare dso_local %struct.hifn_context* @crypto_tfm_ctx(i32) #1

declare dso_local %struct.hifn_request_context* @ablkcipher_request_ctx(%struct.ablkcipher_request*) #1

declare dso_local i64 @min(i32, i32) #1

declare dso_local i32 @IS_ALIGNED(i64, i32) #1

declare dso_local i32 @ablkcipher_walk_init(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @ablkcipher_walk(%struct.ablkcipher_request*, %struct.TYPE_5__*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @hifn_setup_dma(%struct.hifn_device*, %struct.hifn_context*, %struct.hifn_request_context*, i32, %struct.scatterlist*, i32, %struct.ablkcipher_request*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @printk(i8*, i32, i64, i32, i32, i32, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
