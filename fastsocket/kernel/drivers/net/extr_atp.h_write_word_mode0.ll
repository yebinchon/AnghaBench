; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_atp.h_write_word_mode0.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_atp.h_write_word_mode0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PAR_DATA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i16, i16)* @write_word_mode0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_word_mode0(i16 signext %0, i16 zeroext %1) #0 {
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  store i16 %0, i16* %3, align 2
  store i16 %1, i16* %4, align 2
  %5 = load i16, i16* %4, align 2
  %6 = zext i16 %5 to i32
  %7 = and i32 %6, 15
  %8 = trunc i32 %7 to i16
  %9 = load i16, i16* %3, align 2
  %10 = sext i16 %9 to i64
  %11 = load i64, i64* @PAR_DATA, align 8
  %12 = add nsw i64 %10, %11
  %13 = call i32 @outb(i16 zeroext %8, i64 %12)
  %14 = load i16, i16* %4, align 2
  %15 = zext i16 %14 to i32
  %16 = ashr i32 %15, 4
  %17 = trunc i32 %16 to i16
  store i16 %17, i16* %4, align 2
  %18 = load i16, i16* %4, align 2
  %19 = zext i16 %18 to i32
  %20 = and i32 %19, 15
  %21 = or i32 %20, 16
  %22 = trunc i32 %21 to i16
  %23 = load i16, i16* %3, align 2
  %24 = sext i16 %23 to i64
  %25 = load i64, i64* @PAR_DATA, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @outb(i16 zeroext %22, i64 %26)
  %28 = load i16, i16* %4, align 2
  %29 = zext i16 %28 to i32
  %30 = ashr i32 %29, 4
  %31 = trunc i32 %30 to i16
  store i16 %31, i16* %4, align 2
  %32 = load i16, i16* %4, align 2
  %33 = zext i16 %32 to i32
  %34 = and i32 %33, 15
  %35 = trunc i32 %34 to i16
  %36 = load i16, i16* %3, align 2
  %37 = sext i16 %36 to i64
  %38 = load i64, i64* @PAR_DATA, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @outb(i16 zeroext %35, i64 %39)
  %41 = load i16, i16* %4, align 2
  %42 = zext i16 %41 to i32
  %43 = ashr i32 %42, 4
  %44 = trunc i32 %43 to i16
  store i16 %44, i16* %4, align 2
  %45 = load i16, i16* %4, align 2
  %46 = zext i16 %45 to i32
  %47 = and i32 %46, 15
  %48 = or i32 %47, 16
  %49 = trunc i32 %48 to i16
  %50 = load i16, i16* %3, align 2
  %51 = sext i16 %50 to i64
  %52 = load i64, i64* @PAR_DATA, align 8
  %53 = add nsw i64 %51, %52
  %54 = call i32 @outb(i16 zeroext %49, i64 %53)
  ret void
}

declare dso_local i32 @outb(i16 zeroext, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
