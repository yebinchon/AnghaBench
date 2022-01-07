; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_atp.h_read_byte_mode6.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_atp.h_read_byte_mode6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RdAddr = common dso_local global i32 0, align 4
@MAR = common dso_local global i32 0, align 4
@PAR_DATA = common dso_local global i64 0, align 8
@PAR_STATUS = common dso_local global i64 0, align 8
@HNib = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (i16)* @read_byte_mode6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @read_byte_mode6(i16 signext %0) #0 {
  %2 = alloca i16, align 2
  %3 = alloca i8, align 1
  store i16 %0, i16* %2, align 2
  %4 = load i32, i32* @RdAddr, align 4
  %5 = load i32, i32* @MAR, align 4
  %6 = or i32 %4, %5
  %7 = load i16, i16* %2, align 2
  %8 = sext i16 %7 to i64
  %9 = load i64, i64* @PAR_DATA, align 8
  %10 = add nsw i64 %8, %9
  %11 = call i32 @outb(i32 %6, i64 %10)
  %12 = load i16, i16* %2, align 2
  %13 = sext i16 %12 to i64
  %14 = load i64, i64* @PAR_STATUS, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @inbyte(i64 %15)
  %17 = load i16, i16* %2, align 2
  %18 = sext i16 %17 to i64
  %19 = load i64, i64* @PAR_STATUS, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @inbyte(i64 %20)
  %22 = ashr i32 %21, 3
  %23 = and i32 %22, 15
  %24 = trunc i32 %23 to i8
  store i8 %24, i8* %3, align 1
  %25 = load i32, i32* @RdAddr, align 4
  %26 = load i32, i32* @HNib, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @MAR, align 4
  %29 = or i32 %27, %28
  %30 = load i16, i16* %2, align 2
  %31 = sext i16 %30 to i64
  %32 = load i64, i64* @PAR_DATA, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @outb(i32 %29, i64 %33)
  %35 = load i16, i16* %2, align 2
  %36 = sext i16 %35 to i64
  %37 = load i64, i64* @PAR_STATUS, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @inbyte(i64 %38)
  %40 = load i8, i8* %3, align 1
  %41 = zext i8 %40 to i32
  %42 = load i16, i16* %2, align 2
  %43 = sext i16 %42 to i64
  %44 = load i64, i64* @PAR_STATUS, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i32 @inbyte(i64 %45)
  %47 = shl i32 %46, 1
  %48 = and i32 %47, 240
  %49 = or i32 %41, %48
  %50 = trunc i32 %49 to i8
  ret i8 %50
}

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @inbyte(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
