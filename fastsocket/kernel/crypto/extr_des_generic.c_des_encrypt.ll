; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_des_generic.c_des_encrypt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_des_generic.c_des_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_tfm = type { i32 }
%struct.des_ctx = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.crypto_tfm*, i32*, i32*)* @des_encrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @des_encrypt(%struct.crypto_tfm* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.crypto_tfm*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.des_ctx*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.crypto_tfm* %0, %struct.crypto_tfm** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %16 = load %struct.crypto_tfm*, %struct.crypto_tfm** %4, align 8
  %17 = call %struct.des_ctx* @crypto_tfm_ctx(%struct.crypto_tfm* %16)
  store %struct.des_ctx* %17, %struct.des_ctx** %7, align 8
  %18 = load %struct.des_ctx*, %struct.des_ctx** %7, align 8
  %19 = getelementptr inbounds %struct.des_ctx, %struct.des_ctx* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %8, align 8
  %21 = load i32*, i32** %6, align 8
  store i32* %21, i32** %9, align 8
  %22 = load i32*, i32** %5, align 8
  store i32* %22, i32** %10, align 8
  %23 = load i32*, i32** %9, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @le32_to_cpu(i32 %25)
  store i32 %26, i32* %11, align 4
  %27 = load i32*, i32** %9, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @le32_to_cpu(i32 %29)
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* %12, align 4
  %33 = load i32, i32* %13, align 4
  %34 = call i32 @IP(i32 %31, i32 %32, i32 %33)
  store i32 0, i32* %15, align 4
  br label %35

35:                                               ; preds = %51, %3
  %36 = load i32, i32* %15, align 4
  %37 = icmp slt i32 %36, 8
  br i1 %37, label %38, label %54

38:                                               ; preds = %35
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* %12, align 4
  %41 = load i32, i32* %13, align 4
  %42 = load i32, i32* %14, align 4
  %43 = load i32*, i32** %8, align 8
  %44 = call i32 @ROUND(i32 %39, i32 %40, i32 %41, i32 %42, i32* %43, i32 2)
  %45 = load i32, i32* %12, align 4
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* %13, align 4
  %48 = load i32, i32* %14, align 4
  %49 = load i32*, i32** %8, align 8
  %50 = call i32 @ROUND(i32 %45, i32 %46, i32 %47, i32 %48, i32* %49, i32 2)
  br label %51

51:                                               ; preds = %38
  %52 = load i32, i32* %15, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %15, align 4
  br label %35

54:                                               ; preds = %35
  %55 = load i32, i32* %12, align 4
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* %13, align 4
  %58 = call i32 @FP(i32 %55, i32 %56, i32 %57)
  %59 = load i32, i32* %12, align 4
  %60 = call i32 @cpu_to_le32(i32 %59)
  %61 = load i32*, i32** %10, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  store i32 %60, i32* %62, align 4
  %63 = load i32, i32* %11, align 4
  %64 = call i32 @cpu_to_le32(i32 %63)
  %65 = load i32*, i32** %10, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 1
  store i32 %64, i32* %66, align 4
  ret void
}

declare dso_local %struct.des_ctx* @crypto_tfm_ctx(%struct.crypto_tfm*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @IP(i32, i32, i32) #1

declare dso_local i32 @ROUND(i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @FP(i32, i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
