; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/addi-data/extr_addi_eeprom.c_v_EepromCs76Read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/addi-data/extr_addi_eeprom.c_v_EepromCs76Read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EE_READ = common dso_local global i32 0, align 4
@EE76_CMD_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @v_EepromCs76Read(i32 %0, i16 zeroext %1, i16* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  %6 = alloca i16*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i16 %1, i16* %5, align 2
  store i16* %2, i16** %6, align 8
  store i8 0, i8* %7, align 1
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @EE_READ, align 4
  %12 = shl i32 %11, 4
  %13 = load i16, i16* %5, align 2
  %14 = zext i16 %13 to i32
  %15 = sdiv i32 %14, 2
  %16 = or i32 %12, %15
  %17 = load i32, i32* @EE76_CMD_LEN, align 4
  %18 = call i32 @v_EepromSendCommand76(i32 %10, i32 %16, i32 %17)
  %19 = load i16, i16* %5, align 2
  %20 = zext i16 %19 to i32
  %21 = sdiv i32 %20, 2
  %22 = and i32 %21, 1
  %23 = shl i32 %22, 2
  %24 = or i32 %23, 2
  store i32 %24, i32* %8, align 4
  %25 = load i16*, i16** %6, align 8
  store i16 0, i16* %25, align 2
  store i8 0, i8* %7, align 1
  br label %26

26:                                               ; preds = %56, %3
  %27 = load i8, i8* %7, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp slt i32 %28, 16
  br i1 %29, label %30, label %59

30:                                               ; preds = %26
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @v_EepromClock76(i32 %31, i32 %32)
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @inl(i32 %34)
  store i32 %35, i32* %9, align 4
  %36 = call i32 @udelay(i32 100)
  %37 = load i32, i32* %9, align 4
  %38 = and i32 %37, 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %30
  %41 = load i16*, i16** %6, align 8
  %42 = load i16, i16* %41, align 2
  %43 = zext i16 %42 to i32
  %44 = shl i32 %43, 1
  %45 = or i32 %44, 1
  %46 = trunc i32 %45 to i16
  %47 = load i16*, i16** %6, align 8
  store i16 %46, i16* %47, align 2
  br label %55

48:                                               ; preds = %30
  %49 = load i16*, i16** %6, align 8
  %50 = load i16, i16* %49, align 2
  %51 = zext i16 %50 to i32
  %52 = shl i32 %51, 1
  %53 = trunc i32 %52 to i16
  %54 = load i16*, i16** %6, align 8
  store i16 %53, i16* %54, align 2
  br label %55

55:                                               ; preds = %48, %40
  br label %56

56:                                               ; preds = %55
  %57 = load i8, i8* %7, align 1
  %58 = add i8 %57, 1
  store i8 %58, i8* %7, align 1
  br label %26

59:                                               ; preds = %26
  store i32 0, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* %4, align 4
  %62 = call i32 @outl(i32 %60, i32 %61)
  %63 = call i32 @udelay(i32 100)
  ret void
}

declare dso_local i32 @v_EepromSendCommand76(i32, i32, i32) #1

declare dso_local i32 @v_EepromClock76(i32, i32) #1

declare dso_local i32 @inl(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @outl(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
