; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsicam.c_setsize.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsicam.c_setsize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32*, i32*, i32*)* @setsize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setsize(i64 %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %9, align 4
  store i64 1024, i64* %12, align 8
  store i64 62, i64* %11, align 8
  %14 = load i64, i64* %12, align 8
  %15 = load i64, i64* %11, align 8
  %16 = mul i64 %14, %15
  store i64 %16, i64* %13, align 8
  %17 = load i64, i64* %5, align 8
  %18 = load i64, i64* %13, align 8
  %19 = udiv i64 %17, %18
  store i64 %19, i64* %10, align 8
  %20 = load i64, i64* %5, align 8
  %21 = load i64, i64* %13, align 8
  %22 = urem i64 %20, %21
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %47

24:                                               ; preds = %4
  %25 = load i64, i64* %10, align 8
  %26 = add i64 %25, 1
  store i64 %26, i64* %10, align 8
  %27 = load i64, i64* %12, align 8
  %28 = load i64, i64* %10, align 8
  %29 = mul i64 %27, %28
  store i64 %29, i64* %13, align 8
  %30 = load i64, i64* %5, align 8
  %31 = load i64, i64* %13, align 8
  %32 = udiv i64 %30, %31
  store i64 %32, i64* %11, align 8
  %33 = load i64, i64* %5, align 8
  %34 = load i64, i64* %13, align 8
  %35 = urem i64 %33, %34
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %24
  %38 = load i64, i64* %11, align 8
  %39 = add i64 %38, 1
  store i64 %39, i64* %11, align 8
  %40 = load i64, i64* %10, align 8
  %41 = load i64, i64* %11, align 8
  %42 = mul i64 %40, %41
  store i64 %42, i64* %13, align 8
  %43 = load i64, i64* %5, align 8
  %44 = load i64, i64* %13, align 8
  %45 = udiv i64 %43, %44
  store i64 %45, i64* %12, align 8
  br label %46

46:                                               ; preds = %37, %24
  br label %47

47:                                               ; preds = %46, %4
  %48 = load i64, i64* %12, align 8
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  store i32 -1, i32* %9, align 4
  br label %51

51:                                               ; preds = %50, %47
  %52 = load i64, i64* %12, align 8
  %53 = trunc i64 %52 to i32
  %54 = load i32*, i32** %6, align 8
  store i32 %53, i32* %54, align 4
  %55 = load i64, i64* %11, align 8
  %56 = trunc i64 %55 to i32
  %57 = load i32*, i32** %8, align 8
  store i32 %56, i32* %57, align 4
  %58 = load i64, i64* %10, align 8
  %59 = trunc i64 %58 to i32
  %60 = load i32*, i32** %7, align 8
  store i32 %59, i32* %60, align 4
  %61 = load i32, i32* %9, align 4
  ret i32 %61
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
