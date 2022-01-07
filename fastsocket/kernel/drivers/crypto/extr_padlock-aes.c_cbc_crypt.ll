; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/extr_padlock-aes.c_cbc_crypt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/extr_padlock-aes.c_cbc_crypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cword = type { i32 }

@PAGE_MASK = common dso_local global i64 0, align 8
@cbc_fetch_bytes = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i32*, i32*, %struct.cword*, i32)* @cbc_crypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @cbc_crypt(i32* %0, i32* %1, i32* %2, i32* %3, %struct.cword* %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.cword*, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store %struct.cword* %4, %struct.cword** %12, align 8
  store i32 %5, i32* %13, align 4
  %14 = load i32*, i32** %8, align 8
  %15 = ptrtoint i32* %14 to i64
  %16 = load i64, i64* @PAGE_MASK, align 8
  %17 = xor i64 %16, -1
  %18 = and i64 %15, %17
  %19 = load i64, i64* @cbc_fetch_bytes, align 8
  %20 = add i64 %18, %19
  %21 = load i64, i64* @PAGE_SIZE, align 8
  %22 = icmp ugt i64 %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i64 @unlikely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %6
  %27 = load i32*, i32** %8, align 8
  %28 = load i32*, i32** %9, align 8
  %29 = load i32*, i32** %10, align 8
  %30 = load i32*, i32** %11, align 8
  %31 = load %struct.cword*, %struct.cword** %12, align 8
  %32 = load i32, i32* %13, align 4
  %33 = call i32* @cbc_crypt_copy(i32* %27, i32* %28, i32* %29, i32* %30, %struct.cword* %31, i32 %32)
  store i32* %33, i32** %7, align 8
  br label %42

34:                                               ; preds = %6
  %35 = load i32*, i32** %8, align 8
  %36 = load i32*, i32** %9, align 8
  %37 = load i32*, i32** %10, align 8
  %38 = load i32*, i32** %11, align 8
  %39 = load %struct.cword*, %struct.cword** %12, align 8
  %40 = load i32, i32* %13, align 4
  %41 = call i32* @rep_xcrypt_cbc(i32* %35, i32* %36, i32* %37, i32* %38, %struct.cword* %39, i32 %40)
  store i32* %41, i32** %7, align 8
  br label %42

42:                                               ; preds = %34, %26
  %43 = load i32*, i32** %7, align 8
  ret i32* %43
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32* @cbc_crypt_copy(i32*, i32*, i32*, i32*, %struct.cword*, i32) #1

declare dso_local i32* @rep_xcrypt_cbc(i32*, i32*, i32*, i32*, %struct.cword*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
