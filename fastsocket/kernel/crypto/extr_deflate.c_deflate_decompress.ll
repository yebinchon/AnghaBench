; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_deflate.c_deflate_decompress.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_deflate.c_deflate_decompress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_tfm = type { i32 }
%struct.deflate_ctx = type { %struct.z_stream_s }
%struct.z_stream_s = type { i32, i32, i32, i32*, i32* }

@Z_OK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@Z_SYNC_FLUSH = common dso_local global i32 0, align 4
@Z_FINISH = common dso_local global i32 0, align 4
@Z_STREAM_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_tfm*, i32*, i32, i32*, i32*)* @deflate_decompress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @deflate_decompress(%struct.crypto_tfm* %0, i32* %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.crypto_tfm*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.deflate_ctx*, align 8
  %13 = alloca %struct.z_stream_s*, align 8
  %14 = alloca i32, align 4
  store %struct.crypto_tfm* %0, %struct.crypto_tfm** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  store i32 0, i32* %11, align 4
  %15 = load %struct.crypto_tfm*, %struct.crypto_tfm** %6, align 8
  %16 = call %struct.deflate_ctx* @crypto_tfm_ctx(%struct.crypto_tfm* %15)
  store %struct.deflate_ctx* %16, %struct.deflate_ctx** %12, align 8
  %17 = load %struct.deflate_ctx*, %struct.deflate_ctx** %12, align 8
  %18 = getelementptr inbounds %struct.deflate_ctx, %struct.deflate_ctx* %17, i32 0, i32 0
  store %struct.z_stream_s* %18, %struct.z_stream_s** %13, align 8
  %19 = load %struct.z_stream_s*, %struct.z_stream_s** %13, align 8
  %20 = call i32 @zlib_inflateReset(%struct.z_stream_s* %19)
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* @Z_OK, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %5
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %11, align 4
  br label %77

27:                                               ; preds = %5
  %28 = load i32*, i32** %7, align 8
  %29 = load %struct.z_stream_s*, %struct.z_stream_s** %13, align 8
  %30 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %29, i32 0, i32 3
  store i32* %28, i32** %30, align 8
  %31 = load i32, i32* %8, align 4
  %32 = load %struct.z_stream_s*, %struct.z_stream_s** %13, align 8
  %33 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load i32*, i32** %9, align 8
  %35 = load %struct.z_stream_s*, %struct.z_stream_s** %13, align 8
  %36 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %35, i32 0, i32 4
  store i32* %34, i32** %36, align 8
  %37 = load i32*, i32** %10, align 8
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.z_stream_s*, %struct.z_stream_s** %13, align 8
  %40 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load %struct.z_stream_s*, %struct.z_stream_s** %13, align 8
  %42 = load i32, i32* @Z_SYNC_FLUSH, align 4
  %43 = call i32 @zlib_inflate(%struct.z_stream_s* %41, i32 %42)
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* @Z_OK, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %65

47:                                               ; preds = %27
  %48 = load %struct.z_stream_s*, %struct.z_stream_s** %13, align 8
  %49 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %65, label %52

52:                                               ; preds = %47
  %53 = load %struct.z_stream_s*, %struct.z_stream_s** %13, align 8
  %54 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %52
  store i32 0, i32* %14, align 4
  %58 = load %struct.z_stream_s*, %struct.z_stream_s** %13, align 8
  %59 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %58, i32 0, i32 3
  store i32* %14, i32** %59, align 8
  %60 = load %struct.z_stream_s*, %struct.z_stream_s** %13, align 8
  %61 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %60, i32 0, i32 0
  store i32 1, i32* %61, align 8
  %62 = load %struct.z_stream_s*, %struct.z_stream_s** %13, align 8
  %63 = load i32, i32* @Z_FINISH, align 4
  %64 = call i32 @zlib_inflate(%struct.z_stream_s* %62, i32 %63)
  store i32 %64, i32* %11, align 4
  br label %65

65:                                               ; preds = %57, %52, %47, %27
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* @Z_STREAM_END, align 4
  %68 = icmp ne i32 %66, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %65
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %11, align 4
  br label %77

72:                                               ; preds = %65
  store i32 0, i32* %11, align 4
  %73 = load %struct.z_stream_s*, %struct.z_stream_s** %13, align 8
  %74 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = load i32*, i32** %10, align 8
  store i32 %75, i32* %76, align 4
  br label %77

77:                                               ; preds = %72, %69, %24
  %78 = load i32, i32* %11, align 4
  ret i32 %78
}

declare dso_local %struct.deflate_ctx* @crypto_tfm_ctx(%struct.crypto_tfm*) #1

declare dso_local i32 @zlib_inflateReset(%struct.z_stream_s*) #1

declare dso_local i32 @zlib_inflate(%struct.z_stream_s*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
