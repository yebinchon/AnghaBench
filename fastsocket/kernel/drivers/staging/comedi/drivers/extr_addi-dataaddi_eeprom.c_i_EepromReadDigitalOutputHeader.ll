; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_addi-dataaddi_eeprom.c_i_EepromReadDigitalOutputHeader.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_addi-dataaddi_eeprom.c_i_EepromReadDigitalOutputHeader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.str_DigitalOutputHeader = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i_EepromReadDigitalOutputHeader(i16 zeroext %0, i8* %1, i16 zeroext %2, %struct.str_DigitalOutputHeader* %3) #0 {
  %5 = alloca i16, align 2
  %6 = alloca i8*, align 8
  %7 = alloca i16, align 2
  %8 = alloca %struct.str_DigitalOutputHeader*, align 8
  store i16 %0, i16* %5, align 2
  store i8* %1, i8** %6, align 8
  store i16 %2, i16* %7, align 2
  store %struct.str_DigitalOutputHeader* %3, %struct.str_DigitalOutputHeader** %8, align 8
  %9 = load i16, i16* %5, align 2
  %10 = load i8*, i8** %6, align 8
  %11 = load i16, i16* %7, align 2
  %12 = zext i16 %11 to i32
  %13 = add nsw i32 256, %12
  %14 = add nsw i32 %13, 6
  %15 = call i32 @w_EepromReadWord(i16 zeroext %9, i8* %10, i32 %14)
  %16 = load %struct.str_DigitalOutputHeader*, %struct.str_DigitalOutputHeader** %8, align 8
  %17 = getelementptr inbounds %struct.str_DigitalOutputHeader, %struct.str_DigitalOutputHeader* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  ret i32 0
}

declare dso_local i32 @w_EepromReadWord(i16 zeroext, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
