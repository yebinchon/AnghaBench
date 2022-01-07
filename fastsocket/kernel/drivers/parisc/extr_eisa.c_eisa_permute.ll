; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/parisc/extr_eisa.c_eisa_permute.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/parisc/extr_eisa.c_eisa_permute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i16)* @eisa_permute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @eisa_permute(i16 zeroext %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i16, align 2
  store i16 %0, i16* %3, align 2
  %4 = load i16, i16* %3, align 2
  %5 = zext i16 %4 to i32
  %6 = and i32 %5, 768
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %24

8:                                                ; preds = %1
  %9 = load i16, i16* %3, align 2
  %10 = zext i16 %9 to i32
  %11 = and i32 %10, 64512
  %12 = ashr i32 %11, 6
  %13 = or i32 -67108864, %12
  %14 = load i16, i16* %3, align 2
  %15 = zext i16 %14 to i32
  %16 = and i32 %15, 1016
  %17 = shl i32 %16, 9
  %18 = or i32 %13, %17
  %19 = load i16, i16* %3, align 2
  %20 = zext i16 %19 to i32
  %21 = and i32 %20, 7
  %22 = or i32 %18, %21
  %23 = zext i32 %22 to i64
  store i64 %23, i64* %2, align 8
  br label %29

24:                                               ; preds = %1
  %25 = load i16, i16* %3, align 2
  %26 = zext i16 %25 to i32
  %27 = or i32 -67108864, %26
  %28 = zext i32 %27 to i64
  store i64 %28, i64* %2, align 8
  br label %29

29:                                               ; preds = %24, %8
  %30 = load i64, i64* %2, align 8
  ret i64 %30
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
