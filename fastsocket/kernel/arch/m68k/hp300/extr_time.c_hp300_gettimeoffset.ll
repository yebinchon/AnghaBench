; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/m68k/hp300/extr_time.c_hp300_gettimeoffset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/m68k/hp300/extr_time.c_hp300_gettimeoffset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CLOCKBASE = common dso_local global i64 0, align 8
@INTVAL = common dso_local global i8 0, align 1
@USECS_PER_JIFFY = common dso_local global i16 0, align 2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @hp300_gettimeoffset() #0 {
  %1 = alloca i8, align 1
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  %4 = alloca i16, align 2
  %5 = load i64, i64* @CLOCKBASE, align 8
  %6 = add nsw i64 %5, 5
  %7 = call zeroext i8 @in_8(i64 %6)
  store i8 %7, i8* %2, align 1
  %8 = load i64, i64* @CLOCKBASE, align 8
  %9 = add nsw i64 %8, 7
  %10 = call zeroext i8 @in_8(i64 %9)
  store i8 %10, i8* %1, align 1
  %11 = load i64, i64* @CLOCKBASE, align 8
  %12 = add nsw i64 %11, 5
  %13 = call zeroext i8 @in_8(i64 %12)
  store i8 %13, i8* %3, align 1
  %14 = load i8, i8* %2, align 1
  %15 = zext i8 %14 to i32
  %16 = load i8, i8* %3, align 1
  %17 = zext i8 %16 to i32
  %18 = icmp ne i32 %15, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %0
  %20 = load i64, i64* @CLOCKBASE, align 8
  %21 = add nsw i64 %20, 7
  %22 = call zeroext i8 @in_8(i64 %21)
  store i8 %22, i8* %1, align 1
  br label %23

23:                                               ; preds = %19, %0
  %24 = load i8, i8* @INTVAL, align 1
  %25 = zext i8 %24 to i32
  %26 = load i8, i8* %3, align 1
  %27 = zext i8 %26 to i32
  %28 = shl i32 %27, 8
  %29 = load i8, i8* %1, align 1
  %30 = zext i8 %29 to i32
  %31 = or i32 %28, %30
  %32 = sub nsw i32 %25, %31
  %33 = trunc i32 %32 to i16
  store i16 %33, i16* %4, align 2
  %34 = load i16, i16* @USECS_PER_JIFFY, align 2
  %35 = zext i16 %34 to i32
  %36 = load i16, i16* %4, align 2
  %37 = zext i16 %36 to i32
  %38 = mul nsw i32 %35, %37
  %39 = load i8, i8* @INTVAL, align 1
  %40 = zext i8 %39 to i32
  %41 = sdiv i32 %38, %40
  %42 = sext i32 %41 to i64
  ret i64 %42
}

declare dso_local zeroext i8 @in_8(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
