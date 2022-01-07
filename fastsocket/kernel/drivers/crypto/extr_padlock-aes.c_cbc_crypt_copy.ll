; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/extr_padlock-aes.c_cbc_crypt_copy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/extr_padlock-aes.c_cbc_crypt_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cword = type { i32 }

@AES_BLOCK_SIZE = common dso_local global i32 0, align 4
@MAX_CBC_FETCH_BLOCKS = common dso_local global i32 0, align 4
@PADLOCK_ALIGNMENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i32*, i32*, %struct.cword*, i32)* @cbc_crypt_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @cbc_crypt_copy(i32* %0, i32* %1, i32* %2, i32* %3, %struct.cword* %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.cword*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store %struct.cword* %4, %struct.cword** %11, align 8
  store i32 %5, i32* %12, align 4
  %16 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %17 = load i32, i32* @MAX_CBC_FETCH_BLOCKS, align 4
  %18 = sub nsw i32 %17, 1
  %19 = mul nsw i32 %16, %18
  %20 = load i32, i32* @PADLOCK_ALIGNMENT, align 4
  %21 = add nsw i32 %19, %20
  %22 = sub nsw i32 %21, 1
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %13, align 8
  %25 = alloca i32, i64 %23, align 16
  store i64 %23, i64* %14, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* @PADLOCK_ALIGNMENT, align 4
  %28 = call i32* @PTR_ALIGN(i32* %26, i32 %27)
  store i32* %28, i32** %15, align 8
  %29 = load i32*, i32** %15, align 8
  %30 = load i32*, i32** %7, align 8
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %33 = mul nsw i32 %31, %32
  %34 = call i32 @memcpy(i32* %29, i32* %30, i32 %33)
  %35 = load i32*, i32** %15, align 8
  %36 = load i32*, i32** %8, align 8
  %37 = load i32*, i32** %9, align 8
  %38 = load i32*, i32** %10, align 8
  %39 = load %struct.cword*, %struct.cword** %11, align 8
  %40 = load i32, i32* %12, align 4
  %41 = call i32* @rep_xcrypt_cbc(i32* %35, i32* %36, i32* %37, i32* %38, %struct.cword* %39, i32 %40)
  %42 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %42)
  ret i32* %41
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @PTR_ALIGN(i32*, i32) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i32* @rep_xcrypt_cbc(i32*, i32*, i32*, i32*, %struct.cword*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
