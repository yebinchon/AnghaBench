; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/extr_padlock-sha.c_padlock_sha_import.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/extr_padlock-sha.c_padlock_sha_import.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shash_desc = type { i32, i32 }
%struct.padlock_sha_desc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.padlock_sha_ctx = type { i32 }

@CRYPTO_TFM_REQ_MAY_SLEEP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.shash_desc*, i8*)* @padlock_sha_import to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @padlock_sha_import(%struct.shash_desc* %0, i8* %1) #0 {
  %3 = alloca %struct.shash_desc*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.padlock_sha_desc*, align 8
  %6 = alloca %struct.padlock_sha_ctx*, align 8
  store %struct.shash_desc* %0, %struct.shash_desc** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.shash_desc*, %struct.shash_desc** %3, align 8
  %8 = call %struct.padlock_sha_desc* @shash_desc_ctx(%struct.shash_desc* %7)
  store %struct.padlock_sha_desc* %8, %struct.padlock_sha_desc** %5, align 8
  %9 = load %struct.shash_desc*, %struct.shash_desc** %3, align 8
  %10 = getelementptr inbounds %struct.shash_desc, %struct.shash_desc* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.padlock_sha_ctx* @crypto_shash_ctx(i32 %11)
  store %struct.padlock_sha_ctx* %12, %struct.padlock_sha_ctx** %6, align 8
  %13 = load %struct.padlock_sha_ctx*, %struct.padlock_sha_ctx** %6, align 8
  %14 = getelementptr inbounds %struct.padlock_sha_ctx, %struct.padlock_sha_ctx* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.padlock_sha_desc*, %struct.padlock_sha_desc** %5, align 8
  %17 = getelementptr inbounds %struct.padlock_sha_desc, %struct.padlock_sha_desc* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  store i32 %15, i32* %18, align 4
  %19 = load %struct.shash_desc*, %struct.shash_desc** %3, align 8
  %20 = getelementptr inbounds %struct.shash_desc, %struct.shash_desc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @CRYPTO_TFM_REQ_MAY_SLEEP, align 4
  %23 = and i32 %21, %22
  %24 = load %struct.padlock_sha_desc*, %struct.padlock_sha_desc** %5, align 8
  %25 = getelementptr inbounds %struct.padlock_sha_desc, %struct.padlock_sha_desc* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store i32 %23, i32* %26, align 4
  %27 = load %struct.padlock_sha_desc*, %struct.padlock_sha_desc** %5, align 8
  %28 = getelementptr inbounds %struct.padlock_sha_desc, %struct.padlock_sha_desc* %27, i32 0, i32 0
  %29 = load i8*, i8** %4, align 8
  %30 = call i32 @crypto_shash_import(%struct.TYPE_2__* %28, i8* %29)
  ret i32 %30
}

declare dso_local %struct.padlock_sha_desc* @shash_desc_ctx(%struct.shash_desc*) #1

declare dso_local %struct.padlock_sha_ctx* @crypto_shash_ctx(i32) #1

declare dso_local i32 @crypto_shash_import(%struct.TYPE_2__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
