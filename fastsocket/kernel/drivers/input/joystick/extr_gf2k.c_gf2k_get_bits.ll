; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/joystick/extr_gf2k.c_gf2k_get_bits.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/joystick/extr_gf2k.c_gf2k_get_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32, i32)* @gf2k_get_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gf2k_get_bits(i8* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i8 0, i8* %9, align 1
  store i32 0, i32* %10, align 4
  br label %11

11:                                               ; preds = %34, %4
  %12 = load i32, i32* %10, align 4
  %13 = load i32, i32* %7, align 4
  %14 = sdiv i32 %13, 3
  %15 = add nsw i32 %14, 2
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %37

17:                                               ; preds = %11
  %18 = load i8*, i8** %5, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sdiv i32 %19, 3
  %21 = load i32, i32* %10, align 4
  %22 = add nsw i32 %20, %21
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %18, i64 %23
  %25 = load i8, i8* %24, align 1
  %26 = zext i8 %25 to i32
  %27 = load i32, i32* %10, align 4
  %28 = mul nsw i32 %27, 3
  %29 = shl i32 %26, %28
  %30 = load i8, i8* %9, align 1
  %31 = zext i8 %30 to i32
  %32 = or i32 %31, %29
  %33 = trunc i32 %32 to i8
  store i8 %33, i8* %9, align 1
  br label %34

34:                                               ; preds = %17
  %35 = load i32, i32* %10, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %10, align 4
  br label %11

37:                                               ; preds = %11
  %38 = load i32, i32* %6, align 4
  %39 = srem i32 %38, 3
  %40 = load i8, i8* %9, align 1
  %41 = zext i8 %40 to i32
  %42 = ashr i32 %41, %39
  %43 = trunc i32 %42 to i8
  store i8 %43, i8* %9, align 1
  %44 = load i32, i32* %7, align 4
  %45 = shl i32 1, %44
  %46 = sub nsw i32 %45, 1
  %47 = load i8, i8* %9, align 1
  %48 = zext i8 %47 to i32
  %49 = and i32 %48, %46
  %50 = trunc i32 %49 to i8
  store i8 %50, i8* %9, align 1
  %51 = load i32, i32* %8, align 4
  %52 = load i8, i8* %9, align 1
  %53 = zext i8 %52 to i32
  %54 = shl i32 %53, %51
  %55 = trunc i32 %54 to i8
  store i8 %55, i8* %9, align 1
  %56 = load i8, i8* %9, align 1
  %57 = zext i8 %56 to i32
  ret i32 %57
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
