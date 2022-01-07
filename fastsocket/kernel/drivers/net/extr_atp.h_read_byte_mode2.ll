; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_atp.h_read_byte_mode2.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_atp.h_read_byte_mode2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Ctrl_LNibRead = common dso_local global i32 0, align 4
@PAR_CONTROL = common dso_local global i64 0, align 8
@PAR_STATUS = common dso_local global i64 0, align 8
@Ctrl_HNibRead = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (i16)* @read_byte_mode2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @read_byte_mode2(i16 signext %0) #0 {
  %2 = alloca i16, align 2
  %3 = alloca i8, align 1
  store i16 %0, i16* %2, align 2
  %4 = load i32, i32* @Ctrl_LNibRead, align 4
  %5 = load i16, i16* %2, align 2
  %6 = sext i16 %5 to i64
  %7 = load i64, i64* @PAR_CONTROL, align 8
  %8 = add nsw i64 %6, %7
  %9 = call i32 @outb(i32 %4, i64 %8)
  %10 = load i16, i16* %2, align 2
  %11 = sext i16 %10 to i64
  %12 = load i64, i64* @PAR_STATUS, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @inbyte(i64 %13)
  %15 = load i16, i16* %2, align 2
  %16 = sext i16 %15 to i64
  %17 = load i64, i64* @PAR_STATUS, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @inbyte(i64 %18)
  %20 = ashr i32 %19, 3
  %21 = and i32 %20, 15
  %22 = trunc i32 %21 to i8
  store i8 %22, i8* %3, align 1
  %23 = load i32, i32* @Ctrl_HNibRead, align 4
  %24 = load i16, i16* %2, align 2
  %25 = sext i16 %24 to i64
  %26 = load i64, i64* @PAR_CONTROL, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @outb(i32 %23, i64 %27)
  %29 = load i16, i16* %2, align 2
  %30 = sext i16 %29 to i64
  %31 = load i64, i64* @PAR_STATUS, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i32 @inbyte(i64 %32)
  %34 = load i8, i8* %3, align 1
  %35 = zext i8 %34 to i32
  %36 = load i16, i16* %2, align 2
  %37 = sext i16 %36 to i64
  %38 = load i64, i64* @PAR_STATUS, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @inbyte(i64 %39)
  %41 = shl i32 %40, 1
  %42 = and i32 %41, 240
  %43 = or i32 %35, %42
  %44 = trunc i32 %43 to i8
  ret i8 %44
}

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @inbyte(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
