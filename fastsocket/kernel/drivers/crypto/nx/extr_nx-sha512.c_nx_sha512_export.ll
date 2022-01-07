; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/nx/extr_nx-sha512.c_nx_sha512_export.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/nx/extr_nx-sha512.c_nx_sha512_export.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shash_desc = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.sha512_state = type { i32*, i32*, i32* }
%struct.nx_crypto_ctx = type { i64 }
%struct.nx_csbcpb = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32* }

@SHA512_DIGEST_SIZE = common dso_local global i32 0, align 4
@SHA512_H0 = common dso_local global i32 0, align 4
@SHA512_H1 = common dso_local global i32 0, align 4
@SHA512_H2 = common dso_local global i32 0, align 4
@SHA512_H3 = common dso_local global i32 0, align 4
@SHA512_H4 = common dso_local global i32 0, align 4
@SHA512_H5 = common dso_local global i32 0, align 4
@SHA512_H6 = common dso_local global i32 0, align 4
@SHA512_H7 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.shash_desc*, i8*)* @nx_sha512_export to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nx_sha512_export(%struct.shash_desc* %0, i8* %1) #0 {
  %3 = alloca %struct.shash_desc*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sha512_state*, align 8
  %6 = alloca %struct.nx_crypto_ctx*, align 8
  %7 = alloca %struct.nx_csbcpb*, align 8
  %8 = alloca %struct.sha512_state*, align 8
  store %struct.shash_desc* %0, %struct.shash_desc** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load %struct.shash_desc*, %struct.shash_desc** %3, align 8
  %10 = call %struct.sha512_state* @shash_desc_ctx(%struct.shash_desc* %9)
  store %struct.sha512_state* %10, %struct.sha512_state** %5, align 8
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
  %21 = bitcast i8* %20 to %struct.sha512_state*
  store %struct.sha512_state* %21, %struct.sha512_state** %8, align 8
  %22 = load %struct.nx_csbcpb*, %struct.nx_csbcpb** %7, align 8
  %23 = getelementptr inbounds %struct.nx_csbcpb, %struct.nx_csbcpb* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = ashr i32 %26, 3
  %28 = load %struct.nx_csbcpb*, %struct.nx_csbcpb** %7, align 8
  %29 = getelementptr inbounds %struct.nx_csbcpb, %struct.nx_csbcpb* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, 7
  %34 = shl i32 %33, 61
  %35 = or i32 %27, %34
  %36 = load %struct.sha512_state*, %struct.sha512_state** %8, align 8
  %37 = getelementptr inbounds %struct.sha512_state, %struct.sha512_state* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  store i32 %35, i32* %39, align 4
  %40 = load %struct.nx_csbcpb*, %struct.nx_csbcpb** %7, align 8
  %41 = getelementptr inbounds %struct.nx_csbcpb, %struct.nx_csbcpb* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = ashr i32 %44, 3
  %46 = load %struct.sha512_state*, %struct.sha512_state** %8, align 8
  %47 = getelementptr inbounds %struct.sha512_state, %struct.sha512_state* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 1
  store i32 %45, i32* %49, align 4
  %50 = load %struct.sha512_state*, %struct.sha512_state** %5, align 8
  %51 = getelementptr inbounds %struct.sha512_state, %struct.sha512_state* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.sha512_state*, %struct.sha512_state** %8, align 8
  %56 = getelementptr inbounds %struct.sha512_state, %struct.sha512_state* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, %54
  store i32 %60, i32* %58, align 4
  %61 = load %struct.sha512_state*, %struct.sha512_state** %8, align 8
  %62 = getelementptr inbounds %struct.sha512_state, %struct.sha512_state* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.sha512_state*, %struct.sha512_state** %5, align 8
  %67 = getelementptr inbounds %struct.sha512_state, %struct.sha512_state* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 0
  %70 = load i32, i32* %69, align 4
  %71 = icmp slt i32 %65, %70
  br i1 %71, label %72, label %79

72:                                               ; preds = %2
  %73 = load %struct.sha512_state*, %struct.sha512_state** %8, align 8
  %74 = getelementptr inbounds %struct.sha512_state, %struct.sha512_state* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 1
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %76, align 4
  br label %79

