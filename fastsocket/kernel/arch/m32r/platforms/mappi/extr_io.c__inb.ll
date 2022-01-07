; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/m32r/platforms/mappi/extr_io.c__inb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/m32r/platforms/mappi/extr_io.c__inb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@M32R_PCC_IOEND0 = common dso_local global i64 0, align 8
@M32R_PCC_IOEND1 = common dso_local global i64 0, align 8
@M32R_PCC_IOSTART0 = common dso_local global i64 0, align 8
@M32R_PCC_IOSTART1 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i8 @_inb(i64 %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = icmp uge i64 %4, 768
  br i1 %5, label %6, label %13

6:                                                ; preds = %1
  %7 = load i64, i64* %3, align 8
  %8 = icmp ult i64 %7, 800
  br i1 %8, label %9, label %13

9:                                                ; preds = %6
  %10 = load i64, i64* %3, align 8
  %11 = call i32 @PORT2ADDR_NE(i64 %10)
  %12 = call zeroext i8 @_ne_inb(i32 %11)
  store i8 %12, i8* %2, align 1
  br label %18

13:                                               ; preds = %6, %1
  %14 = load i64, i64* %3, align 8
  %15 = call i64 @PORT2ADDR(i64 %14)
  %16 = inttoptr i64 %15 to i8*
  %17 = load volatile i8, i8* %16, align 1
  store i8 %17, i8* %2, align 1
  br label %18

18:                                               ; preds = %13, %9
  %19 = load i8, i8* %2, align 1
  ret i8 %19
}

declare dso_local zeroext i8 @_ne_inb(i32) #1

declare dso_local i32 @PORT2ADDR_NE(i64) #1

declare dso_local i64 @PORT2ADDR(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
