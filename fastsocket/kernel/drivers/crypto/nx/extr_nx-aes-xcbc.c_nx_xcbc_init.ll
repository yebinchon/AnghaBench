; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/nx/extr_nx-aes-xcbc.c_nx_xcbc_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/nx/extr_nx-aes-xcbc.c_nx_xcbc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shash_desc = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.xcbc_state = type { i64 }
%struct.nx_crypto_ctx = type { %struct.nx_sg*, %struct.TYPE_16__, %struct.TYPE_15__*, %struct.TYPE_14__, %struct.nx_csbcpb* }
%struct.nx_sg = type { i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.xcbc_state* }
%struct.nx_csbcpb = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }

@HCOP_FC_AES = common dso_local global i32 0, align 4
@NX_KS_AES_128 = common dso_local global i32 0, align 4
@NX_MODE_AES_XCBC_MAC = common dso_local global i32 0, align 4
@AES_BLOCK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.shash_desc*)* @nx_xcbc_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nx_xcbc_init(%struct.shash_desc* %0) #0 {
  %2 = alloca %struct.shash_desc*, align 8
  %3 = alloca %struct.xcbc_state*, align 8
  %4 = alloca %struct.nx_crypto_ctx*, align 8
  %5 = alloca %struct.nx_csbcpb*, align 8
  %6 = alloca %struct.nx_sg*, align 8
  store %struct.shash_desc* %0, %struct.shash_desc** %2, align 8
  %7 = load %struct.shash_desc*, %struct.shash_desc** %2, align 8
  %8 = call %struct.xcbc_state* @shash_desc_ctx(%struct.shash_desc* %7)
  store %struct.xcbc_state* %8, %struct.xcbc_state** %3, align 8
  %9 = load %struct.shash_desc*, %struct.shash_desc** %2, align 8
  %10 = getelementptr inbounds %struct.shash_desc, %struct.shash_desc* %9, i32 0, i32 0
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = call %struct.nx_crypto_ctx* @crypto_tfm_ctx(i32* %12)
  store %struct.nx_crypto_ctx* %13, %struct.nx_crypto_ctx** %4, align 8
  %14 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %4, align 8
  %15 = getelementptr inbounds %struct.nx_crypto_ctx, %struct.nx_crypto_ctx* %14, i32 0, i32 4
  %16 = load %struct.nx_csbcpb*, %struct.nx_csbcpb** %15, align 8
  store %struct.nx_csbcpb* %16, %struct.nx_csbcpb** %5, align 8
  %17 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %4, align 8
  %18 = load i32, i32* @HCOP_FC_AES, align 4
  %19 = call i32 @nx_ctx_init(%struct.nx_crypto_ctx* %17, i32 %18)
  %20 = load %struct.xcbc_state*, %struct.xcbc_state** %3, align 8
  %21 = call i32 @memset(%struct.xcbc_state* %20, i32 0, i32 8)
  %22 = load %struct.nx_csbcpb*, %struct.nx_csbcpb** %5, align 8
  %23 = load i32, i32* @NX_KS_AES_128, align 4
  %24 = call i32 @NX_CPB_SET_KEY_SIZE(%struct.nx_csbcpb* %22, i32 %23)
  %25 = load i32, i32* @NX_MODE_AES_XCBC_MAC, align 4
  %26 = load %struct.nx_csbcpb*, %struct.nx_csbcpb** %5, align 8
  %27 = getelementptr inbounds %struct.nx_csbcpb, %struct.nx_csbcpb* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  store i32 %25, i32* %29, align 4
  %30 = load %struct.nx_csbcpb*, %struct.nx_csbcpb** %5, align 8
  %31 = getelementptr inbounds %struct.nx_csbcpb, %struct.nx_csbcpb* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %4, align 8
  %36 = getelementptr inbounds %struct.nx_crypto_ctx, %struct.nx_crypto_ctx* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 0
  %39 = load %struct.xcbc_state*, %struct.xcbc_state** %38, align 8
  %40 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %41 = call i32 @memcpy(i32 %34, %struct.xcbc_state* %39, i32 %40)
  %42 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %4, align 8
  %43 = getelementptr inbounds %struct.nx_crypto_ctx, %struct.nx_crypto_ctx* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 0
  %46 = load %struct.xcbc_state*, %struct.xcbc_state** %45, align 8
  %47 = call i32 @memset(%struct.xcbc_state* %46, i32 0, i32 8)
  %48 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %4, align 8
  %49 = getelementptr inbounds %struct.nx_crypto_ctx, %struct.nx_crypto_ctx* %48, i32 0, i32 0
  %50 = load %struct.nx_sg*, %struct.nx_sg** %49, align 8
  %51 = load %struct.xcbc_state*, %struct.xcbc_state** %3, align 8
  %52 = getelementptr inbounds %struct.xcbc_state, %struct.xcbc_state* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = inttoptr i64 %53 to i32*
  %55 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %56 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %4, align 8
  %57 = getelementptr inbounds %struct.nx_crypto_ctx, %struct.nx_crypto_ctx* %56, i32 0, i32 2
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call %struct.nx_sg* @nx_build_sg_list(%struct.nx_sg* %50, i32* %54, i32 %55, i32 %60)
  store %struct.nx_sg* %61, %struct.nx_sg** %6, align 8
  %62 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %4, align 8
  %63 = getelementptr inbounds %struct.nx_crypto_ctx, %struct.nx_crypto_ctx* %62, i32 0, i32 0
  %64 = load %struct.nx_sg*, %struct.nx_sg** %63, align 8
  %65 = load %struct.nx_sg*, %struct.nx_sg** %6, align 8
  %66 = ptrtoint %struct.nx_sg* %64 to i64
  %67 = ptrtoint %struct.nx_sg* %65 to i64
  %68 = sub i64 %66, %67
  %69 = sdiv exact i64 %68, 4
  %70 = mul i64 %69, 4
  %71 = trunc i64 %70 to i32
  %72 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %4, align 8
  %73 = getelementptr inbounds %struct.nx_crypto_ctx, %struct.nx_crypto_ctx* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 0
  store i32 %71, i32* %74, align 8
  ret i32 0
}

declare dso_local %struct.xcbc_state* @shash_desc_ctx(%struct.shash_desc*) #1

declare dso_local %struct.nx_crypto_ctx* @crypto_tfm_ctx(i32*) #1

declare dso_local i32 @nx_ctx_init(%struct.nx_crypto_ctx*, i32) #1

declare dso_local i32 @memset(%struct.xcbc_state*, i32, i32) #1

declare dso_local i32 @NX_CPB_SET_KEY_SIZE(%struct.nx_csbcpb*, i32) #1

declare dso_local i32 @memcpy(i32, %struct.xcbc_state*, i32) #1

declare dso_local %struct.nx_sg* @nx_build_sg_list(%struct.nx_sg*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
