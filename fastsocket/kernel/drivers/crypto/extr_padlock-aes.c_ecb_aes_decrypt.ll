; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/extr_padlock-aes.c_ecb_aes_decrypt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/extr_padlock-aes.c_ecb_aes_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blkcipher_desc = type { i32 }
%struct.scatterlist = type { i32 }
%struct.aes_ctx = type { %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.blkcipher_walk = type { i32, %struct.TYPE_9__, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@AES_BLOCK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.blkcipher_desc*, %struct.scatterlist*, %struct.scatterlist*, i32)* @ecb_aes_decrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecb_aes_decrypt(%struct.blkcipher_desc* %0, %struct.scatterlist* %1, %struct.scatterlist* %2, i32 %3) #0 {
  %5 = alloca %struct.blkcipher_desc*, align 8
  %6 = alloca %struct.scatterlist*, align 8
  %7 = alloca %struct.scatterlist*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.aes_ctx*, align 8
  %10 = alloca %struct.blkcipher_walk, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.blkcipher_desc* %0, %struct.blkcipher_desc** %5, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %6, align 8
  store %struct.scatterlist* %2, %struct.scatterlist** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %5, align 8
  %14 = getelementptr inbounds %struct.blkcipher_desc, %struct.blkcipher_desc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.aes_ctx* @blk_aes_ctx(i32 %15)
  store %struct.aes_ctx* %16, %struct.aes_ctx** %9, align 8
  %17 = load %struct.aes_ctx*, %struct.aes_ctx** %9, align 8
  %18 = getelementptr inbounds %struct.aes_ctx, %struct.aes_ctx* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 1
  %20 = call i32 @padlock_reset_key(i32* %19)
  %21 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %22 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @blkcipher_walk_init(%struct.blkcipher_walk* %10, %struct.scatterlist* %21, %struct.scatterlist* %22, i32 %23)
  %25 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %5, align 8
  %26 = call i32 @blkcipher_walk_virt(%struct.blkcipher_desc* %25, %struct.blkcipher_walk* %10)
  store i32 %26, i32* %11, align 4
  %27 = call i32 (...) @irq_ts_save()
  store i32 %27, i32* %12, align 4
  br label %28

28:                                               ; preds = %32, %4
  %29 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %10, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %58

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %10, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %10, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.aes_ctx*, %struct.aes_ctx** %9, align 8
  %42 = getelementptr inbounds %struct.aes_ctx, %struct.aes_ctx* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.aes_ctx*, %struct.aes_ctx** %9, align 8
  %45 = getelementptr inbounds %struct.aes_ctx, %struct.aes_ctx* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 1
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %49 = udiv i32 %47, %48
  %50 = call i32 @padlock_xcrypt_ecb(i32 %36, i32 %40, i32 %43, i32* %46, i32 %49)
  %51 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %52 = sub i32 %51, 1
  %53 = load i32, i32* %8, align 4
  %54 = and i32 %53, %52
  store i32 %54, i32* %8, align 4
  %55 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %5, align 8
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @blkcipher_walk_done(%struct.blkcipher_desc* %55, %struct.blkcipher_walk* %10, i32 %56)
  store i32 %57, i32* %11, align 4
  br label %28

58:                                               ; preds = %28
  %59 = load i32, i32* %12, align 4
  %60 = call i32 @irq_ts_restore(i32 %59)
  %61 = load %struct.aes_ctx*, %struct.aes_ctx** %9, align 8
  %62 = getelementptr inbounds %struct.aes_ctx, %struct.aes_ctx* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = call i32 @padlock_store_cword(i32* %63)
  %65 = load i32, i32* %11, align 4
  ret i32 %65
}

declare dso_local %struct.aes_ctx* @blk_aes_ctx(i32) #1

declare dso_local i32 @padlock_reset_key(i32*) #1

declare dso_local i32 @blkcipher_walk_init(%struct.blkcipher_walk*, %struct.scatterlist*, %struct.scatterlist*, i32) #1

declare dso_local i32 @blkcipher_walk_virt(%struct.blkcipher_desc*, %struct.blkcipher_walk*) #1

declare dso_local i32 @irq_ts_save(...) #1

declare dso_local i32 @padlock_xcrypt_ecb(i32, i32, i32, i32*, i32) #1

declare dso_local i32 @blkcipher_walk_done(%struct.blkcipher_desc*, %struct.blkcipher_walk*, i32) #1

declare dso_local i32 @irq_ts_restore(i32) #1

declare dso_local i32 @padlock_store_cword(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
