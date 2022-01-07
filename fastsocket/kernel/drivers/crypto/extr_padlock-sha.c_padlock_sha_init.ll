; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/extr_padlock-sha.c_padlock_sha_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/extr_padlock-sha.c_padlock_sha_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shash_desc = type { i32, i32 }
%struct.padlock_sha_desc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.padlock_sha_ctx = type { i32 }

@CRYPTO_TFM_REQ_MAY_SLEEP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.shash_desc*)* @padlock_sha_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @padlock_sha_init(%struct.shash_desc* %0) #0 {
  %2 = alloca %struct.shash_desc*, align 8
  %3 = alloca %struct.padlock_sha_desc*, align 8
  %4 = alloca %struct.padlock_sha_ctx*, align 8
  store %struct.shash_desc* %0, %struct.shash_desc** %2, align 8
  %5 = load %struct.shash_desc*, %struct.shash_desc** %2, align 8
  %6 = call %struct.padlock_sha_desc* @shash_desc_ctx(%struct.shash_desc* %5)
  store %struct.padlock_sha_desc* %6, %struct.padlock_sha_desc** %3, align 8
  %7 = load %struct.shash_desc*, %struct.shash_desc** %2, align 8
  %8 = getelementptr inbounds %struct.shash_desc, %struct.shash_desc* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.padlock_sha_ctx* @crypto_shash_ctx(i32 %9)
  store %struct.padlock_sha_ctx* %10, %struct.padlock_sha_ctx** %4, align 8
  %11 = load %struct.padlock_sha_ctx*, %struct.padlock_sha_ctx** %4, align 8
  %12 = getelementptr inbounds %struct.padlock_sha_ctx, %struct.padlock_sha_ctx* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.padlock_sha_desc*, %struct.padlock_sha_desc** %3, align 8
  %15 = getelementptr inbounds %struct.padlock_sha_desc, %struct.padlock_sha_desc* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  store i32 %13, i32* %16, align 4
  %17 = load %struct.shash_desc*, %struct.shash_desc** %2, align 8
  %18 = getelementptr inbounds %struct.shash_desc, %struct.shash_desc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @CRYPTO_TFM_REQ_MAY_SLEEP, align 4
  %21 = and i32 %19, %20
  %22 = load %struct.padlock_sha_desc*, %struct.padlock_sha_desc** %3, align 8
  %23 = getelementptr inbounds %struct.padlock_sha_desc, %struct.padlock_sha_desc* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i32 %21, i32* %24, align 4
  %25 = load %struct.padlock_sha_desc*, %struct.padlock_sha_desc** %3, align 8
  %26 = getelementptr inbounds %struct.padlock_sha_desc, %struct.padlock_sha_desc* %25, i32 0, i32 0
  %27 = call i32 @crypto_shash_init(%struct.TYPE_2__* %26)
  ret i32 %27
}

declare dso_local %struct.padlock_sha_desc* @shash_desc_ctx(%struct.shash_desc*) #1

declare dso_local %struct.padlock_sha_ctx* @crypto_shash_ctx(i32) #1

declare dso_local i32 @crypto_shash_init(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
