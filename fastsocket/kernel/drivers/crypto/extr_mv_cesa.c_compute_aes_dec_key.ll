; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/extr_mv_cesa.c_compute_aes_dec_key.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/extr_mv_cesa.c_compute_aes_dec_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv_ctx = type { i32, i64, i32*, i32 }
%struct.crypto_aes_ctx = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mv_ctx*)* @compute_aes_dec_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @compute_aes_dec_key(%struct.mv_ctx* %0) #0 {
  %2 = alloca %struct.mv_ctx*, align 8
  %3 = alloca %struct.crypto_aes_ctx, align 8
  %4 = alloca i32, align 4
  store %struct.mv_ctx* %0, %struct.mv_ctx** %2, align 8
  %5 = load %struct.mv_ctx*, %struct.mv_ctx** %2, align 8
  %6 = getelementptr inbounds %struct.mv_ctx, %struct.mv_ctx* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %53

10:                                               ; preds = %1
  %11 = load %struct.mv_ctx*, %struct.mv_ctx** %2, align 8
  %12 = getelementptr inbounds %struct.mv_ctx, %struct.mv_ctx* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.mv_ctx*, %struct.mv_ctx** %2, align 8
  %15 = getelementptr inbounds %struct.mv_ctx, %struct.mv_ctx* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @crypto_aes_expand_key(%struct.crypto_aes_ctx* %3, i32 %13, i32 %16)
  %18 = load %struct.mv_ctx*, %struct.mv_ctx** %2, align 8
  %19 = getelementptr inbounds %struct.mv_ctx, %struct.mv_ctx* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = add nsw i32 %20, 24
  store i32 %21, i32* %4, align 4
  %22 = load %struct.mv_ctx*, %struct.mv_ctx** %2, align 8
  %23 = getelementptr inbounds %struct.mv_ctx, %struct.mv_ctx* %22, i32 0, i32 2
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds %struct.crypto_aes_ctx, %struct.crypto_aes_ctx* %3, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = call i32 @memcpy(i32* %24, i32* %29, i32 16)
  %31 = load %struct.mv_ctx*, %struct.mv_ctx** %2, align 8
  %32 = getelementptr inbounds %struct.mv_ctx, %struct.mv_ctx* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  switch i32 %33, label %50 [
    i32 128, label %34
    i32 129, label %37
  ]

34:                                               ; preds = %10
  %35 = load i32, i32* %4, align 4
  %36 = sub nsw i32 %35, 2
  store i32 %36, i32* %4, align 4
  br label %37

37:                                               ; preds = %10, %34
  %38 = load i32, i32* %4, align 4
  %39 = sub nsw i32 %38, 2
  store i32 %39, i32* %4, align 4
  %40 = load %struct.mv_ctx*, %struct.mv_ctx** %2, align 8
  %41 = getelementptr inbounds %struct.mv_ctx, %struct.mv_ctx* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 4
  %44 = getelementptr inbounds %struct.crypto_aes_ctx, %struct.crypto_aes_ctx* %3, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %4, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = call i32 @memcpy(i32* %43, i32* %48, i32 16)
  br label %50

50:                                               ; preds = %10, %37
  %51 = load %struct.mv_ctx*, %struct.mv_ctx** %2, align 8
  %52 = getelementptr inbounds %struct.mv_ctx, %struct.mv_ctx* %51, i32 0, i32 1
  store i64 0, i64* %52, align 8
  br label %53

53:                                               ; preds = %50, %9
  ret void
}

declare dso_local i32 @crypto_aes_expand_key(%struct.crypto_aes_ctx*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
