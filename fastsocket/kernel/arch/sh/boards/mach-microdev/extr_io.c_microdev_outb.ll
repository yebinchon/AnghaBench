; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/boards/mach-microdev/extr_io.c_microdev_outb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/boards/mach-microdev/extr_io.c_microdev_outb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IO_LAN91C111_BASE = common dso_local global i64 0, align 8
@IO_LAN91C111_EXTENT = common dso_local global i64 0, align 8
@PCIBIOS_MIN_IO = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @microdev_outb(i8 zeroext %0, i64 %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  store i8 %0, i8* %3, align 1
  store i64 %1, i64* %4, align 8
  %8 = load i64, i64* %4, align 8
  %9 = load i64, i64* @IO_LAN91C111_BASE, align 8
  %10 = icmp uge i64 %8, %9
  br i1 %10, label %11, label %51

11:                                               ; preds = %2
  %12 = load i64, i64* %4, align 8
  %13 = load i64, i64* @IO_LAN91C111_BASE, align 8
  %14 = load i64, i64* @IO_LAN91C111_EXTENT, align 8
  %15 = add i64 %13, %14
  %16 = icmp ult i64 %12, %15
  br i1 %16, label %17, label %51

17:                                               ; preds = %11
  %18 = load i64, i64* %4, align 8
  %19 = urem i64 %18, 2
  %20 = icmp eq i64 %19, 1
  br i1 %20, label %21, label %37

21:                                               ; preds = %17
  %22 = load i64, i64* %4, align 8
  %23 = sub i64 %22, 1
  store i64 %23, i64* %5, align 8
  %24 = load i64, i64* %5, align 8
  %25 = call zeroext i16 @microdev_inw(i64 %24)
  store i16 %25, i16* %6, align 2
  %26 = load i16, i16* %6, align 2
  %27 = zext i16 %26 to i32
  %28 = and i32 %27, 255
  %29 = load i8, i8* %3, align 1
  %30 = zext i8 %29 to i32
  %31 = shl i32 %30, 8
  %32 = or i32 %28, %31
  %33 = trunc i32 %32 to i16
  store i16 %33, i16* %6, align 2
  %34 = load i16, i16* %6, align 2
  %35 = load i64, i64* %5, align 8
  %36 = call i32 @microdev_outw(i16 zeroext %34, i64 %35)
  br label %50

37:                                               ; preds = %17
  %38 = load i64, i64* %4, align 8
  %39 = call zeroext i16 @microdev_inw(i64 %38)
  store i16 %39, i16* %7, align 2
  %40 = load i16, i16* %7, align 2
  %41 = zext i16 %40 to i32
  %42 = and i32 %41, 65280
  %43 = load i8, i8* %3, align 1
  %44 = zext i8 %43 to i32
  %45 = or i32 %42, %44
  %46 = trunc i32 %45 to i16
  store i16 %46, i16* %7, align 2
  %47 = load i16, i16* %7, align 2
  %48 = load i64, i64* %4, align 8
  %49 = call i32 @microdev_outw(i16 zeroext %47, i64 %48)
  br label %50

50:                                               ; preds = %37, %21
  br label %56

51:                                               ; preds = %11, %2
  %52 = load i8, i8* %3, align 1
  %53 = load i64, i64* %4, align 8
  %54 = call i64 @PORT2ADDR(i64 %53)
  %55 = inttoptr i64 %54 to i8*
  store volatile i8 %52, i8* %55, align 1
  br label %56

56:                                               ; preds = %51, %50
  ret void
}

declare dso_local zeroext i16 @microdev_inw(i64) #1

declare dso_local i32 @microdev_outw(i16 zeroext, i64) #1

declare dso_local i64 @PORT2ADDR(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
