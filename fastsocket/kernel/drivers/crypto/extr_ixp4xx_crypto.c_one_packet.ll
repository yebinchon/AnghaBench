; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/extr_ixp4xx_crypto.c_one_packet.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/extr_ixp4xx_crypto.c_one_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypt_ctl = type { i32, %struct.TYPE_6__, i32, %struct.TYPE_10__*, %struct.TYPE_10__*, i32 }
%struct.TYPE_6__ = type { i32, %struct.ablkcipher_request*, %struct.aead_request* }
%struct.ablkcipher_request = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 (%struct.TYPE_8__*, i32)* }
%struct.aead_request = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 (%struct.TYPE_9__*, i32)* }
%struct.TYPE_10__ = type { i32 }
%struct.ixp_ctx = type { i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.aead_ctx = type { i32, i32 }
%struct.ablk_ctx = type { i32, i32 }

@EBADMSG = common dso_local global i32 0, align 4
@CTL_FLAG_MASK = common dso_local global i32 0, align 4
@dev = common dso_local global i32 0, align 4
@ctx_pool = common dso_local global i32 0, align 4
@buffer_pool = common dso_local global i32 0, align 4
@CIPH_ENCR = common dso_local global i32 0, align 4
@CTL_FLAG_UNUSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @one_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @one_packet(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.crypt_ctl*, align 8
  %4 = alloca %struct.ixp_ctx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.aead_request*, align 8
  %7 = alloca %struct.aead_ctx*, align 8
  %8 = alloca %struct.ablkcipher_request*, align 8
  %9 = alloca %struct.ablk_ctx*, align 8
  store i32 %0, i32* %2, align 4
  %10 = load i32, i32* %2, align 4
  %11 = and i32 %10, 1
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @EBADMSG, align 4
  %15 = sub nsw i32 0, %14
  br label %17

16:                                               ; preds = %1
  br label %17

17:                                               ; preds = %16, %13
  %18 = phi i32 [ %15, %13 ], [ 0, %16 ]
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %2, align 4
  %20 = and i32 %19, -4
  store i32 %20, i32* %2, align 4
  %21 = load i32, i32* %2, align 4
  %22 = call %struct.crypt_ctl* @crypt_phys2virt(i32 %21)
  store %struct.crypt_ctl* %22, %struct.crypt_ctl** %3, align 8
  %23 = load %struct.crypt_ctl*, %struct.crypt_ctl** %3, align 8
  %24 = getelementptr inbounds %struct.crypt_ctl, %struct.crypt_ctl* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @CTL_FLAG_MASK, align 4
  %27 = and i32 %25, %26
  switch i32 %27, label %154 [
    i32 128, label %28
    i32 129, label %59
    i32 131, label %96
    i32 130, label %129
  ]

28:                                               ; preds = %17
  %29 = load %struct.crypt_ctl*, %struct.crypt_ctl** %3, align 8
  %30 = getelementptr inbounds %struct.crypt_ctl, %struct.crypt_ctl* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 2
  %32 = load %struct.aead_request*, %struct.aead_request** %31, align 8
  store %struct.aead_request* %32, %struct.aead_request** %6, align 8
  %33 = load %struct.aead_request*, %struct.aead_request** %6, align 8
  %34 = call %struct.aead_ctx* @aead_request_ctx(%struct.aead_request* %33)
  store %struct.aead_ctx* %34, %struct.aead_ctx** %7, align 8
  %35 = load i32, i32* @dev, align 4
  %36 = load %struct.aead_ctx*, %struct.aead_ctx** %7, align 8
  %37 = getelementptr inbounds %struct.aead_ctx, %struct.aead_ctx* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.crypt_ctl*, %struct.crypt_ctl** %3, align 8
  %40 = getelementptr inbounds %struct.crypt_ctl, %struct.crypt_ctl* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @free_buf_chain(i32 %35, i32 %38, i32 %41)
  %43 = load %struct.aead_ctx*, %struct.aead_ctx** %7, align 8
  %44 = getelementptr inbounds %struct.aead_ctx, %struct.aead_ctx* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %28
  %48 = load %struct.crypt_ctl*, %struct.crypt_ctl** %3, align 8
  %49 = call i32 @finish_scattered_hmac(%struct.crypt_ctl* %48)
  br label %50

50:                                               ; preds = %47, %28
  %51 = load %struct.aead_request*, %struct.aead_request** %6, align 8
  %52 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = load i32 (%struct.TYPE_9__*, i32)*, i32 (%struct.TYPE_9__*, i32)** %53, align 8
  %55 = load %struct.aead_request*, %struct.aead_request** %6, align 8
  %56 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %55, i32 0, i32 0
  %57 = load i32, i32* %5, align 4
  %58 = call i32 %54(%struct.TYPE_9__* %56, i32 %57)
  br label %156

59:                                               ; preds = %17
  %60 = load %struct.crypt_ctl*, %struct.crypt_ctl** %3, align 8
  %61 = getelementptr inbounds %struct.crypt_ctl, %struct.crypt_ctl* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 1
  %63 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %62, align 8
  store %struct.ablkcipher_request* %63, %struct.ablkcipher_request** %8, align 8
  %64 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %8, align 8
  %65 = call %struct.ablk_ctx* @ablkcipher_request_ctx(%struct.ablkcipher_request* %64)
  store %struct.ablk_ctx* %65, %struct.ablk_ctx** %9, align 8
  %66 = load %struct.ablk_ctx*, %struct.ablk_ctx** %9, align 8
  %67 = getelementptr inbounds %struct.ablk_ctx, %struct.ablk_ctx* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %79

70:                                               ; preds = %59
  %71 = load i32, i32* @dev, align 4
  %72 = load %struct.ablk_ctx*, %struct.ablk_ctx** %9, align 8
  %73 = getelementptr inbounds %struct.ablk_ctx, %struct.ablk_ctx* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.crypt_ctl*, %struct.crypt_ctl** %3, align 8
  %76 = getelementptr inbounds %struct.crypt_ctl, %struct.crypt_ctl* %75, i32 0, i32 5
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @free_buf_chain(i32 %71, i32 %74, i32 %77)
  br label %79

79:                                               ; preds = %70, %59
  %80 = load i32, i32* @dev, align 4
  %81 = load %struct.ablk_ctx*, %struct.ablk_ctx** %9, align 8
  %82 = getelementptr inbounds %struct.ablk_ctx, %struct.ablk_ctx* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.crypt_ctl*, %struct.crypt_ctl** %3, align 8
  %85 = getelementptr inbounds %struct.crypt_ctl, %struct.crypt_ctl* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @free_buf_chain(i32 %80, i32 %83, i32 %86)
  %88 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %8, align 8
  %89 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  %91 = load i32 (%struct.TYPE_8__*, i32)*, i32 (%struct.TYPE_8__*, i32)** %90, align 8
  %92 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %8, align 8
  %93 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %92, i32 0, i32 0
  %94 = load i32, i32* %5, align 4
  %95 = call i32 %91(%struct.TYPE_8__* %93, i32 %94)
  br label %156

96:                                               ; preds = %17
  %97 = load %struct.crypt_ctl*, %struct.crypt_ctl** %3, align 8
  %98 = getelementptr inbounds %struct.crypt_ctl, %struct.crypt_ctl* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = call %struct.ixp_ctx* @crypto_tfm_ctx(i32 %100)
  store %struct.ixp_ctx* %101, %struct.ixp_ctx** %4, align 8
  %102 = load i32, i32* @ctx_pool, align 4
  %103 = load %struct.crypt_ctl*, %struct.crypt_ctl** %3, align 8
  %104 = getelementptr inbounds %struct.crypt_ctl, %struct.crypt_ctl* %103, i32 0, i32 4
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %104, align 8
  %106 = load %struct.crypt_ctl*, %struct.crypt_ctl** %3, align 8
  %107 = getelementptr inbounds %struct.crypt_ctl, %struct.crypt_ctl* %106, i32 0, i32 3
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @dma_pool_free(i32 %102, %struct.TYPE_10__* %105, i32 %110)
  %112 = load i32, i32* @buffer_pool, align 4
  %113 = load %struct.crypt_ctl*, %struct.crypt_ctl** %3, align 8
  %114 = getelementptr inbounds %struct.crypt_ctl, %struct.crypt_ctl* %113, i32 0, i32 3
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %114, align 8
  %116 = load %struct.crypt_ctl*, %struct.crypt_ctl** %3, align 8
  %117 = getelementptr inbounds %struct.crypt_ctl, %struct.crypt_ctl* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @dma_pool_free(i32 %112, %struct.TYPE_10__* %115, i32 %118)
  %120 = load %struct.ixp_ctx*, %struct.ixp_ctx** %4, align 8
  %121 = getelementptr inbounds %struct.ixp_ctx, %struct.ixp_ctx* %120, i32 0, i32 1
  %122 = call i32 @atomic_dec_and_test(i32* %121)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %96
  %125 = load %struct.ixp_ctx*, %struct.ixp_ctx** %4, align 8
  %126 = getelementptr inbounds %struct.ixp_ctx, %struct.ixp_ctx* %125, i32 0, i32 0
  %127 = call i32 @complete(i32* %126)
  br label %128

128:                                              ; preds = %124, %96
  br label %156

129:                                              ; preds = %17
  %130 = load %struct.crypt_ctl*, %struct.crypt_ctl** %3, align 8
  %131 = getelementptr inbounds %struct.crypt_ctl, %struct.crypt_ctl* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = call %struct.ixp_ctx* @crypto_tfm_ctx(i32 %133)
  store %struct.ixp_ctx* %134, %struct.ixp_ctx** %4, align 8
  %135 = load i32, i32* @CIPH_ENCR, align 4
  %136 = xor i32 %135, -1
  %137 = call i32 @cpu_to_be32(i32 %136)
  %138 = load %struct.ixp_ctx*, %struct.ixp_ctx** %4, align 8
  %139 = getelementptr inbounds %struct.ixp_ctx, %struct.ixp_ctx* %138, i32 0, i32 2
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = inttoptr i64 %141 to i32*
  %143 = load i32, i32* %142, align 4
  %144 = and i32 %143, %137
  store i32 %144, i32* %142, align 4
  %145 = load %struct.ixp_ctx*, %struct.ixp_ctx** %4, align 8
  %146 = getelementptr inbounds %struct.ixp_ctx, %struct.ixp_ctx* %145, i32 0, i32 1
  %147 = call i32 @atomic_dec_and_test(i32* %146)
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %153

149:                                              ; preds = %129
  %150 = load %struct.ixp_ctx*, %struct.ixp_ctx** %4, align 8
  %151 = getelementptr inbounds %struct.ixp_ctx, %struct.ixp_ctx* %150, i32 0, i32 0
  %152 = call i32 @complete(i32* %151)
  br label %153

153:                                              ; preds = %149, %129
  br label %156

154:                                              ; preds = %17
  %155 = call i32 (...) @BUG()
  br label %156

156:                                              ; preds = %154, %153, %128, %79, %50
  %157 = load i32, i32* @CTL_FLAG_UNUSED, align 4
  %158 = load %struct.crypt_ctl*, %struct.crypt_ctl** %3, align 8
  %159 = getelementptr inbounds %struct.crypt_ctl, %struct.crypt_ctl* %158, i32 0, i32 0
  store i32 %157, i32* %159, align 8
  ret void
}

declare dso_local %struct.crypt_ctl* @crypt_phys2virt(i32) #1

declare dso_local %struct.aead_ctx* @aead_request_ctx(%struct.aead_request*) #1

declare dso_local i32 @free_buf_chain(i32, i32, i32) #1

declare dso_local i32 @finish_scattered_hmac(%struct.crypt_ctl*) #1

declare dso_local %struct.ablk_ctx* @ablkcipher_request_ctx(%struct.ablkcipher_request*) #1

declare dso_local %struct.ixp_ctx* @crypto_tfm_ctx(i32) #1

declare dso_local i32 @dma_pool_free(i32, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
