; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/nx/extr_nx-aes-gcm.c_nx_gca.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/nx/extr_nx-aes-gcm.c_nx_gca.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nx_crypto_ctx = type { %struct.TYPE_9__*, %struct.TYPE_12__, %struct.nx_sg*, %struct.TYPE_7__*, %struct.nx_csbcpb* }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.nx_sg = type { i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.nx_csbcpb = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.aead_request = type { i32, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.scatter_walk = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@AES_BLOCK_SIZE = common dso_local global i32 0, align 4
@SCATTERWALK_FROM_SG = common dso_local global i32 0, align 4
@CRYPTO_TFM_REQ_MAY_SLEEP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nx_crypto_ctx*, %struct.aead_request*, i32*)* @nx_gca to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nx_gca(%struct.nx_crypto_ctx* %0, %struct.aead_request* %1, i32* %2) #0 {
  %4 = alloca %struct.nx_crypto_ctx*, align 8
  %5 = alloca %struct.aead_request*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.nx_csbcpb*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.scatter_walk, align 4
  %10 = alloca %struct.nx_sg*, align 8
  store %struct.nx_crypto_ctx* %0, %struct.nx_crypto_ctx** %4, align 8
  store %struct.aead_request* %1, %struct.aead_request** %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %4, align 8
  %12 = getelementptr inbounds %struct.nx_crypto_ctx, %struct.nx_crypto_ctx* %11, i32 0, i32 4
  %13 = load %struct.nx_csbcpb*, %struct.nx_csbcpb** %12, align 8
  store %struct.nx_csbcpb* %13, %struct.nx_csbcpb** %7, align 8
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %8, align 4
  %16 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %4, align 8
  %17 = getelementptr inbounds %struct.nx_crypto_ctx, %struct.nx_crypto_ctx* %16, i32 0, i32 2
  %18 = load %struct.nx_sg*, %struct.nx_sg** %17, align 8
  store %struct.nx_sg* %18, %struct.nx_sg** %10, align 8
  %19 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %20 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %4, align 8
  %23 = getelementptr inbounds %struct.nx_crypto_ctx, %struct.nx_crypto_ctx* %22, i32 0, i32 3
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp sgt i32 %21, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %3
  br label %110

29:                                               ; preds = %3
  %30 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %31 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %34 = icmp sle i32 %32, %33
  br i1 %34, label %35, label %48

35:                                               ; preds = %29
  %36 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %37 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @scatterwalk_start(%struct.scatter_walk* %9, i32 %38)
  %40 = load i32*, i32** %6, align 8
  %41 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %42 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @SCATTERWALK_FROM_SG, align 4
  %45 = call i32 @scatterwalk_copychunks(i32* %40, %struct.scatter_walk* %9, i32 %43, i32 %44)
  %46 = load i32, i32* @SCATTERWALK_FROM_SG, align 4
  %47 = call i32 @scatterwalk_done(%struct.scatter_walk* %9, i32 %46, i32 0)
  store i32 0, i32* %8, align 4
  br label %110

48:                                               ; preds = %29
  %49 = load %struct.nx_sg*, %struct.nx_sg** %10, align 8
  %50 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %4, align 8
  %51 = getelementptr inbounds %struct.nx_crypto_ctx, %struct.nx_crypto_ctx* %50, i32 0, i32 3
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %56 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %59 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call %struct.nx_sg* @nx_walk_and_build(%struct.nx_sg* %49, i32 %54, i32 %57, i32 0, i32 %60)
  store %struct.nx_sg* %61, %struct.nx_sg** %10, align 8
  %62 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %4, align 8
  %63 = getelementptr inbounds %struct.nx_crypto_ctx, %struct.nx_crypto_ctx* %62, i32 0, i32 2
  %64 = load %struct.nx_sg*, %struct.nx_sg** %63, align 8
  %65 = load %struct.nx_sg*, %struct.nx_sg** %10, align 8
  %66 = ptrtoint %struct.nx_sg* %64 to i64
  %67 = ptrtoint %struct.nx_sg* %65 to i64
  %68 = sub i64 %66, %67
  %69 = sdiv exact i64 %68, 4
  %70 = mul i64 %69, 4
  %71 = trunc i64 %70 to i32
  %72 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %4, align 8
  %73 = getelementptr inbounds %struct.nx_crypto_ctx, %struct.nx_crypto_ctx* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 0
  store i32 %71, i32* %74, align 8
  %75 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %4, align 8
  %76 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %4, align 8
  %77 = getelementptr inbounds %struct.nx_crypto_ctx, %struct.nx_crypto_ctx* %76, i32 0, i32 1
  %78 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %79 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @CRYPTO_TFM_REQ_MAY_SLEEP, align 4
  %83 = and i32 %81, %82
  %84 = call i32 @nx_hcall_sync(%struct.nx_crypto_ctx* %75, %struct.TYPE_12__* %77, i32 %83)
  store i32 %84, i32* %8, align 4
  %85 = load i32, i32* %8, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %48
  br label %110

88:                                               ; preds = %48
  %89 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %4, align 8
  %90 = getelementptr inbounds %struct.nx_crypto_ctx, %struct.nx_crypto_ctx* %89, i32 0, i32 0
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 1
  %93 = call i32 @atomic_inc(i32* %92)
  %94 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %95 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %4, align 8
  %98 = getelementptr inbounds %struct.nx_crypto_ctx, %struct.nx_crypto_ctx* %97, i32 0, i32 0
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 0
  %101 = call i32 @atomic64_add(i32 %96, i32* %100)
  %102 = load i32*, i32** %6, align 8
  %103 = load %struct.nx_csbcpb*, %struct.nx_csbcpb** %7, align 8
  %104 = getelementptr inbounds %struct.nx_csbcpb, %struct.nx_csbcpb* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %109 = call i32 @memcpy(i32* %102, i32 %107, i32 %108)
  br label %110

110:                                              ; preds = %88, %87, %35, %28
  %111 = load i32, i32* %8, align 4
  ret i32 %111
}

declare dso_local i32 @scatterwalk_start(%struct.scatter_walk*, i32) #1

declare dso_local i32 @scatterwalk_copychunks(i32*, %struct.scatter_walk*, i32, i32) #1

declare dso_local i32 @scatterwalk_done(%struct.scatter_walk*, i32, i32) #1

declare dso_local %struct.nx_sg* @nx_walk_and_build(%struct.nx_sg*, i32, i32, i32, i32) #1

declare dso_local i32 @nx_hcall_sync(%struct.nx_crypto_ctx*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @atomic64_add(i32, i32*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
