; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tg3.c_calc_crc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tg3.c_calc_crc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (i8*, i32)* @calc_crc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @calc_crc(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i8 -1, i8* %5, align 1
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %48, %2
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %51

13:                                               ; preds = %9
  %14 = load i8*, i8** %3, align 8
  %15 = load i32, i32* %7, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8, i8* %14, i64 %16
  %18 = load i8, i8* %17, align 1
  %19 = zext i8 %18 to i32
  %20 = load i8, i8* %5, align 1
  %21 = zext i8 %20 to i32
  %22 = xor i32 %21, %19
  %23 = trunc i32 %22 to i8
  store i8 %23, i8* %5, align 1
  store i32 0, i32* %8, align 4
  br label %24

24:                                               ; preds = %44, %13
  %25 = load i32, i32* %8, align 4
  %26 = icmp slt i32 %25, 8
  br i1 %26, label %27, label %47

27:                                               ; preds = %24
  %28 = load i8, i8* %5, align 1
  %29 = zext i8 %28 to i32
  %30 = and i32 %29, 1
  %31 = trunc i32 %30 to i8
  store i8 %31, i8* %6, align 1
  %32 = load i8, i8* %5, align 1
  %33 = zext i8 %32 to i32
  %34 = ashr i32 %33, 1
  %35 = trunc i32 %34 to i8
  store i8 %35, i8* %5, align 1
  %36 = load i8, i8* %6, align 1
  %37 = icmp ne i8 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %27
  %39 = load i8, i8* %5, align 1
  %40 = zext i8 %39 to i32
  %41 = xor i32 %40, -306674912
  %42 = trunc i32 %41 to i8
  store i8 %42, i8* %5, align 1
  br label %43

43:                                               ; preds = %38, %27
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %8, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %8, align 4
  br label %24

47:                                               ; preds = %24
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %7, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %7, align 4
  br label %9

51:                                               ; preds = %9
  %52 = load i8, i8* %5, align 1
  %53 = zext i8 %52 to i32
  %54 = xor i32 %53, -1
  %55 = trunc i32 %54 to i8
  ret i8 %55
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
