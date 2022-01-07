; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_xcbc.c_crypto_xcbc_digest_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_xcbc.c_crypto_xcbc_digest_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shash_desc = type { i32 }
%struct.xcbc_desc_ctx = type { i64, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.shash_desc*)* @crypto_xcbc_digest_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypto_xcbc_digest_init(%struct.shash_desc* %0) #0 {
  %2 = alloca %struct.shash_desc*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.xcbc_desc_ctx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store %struct.shash_desc* %0, %struct.shash_desc** %2, align 8
  %7 = load %struct.shash_desc*, %struct.shash_desc** %2, align 8
  %8 = getelementptr inbounds %struct.shash_desc, %struct.shash_desc* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i64 @crypto_shash_alignmask(i32 %9)
  store i64 %10, i64* %3, align 8
  %11 = load %struct.shash_desc*, %struct.shash_desc** %2, align 8
  %12 = call %struct.xcbc_desc_ctx* @shash_desc_ctx(%struct.shash_desc* %11)
  store %struct.xcbc_desc_ctx* %12, %struct.xcbc_desc_ctx** %4, align 8
  %13 = load %struct.shash_desc*, %struct.shash_desc** %2, align 8
  %14 = getelementptr inbounds %struct.shash_desc, %struct.shash_desc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @crypto_shash_blocksize(i32 %15)
  store i32 %16, i32* %5, align 4
  %17 = load %struct.xcbc_desc_ctx*, %struct.xcbc_desc_ctx** %4, align 8
  %18 = getelementptr inbounds %struct.xcbc_desc_ctx, %struct.xcbc_desc_ctx* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i64, i64* %3, align 8
  %22 = add i64 %21, 1
  %23 = call i32* @PTR_ALIGN(i32* %20, i64 %22)
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  store i32* %26, i32** %6, align 8
  %27 = load %struct.xcbc_desc_ctx*, %struct.xcbc_desc_ctx** %4, align 8
  %28 = getelementptr inbounds %struct.xcbc_desc_ctx, %struct.xcbc_desc_ctx* %27, i32 0, i32 0
  store i64 0, i64* %28, align 8
  %29 = load i32*, i32** %6, align 8
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @memset(i32* %29, i32 0, i32 %30)
  ret i32 0
}

declare dso_local i64 @crypto_shash_alignmask(i32) #1

declare dso_local %struct.xcbc_desc_ctx* @shash_desc_ctx(%struct.shash_desc*) #1

declare dso_local i32 @crypto_shash_blocksize(i32) #1

declare dso_local i32* @PTR_ALIGN(i32*, i64) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
