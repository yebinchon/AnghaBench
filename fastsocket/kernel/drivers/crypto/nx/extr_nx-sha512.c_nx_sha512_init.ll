; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/nx/extr_nx-sha512.c_nx_sha512_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/nx/extr_nx-sha512.c_nx_sha512_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shash_desc = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.sha512_state = type { i64 }
%struct.nx_crypto_ctx = type { %struct.nx_sg*, %struct.TYPE_6__, %struct.TYPE_5__*, i32, %struct.TYPE_5__* }
%struct.nx_sg = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@HCOP_FC_SHA = common dso_local global i32 0, align 4
@NX_PROPS_SHA512 = common dso_local global i64 0, align 8
@NX_DS_SHA512 = common dso_local global i32 0, align 4
@SHA512_DIGEST_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.shash_desc*)* @nx_sha512_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nx_sha512_init(%struct.shash_desc* %0) #0 {
  %2 = alloca %struct.shash_desc*, align 8
  %3 = alloca %struct.sha512_state*, align 8
  %4 = alloca %struct.nx_crypto_ctx*, align 8
  %5 = alloca %struct.nx_sg*, align 8
  store %struct.shash_desc* %0, %struct.shash_desc** %2, align 8
  %6 = load %struct.shash_desc*, %struct.shash_desc** %2, align 8
  %7 = call %struct.sha512_state* @shash_desc_ctx(%struct.shash_desc* %6)
  store %struct.sha512_state* %7, %struct.sha512_state** %3, align 8
  %8 = load %struct.shash_desc*, %struct.shash_desc** %2, align 8
  %9 = getelementptr inbounds %struct.shash_desc, %struct.shash_desc* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = call %struct.nx_crypto_ctx* @crypto_tfm_ctx(i32* %11)
  store %struct.nx_crypto_ctx* %12, %struct.nx_crypto_ctx** %4, align 8
  %13 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %4, align 8
  %14 = load i32, i32* @HCOP_FC_SHA, align 4
  %15 = call i32 @nx_ctx_init(%struct.nx_crypto_ctx* %13, i32 %14)
  %16 = load %struct.sha512_state*, %struct.sha512_state** %3, align 8
  %17 = call i32 @memset(%struct.sha512_state* %16, i32 0, i32 8)
  %18 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %4, align 8
  %19 = getelementptr inbounds %struct.nx_crypto_ctx, %struct.nx_crypto_ctx* %18, i32 0, i32 4
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = load i64, i64* @NX_PROPS_SHA512, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i64 %21
  %23 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %4, align 8
  %24 = getelementptr inbounds %struct.nx_crypto_ctx, %struct.nx_crypto_ctx* %23, i32 0, i32 2
  store %struct.TYPE_5__* %22, %struct.TYPE_5__** %24, align 8
  %25 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %4, align 8
  %26 = getelementptr inbounds %struct.nx_crypto_ctx, %struct.nx_crypto_ctx* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @NX_DS_SHA512, align 4
  %29 = call i32 @NX_CPB_SET_DIGEST_SIZE(i32 %27, i32 %28)
  %30 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %4, align 8
  %31 = getelementptr inbounds %struct.nx_crypto_ctx, %struct.nx_crypto_ctx* %30, i32 0, i32 0
  %32 = load %struct.nx_sg*, %struct.nx_sg** %31, align 8
  %33 = load %struct.sha512_state*, %struct.sha512_state** %3, align 8
  %34 = getelementptr inbounds %struct.sha512_state, %struct.sha512_state* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to i32*
  %37 = load i32, i32* @SHA512_DIGEST_SIZE, align 4
  %38 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %4, align 8
  %39 = getelementptr inbounds %struct.nx_crypto_ctx, %struct.nx_crypto_ctx* %38, i32 0, i32 2
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call %struct.nx_sg* @nx_build_sg_list(%struct.nx_sg* %32, i32* %36, i32 %37, i32 %42)
  store %struct.nx_sg* %43, %struct.nx_sg** %5, align 8
  %44 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %4, align 8
  %45 = getelementptr inbounds %struct.nx_crypto_ctx, %struct.nx_crypto_ctx* %44, i32 0, i32 0
  %46 = load %struct.nx_sg*, %struct.nx_sg** %45, align 8
  %47 = load %struct.nx_sg*, %struct.nx_sg** %5, align 8
  %48 = ptrtoint %struct.nx_sg* %46 to i64
  %49 = ptrtoint %struct.nx_sg* %47 to i64
  %50 = sub i64 %48, %49
  %51 = sdiv exact i64 %50, 4
  %52 = mul i64 %51, 4
  %53 = trunc i64 %52 to i32
  %54 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %4, align 8
  %55 = getelementptr inbounds %struct.nx_crypto_ctx, %struct.nx_crypto_ctx* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  store i32 %53, i32* %56, align 8
  ret i32 0
}

declare dso_local %struct.sha512_state* @shash_desc_ctx(%struct.shash_desc*) #1

declare dso_local %struct.nx_crypto_ctx* @crypto_tfm_ctx(i32*) #1

declare dso_local i32 @nx_ctx_init(%struct.nx_crypto_ctx*, i32) #1

declare dso_local i32 @memset(%struct.sha512_state*, i32, i32) #1

declare dso_local i32 @NX_CPB_SET_DIGEST_SIZE(i32, i32) #1

declare dso_local %struct.nx_sg* @nx_build_sg_list(%struct.nx_sg*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
