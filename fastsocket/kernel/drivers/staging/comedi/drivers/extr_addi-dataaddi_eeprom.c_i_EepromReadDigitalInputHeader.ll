; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_addi-dataaddi_eeprom.c_i_EepromReadDigitalInputHeader.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_addi-dataaddi_eeprom.c_i_EepromReadDigitalInputHeader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.str_DigitalInputHeader = type { i8, i8*, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i_EepromReadDigitalInputHeader(i16 zeroext %0, i8* %1, i16 zeroext %2, %struct.str_DigitalInputHeader* %3) #0 {
  %5 = alloca i16, align 2
  %6 = alloca i8*, align 8
  %7 = alloca i16, align 2
  %8 = alloca %struct.str_DigitalInputHeader*, align 8
  %9 = alloca i16, align 2
  store i16 %0, i16* %5, align 2
  store i8* %1, i8** %6, align 8
  store i16 %2, i16* %7, align 2
  store %struct.str_DigitalInputHeader* %3, %struct.str_DigitalInputHeader** %8, align 8
  %10 = load i16, i16* %5, align 2
  %11 = load i8*, i8** %6, align 8
  %12 = load i16, i16* %7, align 2
  %13 = zext i16 %12 to i32
  %14 = add nsw i32 256, %13
  %15 = add nsw i32 %14, 6
  %16 = call i8* @w_EepromReadWord(i16 zeroext %10, i8* %11, i32 %15)
  %17 = load %struct.str_DigitalInputHeader*, %struct.str_DigitalInputHeader** %8, align 8
  %18 = getelementptr inbounds %struct.str_DigitalInputHeader, %struct.str_DigitalInputHeader* %17, i32 0, i32 2
  store i8* %16, i8** %18, align 8
  %19 = load i16, i16* %5, align 2
  %20 = load i8*, i8** %6, align 8
  %21 = load i16, i16* %7, align 2
  %22 = zext i16 %21 to i32
  %23 = add nsw i32 256, %22
  %24 = add nsw i32 %23, 8
  %25 = call i8* @w_EepromReadWord(i16 zeroext %19, i8* %20, i32 %24)
  %26 = ptrtoint i8* %25 to i16
  store i16 %26, i16* %9, align 2
  %27 = load i16, i16* %9, align 2
  %28 = zext i16 %27 to i32
  %29 = ashr i32 %28, 7
  %30 = trunc i32 %29 to i8
  %31 = zext i8 %30 to i32
  %32 = and i32 %31, 1
  %33 = trunc i32 %32 to i8
  %34 = load %struct.str_DigitalInputHeader*, %struct.str_DigitalInputHeader** %8, align 8
  %35 = getelementptr inbounds %struct.str_DigitalInputHeader, %struct.str_DigitalInputHeader* %34, i32 0, i32 0
  store i8 %33, i8* %35, align 8
  %36 = load i16, i16* %5, align 2
  %37 = load i8*, i8** %6, align 8
  %38 = load i16, i16* %7, align 2
  %39 = zext i16 %38 to i32
  %40 = add nsw i32 256, %39
  %41 = add nsw i32 %40, 10
  %42 = call i8* @w_EepromReadWord(i16 zeroext %36, i8* %37, i32 %41)
  %43 = load %struct.str_DigitalInputHeader*, %struct.str_DigitalInputHeader** %8, align 8
  %44 = getelementptr inbounds %struct.str_DigitalInputHeader, %struct.str_DigitalInputHeader* %43, i32 0, i32 1
  store i8* %42, i8** %44, align 8
  ret i32 0
}

declare dso_local i8* @w_EepromReadWord(i16 zeroext, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
