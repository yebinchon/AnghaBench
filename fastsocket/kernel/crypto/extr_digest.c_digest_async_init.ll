; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_digest.c_digest_async_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_digest.c_digest_async_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahash_request = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.crypto_tfm* }
%struct.crypto_tfm = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.digest_alg }
%struct.digest_alg = type { i32 (%struct.crypto_tfm.0*)* }
%struct.crypto_tfm.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahash_request*)* @digest_async_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @digest_async_init(%struct.ahash_request* %0) #0 {
  %2 = alloca %struct.ahash_request*, align 8
  %3 = alloca %struct.crypto_tfm*, align 8
  %4 = alloca %struct.digest_alg*, align 8
  store %struct.ahash_request* %0, %struct.ahash_request** %2, align 8
  %5 = load %struct.ahash_request*, %struct.ahash_request** %2, align 8
  %6 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load %struct.crypto_tfm*, %struct.crypto_tfm** %7, align 8
  store %struct.crypto_tfm* %8, %struct.crypto_tfm** %3, align 8
  %9 = load %struct.crypto_tfm*, %struct.crypto_tfm** %3, align 8
  %10 = getelementptr inbounds %struct.crypto_tfm, %struct.crypto_tfm* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  store %struct.digest_alg* %12, %struct.digest_alg** %4, align 8
  %13 = load %struct.digest_alg*, %struct.digest_alg** %4, align 8
  %14 = getelementptr inbounds %struct.digest_alg, %struct.digest_alg* %13, i32 0, i32 0
  %15 = load i32 (%struct.crypto_tfm.0*)*, i32 (%struct.crypto_tfm.0*)** %14, align 8
  %16 = load %struct.crypto_tfm*, %struct.crypto_tfm** %3, align 8
  %17 = bitcast %struct.crypto_tfm* %16 to %struct.crypto_tfm.0*
  %18 = call i32 %15(%struct.crypto_tfm.0* %17)
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
