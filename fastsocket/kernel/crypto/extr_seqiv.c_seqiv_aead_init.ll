; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_seqiv.c_seqiv_aead_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_seqiv.c_seqiv_aead_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_tfm = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.crypto_aead = type { i32 }
%struct.seqiv_ctx = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_tfm*)* @seqiv_aead_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @seqiv_aead_init(%struct.crypto_tfm* %0) #0 {
  %2 = alloca %struct.crypto_tfm*, align 8
  %3 = alloca %struct.crypto_aead*, align 8
  %4 = alloca %struct.seqiv_ctx*, align 8
  store %struct.crypto_tfm* %0, %struct.crypto_tfm** %2, align 8
  %5 = load %struct.crypto_tfm*, %struct.crypto_tfm** %2, align 8
  %6 = call %struct.crypto_aead* @__crypto_aead_cast(%struct.crypto_tfm* %5)
  store %struct.crypto_aead* %6, %struct.crypto_aead** %3, align 8
  %7 = load %struct.crypto_aead*, %struct.crypto_aead** %3, align 8
  %8 = call %struct.seqiv_ctx* @crypto_aead_ctx(%struct.crypto_aead* %7)
  store %struct.seqiv_ctx* %8, %struct.seqiv_ctx** %4, align 8
  %9 = load %struct.seqiv_ctx*, %struct.seqiv_ctx** %4, align 8
  %10 = getelementptr inbounds %struct.seqiv_ctx, %struct.seqiv_ctx* %9, i32 0, i32 0
  %11 = call i32 @spin_lock_init(i32* %10)
  %12 = load %struct.crypto_tfm*, %struct.crypto_tfm** %2, align 8
  %13 = getelementptr inbounds %struct.crypto_tfm, %struct.crypto_tfm* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store i32 4, i32* %14, align 4
  %15 = load %struct.crypto_tfm*, %struct.crypto_tfm** %2, align 8
  %16 = call i32 @aead_geniv_init(%struct.crypto_tfm* %15)
  ret i32 %16
}

declare dso_local %struct.crypto_aead* @__crypto_aead_cast(%struct.crypto_tfm*) #1

declare dso_local %struct.seqiv_ctx* @crypto_aead_ctx(%struct.crypto_aead*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @aead_geniv_init(%struct.crypto_tfm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
