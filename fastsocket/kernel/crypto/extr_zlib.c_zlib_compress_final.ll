; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_zlib.c_zlib_compress_final.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_zlib.c_zlib_compress_final.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_pcomp = type { i32 }
%struct.comp_request = type { i32, i32, i32, i32 }
%struct.zlib_ctx = type { %struct.z_stream_s }
%struct.z_stream_s = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"avail_in %u, avail_out %u\0A\00", align 1
@Z_FINISH = common dso_local global i32 0, align 4
@Z_STREAM_END = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"zlib_deflate failed %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [54 x i8] c"avail_in %u, avail_out %u (consumed %u, produced %u)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_pcomp*, %struct.comp_request*)* @zlib_compress_final to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zlib_compress_final(%struct.crypto_pcomp* %0, %struct.comp_request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.crypto_pcomp*, align 8
  %5 = alloca %struct.comp_request*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.zlib_ctx*, align 8
  %8 = alloca %struct.z_stream_s*, align 8
  store %struct.crypto_pcomp* %0, %struct.crypto_pcomp** %4, align 8
  store %struct.comp_request* %1, %struct.comp_request** %5, align 8
  %9 = load %struct.crypto_pcomp*, %struct.crypto_pcomp** %4, align 8
  %10 = call i32 @crypto_pcomp_tfm(%struct.crypto_pcomp* %9)
  %11 = call %struct.zlib_ctx* @crypto_tfm_ctx(i32 %10)
  store %struct.zlib_ctx* %11, %struct.zlib_ctx** %7, align 8
  %12 = load %struct.zlib_ctx*, %struct.zlib_ctx** %7, align 8
  %13 = getelementptr inbounds %struct.zlib_ctx, %struct.zlib_ctx* %12, i32 0, i32 0
  store %struct.z_stream_s* %13, %struct.z_stream_s** %8, align 8
  %14 = load %struct.comp_request*, %struct.comp_request** %5, align 8
  %15 = getelementptr inbounds %struct.comp_request, %struct.comp_request* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.comp_request*, %struct.comp_request** %5, align 8
  %18 = getelementptr inbounds %struct.comp_request, %struct.comp_request* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %19)
  %21 = load %struct.comp_request*, %struct.comp_request** %5, align 8
  %22 = getelementptr inbounds %struct.comp_request, %struct.comp_request* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.z_stream_s*, %struct.z_stream_s** %8, align 8
  %25 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %24, i32 0, i32 3
  store i32 %23, i32* %25, align 4
  %26 = load %struct.comp_request*, %struct.comp_request** %5, align 8
  %27 = getelementptr inbounds %struct.comp_request, %struct.comp_request* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.z_stream_s*, %struct.z_stream_s** %8, align 8
  %30 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 4
  %31 = load %struct.comp_request*, %struct.comp_request** %5, align 8
  %32 = getelementptr inbounds %struct.comp_request, %struct.comp_request* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.z_stream_s*, %struct.z_stream_s** %8, align 8
  %35 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load %struct.comp_request*, %struct.comp_request** %5, align 8
  %37 = getelementptr inbounds %struct.comp_request, %struct.comp_request* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.z_stream_s*, %struct.z_stream_s** %8, align 8
  %40 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  %41 = load %struct.z_stream_s*, %struct.z_stream_s** %8, align 8
  %42 = load i32, i32* @Z_FINISH, align 4
  %43 = call i32 @zlib_deflate(%struct.z_stream_s* %41, i32 %42)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @Z_STREAM_END, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %2
  %48 = load i32, i32* %6, align 4
  %49 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %96

52:                                               ; preds = %2
  %53 = load %struct.comp_request*, %struct.comp_request** %5, align 8
  %54 = getelementptr inbounds %struct.comp_request, %struct.comp_request* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.z_stream_s*, %struct.z_stream_s** %8, align 8
  %57 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = sub nsw i32 %55, %58
  store i32 %59, i32* %6, align 4
  %60 = load %struct.z_stream_s*, %struct.z_stream_s** %8, align 8
  %61 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.z_stream_s*, %struct.z_stream_s** %8, align 8
  %64 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.comp_request*, %struct.comp_request** %5, align 8
  %67 = getelementptr inbounds %struct.comp_request, %struct.comp_request* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.z_stream_s*, %struct.z_stream_s** %8, align 8
  %70 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = sub nsw i32 %68, %71
  %73 = load i32, i32* %6, align 4
  %74 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i32 %62, i32 %65, i32 %72, i32 %73)
  %75 = load %struct.z_stream_s*, %struct.z_stream_s** %8, align 8
  %76 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.comp_request*, %struct.comp_request** %5, align 8
  %79 = getelementptr inbounds %struct.comp_request, %struct.comp_request* %78, i32 0, i32 3
  store i32 %77, i32* %79, align 4
  %80 = load %struct.z_stream_s*, %struct.z_stream_s** %8, align 8
  %81 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.comp_request*, %struct.comp_request** %5, align 8
  %84 = getelementptr inbounds %struct.comp_request, %struct.comp_request* %83, i32 0, i32 2
  store i32 %82, i32* %84, align 4
  %85 = load %struct.z_stream_s*, %struct.z_stream_s** %8, align 8
  %86 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.comp_request*, %struct.comp_request** %5, align 8
  %89 = getelementptr inbounds %struct.comp_request, %struct.comp_request* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 4
  %90 = load %struct.z_stream_s*, %struct.z_stream_s** %8, align 8
  %91 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.comp_request*, %struct.comp_request** %5, align 8
  %94 = getelementptr inbounds %struct.comp_request, %struct.comp_request* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 4
  %95 = load i32, i32* %6, align 4
  store i32 %95, i32* %3, align 4
  br label %96

96:                                               ; preds = %52, %47
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local %struct.zlib_ctx* @crypto_tfm_ctx(i32) #1

declare dso_local i32 @crypto_pcomp_tfm(%struct.crypto_pcomp*) #1

declare dso_local i32 @pr_debug(i8*, i32, ...) #1

declare dso_local i32 @zlib_deflate(%struct.z_stream_s*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
