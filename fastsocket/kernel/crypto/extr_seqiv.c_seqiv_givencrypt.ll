; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_seqiv.c_seqiv_givencrypt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_seqiv.c_seqiv_givencrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skcipher_givcrypt_request = type { %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32*, i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i8*, i32 }
%struct.crypto_ablkcipher = type { i32 }
%struct.seqiv_ctx = type { i32 }
%struct.ablkcipher_request = type { i32 }

@CRYPTO_TFM_REQ_MAY_SLEEP = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@seqiv_complete = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.skcipher_givcrypt_request*)* @seqiv_givencrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @seqiv_givencrypt(%struct.skcipher_givcrypt_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.skcipher_givcrypt_request*, align 8
  %4 = alloca %struct.crypto_ablkcipher*, align 8
  %5 = alloca %struct.seqiv_ctx*, align 8
  %6 = alloca %struct.ablkcipher_request*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.skcipher_givcrypt_request* %0, %struct.skcipher_givcrypt_request** %3, align 8
  %12 = load %struct.skcipher_givcrypt_request*, %struct.skcipher_givcrypt_request** %3, align 8
  %13 = call %struct.crypto_ablkcipher* @skcipher_givcrypt_reqtfm(%struct.skcipher_givcrypt_request* %12)
  store %struct.crypto_ablkcipher* %13, %struct.crypto_ablkcipher** %4, align 8
  %14 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %4, align 8
  %15 = call %struct.seqiv_ctx* @crypto_ablkcipher_ctx(%struct.crypto_ablkcipher* %14)
  store %struct.seqiv_ctx* %15, %struct.seqiv_ctx** %5, align 8
  %16 = load %struct.skcipher_givcrypt_request*, %struct.skcipher_givcrypt_request** %3, align 8
  %17 = call %struct.ablkcipher_request* @skcipher_givcrypt_reqctx(%struct.skcipher_givcrypt_request* %16)
  store %struct.ablkcipher_request* %17, %struct.ablkcipher_request** %6, align 8
  %18 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %6, align 8
  %19 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %4, align 8
  %20 = call i32 @skcipher_geniv_cipher(%struct.crypto_ablkcipher* %19)
  %21 = call i32 @ablkcipher_request_set_tfm(%struct.ablkcipher_request* %18, i32 %20)
  %22 = load %struct.skcipher_givcrypt_request*, %struct.skcipher_givcrypt_request** %3, align 8
  %23 = getelementptr inbounds %struct.skcipher_givcrypt_request, %struct.skcipher_givcrypt_request* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 4
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %7, align 4
  %27 = load %struct.skcipher_givcrypt_request*, %struct.skcipher_givcrypt_request** %3, align 8
  %28 = getelementptr inbounds %struct.skcipher_givcrypt_request, %struct.skcipher_givcrypt_request* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 4
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load i8*, i8** %30, align 8
  store i8* %31, i8** %8, align 8
  %32 = load %struct.skcipher_givcrypt_request*, %struct.skcipher_givcrypt_request** %3, align 8
  %33 = getelementptr inbounds %struct.skcipher_givcrypt_request, %struct.skcipher_givcrypt_request* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  store i32* %35, i32** %9, align 8
  %36 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %4, align 8
  %37 = call i32 @crypto_ablkcipher_ivsize(%struct.crypto_ablkcipher* %36)
  store i32 %37, i32* %10, align 4
  %38 = load i32*, i32** %9, align 8
  %39 = ptrtoint i32* %38 to i64
  %40 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %4, align 8
  %41 = call i64 @crypto_ablkcipher_alignmask(%struct.crypto_ablkcipher* %40)
  %42 = add nsw i64 %41, 1
  %43 = call i32 @IS_ALIGNED(i64 %39, i64 %42)
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = call i64 @unlikely(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %75

49:                                               ; preds = %1
  %50 = load i32, i32* %10, align 4
  %51 = load %struct.skcipher_givcrypt_request*, %struct.skcipher_givcrypt_request** %3, align 8
  %52 = getelementptr inbounds %struct.skcipher_givcrypt_request, %struct.skcipher_givcrypt_request* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 4
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @CRYPTO_TFM_REQ_MAY_SLEEP, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %49
  %60 = load i32, i32* @GFP_KERNEL, align 4
  br label %63

61:                                               ; preds = %49
  %62 = load i32, i32* @GFP_ATOMIC, align 4
  br label %63

63:                                               ; preds = %61, %59
  %64 = phi i32 [ %60, %59 ], [ %62, %61 ]
  %65 = call i32* @kmalloc(i32 %50, i32 %64)
  store i32* %65, i32** %9, align 8
  %66 = load i32*, i32** %9, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %71, label %68

68:                                               ; preds = %63
  %69 = load i32, i32* @ENOMEM, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %2, align 4
  br label %130

71:                                               ; preds = %63
  %72 = load i32, i32* @seqiv_complete, align 4
  store i32 %72, i32* %7, align 4
  %73 = load %struct.skcipher_givcrypt_request*, %struct.skcipher_givcrypt_request** %3, align 8
  %74 = bitcast %struct.skcipher_givcrypt_request* %73 to i8*
  store i8* %74, i8** %8, align 8
  br label %75

75:                                               ; preds = %71, %1
  %76 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %6, align 8
  %77 = load %struct.skcipher_givcrypt_request*, %struct.skcipher_givcrypt_request** %3, align 8
  %78 = getelementptr inbounds %struct.skcipher_givcrypt_request, %struct.skcipher_givcrypt_request* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 4
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* %7, align 4
  %83 = load i8*, i8** %8, align 8
  %84 = call i32 @ablkcipher_request_set_callback(%struct.ablkcipher_request* %76, i32 %81, i32 %82, i8* %83)
  %85 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %6, align 8
  %86 = load %struct.skcipher_givcrypt_request*, %struct.skcipher_givcrypt_request** %3, align 8
  %87 = getelementptr inbounds %struct.skcipher_givcrypt_request, %struct.skcipher_givcrypt_request* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.skcipher_givcrypt_request*, %struct.skcipher_givcrypt_request** %3, align 8
  %91 = getelementptr inbounds %struct.skcipher_givcrypt_request, %struct.skcipher_givcrypt_request* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.skcipher_givcrypt_request*, %struct.skcipher_givcrypt_request** %3, align 8
  %95 = getelementptr inbounds %struct.skcipher_givcrypt_request, %struct.skcipher_givcrypt_request* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = load i32*, i32** %9, align 8
  %99 = call i32 @ablkcipher_request_set_crypt(%struct.ablkcipher_request* %85, i32 %89, i32 %93, i32 %97, i32* %98)
  %100 = load %struct.seqiv_ctx*, %struct.seqiv_ctx** %5, align 8
  %101 = load i32*, i32** %9, align 8
  %102 = load %struct.skcipher_givcrypt_request*, %struct.skcipher_givcrypt_request** %3, align 8
  %103 = getelementptr inbounds %struct.skcipher_givcrypt_request, %struct.skcipher_givcrypt_request* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* %10, align 4
  %106 = call i32 @seqiv_geniv(%struct.seqiv_ctx* %100, i32* %101, i32 %104, i32 %105)
  %107 = load %struct.skcipher_givcrypt_request*, %struct.skcipher_givcrypt_request** %3, align 8
  %108 = getelementptr inbounds %struct.skcipher_givcrypt_request, %struct.skcipher_givcrypt_request* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = load i32*, i32** %9, align 8
  %111 = load i32, i32* %10, align 4
  %112 = call i32 @memcpy(i32 %109, i32* %110, i32 %111)
  %113 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %6, align 8
  %114 = call i32 @crypto_ablkcipher_encrypt(%struct.ablkcipher_request* %113)
  store i32 %114, i32* %11, align 4
  %115 = load i32*, i32** %9, align 8
  %116 = load %struct.skcipher_givcrypt_request*, %struct.skcipher_givcrypt_request** %3, align 8
  %117 = getelementptr inbounds %struct.skcipher_givcrypt_request, %struct.skcipher_givcrypt_request* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = icmp ne i32* %115, %119
  %121 = zext i1 %120 to i32
  %122 = call i64 @unlikely(i32 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %75
  %125 = load %struct.skcipher_givcrypt_request*, %struct.skcipher_givcrypt_request** %3, align 8
  %126 = load i32, i32* %11, align 4
  %127 = call i32 @seqiv_complete2(%struct.skcipher_givcrypt_request* %125, i32 %126)
  br label %128

128:                                              ; preds = %124, %75
  %129 = load i32, i32* %11, align 4
  store i32 %129, i32* %2, align 4
  br label %130

130:                                              ; preds = %128, %68
  %131 = load i32, i32* %2, align 4
  ret i32 %131
}

declare dso_local %struct.crypto_ablkcipher* @skcipher_givcrypt_reqtfm(%struct.skcipher_givcrypt_request*) #1

declare dso_local %struct.seqiv_ctx* @crypto_ablkcipher_ctx(%struct.crypto_ablkcipher*) #1

declare dso_local %struct.ablkcipher_request* @skcipher_givcrypt_reqctx(%struct.skcipher_givcrypt_request*) #1

declare dso_local i32 @ablkcipher_request_set_tfm(%struct.ablkcipher_request*, i32) #1

declare dso_local i32 @skcipher_geniv_cipher(%struct.crypto_ablkcipher*) #1

declare dso_local i32 @crypto_ablkcipher_ivsize(%struct.crypto_ablkcipher*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @IS_ALIGNED(i64, i64) #1

declare dso_local i64 @crypto_ablkcipher_alignmask(%struct.crypto_ablkcipher*) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @ablkcipher_request_set_callback(%struct.ablkcipher_request*, i32, i32, i8*) #1

declare dso_local i32 @ablkcipher_request_set_crypt(%struct.ablkcipher_request*, i32, i32, i32, i32*) #1

declare dso_local i32 @seqiv_geniv(%struct.seqiv_ctx*, i32*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @crypto_ablkcipher_encrypt(%struct.ablkcipher_request*) #1

declare dso_local i32 @seqiv_complete2(%struct.skcipher_givcrypt_request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
