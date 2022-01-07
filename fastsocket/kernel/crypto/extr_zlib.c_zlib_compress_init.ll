; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_zlib.c_zlib_compress_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_zlib.c_zlib_compress_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_pcomp = type { i32 }
%struct.zlib_ctx = type { %struct.z_stream_s }
%struct.z_stream_s = type { i32 }

@Z_OK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_pcomp*)* @zlib_compress_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zlib_compress_init(%struct.crypto_pcomp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.crypto_pcomp*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.zlib_ctx*, align 8
  %6 = alloca %struct.z_stream_s*, align 8
  store %struct.crypto_pcomp* %0, %struct.crypto_pcomp** %3, align 8
  %7 = load %struct.crypto_pcomp*, %struct.crypto_pcomp** %3, align 8
  %8 = call i32 @crypto_pcomp_tfm(%struct.crypto_pcomp* %7)
  %9 = call %struct.zlib_ctx* @crypto_tfm_ctx(i32 %8)
  store %struct.zlib_ctx* %9, %struct.zlib_ctx** %5, align 8
  %10 = load %struct.zlib_ctx*, %struct.zlib_ctx** %5, align 8
  %11 = getelementptr inbounds %struct.zlib_ctx, %struct.zlib_ctx* %10, i32 0, i32 0
  store %struct.z_stream_s* %11, %struct.z_stream_s** %6, align 8
  %12 = load %struct.z_stream_s*, %struct.z_stream_s** %6, align 8
  %13 = call i32 @zlib_deflateReset(%struct.z_stream_s* %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @Z_OK, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %21

20:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %21

21:                                               ; preds = %20, %17
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

declare dso_local %struct.zlib_ctx* @crypto_tfm_ctx(i32) #1

declare dso_local i32 @crypto_pcomp_tfm(%struct.crypto_pcomp*) #1

declare dso_local i32 @zlib_deflateReset(%struct.z_stream_s*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
