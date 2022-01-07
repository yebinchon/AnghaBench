; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_cryptd.c_cryptd_get_queue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_cryptd.c_cryptd_get_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cryptd_queue = type { i32 }
%struct.crypto_tfm = type { i32 }
%struct.crypto_instance = type { i32 }
%struct.cryptd_instance_ctx = type { %struct.cryptd_queue* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cryptd_queue* (%struct.crypto_tfm*)* @cryptd_get_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cryptd_queue* @cryptd_get_queue(%struct.crypto_tfm* %0) #0 {
  %2 = alloca %struct.crypto_tfm*, align 8
  %3 = alloca %struct.crypto_instance*, align 8
  %4 = alloca %struct.cryptd_instance_ctx*, align 8
  store %struct.crypto_tfm* %0, %struct.crypto_tfm** %2, align 8
  %5 = load %struct.crypto_tfm*, %struct.crypto_tfm** %2, align 8
  %6 = call %struct.crypto_instance* @crypto_tfm_alg_instance(%struct.crypto_tfm* %5)
  store %struct.crypto_instance* %6, %struct.crypto_instance** %3, align 8
  %7 = load %struct.crypto_instance*, %struct.crypto_instance** %3, align 8
  %8 = call %struct.cryptd_instance_ctx* @crypto_instance_ctx(%struct.crypto_instance* %7)
  store %struct.cryptd_instance_ctx* %8, %struct.cryptd_instance_ctx** %4, align 8
  %9 = load %struct.cryptd_instance_ctx*, %struct.cryptd_instance_ctx** %4, align 8
  %10 = getelementptr inbounds %struct.cryptd_instance_ctx, %struct.cryptd_instance_ctx* %9, i32 0, i32 0
  %11 = load %struct.cryptd_queue*, %struct.cryptd_queue** %10, align 8
  ret %struct.cryptd_queue* %11
}

declare dso_local %struct.crypto_instance* @crypto_tfm_alg_instance(%struct.crypto_tfm*) #1

declare dso_local %struct.cryptd_instance_ctx* @crypto_instance_ctx(%struct.crypto_instance*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
