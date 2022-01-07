; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/extr_geode-aes.c_geode_cbc_encrypt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/extr_geode-aes.c_geode_cbc_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blkcipher_desc = type { i32 }
%struct.scatterlist = type { i32 }
%struct.geode_aes_op = type { i64, i32, i32, i32, i32, i32, i32 }
%struct.blkcipher_walk = type { i32, %struct.TYPE_8__, %struct.TYPE_6__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@AES_KEYSIZE_128 = common dso_local global i64 0, align 8
@AES_MODE_CBC = common dso_local global i32 0, align 4
@AES_MIN_BLOCK_SIZE = common dso_local global i32 0, align 4
@AES_DIR_ENCRYPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.blkcipher_desc*, %struct.scatterlist*, %struct.scatterlist*, i32)* @geode_cbc_encrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @geode_cbc_encrypt(%struct.blkcipher_desc* %0, %struct.scatterlist* %1, %struct.scatterlist* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.blkcipher_desc*, align 8
  %7 = alloca %struct.scatterlist*, align 8
  %8 = alloca %struct.scatterlist*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.geode_aes_op*, align 8
  %11 = alloca %struct.blkcipher_walk, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.blkcipher_desc* %0, %struct.blkcipher_desc** %6, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %7, align 8
  store %struct.scatterlist* %2, %struct.scatterlist** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %6, align 8
  %15 = getelementptr inbounds %struct.blkcipher_desc, %struct.blkcipher_desc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.geode_aes_op* @crypto_blkcipher_ctx(i32 %16)
  store %struct.geode_aes_op* %17, %struct.geode_aes_op** %10, align 8
  %18 = load %struct.geode_aes_op*, %struct.geode_aes_op** %10, align 8
  %19 = getelementptr inbounds %struct.geode_aes_op, %struct.geode_aes_op* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @AES_KEYSIZE_128, align 8
  %22 = icmp ne i64 %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i64 @unlikely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %4
  %27 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %6, align 8
  %28 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %29 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @fallback_blk_enc(%struct.blkcipher_desc* %27, %struct.scatterlist* %28, %struct.scatterlist* %29, i32 %30)
  store i32 %31, i32* %5, align 4
  br label %83

32:                                               ; preds = %4
  %33 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %34 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @blkcipher_walk_init(%struct.blkcipher_walk* %11, %struct.scatterlist* %33, %struct.scatterlist* %34, i32 %35)
  %37 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %6, align 8
  %38 = call i32 @blkcipher_walk_virt(%struct.blkcipher_desc* %37, %struct.blkcipher_walk* %11)
  store i32 %38, i32* %12, align 4
  %39 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %11, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.geode_aes_op*, %struct.geode_aes_op** %10, align 8
  %42 = getelementptr inbounds %struct.geode_aes_op, %struct.geode_aes_op* %41, i32 0, i32 6
  store i32 %40, i32* %42, align 4
  br label %43

43:                                               ; preds = %47, %32
  %44 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %11, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %9, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %81

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %11, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.geode_aes_op*, %struct.geode_aes_op** %10, align 8
  %53 = getelementptr inbounds %struct.geode_aes_op, %struct.geode_aes_op* %52, i32 0, i32 5
  store i32 %51, i32* %53, align 8
  %54 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %11, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.geode_aes_op*, %struct.geode_aes_op** %10, align 8
  %59 = getelementptr inbounds %struct.geode_aes_op, %struct.geode_aes_op* %58, i32 0, i32 4
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* @AES_MODE_CBC, align 4
  %61 = load %struct.geode_aes_op*, %struct.geode_aes_op** %10, align 8
  %62 = getelementptr inbounds %struct.geode_aes_op, %struct.geode_aes_op* %61, i32 0, i32 3
  store i32 %60, i32* %62, align 8
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* @AES_MIN_BLOCK_SIZE, align 4
  %66 = urem i32 %64, %65
  %67 = sub i32 %63, %66
  %68 = load %struct.geode_aes_op*, %struct.geode_aes_op** %10, align 8
  %69 = getelementptr inbounds %struct.geode_aes_op, %struct.geode_aes_op* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 8
  %70 = load i32, i32* @AES_DIR_ENCRYPT, align 4
  %71 = load %struct.geode_aes_op*, %struct.geode_aes_op** %10, align 8
  %72 = getelementptr inbounds %struct.geode_aes_op, %struct.geode_aes_op* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 4
  %73 = load %struct.geode_aes_op*, %struct.geode_aes_op** %10, align 8
  %74 = call i32 @geode_aes_crypt(%struct.geode_aes_op* %73)
  store i32 %74, i32* %13, align 4
  %75 = load i32, i32* %13, align 4
  %76 = load i32, i32* %9, align 4
  %77 = sub i32 %76, %75
  store i32 %77, i32* %9, align 4
  %78 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %6, align 8
  %79 = load i32, i32* %9, align 4
  %80 = call i32 @blkcipher_walk_done(%struct.blkcipher_desc* %78, %struct.blkcipher_walk* %11, i32 %79)
  store i32 %80, i32* %12, align 4
  br label %43

81:                                               ; preds = %43
  %82 = load i32, i32* %12, align 4
  store i32 %82, i32* %5, align 4
  br label %83

83:                                               ; preds = %81, %26
  %84 = load i32, i32* %5, align 4
  ret i32 %84
}

declare dso_local %struct.geode_aes_op* @crypto_blkcipher_ctx(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @fallback_blk_enc(%struct.blkcipher_desc*, %struct.scatterlist*, %struct.scatterlist*, i32) #1

declare dso_local i32 @blkcipher_walk_init(%struct.blkcipher_walk*, %struct.scatterlist*, %struct.scatterlist*, i32) #1

declare dso_local i32 @blkcipher_walk_virt(%struct.blkcipher_desc*, %struct.blkcipher_walk*) #1

declare dso_local i32 @geode_aes_crypt(%struct.geode_aes_op*) #1

declare dso_local i32 @blkcipher_walk_done(%struct.blkcipher_desc*, %struct.blkcipher_walk*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
