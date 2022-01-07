; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/m32r/platforms/mappi/extr_io.c__outsb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/m32r/platforms/mappi/extr_io.c__outsb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@M32R_PCC_IOEND0 = common dso_local global i32 0, align 4
@M32R_PCC_IOEND1 = common dso_local global i32 0, align 4
@M32R_PCC_IOSTART0 = common dso_local global i32 0, align 4
@M32R_PCC_IOSTART1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_outsb(i32 %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i8*, i8** %5, align 8
  store i8* %9, i8** %7, align 8
  %10 = load i32, i32* %4, align 4
  %11 = icmp uge i32 %10, 768
  br i1 %11, label %12, label %30

12:                                               ; preds = %3
  %13 = load i32, i32* %4, align 4
  %14 = icmp ult i32 %13, 800
  br i1 %14, label %15, label %30

15:                                               ; preds = %12
  %16 = load i32, i32* %4, align 4
  %17 = call i8* @PORT2ADDR_NE(i32 %16)
  store i8* %17, i8** %8, align 8
  br label %18

18:                                               ; preds = %22, %15
  %19 = load i64, i64* %6, align 8
  %20 = add i64 %19, -1
  store i64 %20, i64* %6, align 8
  %21 = icmp ne i64 %19, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %18
  %23 = load i8*, i8** %7, align 8
  %24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %24, i8** %7, align 8
  %25 = load i8, i8* %23, align 1
  %26 = zext i8 %25 to i32
  %27 = load i8*, i8** %8, align 8
  %28 = call i32 @_ne_outb(i32 %26, i8* %27)
  br label %18

29:                                               ; preds = %18
  br label %43

30:                                               ; preds = %12, %3
  %31 = load i32, i32* %4, align 4
  %32 = call i8* @PORT2ADDR(i32 %31)
  store i8* %32, i8** %8, align 8
  br label %33

33:                                               ; preds = %37, %30
  %34 = load i64, i64* %6, align 8
  %35 = add i64 %34, -1
  store i64 %35, i64* %6, align 8
  %36 = icmp ne i64 %34, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %33
  %38 = load i8*, i8** %7, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %7, align 8
  %40 = load i8, i8* %38, align 1
  %41 = load i8*, i8** %8, align 8
  store volatile i8 %40, i8* %41, align 1
  br label %33

42:                                               ; preds = %33
  br label %43

43:                                               ; preds = %42, %29
  ret void
}

declare dso_local i8* @PORT2ADDR_NE(i32) #1

declare dso_local i32 @_ne_outb(i32, i8*) #1

declare dso_local i8* @PORT2ADDR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
