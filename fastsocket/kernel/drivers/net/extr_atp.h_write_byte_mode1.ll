; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_atp.h_write_byte_mode1.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_atp.h_write_byte_mode1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PAR_DATA = common dso_local global i64 0, align 8
@Ctrl_IRQEN = common dso_local global i8 0, align 1
@Ctrl_LNibWrite = common dso_local global i8 0, align 1
@PAR_CONTROL = common dso_local global i64 0, align 8
@Ctrl_HNibWrite = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i16, i8)* @write_byte_mode1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_byte_mode1(i16 signext %0, i8 zeroext %1) #0 {
  %3 = alloca i16, align 2
  %4 = alloca i8, align 1
  store i16 %0, i16* %3, align 2
  store i8 %1, i8* %4, align 1
  %5 = load i8, i8* %4, align 1
  %6 = zext i8 %5 to i32
  %7 = and i32 %6, 15
  %8 = trunc i32 %7 to i8
  %9 = load i16, i16* %3, align 2
  %10 = sext i16 %9 to i64
  %11 = load i64, i64* @PAR_DATA, align 8
  %12 = add nsw i64 %10, %11
  %13 = call i32 @outb(i8 zeroext %8, i64 %12)
  %14 = load i8, i8* @Ctrl_IRQEN, align 1
  %15 = zext i8 %14 to i32
  %16 = load i8, i8* @Ctrl_LNibWrite, align 1
  %17 = zext i8 %16 to i32
  %18 = or i32 %15, %17
  %19 = trunc i32 %18 to i8
  %20 = load i16, i16* %3, align 2
  %21 = sext i16 %20 to i64
  %22 = load i64, i64* @PAR_CONTROL, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @outb(i8 zeroext %19, i64 %23)
  %25 = load i8, i8* %4, align 1
  %26 = zext i8 %25 to i32
  %27 = ashr i32 %26, 4
  %28 = or i32 %27, 16
  %29 = trunc i32 %28 to i8
  %30 = load i16, i16* %3, align 2
  %31 = sext i16 %30 to i64
  %32 = load i64, i64* @PAR_DATA, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @outb(i8 zeroext %29, i64 %33)
  %35 = load i8, i8* @Ctrl_IRQEN, align 1
  %36 = zext i8 %35 to i32
  %37 = load i8, i8* @Ctrl_HNibWrite, align 1
  %38 = zext i8 %37 to i32
  %39 = or i32 %36, %38
  %40 = trunc i32 %39 to i8
  %41 = load i16, i16* %3, align 2
  %42 = sext i16 %41 to i64
  %43 = load i64, i64* @PAR_CONTROL, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 @outb(i8 zeroext %40, i64 %44)
  ret void
}

declare dso_local i32 @outb(i8 zeroext, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
