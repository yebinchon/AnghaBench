; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_cryptoloop.c_cryptoloop_transfer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_cryptoloop.c_cryptoloop_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loop_device = type { %struct.crypto_blkcipher* }
%struct.crypto_blkcipher = type { i32 }
%struct.page = type { i32 }
%struct.blkcipher_desc = type { i32*, i32, %struct.crypto_blkcipher* }
%struct.scatterlist = type { i32 }
%struct.TYPE_2__ = type { i32 (%struct.blkcipher_desc*, %struct.scatterlist*, %struct.scatterlist*, i32)*, i32 (%struct.blkcipher_desc*, %struct.scatterlist*, %struct.scatterlist*, i32)* }

@CRYPTO_TFM_REQ_MAY_SLEEP = common dso_local global i32 0, align 4
@READ = common dso_local global i32 0, align 4
@LOOP_IV_SECTOR_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.loop_device*, i32, %struct.page*, i32, %struct.page*, i32, i32, i32)* @cryptoloop_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cryptoloop_transfer(%struct.loop_device* %0, i32 %1, %struct.page* %2, i32 %3, %struct.page* %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.loop_device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.page*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.page*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.crypto_blkcipher*, align 8
  %19 = alloca %struct.blkcipher_desc, align 8
  %20 = alloca %struct.scatterlist, align 4
  %21 = alloca %struct.scatterlist, align 4
  %22 = alloca i32 (%struct.blkcipher_desc*, %struct.scatterlist*, %struct.scatterlist*, i32)*, align 8
  %23 = alloca %struct.page*, align 8
  %24 = alloca %struct.page*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca [4 x i32], align 16
  store %struct.loop_device* %0, %struct.loop_device** %10, align 8
  store i32 %1, i32* %11, align 4
  store %struct.page* %2, %struct.page** %12, align 8
  store i32 %3, i32* %13, align 4
  store %struct.page* %4, %struct.page** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %30 = load %struct.loop_device*, %struct.loop_device** %10, align 8
  %31 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %30, i32 0, i32 0
  %32 = load %struct.crypto_blkcipher*, %struct.crypto_blkcipher** %31, align 8
  store %struct.crypto_blkcipher* %32, %struct.crypto_blkcipher** %18, align 8
  %33 = getelementptr inbounds %struct.blkcipher_desc, %struct.blkcipher_desc* %19, i32 0, i32 0
  store i32* null, i32** %33, align 8
  %34 = getelementptr inbounds %struct.blkcipher_desc, %struct.blkcipher_desc* %19, i32 0, i32 1
  %35 = load i32, i32* @CRYPTO_TFM_REQ_MAY_SLEEP, align 4
  store i32 %35, i32* %34, align 8
  %36 = getelementptr inbounds %struct.blkcipher_desc, %struct.blkcipher_desc* %19, i32 0, i32 2
  %37 = load %struct.crypto_blkcipher*, %struct.crypto_blkcipher** %18, align 8
  store %struct.crypto_blkcipher* %37, %struct.crypto_blkcipher** %36, align 8
  %38 = call i32 @sg_init_table(%struct.scatterlist* %20, i32 1)
  %39 = call i32 @sg_init_table(%struct.scatterlist* %21, i32 1)
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* @READ, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %52

43:                                               ; preds = %8
  %44 = load %struct.page*, %struct.page** %12, align 8
  store %struct.page* %44, %struct.page** %23, align 8
  %45 = load i32, i32* %13, align 4
  store i32 %45, i32* %25, align 4
  %46 = load %struct.page*, %struct.page** %14, align 8
  store %struct.page* %46, %struct.page** %24, align 8
  %47 = load i32, i32* %15, align 4
  store i32 %47, i32* %26, align 4
  %48 = load %struct.crypto_blkcipher*, %struct.crypto_blkcipher** %18, align 8
  %49 = call %struct.TYPE_2__* @crypto_blkcipher_crt(%struct.crypto_blkcipher* %48)
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32 (%struct.blkcipher_desc*, %struct.scatterlist*, %struct.scatterlist*, i32)*, i32 (%struct.blkcipher_desc*, %struct.scatterlist*, %struct.scatterlist*, i32)** %50, align 8
  store i32 (%struct.blkcipher_desc*, %struct.scatterlist*, %struct.scatterlist*, i32)* %51, i32 (%struct.blkcipher_desc*, %struct.scatterlist*, %struct.scatterlist*, i32)** %22, align 8
  br label %61

52:                                               ; preds = %8
  %53 = load %struct.page*, %struct.page** %14, align 8
  store %struct.page* %53, %struct.page** %23, align 8
  %54 = load i32, i32* %15, align 4
  store i32 %54, i32* %25, align 4
  %55 = load %struct.page*, %struct.page** %12, align 8
  store %struct.page* %55, %struct.page** %24, align 8
  %56 = load i32, i32* %13, align 4
  store i32 %56, i32* %26, align 4
  %57 = load %struct.crypto_blkcipher*, %struct.crypto_blkcipher** %18, align 8
  %58 = call %struct.TYPE_2__* @crypto_blkcipher_crt(%struct.crypto_blkcipher* %57)
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load i32 (%struct.blkcipher_desc*, %struct.scatterlist*, %struct.scatterlist*, i32)*, i32 (%struct.blkcipher_desc*, %struct.scatterlist*, %struct.scatterlist*, i32)** %59, align 8
  store i32 (%struct.blkcipher_desc*, %struct.scatterlist*, %struct.scatterlist*, i32)* %60, i32 (%struct.blkcipher_desc*, %struct.scatterlist*, %struct.scatterlist*, i32)** %22, align 8
  br label %61

61:                                               ; preds = %52, %43
  br label %62

62:                                               ; preds = %90, %61
  %63 = load i32, i32* %16, align 4
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %65, label %102

65:                                               ; preds = %62
  %66 = load i32, i32* %16, align 4
  %67 = load i32, i32* @LOOP_IV_SECTOR_SIZE, align 4
  %68 = call i32 @min(i32 %66, i32 %67)
  store i32 %68, i32* %28, align 4
  %69 = bitcast [4 x i32]* %29 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %69, i8 0, i64 16, i1 false)
  %70 = load i32, i32* %17, align 4
  %71 = call i32 @cpu_to_le32(i32 %70)
  %72 = getelementptr inbounds [4 x i32], [4 x i32]* %29, i64 0, i64 0
  store i32 %71, i32* %72, align 16
  %73 = load %struct.page*, %struct.page** %23, align 8
  %74 = load i32, i32* %28, align 4
  %75 = load i32, i32* %25, align 4
  %76 = call i32 @sg_set_page(%struct.scatterlist* %21, %struct.page* %73, i32 %74, i32 %75)
  %77 = load %struct.page*, %struct.page** %24, align 8
  %78 = load i32, i32* %28, align 4
  %79 = load i32, i32* %26, align 4
  %80 = call i32 @sg_set_page(%struct.scatterlist* %20, %struct.page* %77, i32 %78, i32 %79)
  %81 = getelementptr inbounds [4 x i32], [4 x i32]* %29, i64 0, i64 0
  %82 = getelementptr inbounds %struct.blkcipher_desc, %struct.blkcipher_desc* %19, i32 0, i32 0
  store i32* %81, i32** %82, align 8
  %83 = load i32 (%struct.blkcipher_desc*, %struct.scatterlist*, %struct.scatterlist*, i32)*, i32 (%struct.blkcipher_desc*, %struct.scatterlist*, %struct.scatterlist*, i32)** %22, align 8
  %84 = load i32, i32* %28, align 4
  %85 = call i32 %83(%struct.blkcipher_desc* %19, %struct.scatterlist* %20, %struct.scatterlist* %21, i32 %84)
  store i32 %85, i32* %27, align 4
  %86 = load i32, i32* %27, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %65
  %89 = load i32, i32* %27, align 4
  store i32 %89, i32* %9, align 4
  br label %103

90:                                               ; preds = %65
  %91 = load i32, i32* %17, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %17, align 4
  %93 = load i32, i32* %28, align 4
  %94 = load i32, i32* %16, align 4
  %95 = sub nsw i32 %94, %93
  store i32 %95, i32* %16, align 4
  %96 = load i32, i32* %28, align 4
  %97 = load i32, i32* %25, align 4
  %98 = add i32 %97, %96
  store i32 %98, i32* %25, align 4
  %99 = load i32, i32* %28, align 4
  %100 = load i32, i32* %26, align 4
  %101 = add i32 %100, %99
  store i32 %101, i32* %26, align 4
  br label %62

102:                                              ; preds = %62
  store i32 0, i32* %9, align 4
  br label %103

103:                                              ; preds = %102, %88
  %104 = load i32, i32* %9, align 4
  ret i32 %104
}

declare dso_local i32 @sg_init_table(%struct.scatterlist*, i32) #1

declare dso_local %struct.TYPE_2__* @crypto_blkcipher_crt(%struct.crypto_blkcipher*) #1

declare dso_local i32 @min(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @sg_set_page(%struct.scatterlist*, %struct.page*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
