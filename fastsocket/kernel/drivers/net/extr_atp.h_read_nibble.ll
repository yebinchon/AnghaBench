; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_atp.h_read_nibble.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_atp.h_read_nibble.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EOC = common dso_local global i64 0, align 8
@PAR_DATA = common dso_local global i64 0, align 8
@RdAddr = common dso_local global i64 0, align 8
@PAR_STATUS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (i16, i8)* @read_nibble to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @read_nibble(i16 signext %0, i8 zeroext %1) #0 {
  %3 = alloca i16, align 2
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  store i16 %0, i16* %3, align 2
  store i8 %1, i8* %4, align 1
  %6 = load i64, i64* @EOC, align 8
  %7 = load i8, i8* %4, align 1
  %8 = zext i8 %7 to i64
  %9 = add nsw i64 %6, %8
  %10 = load i16, i16* %3, align 2
  %11 = sext i16 %10 to i64
  %12 = load i64, i64* @PAR_DATA, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @outb(i64 %9, i64 %13)
  %15 = load i64, i64* @RdAddr, align 8
  %16 = load i8, i8* %4, align 1
  %17 = zext i8 %16 to i64
  %18 = add nsw i64 %15, %17
  %19 = load i16, i16* %3, align 2
  %20 = sext i16 %19 to i64
  %21 = load i64, i64* @PAR_DATA, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @outb(i64 %18, i64 %22)
  %24 = load i16, i16* %3, align 2
  %25 = sext i16 %24 to i64
  %26 = load i64, i64* @PAR_STATUS, align 8
  %27 = add nsw i64 %25, %26
  %28 = call zeroext i8 @inbyte(i64 %27)
  %29 = load i16, i16* %3, align 2
  %30 = sext i16 %29 to i64
  %31 = load i64, i64* @PAR_STATUS, align 8
  %32 = add nsw i64 %30, %31
  %33 = call zeroext i8 @inbyte(i64 %32)
  store i8 %33, i8* %5, align 1
  %34 = load i64, i64* @EOC, align 8
  %35 = load i8, i8* %4, align 1
  %36 = zext i8 %35 to i64
  %37 = add nsw i64 %34, %36
  %38 = load i16, i16* %3, align 2
  %39 = sext i16 %38 to i64
  %40 = load i64, i64* @PAR_DATA, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @outb(i64 %37, i64 %41)
  %43 = load i8, i8* %5, align 1
  ret i8 %43
}

declare dso_local i32 @outb(i64, i64) #1

declare dso_local zeroext i8 @inbyte(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
