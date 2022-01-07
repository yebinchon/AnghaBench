; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_ansi_cprng.c_cprng_get_random.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_ansi_cprng.c_cprng_get_random.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_rng = type { i32 }
%struct.prng_context = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_rng*, i32*, i32)* @cprng_get_random to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cprng_get_random(%struct.crypto_rng* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.crypto_rng*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.prng_context*, align 8
  store %struct.crypto_rng* %0, %struct.crypto_rng** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.crypto_rng*, %struct.crypto_rng** %4, align 8
  %9 = call %struct.prng_context* @crypto_rng_ctx(%struct.crypto_rng* %8)
  store %struct.prng_context* %9, %struct.prng_context** %7, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.prng_context*, %struct.prng_context** %7, align 8
  %13 = call i32 @get_prng_bytes(i32* %10, i32 %11, %struct.prng_context* %12, i32 0)
  ret i32 %13
}

declare dso_local %struct.prng_context* @crypto_rng_ctx(%struct.crypto_rng*) #1

declare dso_local i32 @get_prng_bytes(i32*, i32, %struct.prng_context*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
