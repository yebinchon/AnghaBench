; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_lzo.c_lzo_decompress.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_lzo.c_lzo_decompress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_tfm = type { i32 }

@LZO_E_OK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_tfm*, i32*, i32, i32*, i32*)* @lzo_decompress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lzo_decompress(%struct.crypto_tfm* %0, i32* %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.crypto_tfm*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.crypto_tfm* %0, %struct.crypto_tfm** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %14 = load i32*, i32** %11, align 8
  %15 = load i32, i32* %14, align 4
  %16 = zext i32 %15 to i64
  store i64 %16, i64* %13, align 8
  %17 = load i32*, i32** %8, align 8
  %18 = load i32, i32* %9, align 4
  %19 = load i32*, i32** %10, align 8
  %20 = call i32 @lzo1x_decompress_safe(i32* %17, i32 %18, i32* %19, i64* %13)
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %12, align 4
  %22 = load i32, i32* @LZO_E_OK, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %5
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %6, align 4
  br label %31

27:                                               ; preds = %5
  %28 = load i64, i64* %13, align 8
  %29 = trunc i64 %28 to i32
  %30 = load i32*, i32** %11, align 8
  store i32 %29, i32* %30, align 4
  store i32 0, i32* %6, align 4
  br label %31

31:                                               ; preds = %27, %24
  %32 = load i32, i32* %6, align 4
  ret i32 %32
}

declare dso_local i32 @lzo1x_decompress_safe(i32*, i32, i32*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
