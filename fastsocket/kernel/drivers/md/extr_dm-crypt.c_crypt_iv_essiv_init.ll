; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-crypt.c_crypt_iv_essiv_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-crypt.c_crypt_iv_essiv_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypt_config = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.iv_essiv_private }
%struct.iv_essiv_private = type { i32, i32, i32 }
%struct.hash_desc = type { i32, i32 }
%struct.scatterlist = type { i32 }

@CRYPTO_TFM_REQ_MAY_SLEEP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypt_config*)* @crypt_iv_essiv_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypt_iv_essiv_init(%struct.crypt_config* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.crypt_config*, align 8
  %4 = alloca %struct.iv_essiv_private*, align 8
  %5 = alloca %struct.hash_desc, align 4
  %6 = alloca %struct.scatterlist, align 4
  %7 = alloca i32, align 4
  store %struct.crypt_config* %0, %struct.crypt_config** %3, align 8
  %8 = load %struct.crypt_config*, %struct.crypt_config** %3, align 8
  %9 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store %struct.iv_essiv_private* %10, %struct.iv_essiv_private** %4, align 8
  %11 = load %struct.crypt_config*, %struct.crypt_config** %3, align 8
  %12 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.crypt_config*, %struct.crypt_config** %3, align 8
  %15 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @sg_init_one(%struct.scatterlist* %6, i32 %13, i32 %16)
  %18 = load %struct.iv_essiv_private*, %struct.iv_essiv_private** %4, align 8
  %19 = getelementptr inbounds %struct.iv_essiv_private, %struct.iv_essiv_private* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds %struct.hash_desc, %struct.hash_desc* %5, i32 0, i32 1
  store i32 %20, i32* %21, align 4
  %22 = load i32, i32* @CRYPTO_TFM_REQ_MAY_SLEEP, align 4
  %23 = getelementptr inbounds %struct.hash_desc, %struct.hash_desc* %5, i32 0, i32 0
  store i32 %22, i32* %23, align 4
  %24 = load %struct.crypt_config*, %struct.crypt_config** %3, align 8
  %25 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.iv_essiv_private*, %struct.iv_essiv_private** %4, align 8
  %28 = getelementptr inbounds %struct.iv_essiv_private, %struct.iv_essiv_private* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @crypto_hash_digest(%struct.hash_desc* %5, %struct.scatterlist* %6, i32 %26, i32 %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %1
  %34 = load i32, i32* %7, align 4
  store i32 %34, i32* %2, align 4
  br label %47

35:                                               ; preds = %1
  %36 = load %struct.iv_essiv_private*, %struct.iv_essiv_private** %4, align 8
  %37 = getelementptr inbounds %struct.iv_essiv_private, %struct.iv_essiv_private* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.iv_essiv_private*, %struct.iv_essiv_private** %4, align 8
  %40 = getelementptr inbounds %struct.iv_essiv_private, %struct.iv_essiv_private* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.iv_essiv_private*, %struct.iv_essiv_private** %4, align 8
  %43 = getelementptr inbounds %struct.iv_essiv_private, %struct.iv_essiv_private* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @crypto_hash_digestsize(i32 %44)
  %46 = call i32 @crypto_cipher_setkey(i32 %38, i32 %41, i32 %45)
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %35, %33
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i32 @sg_init_one(%struct.scatterlist*, i32, i32) #1

declare dso_local i32 @crypto_hash_digest(%struct.hash_desc*, %struct.scatterlist*, i32, i32) #1

declare dso_local i32 @crypto_cipher_setkey(i32, i32, i32) #1

declare dso_local i32 @crypto_hash_digestsize(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
