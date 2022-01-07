; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_ctr.c_crypto_ctr_crypt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_ctr.c_crypto_ctr_crypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blkcipher_desc = type { %struct.crypto_blkcipher* }
%struct.crypto_blkcipher = type { i32 }
%struct.scatterlist = type { i32 }
%struct.blkcipher_walk = type { i32, %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.crypto_ctr_ctx = type { %struct.crypto_cipher* }
%struct.crypto_cipher = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.blkcipher_desc*, %struct.scatterlist*, %struct.scatterlist*, i32)* @crypto_ctr_crypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypto_ctr_crypt(%struct.blkcipher_desc* %0, %struct.scatterlist* %1, %struct.scatterlist* %2, i32 %3) #0 {
  %5 = alloca %struct.blkcipher_desc*, align 8
  %6 = alloca %struct.scatterlist*, align 8
  %7 = alloca %struct.scatterlist*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.blkcipher_walk, align 8
  %10 = alloca %struct.crypto_blkcipher*, align 8
  %11 = alloca %struct.crypto_ctr_ctx*, align 8
  %12 = alloca %struct.crypto_cipher*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.blkcipher_desc* %0, %struct.blkcipher_desc** %5, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %6, align 8
  store %struct.scatterlist* %2, %struct.scatterlist** %7, align 8
  store i32 %3, i32* %8, align 4
  %15 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %5, align 8
  %16 = getelementptr inbounds %struct.blkcipher_desc, %struct.blkcipher_desc* %15, i32 0, i32 0
  %17 = load %struct.crypto_blkcipher*, %struct.crypto_blkcipher** %16, align 8
  store %struct.crypto_blkcipher* %17, %struct.crypto_blkcipher** %10, align 8
  %18 = load %struct.crypto_blkcipher*, %struct.crypto_blkcipher** %10, align 8
  %19 = call %struct.crypto_ctr_ctx* @crypto_blkcipher_ctx(%struct.crypto_blkcipher* %18)
  store %struct.crypto_ctr_ctx* %19, %struct.crypto_ctr_ctx** %11, align 8
  %20 = load %struct.crypto_ctr_ctx*, %struct.crypto_ctr_ctx** %11, align 8
  %21 = getelementptr inbounds %struct.crypto_ctr_ctx, %struct.crypto_ctr_ctx* %20, i32 0, i32 0
  %22 = load %struct.crypto_cipher*, %struct.crypto_cipher** %21, align 8
  store %struct.crypto_cipher* %22, %struct.crypto_cipher** %12, align 8
  %23 = load %struct.crypto_cipher*, %struct.crypto_cipher** %12, align 8
  %24 = call i32 @crypto_cipher_blocksize(%struct.crypto_cipher* %23)
  store i32 %24, i32* %13, align 4
  %25 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %26 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @blkcipher_walk_init(%struct.blkcipher_walk* %9, %struct.scatterlist* %25, %struct.scatterlist* %26, i32 %27)
  %29 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %5, align 8
  %30 = load i32, i32* %13, align 4
  %31 = call i32 @blkcipher_walk_virt_block(%struct.blkcipher_desc* %29, %struct.blkcipher_walk* %9, i32 %30)
  store i32 %31, i32* %14, align 4
  br label %32

32:                                               ; preds = %53, %4
  %33 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %9, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* %13, align 4
  %36 = icmp uge i32 %34, %35
  br i1 %36, label %37, label %57

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %9, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %9, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %41, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %37
  %48 = load %struct.crypto_cipher*, %struct.crypto_cipher** %12, align 8
  %49 = call i32 @crypto_ctr_crypt_inplace(%struct.blkcipher_walk* %9, %struct.crypto_cipher* %48)
  store i32 %49, i32* %8, align 4
  br label %53

50:                                               ; preds = %37
  %51 = load %struct.crypto_cipher*, %struct.crypto_cipher** %12, align 8
  %52 = call i32 @crypto_ctr_crypt_segment(%struct.blkcipher_walk* %9, %struct.crypto_cipher* %51)
  store i32 %52, i32* %8, align 4
  br label %53

53:                                               ; preds = %50, %47
  %54 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %5, align 8
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @blkcipher_walk_done(%struct.blkcipher_desc* %54, %struct.blkcipher_walk* %9, i32 %55)
  store i32 %56, i32* %14, align 4
  br label %32

57:                                               ; preds = %32
  %58 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %9, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %57
  %62 = load %struct.crypto_cipher*, %struct.crypto_cipher** %12, align 8
  %63 = call i32 @crypto_ctr_crypt_final(%struct.blkcipher_walk* %9, %struct.crypto_cipher* %62)
  %64 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %5, align 8
  %65 = call i32 @blkcipher_walk_done(%struct.blkcipher_desc* %64, %struct.blkcipher_walk* %9, i32 0)
  store i32 %65, i32* %14, align 4
  br label %66

66:                                               ; preds = %61, %57
  %67 = load i32, i32* %14, align 4
  ret i32 %67
}

declare dso_local %struct.crypto_ctr_ctx* @crypto_blkcipher_ctx(%struct.crypto_blkcipher*) #1

declare dso_local i32 @crypto_cipher_blocksize(%struct.crypto_cipher*) #1

declare dso_local i32 @blkcipher_walk_init(%struct.blkcipher_walk*, %struct.scatterlist*, %struct.scatterlist*, i32) #1

declare dso_local i32 @blkcipher_walk_virt_block(%struct.blkcipher_desc*, %struct.blkcipher_walk*, i32) #1

declare dso_local i32 @crypto_ctr_crypt_inplace(%struct.blkcipher_walk*, %struct.crypto_cipher*) #1

declare dso_local i32 @crypto_ctr_crypt_segment(%struct.blkcipher_walk*, %struct.crypto_cipher*) #1

declare dso_local i32 @blkcipher_walk_done(%struct.blkcipher_desc*, %struct.blkcipher_walk*, i32) #1

declare dso_local i32 @crypto_ctr_crypt_final(%struct.blkcipher_walk*, %struct.crypto_cipher*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
