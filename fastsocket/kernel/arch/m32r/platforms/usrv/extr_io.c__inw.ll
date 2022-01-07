; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/m32r/platforms/usrv/extr_io.c__inw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/m32r/platforms/usrv/extr_io.c__inw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CFC_IOSTART = common dso_local global i64 0, align 8
@CFC_IOEND = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i16 @_inw(i64 %0) #0 {
  %2 = alloca i16, align 2
  %3 = alloca i64, align 8
  %4 = alloca i16, align 2
  store i64 %0, i64* %3, align 8
  %5 = load i64, i64* %3, align 8
  %6 = load i64, i64* @CFC_IOSTART, align 8
  %7 = icmp uge i64 %5, %6
  br i1 %7, label %8, label %16

8:                                                ; preds = %1
  %9 = load i64, i64* %3, align 8
  %10 = load i64, i64* @CFC_IOEND, align 8
  %11 = icmp ule i64 %9, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %8
  %13 = load i64, i64* %3, align 8
  %14 = call i32 @pcc_ioread_word(i32 0, i64 %13, i16* %4, i32 2, i32 1, i32 0)
  %15 = load i16, i16* %4, align 2
  store i16 %15, i16* %2, align 2
  br label %21

16:                                               ; preds = %8, %1
  %17 = load i64, i64* %3, align 8
  %18 = call i64 @PORT2ADDR(i64 %17)
  %19 = inttoptr i64 %18 to i16*
  %20 = load volatile i16, i16* %19, align 2
  store i16 %20, i16* %2, align 2
  br label %21

21:                                               ; preds = %16, %12
  %22 = load i16, i16* %2, align 2
  ret i16 %22
}

declare dso_local i32 @pcc_ioread_word(i32, i64, i16*, i32, i32, i32) #1

declare dso_local i64 @PORT2ADDR(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
