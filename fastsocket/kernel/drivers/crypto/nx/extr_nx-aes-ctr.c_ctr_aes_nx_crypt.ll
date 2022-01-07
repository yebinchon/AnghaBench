; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/nx/extr_nx-aes-ctr.c_ctr_aes_nx_crypt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/nx/extr_nx-aes-ctr.c_ctr_aes_nx_crypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blkcipher_desc = type { i32, i32 }
%struct.scatterlist = type { i32 }
%struct.nx_crypto_ctx = type { %struct.TYPE_11__*, %struct.TYPE_12__, %struct.TYPE_7__*, %struct.nx_csbcpb* }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.nx_csbcpb = type { %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@CRYPTO_TFM_REQ_MAY_SLEEP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.blkcipher_desc*, %struct.scatterlist*, %struct.scatterlist*, i32)* @ctr_aes_nx_crypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctr_aes_nx_crypt(%struct.blkcipher_desc* %0, %struct.scatterlist* %1, %struct.scatterlist* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.blkcipher_desc*, align 8
  %7 = alloca %struct.scatterlist*, align 8
  %8 = alloca %struct.scatterlist*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.nx_crypto_ctx*, align 8
  %11 = alloca %struct.nx_csbcpb*, align 8
  %12 = alloca i32, align 4
  store %struct.blkcipher_desc* %0, %struct.blkcipher_desc** %6, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %7, align 8
  store %struct.scatterlist* %2, %struct.scatterlist** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %6, align 8
  %14 = getelementptr inbounds %struct.blkcipher_desc, %struct.blkcipher_desc* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.nx_crypto_ctx* @crypto_blkcipher_ctx(i32 %15)
  store %struct.nx_crypto_ctx* %16, %struct.nx_crypto_ctx** %10, align 8
  %17 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %10, align 8
  %18 = getelementptr inbounds %struct.nx_crypto_ctx, %struct.nx_crypto_ctx* %17, i32 0, i32 3
  %19 = load %struct.nx_csbcpb*, %struct.nx_csbcpb** %18, align 8
  store %struct.nx_csbcpb* %19, %struct.nx_csbcpb** %11, align 8
  %20 = load i32, i32* %9, align 4
  %21 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %10, align 8
  %22 = getelementptr inbounds %struct.nx_crypto_ctx, %struct.nx_crypto_ctx* %21, i32 0, i32 2
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ugt i32 %20, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %4
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %90

30:                                               ; preds = %4
  %31 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %10, align 8
  %32 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %6, align 8
  %33 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %34 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %35 = load i32, i32* %9, align 4
  %36 = load %struct.nx_csbcpb*, %struct.nx_csbcpb** %11, align 8
  %37 = getelementptr inbounds %struct.nx_csbcpb, %struct.nx_csbcpb* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @nx_build_sg_lists(%struct.nx_crypto_ctx* %31, %struct.blkcipher_desc* %32, %struct.scatterlist* %33, %struct.scatterlist* %34, i32 %35, i32 %40)
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %12, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %30
  br label %88

45:                                               ; preds = %30
  %46 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %10, align 8
  %47 = getelementptr inbounds %struct.nx_crypto_ctx, %struct.nx_crypto_ctx* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %45
  %52 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %10, align 8
  %53 = getelementptr inbounds %struct.nx_crypto_ctx, %struct.nx_crypto_ctx* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %51, %45
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %12, align 4
  br label %88

60:                                               ; preds = %51
  %61 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %10, align 8
  %62 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %10, align 8
  %63 = getelementptr inbounds %struct.nx_crypto_ctx, %struct.nx_crypto_ctx* %62, i32 0, i32 1
  %64 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %6, align 8
  %65 = getelementptr inbounds %struct.blkcipher_desc, %struct.blkcipher_desc* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @CRYPTO_TFM_REQ_MAY_SLEEP, align 4
  %68 = and i32 %66, %67
  %69 = call i32 @nx_hcall_sync(%struct.nx_crypto_ctx* %61, %struct.TYPE_12__* %63, i32 %68)
  store i32 %69, i32* %12, align 4
  %70 = load i32, i32* %12, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %60
  br label %88

73:                                               ; preds = %60
  %74 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %10, align 8
  %75 = getelementptr inbounds %struct.nx_crypto_ctx, %struct.nx_crypto_ctx* %74, i32 0, i32 0
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 1
  %78 = call i32 @atomic_inc(i32* %77)
  %79 = load %struct.nx_csbcpb*, %struct.nx_csbcpb** %11, align 8
  %80 = getelementptr inbounds %struct.nx_csbcpb, %struct.nx_csbcpb* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %10, align 8
  %84 = getelementptr inbounds %struct.nx_crypto_ctx, %struct.nx_crypto_ctx* %83, i32 0, i32 0
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 0
  %87 = call i32 @atomic64_add(i32 %82, i32* %86)
  br label %88

88:                                               ; preds = %73, %72, %57, %44
  %89 = load i32, i32* %12, align 4
  store i32 %89, i32* %5, align 4
  br label %90

90:                                               ; preds = %88, %27
  %91 = load i32, i32* %5, align 4
  ret i32 %91
}

declare dso_local %struct.nx_crypto_ctx* @crypto_blkcipher_ctx(i32) #1

declare dso_local i32 @nx_build_sg_lists(%struct.nx_crypto_ctx*, %struct.blkcipher_desc*, %struct.scatterlist*, %struct.scatterlist*, i32, i32) #1

declare dso_local i32 @nx_hcall_sync(%struct.nx_crypto_ctx*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @atomic64_add(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
