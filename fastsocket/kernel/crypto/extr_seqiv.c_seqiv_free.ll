; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_seqiv.c_seqiv_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_seqiv.c_seqiv_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_instance = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@CRYPTO_ALG_TYPE_AEAD = common dso_local global i32 0, align 4
@CRYPTO_ALG_TYPE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.crypto_instance*)* @seqiv_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @seqiv_free(%struct.crypto_instance* %0) #0 {
  %2 = alloca %struct.crypto_instance*, align 8
  store %struct.crypto_instance* %0, %struct.crypto_instance** %2, align 8
  %3 = load %struct.crypto_instance*, %struct.crypto_instance** %2, align 8
  %4 = getelementptr inbounds %struct.crypto_instance, %struct.crypto_instance* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @CRYPTO_ALG_TYPE_AEAD, align 4
  %8 = xor i32 %6, %7
  %9 = load i32, i32* @CRYPTO_ALG_TYPE_MASK, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load %struct.crypto_instance*, %struct.crypto_instance** %2, align 8
  %14 = call i32 @skcipher_geniv_free(%struct.crypto_instance* %13)
  br label %18

15:                                               ; preds = %1
  %16 = load %struct.crypto_instance*, %struct.crypto_instance** %2, align 8
  %17 = call i32 @aead_geniv_free(%struct.crypto_instance* %16)
  br label %18

18:                                               ; preds = %15, %12
  %19 = call i32 (...) @crypto_put_default_rng()
  ret void
}

declare dso_local i32 @skcipher_geniv_free(%struct.crypto_instance*) #1

declare dso_local i32 @aead_geniv_free(%struct.crypto_instance*) #1

declare dso_local i32 @crypto_put_default_rng(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
