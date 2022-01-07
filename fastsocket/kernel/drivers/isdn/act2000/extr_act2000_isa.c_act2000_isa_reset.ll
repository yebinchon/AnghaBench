; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/act2000/extr_act2000_isa.c_act2000_isa_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/act2000/extr_act2000_isa.c_act2000_isa_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ISA_COR = common dso_local global i64 0, align 8
@ISA_COR_RESET = common dso_local global i8 0, align 1
@ISA_ISR = common dso_local global i64 0, align 8
@ISA_ISR_SERIAL = common dso_local global i32 0, align 4
@ISA_SER_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i16)* @act2000_isa_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @act2000_isa_reset(i16 zeroext %0) #0 {
  %2 = alloca i16, align 2
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i16 %0, i16* %2, align 2
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  %7 = load i16, i16* %2, align 2
  %8 = zext i16 %7 to i64
  %9 = load i64, i64* @ISA_COR, align 8
  %10 = add nsw i64 %8, %9
  %11 = call i32 @inb(i64 %10)
  %12 = trunc i32 %11 to i8
  store i8 %12, i8* %3, align 1
  %13 = zext i8 %12 to i32
  %14 = icmp ne i32 %13, 255
  br i1 %14, label %15, label %64

15:                                               ; preds = %1
  %16 = load i8, i8* %3, align 1
  %17 = zext i8 %16 to i32
  %18 = load i8, i8* @ISA_COR_RESET, align 1
  %19 = zext i8 %18 to i32
  %20 = or i32 %17, %19
  %21 = trunc i32 %20 to i8
  %22 = load i16, i16* %2, align 2
  %23 = zext i16 %22 to i64
  %24 = load i64, i64* @ISA_COR, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @outb(i8 zeroext %21, i64 %25)
  %27 = call i32 @mdelay(i32 10)
  %28 = load i8, i8* %3, align 1
  %29 = load i16, i16* %2, align 2
  %30 = zext i16 %29 to i64
  %31 = load i64, i64* @ISA_COR, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i32 @outb(i8 zeroext %28, i64 %32)
  %34 = call i32 @mdelay(i32 10)
  store i32 0, i32* %4, align 4
  br label %35

35:                                               ; preds = %53, %15
  %36 = load i32, i32* %4, align 4
  %37 = icmp slt i32 %36, 16
  br i1 %37, label %38, label %56

38:                                               ; preds = %35
  %39 = load i16, i16* %2, align 2
  %40 = zext i16 %39 to i64
  %41 = load i64, i64* @ISA_ISR, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @inb(i64 %42)
  %44 = load i32, i32* @ISA_ISR_SERIAL, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %38
  %48 = load i32, i32* %6, align 4
  %49 = or i32 %48, 65536
  store i32 %49, i32* %6, align 4
  br label %50

50:                                               ; preds = %47, %38
  %51 = load i32, i32* %6, align 4
  %52 = ashr i32 %51, 1
  store i32 %52, i32* %6, align 4
  br label %53

53:                                               ; preds = %50
  %54 = load i32, i32* %4, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %4, align 4
  br label %35

56:                                               ; preds = %35
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* @ISA_SER_ID, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %56
  %61 = load i32, i32* %5, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %5, align 4
  br label %63

63:                                               ; preds = %60, %56
  br label %64

64:                                               ; preds = %63, %1
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @outb(i8 zeroext, i64) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
