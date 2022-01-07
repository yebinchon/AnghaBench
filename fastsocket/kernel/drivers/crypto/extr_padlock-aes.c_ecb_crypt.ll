; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/extr_padlock-aes.c_ecb_crypt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/extr_padlock-aes.c_ecb_crypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cword = type { i32 }

@PAGE_MASK = common dso_local global i64 0, align 8
@ecb_fetch_bytes = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, %struct.cword*, i32)* @ecb_crypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecb_crypt(i32* %0, i32* %1, i32* %2, %struct.cword* %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.cword*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.cword* %3, %struct.cword** %9, align 8
  store i32 %4, i32* %10, align 4
  %11 = load i32*, i32** %6, align 8
  %12 = ptrtoint i32* %11 to i64
  %13 = load i64, i64* @PAGE_MASK, align 8
  %14 = xor i64 %13, -1
  %15 = and i64 %12, %14
  %16 = load i64, i64* @ecb_fetch_bytes, align 8
  %17 = add i64 %15, %16
  %18 = load i64, i64* @PAGE_SIZE, align 8
  %19 = icmp ugt i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %5
  %24 = load i32*, i32** %6, align 8
  %25 = load i32*, i32** %7, align 8
  %26 = load i32*, i32** %8, align 8
  %27 = load %struct.cword*, %struct.cword** %9, align 8
  %28 = load i32, i32* %10, align 4
  %29 = call i32 @ecb_crypt_copy(i32* %24, i32* %25, i32* %26, %struct.cword* %27, i32 %28)
  br label %37

30:                                               ; preds = %5
  %31 = load i32*, i32** %6, align 8
  %32 = load i32*, i32** %7, align 8
  %33 = load i32*, i32** %8, align 8
  %34 = load %struct.cword*, %struct.cword** %9, align 8
  %35 = load i32, i32* %10, align 4
  %36 = call i32 @rep_xcrypt_ecb(i32* %31, i32* %32, i32* %33, %struct.cword* %34, i32 %35)
  br label %37

37:                                               ; preds = %30, %23
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ecb_crypt_copy(i32*, i32*, i32*, %struct.cword*, i32) #1

declare dso_local i32 @rep_xcrypt_ecb(i32*, i32*, i32*, %struct.cword*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
