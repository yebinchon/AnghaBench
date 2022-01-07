; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_advansys.c_AscReadLramByte.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_advansys.c_AscReadLramByte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (i32, i64)* @AscReadLramByte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @AscReadLramByte(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i8, align 1
  %6 = alloca i16, align 2
  store i32 %0, i32* %3, align 4
  store i64 %1, i64* %4, align 8
  %7 = load i64, i64* %4, align 8
  %8 = call i64 @isodd_word(i64 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %22

10:                                               ; preds = %2
  %11 = load i32, i32* %3, align 4
  %12 = load i64, i64* %4, align 8
  %13 = sub nsw i64 %12, 1
  %14 = call i32 @AscSetChipLramAddr(i32 %11, i64 %13)
  %15 = load i32, i32* %3, align 4
  %16 = call zeroext i16 @AscGetChipLramData(i32 %15)
  store i16 %16, i16* %6, align 2
  %17 = load i16, i16* %6, align 2
  %18 = zext i16 %17 to i32
  %19 = ashr i32 %18, 8
  %20 = and i32 %19, 255
  %21 = trunc i32 %20 to i8
  store i8 %21, i8* %5, align 1
  br label %32

22:                                               ; preds = %2
  %23 = load i32, i32* %3, align 4
  %24 = load i64, i64* %4, align 8
  %25 = call i32 @AscSetChipLramAddr(i32 %23, i64 %24)
  %26 = load i32, i32* %3, align 4
  %27 = call zeroext i16 @AscGetChipLramData(i32 %26)
  store i16 %27, i16* %6, align 2
  %28 = load i16, i16* %6, align 2
  %29 = zext i16 %28 to i32
  %30 = and i32 %29, 255
  %31 = trunc i32 %30 to i8
  store i8 %31, i8* %5, align 1
  br label %32

32:                                               ; preds = %22, %10
  %33 = load i8, i8* %5, align 1
  ret i8 %33
}

declare dso_local i64 @isodd_word(i64) #1

declare dso_local i32 @AscSetChipLramAddr(i32, i64) #1

declare dso_local zeroext i16 @AscGetChipLramData(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
