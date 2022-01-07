; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_zlib.c_zlib_decompress_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_zlib.c_zlib_decompress_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_pcomp = type { i32 }
%struct.zlib_ctx = type { i32, %struct.z_stream_s }
%struct.z_stream_s = type { i32* }
%struct.nlattr = type { i32 }

@ZLIB_DECOMP_MAX = common dso_local global i32 0, align 4
@ZLIB_DECOMP_WINDOWBITS = common dso_local global i64 0, align 8
@DEF_WBITS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@Z_OK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_pcomp*, i8*, i32)* @zlib_decompress_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zlib_decompress_setup(%struct.crypto_pcomp* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_pcomp*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.zlib_ctx*, align 8
  %9 = alloca %struct.z_stream_s*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.crypto_pcomp* %0, %struct.crypto_pcomp** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.crypto_pcomp*, %struct.crypto_pcomp** %5, align 8
  %15 = call i32 @crypto_pcomp_tfm(%struct.crypto_pcomp* %14)
  %16 = call %struct.zlib_ctx* @crypto_tfm_ctx(i32 %15)
  store %struct.zlib_ctx* %16, %struct.zlib_ctx** %8, align 8
  %17 = load %struct.zlib_ctx*, %struct.zlib_ctx** %8, align 8
  %18 = getelementptr inbounds %struct.zlib_ctx, %struct.zlib_ctx* %17, i32 0, i32 1
  store %struct.z_stream_s* %18, %struct.z_stream_s** %9, align 8
  %19 = load i32, i32* @ZLIB_DECOMP_MAX, align 4
  %20 = add nsw i32 %19, 1
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %10, align 8
  %23 = alloca %struct.nlattr*, i64 %21, align 16
  store i64 %21, i64* %11, align 8
  store i32 0, i32* %12, align 4
  %24 = load i32, i32* @ZLIB_DECOMP_MAX, align 4
  %25 = load i8*, i8** %6, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @nla_parse(%struct.nlattr** %23, i32 %24, i8* %25, i32 %26, i32* null)
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* %12, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %3
  %31 = load i32, i32* %12, align 4
  store i32 %31, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %81

32:                                               ; preds = %3
  %33 = load %struct.zlib_ctx*, %struct.zlib_ctx** %8, align 8
  %34 = call i32 @zlib_decomp_exit(%struct.zlib_ctx* %33)
  %35 = load i64, i64* @ZLIB_DECOMP_WINDOWBITS, align 8
  %36 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %23, i64 %35
  %37 = load %struct.nlattr*, %struct.nlattr** %36, align 8
  %38 = icmp ne %struct.nlattr* %37, null
  br i1 %38, label %39, label %44

39:                                               ; preds = %32
  %40 = load i64, i64* @ZLIB_DECOMP_WINDOWBITS, align 8
  %41 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %23, i64 %40
  %42 = load %struct.nlattr*, %struct.nlattr** %41, align 8
  %43 = call i32 @nla_get_u32(%struct.nlattr* %42)
  br label %46

44:                                               ; preds = %32
  %45 = load i32, i32* @DEF_WBITS, align 4
  br label %46

46:                                               ; preds = %44, %39
  %47 = phi i32 [ %43, %39 ], [ %45, %44 ]
  %48 = load %struct.zlib_ctx*, %struct.zlib_ctx** %8, align 8
  %49 = getelementptr inbounds %struct.zlib_ctx, %struct.zlib_ctx* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = call i32 (...) @zlib_inflate_workspacesize()
  %51 = load i32, i32* @GFP_KERNEL, align 4
  %52 = call i32* @kzalloc(i32 %50, i32 %51)
  %53 = load %struct.z_stream_s*, %struct.z_stream_s** %9, align 8
  %54 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %53, i32 0, i32 0
  store i32* %52, i32** %54, align 8
  %55 = load %struct.z_stream_s*, %struct.z_stream_s** %9, align 8
  %56 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %46
  %60 = load i32, i32* @ENOMEM, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %81

62:                                               ; preds = %46
  %63 = load %struct.z_stream_s*, %struct.z_stream_s** %9, align 8
  %64 = load %struct.zlib_ctx*, %struct.zlib_ctx** %8, align 8
  %65 = getelementptr inbounds %struct.zlib_ctx, %struct.zlib_ctx* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @zlib_inflateInit2(%struct.z_stream_s* %63, i32 %66)
  store i32 %67, i32* %12, align 4
  %68 = load i32, i32* %12, align 4
  %69 = load i32, i32* @Z_OK, align 4
  %70 = icmp ne i32 %68, %69
  br i1 %70, label %71, label %80

71:                                               ; preds = %62
  %72 = load %struct.z_stream_s*, %struct.z_stream_s** %9, align 8
  %73 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = call i32 @kfree(i32* %74)
  %76 = load %struct.z_stream_s*, %struct.z_stream_s** %9, align 8
  %77 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %76, i32 0, i32 0
  store i32* null, i32** %77, align 8
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %81

80:                                               ; preds = %62
  store i32 0, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %81

81:                                               ; preds = %80, %71, %59, %30
  %82 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %82)
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local %struct.zlib_ctx* @crypto_tfm_ctx(i32) #1

declare dso_local i32 @crypto_pcomp_tfm(%struct.crypto_pcomp*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @nla_parse(%struct.nlattr**, i32, i8*, i32, i32*) #1

declare dso_local i32 @zlib_decomp_exit(%struct.zlib_ctx*) #1

declare dso_local i32 @nla_get_u32(%struct.nlattr*) #1

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i32 @zlib_inflate_workspacesize(...) #1

declare dso_local i32 @zlib_inflateInit2(%struct.z_stream_s*, i32) #1

declare dso_local i32 @kfree(i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
