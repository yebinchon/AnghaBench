; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/m32r/platforms/m32700ut/extr_io.c__outsw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/m32r/platforms/m32700ut/extr_io.c__outsw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LAN_IOSTART = common dso_local global i32 0, align 4
@LAN_IOEND = common dso_local global i32 0, align 4
@M32R_PCC_IOEND0 = common dso_local global i32 0, align 4
@M32R_PCC_IOSTART0 = common dso_local global i32 0, align 4

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
  %12 = load i32, i32* @LAN_IOSTART, align 4
  %13 = icmp uge i32 %11, %12
  br i1 %13, label %14, label %31

14:                                               ; preds = %3
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @LAN_IOEND, align 4
  %17 = icmp ult i32 %15, %16
  br i1 %17, label %18, label %31

18:                                               ; preds = %14
  %19 = load i32, i32* %4, align 4
  %20 = call i16* @PORT2ADDR_NE(i32 %19)
  store i16* %20, i16** %8, align 8
  br label %21

21:                                               ; preds = %25, %18
  %22 = load i64, i64* %6, align 8
  %23 = add i64 %22, -1
  store i64 %23, i64* %6, align 8
  %24 = icmp ne i64 %22, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %21
  %26 = load i16*, i16** %7, align 8
  %27 = getelementptr inbounds i16, i16* %26, i32 1
  store i16* %27, i16** %7, align 8
  %28 = load i16, i16* %26, align 2
  %29 = load i16*, i16** %8, align 8
  store volatile i16 %28, i16* %29, align 2
  br label %21

30:                                               ; preds = %21
  br label %44

31:                                               ; preds = %14, %3
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

declare dso_local i16* @PORT2ADDR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
