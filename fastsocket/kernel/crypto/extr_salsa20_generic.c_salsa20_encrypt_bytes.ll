; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_salsa20_generic.c_salsa20_encrypt_bytes.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_salsa20_generic.c_salsa20_encrypt_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.salsa20_ctx = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.salsa20_ctx*, i32*, i32*, i32)* @salsa20_encrypt_bytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @salsa20_encrypt_bytes(%struct.salsa20_ctx* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.salsa20_ctx*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [64 x i32], align 16
  store %struct.salsa20_ctx* %0, %struct.salsa20_ctx** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i32*, i32** %6, align 8
  %11 = load i32*, i32** %7, align 8
  %12 = icmp ne i32* %10, %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %4
  %14 = load i32*, i32** %6, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @memcpy(i32* %14, i32* %15, i32 %16)
  br label %18

18:                                               ; preds = %13, %4
  br label %19

19:                                               ; preds = %55, %18
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %63

22:                                               ; preds = %19
  %23 = getelementptr inbounds [64 x i32], [64 x i32]* %9, i64 0, i64 0
  %24 = load %struct.salsa20_ctx*, %struct.salsa20_ctx** %5, align 8
  %25 = getelementptr inbounds %struct.salsa20_ctx, %struct.salsa20_ctx* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = call i32 @salsa20_wordtobyte(i32* %23, i32* %26)
  %28 = load %struct.salsa20_ctx*, %struct.salsa20_ctx** %5, align 8
  %29 = getelementptr inbounds %struct.salsa20_ctx, %struct.salsa20_ctx* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 8
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %31, align 4
  %34 = load %struct.salsa20_ctx*, %struct.salsa20_ctx** %5, align 8
  %35 = getelementptr inbounds %struct.salsa20_ctx, %struct.salsa20_ctx* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 8
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %47, label %40

40:                                               ; preds = %22
  %41 = load %struct.salsa20_ctx*, %struct.salsa20_ctx** %5, align 8
  %42 = getelementptr inbounds %struct.salsa20_ctx, %struct.salsa20_ctx* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 9
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 4
  br label %47

47:                                               ; preds = %40, %22
  %48 = load i32, i32* %8, align 4
  %49 = icmp ule i32 %48, 64
  br i1 %49, label %50, label %55

50:                                               ; preds = %47
  %51 = load i32*, i32** %6, align 8
  %52 = getelementptr inbounds [64 x i32], [64 x i32]* %9, i64 0, i64 0
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @crypto_xor(i32* %51, i32* %52, i32 %53)
  br label %63

55:                                               ; preds = %47
  %56 = load i32*, i32** %6, align 8
  %57 = getelementptr inbounds [64 x i32], [64 x i32]* %9, i64 0, i64 0
  %58 = call i32 @crypto_xor(i32* %56, i32* %57, i32 64)
  %59 = load i32, i32* %8, align 4
  %60 = sub i32 %59, 64
  store i32 %60, i32* %8, align 4
  %61 = load i32*, i32** %6, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 64
  store i32* %62, i32** %6, align 8
  br label %19

63:                                               ; preds = %50, %19
  ret void
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @salsa20_wordtobyte(i32*, i32*) #1

declare dso_local i32 @crypto_xor(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
