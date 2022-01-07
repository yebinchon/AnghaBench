; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/nx/extr_nx.c_nx_build_sg_lists.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/nx/extr_nx.c_nx_build_sg_lists.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nx_crypto_ctx = type { %struct.nx_sg*, %struct.TYPE_4__, %struct.nx_sg*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.nx_sg = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.blkcipher_desc = type { i32 }
%struct.scatterlist = type { i32 }

@AES_BLOCK_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nx_build_sg_lists(%struct.nx_crypto_ctx* %0, %struct.blkcipher_desc* %1, %struct.scatterlist* %2, %struct.scatterlist* %3, i32 %4, i32* %5) #0 {
  %7 = alloca %struct.nx_crypto_ctx*, align 8
  %8 = alloca %struct.blkcipher_desc*, align 8
  %9 = alloca %struct.scatterlist*, align 8
  %10 = alloca %struct.scatterlist*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.nx_sg*, align 8
  %14 = alloca %struct.nx_sg*, align 8
  store %struct.nx_crypto_ctx* %0, %struct.nx_crypto_ctx** %7, align 8
  store %struct.blkcipher_desc* %1, %struct.blkcipher_desc** %8, align 8
  store %struct.scatterlist* %2, %struct.scatterlist** %9, align 8
  store %struct.scatterlist* %3, %struct.scatterlist** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32* %5, i32** %12, align 8
  %15 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %7, align 8
  %16 = getelementptr inbounds %struct.nx_crypto_ctx, %struct.nx_crypto_ctx* %15, i32 0, i32 2
  %17 = load %struct.nx_sg*, %struct.nx_sg** %16, align 8
  store %struct.nx_sg* %17, %struct.nx_sg** %13, align 8
  %18 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %7, align 8
  %19 = getelementptr inbounds %struct.nx_crypto_ctx, %struct.nx_crypto_ctx* %18, i32 0, i32 0
  %20 = load %struct.nx_sg*, %struct.nx_sg** %19, align 8
  store %struct.nx_sg* %20, %struct.nx_sg** %14, align 8
  %21 = load i32*, i32** %12, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %30

23:                                               ; preds = %6
  %24 = load i32*, i32** %12, align 8
  %25 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %8, align 8
  %26 = getelementptr inbounds %struct.blkcipher_desc, %struct.blkcipher_desc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %29 = call i32 @memcpy(i32* %24, i32 %27, i32 %28)
  br label %30

30:                                               ; preds = %23, %6
  %31 = load %struct.nx_sg*, %struct.nx_sg** %13, align 8
  %32 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %7, align 8
  %33 = getelementptr inbounds %struct.nx_crypto_ctx, %struct.nx_crypto_ctx* %32, i32 0, i32 3
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %38 = load i32, i32* %11, align 4
  %39 = call %struct.nx_sg* @nx_walk_and_build(%struct.nx_sg* %31, i32 %36, %struct.scatterlist* %37, i32 0, i32 %38)
  store %struct.nx_sg* %39, %struct.nx_sg** %13, align 8
  %40 = load %struct.nx_sg*, %struct.nx_sg** %14, align 8
  %41 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %7, align 8
  %42 = getelementptr inbounds %struct.nx_crypto_ctx, %struct.nx_crypto_ctx* %41, i32 0, i32 3
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %47 = load i32, i32* %11, align 4
  %48 = call %struct.nx_sg* @nx_walk_and_build(%struct.nx_sg* %40, i32 %45, %struct.scatterlist* %46, i32 0, i32 %47)
  store %struct.nx_sg* %48, %struct.nx_sg** %14, align 8
  %49 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %7, align 8
  %50 = getelementptr inbounds %struct.nx_crypto_ctx, %struct.nx_crypto_ctx* %49, i32 0, i32 2
  %51 = load %struct.nx_sg*, %struct.nx_sg** %50, align 8
  %52 = load %struct.nx_sg*, %struct.nx_sg** %13, align 8
  %53 = ptrtoint %struct.nx_sg* %51 to i64
  %54 = ptrtoint %struct.nx_sg* %52 to i64
  %55 = sub i64 %53, %54
  %56 = sdiv exact i64 %55, 4
  %57 = mul i64 %56, 4
  %58 = trunc i64 %57 to i32
  %59 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %7, align 8
  %60 = getelementptr inbounds %struct.nx_crypto_ctx, %struct.nx_crypto_ctx* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  store i32 %58, i32* %61, align 8
  %62 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %7, align 8
  %63 = getelementptr inbounds %struct.nx_crypto_ctx, %struct.nx_crypto_ctx* %62, i32 0, i32 0
  %64 = load %struct.nx_sg*, %struct.nx_sg** %63, align 8
  %65 = load %struct.nx_sg*, %struct.nx_sg** %14, align 8
  %66 = ptrtoint %struct.nx_sg* %64 to i64
  %67 = ptrtoint %struct.nx_sg* %65 to i64
  %68 = sub i64 %66, %67
  %69 = sdiv exact i64 %68, 4
  %70 = mul i64 %69, 4
  %71 = trunc i64 %70 to i32
  %72 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %7, align 8
  %73 = getelementptr inbounds %struct.nx_crypto_ctx, %struct.nx_crypto_ctx* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 1
  store i32 %71, i32* %74, align 4
  ret i32 0
}

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local %struct.nx_sg* @nx_walk_and_build(%struct.nx_sg*, i32, %struct.scatterlist*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
