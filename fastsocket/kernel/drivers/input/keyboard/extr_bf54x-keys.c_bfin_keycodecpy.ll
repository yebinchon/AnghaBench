; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/keyboard/extr_bf54x-keys.c_bfin_keycodecpy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/keyboard/extr_bf54x-keys.c_bfin_keycodecpy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i16*, i32*, i16)* @bfin_keycodecpy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfin_keycodecpy(i16* %0, i32* %1, i16 zeroext %2) #0 {
  %4 = alloca i16*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i16, align 2
  %7 = alloca i32, align 4
  store i16* %0, i16** %4, align 8
  store i32* %1, i32** %5, align 8
  store i16 %2, i16* %6, align 2
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %39, %3
  %9 = load i32, i32* %7, align 4
  %10 = load i16, i16* %6, align 2
  %11 = zext i16 %10 to i32
  %12 = icmp ult i32 %9, %11
  br i1 %12, label %13, label %42

13:                                               ; preds = %8
  %14 = load i32*, i32** %5, align 8
  %15 = load i32, i32* %7, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = and i32 %18, 65535
  %20 = trunc i32 %19 to i16
  %21 = load i16*, i16** %4, align 8
  %22 = load i32, i32* %7, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds i16, i16* %21, i64 %23
  store i16 %20, i16* %24, align 2
  %25 = load i32*, i32** %5, align 8
  %26 = load i32, i32* %7, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = lshr i32 %29, 16
  %31 = trunc i32 %30 to i16
  %32 = load i16*, i16** %4, align 8
  %33 = load i32, i32* %7, align 4
  %34 = load i16, i16* %6, align 2
  %35 = zext i16 %34 to i32
  %36 = add i32 %33, %35
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds i16, i16* %32, i64 %37
  store i16 %31, i16* %38, align 2
  br label %39

39:                                               ; preds = %13
  %40 = load i32, i32* %7, align 4
  %41 = add i32 %40, 1
  store i32 %41, i32* %7, align 4
  br label %8

42:                                               ; preds = %8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
