; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_shash.c_crypto_init_shash_spawn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_shash.c_crypto_init_shash_spawn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_shash_spawn = type { i32 }
%struct.shash_alg = type { i32 }
%struct.crypto_instance = type { i32 }

@crypto_shash_type = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_init_shash_spawn(%struct.crypto_shash_spawn* %0, %struct.shash_alg* %1, %struct.crypto_instance* %2) #0 {
  %4 = alloca %struct.crypto_shash_spawn*, align 8
  %5 = alloca %struct.shash_alg*, align 8
  %6 = alloca %struct.crypto_instance*, align 8
  store %struct.crypto_shash_spawn* %0, %struct.crypto_shash_spawn** %4, align 8
  store %struct.shash_alg* %1, %struct.shash_alg** %5, align 8
  store %struct.crypto_instance* %2, %struct.crypto_instance** %6, align 8
  %7 = load %struct.crypto_shash_spawn*, %struct.crypto_shash_spawn** %4, align 8
  %8 = getelementptr inbounds %struct.crypto_shash_spawn, %struct.crypto_shash_spawn* %7, i32 0, i32 0
  %9 = load %struct.shash_alg*, %struct.shash_alg** %5, align 8
  %10 = getelementptr inbounds %struct.shash_alg, %struct.shash_alg* %9, i32 0, i32 0
  %11 = load %struct.crypto_instance*, %struct.crypto_instance** %6, align 8
  %12 = call i32 @crypto_init_spawn2(i32* %8, i32* %10, %struct.crypto_instance* %11, i32* @crypto_shash_type)
  ret i32 %12
}

declare dso_local i32 @crypto_init_spawn2(i32*, i32*, %struct.crypto_instance*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
