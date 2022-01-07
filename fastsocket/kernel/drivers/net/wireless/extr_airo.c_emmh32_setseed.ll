; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_airo.c_emmh32_setseed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_airo.c_emmh32_setseed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }
%struct.crypto_cipher = type { i32 }

@aes_counter = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i64*, i32, %struct.crypto_cipher*)* @emmh32_setseed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emmh32_setseed(%struct.TYPE_3__* %0, i64* %1, i32 %2, %struct.crypto_cipher* %3) #0 {
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.crypto_cipher*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64*, align 8
  %13 = alloca [16 x i64], align 16
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.crypto_cipher* %3, %struct.crypto_cipher** %8, align 8
  %14 = load %struct.crypto_cipher*, %struct.crypto_cipher** %8, align 8
  %15 = load i64*, i64** %6, align 8
  %16 = call i32 @crypto_cipher_setkey(%struct.crypto_cipher* %14, i64* %15, i32 16)
  store i32 0, i32* %11, align 4
  store i32 0, i32* %9, align 4
  br label %17

17:                                               ; preds = %84, %4
  %18 = load i32, i32* %9, align 4
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 @ARRAY_SIZE(i32* %21)
  %23 = icmp slt i32 %18, %22
  br i1 %23, label %24, label %85

24:                                               ; preds = %17
  %25 = load i32, i32* %11, align 4
  %26 = ashr i32 %25, 0
  %27 = sext i32 %26 to i64
  %28 = load i64*, i64** @aes_counter, align 8
  %29 = getelementptr inbounds i64, i64* %28, i64 15
  store i64 %27, i64* %29, align 8
  %30 = load i32, i32* %11, align 4
  %31 = ashr i32 %30, 8
  %32 = sext i32 %31 to i64
  %33 = load i64*, i64** @aes_counter, align 8
  %34 = getelementptr inbounds i64, i64* %33, i64 14
  store i64 %32, i64* %34, align 8
  %35 = load i32, i32* %11, align 4
  %36 = ashr i32 %35, 16
  %37 = sext i32 %36 to i64
  %38 = load i64*, i64** @aes_counter, align 8
  %39 = getelementptr inbounds i64, i64* %38, i64 13
  store i64 %37, i64* %39, align 8
  %40 = load i32, i32* %11, align 4
  %41 = ashr i32 %40, 24
  %42 = sext i32 %41 to i64
  %43 = load i64*, i64** @aes_counter, align 8
  %44 = getelementptr inbounds i64, i64* %43, i64 12
  store i64 %42, i64* %44, align 8
  %45 = load i32, i32* %11, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %11, align 4
  %47 = getelementptr inbounds [16 x i64], [16 x i64]* %13, i64 0, i64 0
  %48 = load i64*, i64** @aes_counter, align 8
  %49 = call i32 @memcpy(i64* %47, i64* %48, i32 16)
  %50 = load %struct.crypto_cipher*, %struct.crypto_cipher** %8, align 8
  %51 = getelementptr inbounds [16 x i64], [16 x i64]* %13, i64 0, i64 0
  %52 = getelementptr inbounds [16 x i64], [16 x i64]* %13, i64 0, i64 0
  %53 = call i32 @crypto_cipher_encrypt_one(%struct.crypto_cipher* %50, i64* %51, i64* %52)
  %54 = getelementptr inbounds [16 x i64], [16 x i64]* %13, i64 0, i64 0
  store i64* %54, i64** %12, align 8
  store i32 0, i32* %10, align 4
  br label %55

55:                                               ; preds = %67, %24
  %56 = load i32, i32* %10, align 4
  %57 = icmp slt i32 %56, 16
  br i1 %57, label %58, label %65

58:                                               ; preds = %55
  %59 = load i32, i32* %9, align 4
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = call i32 @ARRAY_SIZE(i32* %62)
  %64 = icmp slt i32 %59, %63
  br label %65

65:                                               ; preds = %58, %55
  %66 = phi i1 [ false, %55 ], [ %64, %58 ]
  br i1 %66, label %67, label %84

67:                                               ; preds = %65
  %68 = load i64*, i64** %12, align 8
  %69 = load i32, i32* %10, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i64, i64* %68, i64 %70
  %72 = bitcast i64* %71 to i32*
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @ntohl(i32 %73)
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %9, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %9, align 4
  %80 = sext i32 %78 to i64
  %81 = getelementptr inbounds i32, i32* %77, i64 %80
  store i32 %74, i32* %81, align 4
  %82 = load i32, i32* %10, align 4
  %83 = add nsw i32 %82, 4
  store i32 %83, i32* %10, align 4
  br label %55

84:                                               ; preds = %65
  br label %17

85:                                               ; preds = %17
  ret void
}

declare dso_local i32 @crypto_cipher_setkey(%struct.crypto_cipher*, i64*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @memcpy(i64*, i64*, i32) #1

declare dso_local i32 @crypto_cipher_encrypt_one(%struct.crypto_cipher*, i64*, i64*) #1

declare dso_local i32 @ntohl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
