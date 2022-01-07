; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/nx/extr_nx-sha256.c_nx_sha256_export.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/nx/extr_nx-sha256.c_nx_sha256_export.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shash_desc = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.sha256_state = type { i32*, i32*, i64 }
%struct.nx_crypto_ctx = type { i64 }
%struct.nx_csbcpb = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32* }

@SHA256_DIGEST_SIZE = common dso_local global i32 0, align 4
@SHA256_H0 = common dso_local global i32 0, align 4
@SHA256_H1 = common dso_local global i32 0, align 4
@SHA256_H2 = common dso_local global i32 0, align 4
@SHA256_H3 = common dso_local global i32 0, align 4
@SHA256_H4 = common dso_local global i32 0, align 4
@SHA256_H5 = common dso_local global i32 0, align 4
@SHA256_H6 = common dso_local global i32 0, align 4
@SHA256_H7 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.shash_desc*, i8*)* @nx_sha256_export to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nx_sha256_export(%struct.shash_desc* %0, i8* %1) #0 {
  %3 = alloca %struct.shash_desc*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sha256_state*, align 8
  %6 = alloca %struct.nx_crypto_ctx*, align 8
  %7 = alloca %struct.nx_csbcpb*, align 8
  %8 = alloca %struct.sha256_state*, align 8
  store %struct.shash_desc* %0, %struct.shash_desc** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load %struct.shash_desc*, %struct.shash_desc** %3, align 8
  %10 = call %struct.sha256_state* @shash_desc_ctx(%struct.shash_desc* %9)
  store %struct.sha256_state* %10, %struct.sha256_state** %5, align 8
  %11 = load %struct.shash_desc*, %struct.shash_desc** %3, align 8
  %12 = getelementptr inbounds %struct.shash_desc, %struct.shash_desc* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = call %struct.nx_crypto_ctx* @crypto_tfm_ctx(i32* %14)
  store %struct.nx_crypto_ctx* %15, %struct.nx_crypto_ctx** %6, align 8
  %16 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %6, align 8
  %17 = getelementptr inbounds %struct.nx_crypto_ctx, %struct.nx_crypto_ctx* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.nx_csbcpb*
  store %struct.nx_csbcpb* %19, %struct.nx_csbcpb** %7, align 8
  %20 = load i8*, i8** %4, align 8
  %21 = bitcast i8* %20 to %struct.sha256_state*
  store %struct.sha256_state* %21, %struct.sha256_state** %8, align 8
  %22 = load %struct.sha256_state*, %struct.sha256_state** %5, align 8
  %23 = getelementptr inbounds %struct.sha256_state, %struct.sha256_state* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.nx_csbcpb*, %struct.nx_csbcpb** %7, align 8
  %26 = getelementptr inbounds %struct.nx_csbcpb, %struct.nx_csbcpb* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = sdiv i32 %29, 8
  %31 = sext i32 %30 to i64
  %32 = add nsw i64 %24, %31
  %33 = load %struct.sha256_state*, %struct.sha256_state** %8, align 8
  %34 = getelementptr inbounds %struct.sha256_state, %struct.sha256_state* %33, i32 0, i32 2
  store i64 %32, i64* %34, align 8
  %35 = load %struct.sha256_state*, %struct.sha256_state** %8, align 8
  %36 = getelementptr inbounds %struct.sha256_state, %struct.sha256_state* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = load %struct.sha256_state*, %struct.sha256_state** %5, align 8
  %39 = getelementptr inbounds %struct.sha256_state, %struct.sha256_state* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @memcpy(i32* %37, i32* %40, i32 8)
  %42 = load %struct.nx_csbcpb*, %struct.nx_csbcpb** %7, align 8
  %43 = getelementptr inbounds %struct.nx_csbcpb, %struct.nx_csbcpb* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %59

48:                                               ; preds = %2
  %49 = load %struct.sha256_state*, %struct.sha256_state** %8, align 8
  %50 = getelementptr inbounds %struct.sha256_state, %struct.sha256_state* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load %struct.nx_csbcpb*, %struct.nx_csbcpb** %7, align 8
  %53 = getelementptr inbounds %struct.nx_csbcpb, %struct.nx_csbcpb* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* @SHA256_DIGEST_SIZE, align 4
  %58 = call i32 @memcpy(i32* %51, i32* %56, i32 %57)
  br label %100

59:                                               ; preds = %2
  %60 = load i32, i32* @SHA256_H0, align 4
  %61 = load %struct.sha256_state*, %struct.sha256_state** %8, align 8
  %62 = getelementptr inbounds %struct.sha256_state, %struct.sha256_state* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  store i32 %60, i32* %64, align 4
  %65 = load i32, i32* @SHA256_H1, align 4
  %66 = load %struct.sha256_state*, %struct.sha256_state** %8, align 8
  %67 = getelementptr inbounds %struct.sha256_state, %struct.sha256_state* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 1
  store i32 %65, i32* %69, align 4
  %70 = load i32, i32* @SHA256_H2, align 4
  %71 = load %struct.sha256_state*, %struct.sha256_state** %8, align 8
  %72 = getelementptr inbounds %struct.sha256_state, %struct.sha256_state* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 2
  store i32 %70, i32* %74, align 4
  %75 = load i32, i32* @SHA256_H3, align 4
  %76 = load %struct.sha256_state*, %struct.sha256_state** %8, align 8
  %77 = getelementptr inbounds %struct.sha256_state, %struct.sha256_state* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 3
  store i32 %75, i32* %79, align 4
  %80 = load i32, i32* @SHA256_H4, align 4
  %81 = load %struct.sha256_state*, %struct.sha256_state** %8, align 8
  %82 = getelementptr inbounds %struct.sha256_state, %struct.sha256_state* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 4
  store i32 %80, i32* %84, align 4
  %85 = load i32, i32* @SHA256_H5, align 4
  %86 = load %struct.sha256_state*, %struct.sha256_state** %8, align 8
  %87 = getelementptr inbounds %struct.sha256_state, %struct.sha256_state* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 5
  store i32 %85, i32* %89, align 4
  %90 = load i32, i32* @SHA256_H6, align 4
  %91 = load %struct.sha256_state*, %struct.sha256_state** %8, align 8
  %92 = getelementptr inbounds %struct.sha256_state, %struct.sha256_state* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 6
  store i32 %90, i32* %94, align 4
  %95 = load i32, i32* @SHA256_H7, align 4
  %96 = load %struct.sha256_state*, %struct.sha256_state** %8, align 8
  %97 = getelementptr inbounds %struct.sha256_state, %struct.sha256_state* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 7
  store i32 %95, i32* %99, align 4
  br label %100

100:                                              ; preds = %59, %48
  ret i32 0
}

declare dso_local %struct.sha256_state* @shash_desc_ctx(%struct.shash_desc*) #1

declare dso_local %struct.nx_crypto_ctx* @crypto_tfm_ctx(i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
