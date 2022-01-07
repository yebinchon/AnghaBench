; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/crypto/extr_des_s390.c_ctr_des_encrypt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/crypto/extr_des_s390.c_ctr_des_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blkcipher_desc = type { i32 }
%struct.scatterlist = type { i32 }
%struct.crypt_s390_des_ctx = type { i32 }
%struct.blkcipher_walk = type { i32 }

@KMCTR_DEA_ENCRYPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.blkcipher_desc*, %struct.scatterlist*, %struct.scatterlist*, i32)* @ctr_des_encrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctr_des_encrypt(%struct.blkcipher_desc* %0, %struct.scatterlist* %1, %struct.scatterlist* %2, i32 %3) #0 {
  %5 = alloca %struct.blkcipher_desc*, align 8
  %6 = alloca %struct.scatterlist*, align 8
  %7 = alloca %struct.scatterlist*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.crypt_s390_des_ctx*, align 8
  %10 = alloca %struct.blkcipher_walk, align 4
  store %struct.blkcipher_desc* %0, %struct.blkcipher_desc** %5, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %6, align 8
  store %struct.scatterlist* %2, %struct.scatterlist** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %5, align 8
  %12 = getelementptr inbounds %struct.blkcipher_desc, %struct.blkcipher_desc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.crypt_s390_des_ctx* @crypto_blkcipher_ctx(i32 %13)
  store %struct.crypt_s390_des_ctx* %14, %struct.crypt_s390_des_ctx** %9, align 8
  %15 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %16 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @blkcipher_walk_init(%struct.blkcipher_walk* %10, %struct.scatterlist* %15, %struct.scatterlist* %16, i32 %17)
  %19 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %5, align 8
  %20 = load i32, i32* @KMCTR_DEA_ENCRYPT, align 4
  %21 = load %struct.crypt_s390_des_ctx*, %struct.crypt_s390_des_ctx** %9, align 8
  %22 = call i32 @ctr_desall_crypt(%struct.blkcipher_desc* %19, i32 %20, %struct.crypt_s390_des_ctx* %21, %struct.blkcipher_walk* %10)
  ret i32 %22
}

declare dso_local %struct.crypt_s390_des_ctx* @crypto_blkcipher_ctx(i32) #1

declare dso_local i32 @blkcipher_walk_init(%struct.blkcipher_walk*, %struct.scatterlist*, %struct.scatterlist*, i32) #1

declare dso_local i32 @ctr_desall_crypt(%struct.blkcipher_desc*, i32, %struct.crypt_s390_des_ctx*, %struct.blkcipher_walk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
