; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/m32r/platforms/usrv/extr_io.c__outsw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/m32r/platforms/usrv/extr_io.c__outsw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CFC_IOSTART = common dso_local global i32 0, align 4
@CFC_IOEND = common dso_local global i32 0, align 4

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
  %12 = load i32, i32* @CFC_IOSTART, align 4
  %13 = icmp uge i32 %11, %12
  br i1 %13, label %14, label %23

14:                                               ; preds = %3
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @CFC_IOEND, align 4
  %17 = icmp ule i32 %15, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %14
  %19 = load i32, i32* %4, align 4
  %20 = load i8*, i8** %5, align 8
  %21 = load i64, i64* %6, align 8
  %22 = call i32 @pcc_iowrite_word(i32 0, i32 %19, i8* %20, i32 2, i64 %21, i32 1)
  br label %36

23:                                               ; preds = %14, %3
  %24 = load i32, i32* %4, align 4
  %25 = call i16* @PORT2ADDR(i32 %24)
  store i16* %25, i16** %8, align 8
  br label %26

26:                                               ; preds = %30, %23
  %27 = load i64, i64* %6, align 8
  %28 = add i64 %27, -1
  store i64 %28, i64* %6, align 8
  %29 = icmp ne i64 %27, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %26
  %31 = load i16*, i16** %7, align 8
  %32 = getelementptr inbounds i16, i16* %31, i32 1
  store i16* %32, i16** %7, align 8
  %33 = load i16, i16* %31, align 2
  %34 = load i16*, i16** %8, align 8
  store volatile i16 %33, i16* %34, align 2
  br label %26

35:                                               ; preds = %26
  br label %36

36:                                               ; preds = %35, %18
  ret void
}

declare dso_local i32 @pcc_iowrite_word(i32, i32, i8*, i32, i64, i32) #1

declare dso_local i16* @PORT2ADDR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
