; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_atp.h_write_reg_high.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_atp.h_write_reg_high.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EOC = common dso_local global i8 0, align 1
@HNib = common dso_local global i8 0, align 1
@PAR_DATA = common dso_local global i64 0, align 8
@WrAddr = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i16, i8, i8)* @write_reg_high to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_reg_high(i16 signext %0, i8 zeroext %1, i8 zeroext %2) #0 {
  %4 = alloca i16, align 2
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  store i16 %0, i16* %4, align 2
  store i8 %1, i8* %5, align 1
  store i8 %2, i8* %6, align 1
  %8 = load i8, i8* @EOC, align 1
  %9 = zext i8 %8 to i32
  %10 = load i8, i8* @HNib, align 1
  %11 = zext i8 %10 to i32
  %12 = or i32 %9, %11
  %13 = load i8, i8* %5, align 1
  %14 = zext i8 %13 to i32
  %15 = or i32 %12, %14
  %16 = trunc i32 %15 to i8
  store i8 %16, i8* %7, align 1
  %17 = load i8, i8* %7, align 1
  %18 = load i16, i16* %4, align 2
  %19 = sext i16 %18 to i64
  %20 = load i64, i64* @PAR_DATA, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @outb(i8 zeroext %17, i64 %21)
  %23 = load i8, i8* @WrAddr, align 1
  %24 = zext i8 %23 to i32
  %25 = load i8, i8* @HNib, align 1
  %26 = zext i8 %25 to i32
  %27 = or i32 %24, %26
  %28 = or i32 %27, 15
  %29 = load i8, i8* %7, align 1
  %30 = zext i8 %29 to i32
  %31 = and i32 %30, %28
  %32 = trunc i32 %31 to i8
  store i8 %32, i8* %7, align 1
  %33 = load i8, i8* %7, align 1
  %34 = load i16, i16* %4, align 2
  %35 = sext i16 %34 to i64
  %36 = load i64, i64* @PAR_DATA, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @outb(i8 zeroext %33, i64 %37)
  %39 = load i8, i8* %7, align 1
  %40 = load i16, i16* %4, align 2
  %41 = sext i16 %40 to i64
  %42 = load i64, i64* @PAR_DATA, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @outb(i8 zeroext %39, i64 %43)
  %45 = load i8, i8* @WrAddr, align 1
  %46 = zext i8 %45 to i32
  %47 = load i8, i8* @HNib, align 1
  %48 = zext i8 %47 to i32
  %49 = or i32 %46, %48
  %50 = load i8, i8* %6, align 1
  %51 = zext i8 %50 to i32
  %52 = or i32 %49, %51
  %53 = trunc i32 %52 to i8
  store i8 %53, i8* %7, align 1
  %54 = load i8, i8* %7, align 1
  %55 = load i16, i16* %4, align 2
  %56 = sext i16 %55 to i64
  %57 = load i64, i64* @PAR_DATA, align 8
  %58 = add nsw i64 %56, %57
  %59 = call i32 @outb(i8 zeroext %54, i64 %58)
  %60 = load i8, i8* @HNib, align 1
  %61 = zext i8 %60 to i32
  %62 = or i32 %61, 15
  %63 = load i8, i8* %7, align 1
  %64 = zext i8 %63 to i32
  %65 = and i32 %64, %62
  %66 = trunc i32 %65 to i8
  store i8 %66, i8* %7, align 1
  %67 = load i8, i8* %7, align 1
  %68 = load i16, i16* %4, align 2
  %69 = sext i16 %68 to i64
  %70 = load i64, i64* @PAR_DATA, align 8
  %71 = add nsw i64 %69, %70
  %72 = call i32 @outb(i8 zeroext %67, i64 %71)
  %73 = load i8, i8* %7, align 1
  %74 = load i16, i16* %4, align 2
  %75 = sext i16 %74 to i64
  %76 = load i64, i64* @PAR_DATA, align 8
  %77 = add nsw i64 %75, %76
  %78 = call i32 @outb(i8 zeroext %73, i64 %77)
  %79 = load i8, i8* @EOC, align 1
  %80 = zext i8 %79 to i32
  %81 = load i8, i8* @HNib, align 1
  %82 = zext i8 %81 to i32
  %83 = or i32 %80, %82
  %84 = load i8, i8* %7, align 1
  %85 = zext i8 %84 to i32
  %86 = or i32 %83, %85
  %87 = trunc i32 %86 to i8
  %88 = load i16, i16* %4, align 2
  %89 = sext i16 %88 to i64
  %90 = load i64, i64* @PAR_DATA, align 8
  %91 = add nsw i64 %89, %90
  %92 = call i32 @outb(i8 zeroext %87, i64 %91)
  ret void
}

declare dso_local i32 @outb(i8 zeroext, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
