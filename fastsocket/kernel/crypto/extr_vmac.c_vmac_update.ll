; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_vmac.c_vmac_update.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_vmac.c_vmac_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shash_desc = type { %struct.crypto_shash* }
%struct.crypto_shash = type { i32 }
%struct.vmac_ctx_t = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.shash_desc*, i32*, i32)* @vmac_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmac_update(%struct.shash_desc* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.shash_desc*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.crypto_shash*, align 8
  %8 = alloca %struct.vmac_ctx_t*, align 8
  store %struct.shash_desc* %0, %struct.shash_desc** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.shash_desc*, %struct.shash_desc** %4, align 8
  %10 = getelementptr inbounds %struct.shash_desc, %struct.shash_desc* %9, i32 0, i32 0
  %11 = load %struct.crypto_shash*, %struct.crypto_shash** %10, align 8
  store %struct.crypto_shash* %11, %struct.crypto_shash** %7, align 8
  %12 = load %struct.crypto_shash*, %struct.crypto_shash** %7, align 8
  %13 = call %struct.vmac_ctx_t* @crypto_shash_ctx(%struct.crypto_shash* %12)
  store %struct.vmac_ctx_t* %13, %struct.vmac_ctx_t** %8, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.vmac_ctx_t*, %struct.vmac_ctx_t** %8, align 8
  %17 = getelementptr inbounds %struct.vmac_ctx_t, %struct.vmac_ctx_t* %16, i32 0, i32 0
  %18 = call i32 @vhash_update(i32* %14, i32 %15, i32* %17)
  ret i32 0
}

declare dso_local %struct.vmac_ctx_t* @crypto_shash_ctx(%struct.crypto_shash*) #1

declare dso_local i32 @vhash_update(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
