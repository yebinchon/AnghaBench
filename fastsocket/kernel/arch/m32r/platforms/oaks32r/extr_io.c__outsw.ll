; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/m32r/platforms/oaks32r/extr_io.c__outsw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/m32r/platforms/oaks32r/extr_io.c__outsw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_outsw(i32 %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i16*, align 8
  %8 = alloca i16*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to i16*
  store i16* %10, i16** %7, align 8
  %11 = load i32, i32* %4, align 4
  %12 = icmp uge i32 %11, 768
  br i1 %12, label %13, label %31

13:                                               ; preds = %3
  %14 = load i32, i32* %4, align 4
  %15 = icmp ult i32 %14, 800
  br i1 %15, label %16, label %31

16:                                               ; preds = %13
  %17 = load i32, i32* %4, align 4
  %18 = call i16* @PORT2ADDR_NE(i32 %17)
  store i16* %18, i16** %8, align 8
  br label %19

19:                                               ; preds = %23, %16
  %20 = load i64, i64* %6, align 8
  %21 = add i64 %20, -1
  store i64 %21, i64* %6, align 8
  %22 = icmp ne i64 %20, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %19
  %24 = load i16*, i16** %7, align 8
  %25 = getelementptr inbounds i16, i16* %24, i32 1
  store i16* %25, i16** %7, align 8
  %26 = load i16, i16* %24, align 2
  %27 = zext i16 %26 to i32
  %28 = load i16*, i16** %8, align 8
  %29 = call i32 @_ne_outw(i32 %27, i16* %28)
  br label %19

30:                                               ; preds = %19
  br label %44

31:                                               ; preds = %13, %3
  %32 = load i32, i32* %4, align 4
  %33 = call i16* @PORT2ADDR(i32 %32)
  store i16* %33, i16** %8, align 8
  br label %34

34:                                               ; preds = %38, %31
  %35 = load i64, i64* %6, align 8
  %36 = add i64 %35, -1
  store i64 %36, i64* %6, align 8
  %37 = icmp ne i64 %35, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %34
  %39 = load i16*, i16** %7, align 8
  %40 = getelementptr inbounds i16, i16* %39, i32 1
  store i16* %40, i16** %7, align 8
  %41 = load i16, i16* %39, align 2
  %42 = load i16*, i16** %8, align 8
  store volatile i16 %41, i16* %42, align 2
  br label %34

43:                                               ; preds = %34
  br label %44

44:                                               ; preds = %43, %30
  ret void
}

declare dso_local i16* @PORT2ADDR_NE(i32) #1

declare dso_local i32 @_ne_outw(i32, i16*) #1

declare dso_local i16* @PORT2ADDR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