79:                                               ; preds = %72, %2
  %80 = load %struct.sha512_state*, %struct.sha512_state** %8, align 8
  %81 = getelementptr inbounds %struct.sha512_state, %struct.sha512_state* %80, i32 0, i32 2
  %82 = load i32*, i32** %81, align 8
  %83 = load %struct.sha512_state*, %struct.sha512_state** %5, align 8
  %84 = getelementptr inbounds %struct.sha512_state, %struct.sha512_state* %83, i32 0, i32 2
  %85 = load i32*, i32** %84, align 8
  %86 = call i32 @memcpy(i32* %82, i32* %85, i32 8)
  %87 = load %struct.nx_csbcpb*, %struct.nx_csbcpb** %7, align 8
  %88 = getelementptr inbounds %struct.nx_csbcpb, %struct.nx_csbcpb* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %100, label %93

93:                                               ; preds = %79
  %94 = load %struct.nx_csbcpb*, %struct.nx_csbcpb** %7, align 8
  %95 = getelementptr inbounds %struct.nx_csbcpb, %struct.nx_csbcpb* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %111

100:                                              ; preds = %93, %79
  %101 = load %struct.sha512_state*, %struct.sha512_state** %8, align 8
  %102 = getelementptr inbounds %struct.sha512_state, %struct.sha512_state* %101, i32 0, i32 1
  %103 = load i32*, i32** %102, align 8
  %104 = load %struct.nx_csbcpb*, %struct.nx_csbcpb** %7, align 8
  %105 = getelementptr inbounds %struct.nx_csbcpb, %struct.nx_csbcpb* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 2
  %108 = load i32*, i32** %107, align 8
  %109 = load i32, i32* @SHA512_DIGEST_SIZE, align 4
  %110 = call i32 @memcpy(i32* %103, i32* %108, i32 %109)
  br label %152

111:                                              ; preds = %93
  %112 = load i32, i32* @SHA512_H0, align 4
  %113 = load %struct.sha512_state*, %struct.sha512_state** %8, align 8
  %114 = getelementptr inbounds %struct.sha512_state, %struct.sha512_state* %113, i32 0, i32 1
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 0
  store i32 %112, i32* %116, align 4
  %117 = load i32, i32* @SHA512_H1, align 4
  %118 = load %struct.sha512_state*, %struct.sha512_state** %8, align 8
  %119 = getelementptr inbounds %struct.sha512_state, %struct.sha512_state* %118, i32 0, i32 1
  %120 = load i32*, i32** %119, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 1
  store i32 %117, i32* %121, align 4
  %122 = load i32, i32* @SHA512_H2, align 4
  %123 = load %struct.sha512_state*, %struct.sha512_state** %8, align 8
  %124 = getelementptr inbounds %struct.sha512_state, %struct.sha512_state* %123, i32 0, i32 1
  %125 = load i32*, i32** %124, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 2
  store i32 %122, i32* %126, align 4
  %127 = load i32, i32* @SHA512_H3, align 4
  %128 = load %struct.sha512_state*, %struct.sha512_state** %8, align 8
  %129 = getelementptr inbounds %struct.sha512_state, %struct.sha512_state* %128, i32 0, i32 1
  %130 = load i32*, i32** %129, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 3
  store i32 %127, i32* %131, align 4
  %132 = load i32, i32* @SHA512_H4, align 4
  %133 = load %struct.sha512_state*, %struct.sha512_state** %8, align 8
  %134 = getelementptr inbounds %struct.sha512_state, %struct.sha512_state* %133, i32 0, i32 1
  %135 = load i32*, i32** %134, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 4
  store i32 %132, i32* %136, align 4
  %137 = load i32, i32* @SHA512_H5, align 4
  %138 = load %struct.sha512_state*, %struct.sha512_state** %8, align 8
  %139 = getelementptr inbounds %struct.sha512_state, %struct.sha512_state* %138, i32 0, i32 1
  %140 = load i32*, i32** %139, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 5
  store i32 %137, i32* %141, align 4
  %142 = load i32, i32* @SHA512_H6, align 4
  %143 = load %struct.sha512_state*, %struct.sha512_state** %8, align 8
  %144 = getelementptr inbounds %struct.sha512_state, %struct.sha512_state* %143, i32 0, i32 1
  %145 = load i32*, i32** %144, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 6
  store i32 %142, i32* %146, align 4
  %147 = load i32, i32* @SHA512_H7, align 4
  %148 = load %struct.sha512_state*, %struct.sha512_state** %8, align 8
  %149 = getelementptr inbounds %struct.sha512_state, %struct.sha512_state* %148, i32 0, i32 1
  %150 = load i32*, i32** %149, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 7
  store i32 %147, i32* %151, align 4
  br label %152

152:                                              ; preds = %111, %100
  ret i32 0
}

declare dso_local %struct.sha512_state* @shash_desc_ctx(%struct.shash_desc*) #1

declare dso_local %struct.nx_crypto_ctx* @crypto_tfm_ctx(i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
