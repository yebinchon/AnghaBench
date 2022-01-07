; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_atp.h_read_byte_mode4.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_atp.h_read_byte_mode4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RdAddr = common dso_local global i32 0, align 4
@MAR = common dso_local global i32 0, align 4
@PAR_DATA = common dso_local global i64 0, align 8
@PAR_STATUS = common dso_local global i64 0, align 8
@HNib = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (i16)* @read_byte_mode4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @read_byte_mode4(i16 signext %0) #0 {
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
  %17 = ashr i32 %16, 3
  %18 = and i32 %17, 15
  %19 = trunc i32 %18 to i8
  store i8 %19, i8* %3, align 1
  %20 = load i32, i32* @RdAddr, align 4
  %21 = load i32, i32* @HNib, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @MAR, align 4
  %24 = or i32 %22, %23
  %25 = load i16, i16* %2, align 2
  %26 = sext i16 %25 to i64
  %27 = load i64, i64* @PAR_DATA, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @outb(i32 %24, i64 %28)
  %30 = load i8, i8* %3, align 1
  %31 = zext i8 %30 to i32
  %32 = load i16, i16* %2, align 2
  %33 = sext i16 %32 to i64
  %34 = load i64, i64* @PAR_STATUS, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @inbyte(i64 %35)
  %37 = shl i32 %36, 1
  %38 = and i32 %37, 240
  %39 = or i32 %31, %38
  %40 = trunc i32 %39 to i8
  ret i8 %40
}

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @inbyte(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
