; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/crypto/extr_aes_s390.c_need_fallback.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/crypto/extr_aes_s390.c_need_fallback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@keylen_flag = common dso_local global i32 0, align 4
@AES_KEYLEN_128 = common dso_local global i32 0, align 4
@AES_KEYLEN_192 = common dso_local global i32 0, align 4
@AES_KEYLEN_256 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @need_fallback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @need_fallback(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %26 [
    i32 16, label %5
    i32 24, label %12
    i32 32, label %19
  ]

5:                                                ; preds = %1
  %6 = load i32, i32* @keylen_flag, align 4
  %7 = load i32, i32* @AES_KEYLEN_128, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %5
  store i32 1, i32* %2, align 4
  br label %28

11:                                               ; preds = %5
  br label %27

12:                                               ; preds = %1
  %13 = load i32, i32* @keylen_flag, align 4
  %14 = load i32, i32* @AES_KEYLEN_192, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %12
  store i32 1, i32* %2, align 4
  br label %28

18:                                               ; preds = %12
  br label %27

19:                                               ; preds = %1
  %20 = load i32, i32* @keylen_flag, align 4
  %21 = load i32, i32* @AES_KEYLEN_256, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  store i32 1, i32* %2, align 4
  br label %28

25:                                               ; preds = %19
  br label %27

26:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %28

27:                                               ; preds = %25, %18, %11
  store i32 0, i32* %2, align 4
  br label %28

28:                                               ; preds = %27, %26, %24, %17, %10
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
