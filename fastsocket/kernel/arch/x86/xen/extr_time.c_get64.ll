; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/xen/extr_time.c_get64.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/xen/extr_time.c_get64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BITS_PER_LONG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @get64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get64(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  %7 = load i32, i32* @BITS_PER_LONG, align 4
  %8 = icmp slt i32 %7, 64
  br i1 %8, label %9, label %35

9:                                                ; preds = %1
  %10 = load i32*, i32** %2, align 8
  %11 = bitcast i32* %10 to i64*
  store i64* %11, i64** %4, align 8
  br label %12

12:                                               ; preds = %21, %9
  %13 = load i64*, i64** %4, align 8
  %14 = getelementptr inbounds i64, i64* %13, i64 1
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %5, align 8
  %16 = call i32 (...) @barrier()
  %17 = load i64*, i64** %4, align 8
  %18 = getelementptr inbounds i64, i64* %17, i64 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %6, align 8
  %20 = call i32 (...) @barrier()
  br label %21

21:                                               ; preds = %12
  %22 = load i64*, i64** %4, align 8
  %23 = getelementptr inbounds i64, i64* %22, i64 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %5, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %12, label %27

27:                                               ; preds = %21
  %28 = load i64, i64* %5, align 8
  %29 = trunc i64 %28 to i32
  %30 = shl i32 %29, 32
  %31 = sext i32 %30 to i64
  %32 = load i64, i64* %6, align 8
  %33 = or i64 %31, %32
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %3, align 4
  br label %38

35:                                               ; preds = %1
  %36 = load i32*, i32** %2, align 8
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %35, %27
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @barrier(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
