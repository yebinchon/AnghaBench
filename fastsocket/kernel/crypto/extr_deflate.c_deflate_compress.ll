; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_deflate.c_deflate_compress.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_deflate.c_deflate_compress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_tfm = type { i32 }
%struct.deflate_ctx = type { %struct.z_stream_s }
%struct.z_stream_s = type { i32, i32, i32, i32*, i32* }

@Z_OK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@Z_FINISH = common dso_local global i32 0, align 4
@Z_STREAM_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_tfm*, i32*, i32, i32*, i32*)* @deflate_compress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @deflate_compress(%struct.crypto_tfm* %0, i32* %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.crypto_tfm*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.deflate_ctx*, align 8
  %13 = alloca %struct.z_stream_s*, align 8
  store %struct.crypto_tfm* %0, %struct.crypto_tfm** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  store i32 0, i32* %11, align 4
  %14 = load %struct.crypto_tfm*, %struct.crypto_tfm** %6, align 8
  %15 = call %struct.deflate_ctx* @crypto_tfm_ctx(%struct.crypto_tfm* %14)
  store %struct.deflate_ctx* %15, %struct.deflate_ctx** %12, align 8
  %16 = load %struct.deflate_ctx*, %struct.deflate_ctx** %12, align 8
  %17 = getelementptr inbounds %struct.deflate_ctx, %struct.deflate_ctx* %16, i32 0, i32 0
  store %struct.z_stream_s* %17, %struct.z_stream_s** %13, align 8
  %18 = load %struct.z_stream_s*, %struct.z_stream_s** %13, align 8
  %19 = call i32 @zlib_deflateReset(%struct.z_stream_s* %18)
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %11, align 4
  %21 = load i32, i32* @Z_OK, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %5
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %11, align 4
  br label %54

26:                                               ; preds = %5
  %27 = load i32*, i32** %7, align 8
  %28 = load %struct.z_stream_s*, %struct.z_stream_s** %13, align 8
  %29 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %28, i32 0, i32 4
  store i32* %27, i32** %29, align 8
  %30 = load i32, i32* %8, align 4
  %31 = load %struct.z_stream_s*, %struct.z_stream_s** %13, align 8
  %32 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load i32*, i32** %9, align 8
  %34 = load %struct.z_stream_s*, %struct.z_stream_s** %13, align 8
  %35 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %34, i32 0, i32 3
  store i32* %33, i32** %35, align 8
  %36 = load i32*, i32** %10, align 8
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.z_stream_s*, %struct.z_stream_s** %13, align 8
  %39 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load %struct.z_stream_s*, %struct.z_stream_s** %13, align 8
  %41 = load i32, i32* @Z_FINISH, align 4
  %42 = call i32 @zlib_deflate(%struct.z_stream_s* %40, i32 %41)
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* @Z_STREAM_END, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %26
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %11, align 4
  br label %54

49:                                               ; preds = %26
  store i32 0, i32* %11, align 4
  %50 = load %struct.z_stream_s*, %struct.z_stream_s** %13, align 8
  %51 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load i32*, i32** %10, align 8
  store i32 %52, i32* %53, align 4
  br label %54

54:                                               ; preds = %49, %46, %23
  %55 = load i32, i32* %11, align 4
  ret i32 %55
}

declare dso_local %struct.deflate_ctx* @crypto_tfm_ctx(%struct.crypto_tfm*) #1

declare dso_local i32 @zlib_deflateReset(%struct.z_stream_s*) #1

declare dso_local i32 @zlib_deflate(%struct.z_stream_s*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
