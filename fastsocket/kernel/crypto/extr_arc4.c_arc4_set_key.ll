; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_arc4.c_arc4_set_key.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_arc4.c_arc4_set_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_tfm = type { i32 }
%struct.arc4_ctx = type { i32, i32*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_tfm*, i32*, i32)* @arc4_set_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arc4_set_key(%struct.crypto_tfm* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.crypto_tfm*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.arc4_ctx*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.crypto_tfm* %0, %struct.crypto_tfm** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.crypto_tfm*, %struct.crypto_tfm** %4, align 8
  %13 = call %struct.arc4_ctx* @crypto_tfm_ctx(%struct.crypto_tfm* %12)
  store %struct.arc4_ctx* %13, %struct.arc4_ctx** %7, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %14 = load %struct.arc4_ctx*, %struct.arc4_ctx** %7, align 8
  %15 = getelementptr inbounds %struct.arc4_ctx, %struct.arc4_ctx* %14, i32 0, i32 0
  store i32 1, i32* %15, align 8
  %16 = load %struct.arc4_ctx*, %struct.arc4_ctx** %7, align 8
  %17 = getelementptr inbounds %struct.arc4_ctx, %struct.arc4_ctx* %16, i32 0, i32 2
  store i64 0, i64* %17, align 8
  store i32 0, i32* %8, align 4
  br label %18

18:                                               ; preds = %29, %3
  %19 = load i32, i32* %8, align 4
  %20 = icmp slt i32 %19, 256
  br i1 %20, label %21, label %32

21:                                               ; preds = %18
  %22 = load i32, i32* %8, align 4
  %23 = load %struct.arc4_ctx*, %struct.arc4_ctx** %7, align 8
  %24 = getelementptr inbounds %struct.arc4_ctx, %struct.arc4_ctx* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  store i32 %22, i32* %28, align 4
  br label %29

29:                                               ; preds = %21
  %30 = load i32, i32* %8, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %8, align 4
  br label %18

32:                                               ; preds = %18
  store i32 0, i32* %8, align 4
  br label %33

33:                                               ; preds = %80, %32
  %34 = load i32, i32* %8, align 4
  %35 = icmp slt i32 %34, 256
  br i1 %35, label %36, label %83

36:                                               ; preds = %33
  %37 = load %struct.arc4_ctx*, %struct.arc4_ctx** %7, align 8
  %38 = getelementptr inbounds %struct.arc4_ctx, %struct.arc4_ctx* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %8, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %9, align 4
  %45 = load i32*, i32** %5, align 8
  %46 = load i32, i32* %10, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %44, %49
  %51 = load i32, i32* %11, align 4
  %52 = add nsw i32 %50, %51
  %53 = and i32 %52, 255
  store i32 %53, i32* %9, align 4
  %54 = load %struct.arc4_ctx*, %struct.arc4_ctx** %7, align 8
  %55 = getelementptr inbounds %struct.arc4_ctx, %struct.arc4_ctx* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %9, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.arc4_ctx*, %struct.arc4_ctx** %7, align 8
  %62 = getelementptr inbounds %struct.arc4_ctx, %struct.arc4_ctx* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %8, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  store i32 %60, i32* %66, align 4
  %67 = load i32, i32* %11, align 4
  %68 = load %struct.arc4_ctx*, %struct.arc4_ctx** %7, align 8
  %69 = getelementptr inbounds %struct.arc4_ctx, %struct.arc4_ctx* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %9, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  store i32 %67, i32* %73, align 4
  %74 = load i32, i32* %10, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %10, align 4
  %76 = load i32, i32* %6, align 4
  %77 = icmp uge i32 %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %36
  store i32 0, i32* %10, align 4
  br label %79

79:                                               ; preds = %78, %36
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %8, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %8, align 4
  br label %33

83:                                               ; preds = %33
  ret i32 0
}

declare dso_local %struct.arc4_ctx* @crypto_tfm_ctx(%struct.crypto_tfm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
