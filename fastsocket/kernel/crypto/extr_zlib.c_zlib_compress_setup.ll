; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_zlib.c_zlib_compress_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_zlib.c_zlib_compress_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_pcomp = type { i32 }
%struct.zlib_ctx = type { %struct.z_stream_s }
%struct.z_stream_s = type { i32* }
%struct.nlattr = type { i32 }

@ZLIB_COMP_MAX = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ZLIB_COMP_LEVEL = common dso_local global i64 0, align 8
@Z_DEFAULT_COMPRESSION = common dso_local global i32 0, align 4
@ZLIB_COMP_METHOD = common dso_local global i64 0, align 8
@Z_DEFLATED = common dso_local global i32 0, align 4
@ZLIB_COMP_WINDOWBITS = common dso_local global i64 0, align 8
@MAX_WBITS = common dso_local global i32 0, align 4
@ZLIB_COMP_MEMLEVEL = common dso_local global i64 0, align 8
@DEF_MEM_LEVEL = common dso_local global i32 0, align 4
@ZLIB_COMP_STRATEGY = common dso_local global i64 0, align 8
@Z_DEFAULT_STRATEGY = common dso_local global i32 0, align 4
@Z_OK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_pcomp*, i8*, i32)* @zlib_compress_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zlib_compress_setup(%struct.crypto_pcomp* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_pcomp*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.zlib_ctx*, align 8
  %9 = alloca %struct.z_stream_s*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.crypto_pcomp* %0, %struct.crypto_pcomp** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.crypto_pcomp*, %struct.crypto_pcomp** %5, align 8
  %16 = call i32 @crypto_pcomp_tfm(%struct.crypto_pcomp* %15)
  %17 = call %struct.zlib_ctx* @crypto_tfm_ctx(i32 %16)
  store %struct.zlib_ctx* %17, %struct.zlib_ctx** %8, align 8
  %18 = load %struct.zlib_ctx*, %struct.zlib_ctx** %8, align 8
  %19 = getelementptr inbounds %struct.zlib_ctx, %struct.zlib_ctx* %18, i32 0, i32 0
  store %struct.z_stream_s* %19, %struct.z_stream_s** %9, align 8
  %20 = load i32, i32* @ZLIB_COMP_MAX, align 4
  %21 = add nsw i32 %20, 1
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %10, align 8
  %24 = alloca %struct.nlattr*, i64 %22, align 16
  store i64 %22, i64* %11, align 8
  %25 = load i32, i32* @ZLIB_COMP_MAX, align 4
  %26 = load i8*, i8** %6, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @nla_parse(%struct.nlattr** %24, i32 %25, i8* %26, i32 %27, i32* null)
  store i32 %28, i32* %13, align 4
  %29 = load i32, i32* %13, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %3
  %32 = load i32, i32* %13, align 4
  store i32 %32, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %134

33:                                               ; preds = %3
  %34 = load %struct.zlib_ctx*, %struct.zlib_ctx** %8, align 8
  %35 = call i32 @zlib_comp_exit(%struct.zlib_ctx* %34)
  %36 = call i64 (...) @zlib_deflate_workspacesize()
  store i64 %36, i64* %12, align 8
  %37 = load i64, i64* %12, align 8
  %38 = call i32* @vmalloc(i64 %37)
  %39 = load %struct.z_stream_s*, %struct.z_stream_s** %9, align 8
  %40 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %39, i32 0, i32 0
  store i32* %38, i32** %40, align 8
  %41 = load %struct.z_stream_s*, %struct.z_stream_s** %9, align 8
  %42 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %33
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %134

48:                                               ; preds = %33
  %49 = load %struct.z_stream_s*, %struct.z_stream_s** %9, align 8
  %50 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load i64, i64* %12, align 8
  %53 = call i32 @memset(i32* %51, i32 0, i64 %52)
  %54 = load %struct.z_stream_s*, %struct.z_stream_s** %9, align 8
  %55 = load i64, i64* @ZLIB_COMP_LEVEL, align 8
  %56 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %24, i64 %55
  %57 = load %struct.nlattr*, %struct.nlattr** %56, align 8
  %58 = icmp ne %struct.nlattr* %57, null
  br i1 %58, label %59, label %64

59:                                               ; preds = %48
  %60 = load i64, i64* @ZLIB_COMP_LEVEL, align 8
  %61 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %24, i64 %60
  %62 = load %struct.nlattr*, %struct.nlattr** %61, align 8
  %63 = call i32 @nla_get_u32(%struct.nlattr* %62)
  br label %66

64:                                               ; preds = %48
  %65 = load i32, i32* @Z_DEFAULT_COMPRESSION, align 4
  br label %66

66:                                               ; preds = %64, %59
  %67 = phi i32 [ %63, %59 ], [ %65, %64 ]
  %68 = load i64, i64* @ZLIB_COMP_METHOD, align 8
  %69 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %24, i64 %68
  %70 = load %struct.nlattr*, %struct.nlattr** %69, align 8
  %71 = icmp ne %struct.nlattr* %70, null
  br i1 %71, label %72, label %77

72:                                               ; preds = %66
  %73 = load i64, i64* @ZLIB_COMP_METHOD, align 8
  %74 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %24, i64 %73
  %75 = load %struct.nlattr*, %struct.nlattr** %74, align 8
  %76 = call i32 @nla_get_u32(%struct.nlattr* %75)
  br label %79

77:                                               ; preds = %66
  %78 = load i32, i32* @Z_DEFLATED, align 4
  br label %79

79:                                               ; preds = %77, %72
  %80 = phi i32 [ %76, %72 ], [ %78, %77 ]
  %81 = load i64, i64* @ZLIB_COMP_WINDOWBITS, align 8
  %82 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %24, i64 %81
  %83 = load %struct.nlattr*, %struct.nlattr** %82, align 8
  %84 = icmp ne %struct.nlattr* %83, null
  br i1 %84, label %85, label %90

85:                                               ; preds = %79
  %86 = load i64, i64* @ZLIB_COMP_WINDOWBITS, align 8
  %87 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %24, i64 %86
  %88 = load %struct.nlattr*, %struct.nlattr** %87, align 8
  %89 = call i32 @nla_get_u32(%struct.nlattr* %88)
  br label %92

90:                                               ; preds = %79
  %91 = load i32, i32* @MAX_WBITS, align 4
  br label %92

92:                                               ; preds = %90, %85
  %93 = phi i32 [ %89, %85 ], [ %91, %90 ]
  %94 = load i64, i64* @ZLIB_COMP_MEMLEVEL, align 8
  %95 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %24, i64 %94
  %96 = load %struct.nlattr*, %struct.nlattr** %95, align 8
  %97 = icmp ne %struct.nlattr* %96, null
  br i1 %97, label %98, label %103

98:                                               ; preds = %92
  %99 = load i64, i64* @ZLIB_COMP_MEMLEVEL, align 8
  %100 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %24, i64 %99
  %101 = load %struct.nlattr*, %struct.nlattr** %100, align 8
  %102 = call i32 @nla_get_u32(%struct.nlattr* %101)
  br label %105

103:                                              ; preds = %92
  %104 = load i32, i32* @DEF_MEM_LEVEL, align 4
  br label %105

105:                                              ; preds = %103, %98
  %106 = phi i32 [ %102, %98 ], [ %104, %103 ]
  %107 = load i64, i64* @ZLIB_COMP_STRATEGY, align 8
  %108 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %24, i64 %107
  %109 = load %struct.nlattr*, %struct.nlattr** %108, align 8
  %110 = icmp ne %struct.nlattr* %109, null
  br i1 %110, label %111, label %116

111:                                              ; preds = %105
  %112 = load i64, i64* @ZLIB_COMP_STRATEGY, align 8
  %113 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %24, i64 %112
  %114 = load %struct.nlattr*, %struct.nlattr** %113, align 8
  %115 = call i32 @nla_get_u32(%struct.nlattr* %114)
  br label %118

116:                                              ; preds = %105
  %117 = load i32, i32* @Z_DEFAULT_STRATEGY, align 4
  br label %118

118:                                              ; preds = %116, %111
  %119 = phi i32 [ %115, %111 ], [ %117, %116 ]
  %120 = call i32 @zlib_deflateInit2(%struct.z_stream_s* %54, i32 %67, i32 %80, i32 %93, i32 %106, i32 %119)
  store i32 %120, i32* %13, align 4
  %121 = load i32, i32* %13, align 4
  %122 = load i32, i32* @Z_OK, align 4
  %123 = icmp ne i32 %121, %122
  br i1 %123, label %124, label %133

124:                                              ; preds = %118
  %125 = load %struct.z_stream_s*, %struct.z_stream_s** %9, align 8
  %126 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %125, i32 0, i32 0
  %127 = load i32*, i32** %126, align 8
  %128 = call i32 @vfree(i32* %127)
  %129 = load %struct.z_stream_s*, %struct.z_stream_s** %9, align 8
  %130 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %129, i32 0, i32 0
  store i32* null, i32** %130, align 8
  %131 = load i32, i32* @EINVAL, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %134

133:                                              ; preds = %118
  store i32 0, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %134

134:                                              ; preds = %133, %124, %45, %31
  %135 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %135)
  %136 = load i32, i32* %4, align 4
  ret i32 %136
}

declare dso_local %struct.zlib_ctx* @crypto_tfm_ctx(i32) #1

declare dso_local i32 @crypto_pcomp_tfm(%struct.crypto_pcomp*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @nla_parse(%struct.nlattr**, i32, i8*, i32, i32*) #1

declare dso_local i32 @zlib_comp_exit(%struct.zlib_ctx*) #1

declare dso_local i64 @zlib_deflate_workspacesize(...) #1

declare dso_local i32* @vmalloc(i64) #1

declare dso_local i32 @memset(i32*, i32, i64) #1

declare dso_local i32 @zlib_deflateInit2(%struct.z_stream_s*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @nla_get_u32(%struct.nlattr*) #1

declare dso_local i32 @vfree(i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
