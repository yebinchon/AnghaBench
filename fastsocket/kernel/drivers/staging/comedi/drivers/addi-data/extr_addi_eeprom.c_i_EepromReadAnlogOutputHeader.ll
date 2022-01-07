; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/addi-data/extr_addi_eeprom.c_i_EepromReadAnlogOutputHeader.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/addi-data/extr_addi_eeprom.c_i_EepromReadAnlogOutputHeader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i16, i8 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i_EepromReadAnlogOutputHeader(i16 zeroext %0, i8* %1, i16 zeroext %2, %struct.TYPE_3__* %3) #0 {
  %5 = alloca i16, align 2
  %6 = alloca i8*, align 8
  %7 = alloca i16, align 2
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i16, align 2
  store i16 %0, i16* %5, align 2
  store i8* %1, i8** %6, align 8
  store i16 %2, i16* %7, align 2
  store %struct.TYPE_3__* %3, %struct.TYPE_3__** %8, align 8
  %10 = load i16, i16* %5, align 2
  %11 = load i8*, i8** %6, align 8
  %12 = load i16, i16* %7, align 2
  %13 = zext i16 %12 to i32
  %14 = add nsw i32 256, %13
  %15 = add nsw i32 %14, 10
  %16 = call zeroext i16 @w_EepromReadWord(i16 zeroext %10, i8* %11, i32 %15)
  store i16 %16, i16* %9, align 2
  %17 = load i16, i16* %9, align 2
  %18 = zext i16 %17 to i32
  %19 = ashr i32 %18, 4
  %20 = and i32 %19, 1023
  %21 = trunc i32 %20 to i16
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  store i16 %21, i16* %23, align 2
  %24 = load i16, i16* %5, align 2
  %25 = load i8*, i8** %6, align 8
  %26 = load i16, i16* %7, align 2
  %27 = zext i16 %26 to i32
  %28 = add nsw i32 256, %27
  %29 = add nsw i32 %28, 16
  %30 = call zeroext i16 @w_EepromReadWord(i16 zeroext %24, i8* %25, i32 %29)
  store i16 %30, i16* %9, align 2
  %31 = load i16, i16* %9, align 2
  %32 = zext i16 %31 to i32
  %33 = ashr i32 %32, 8
  %34 = trunc i32 %33 to i8
  %35 = zext i8 %34 to i32
  %36 = and i32 %35, 255
  %37 = trunc i32 %36 to i8
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  store i8 %37, i8* %39, align 2
  ret i32 0
}

declare dso_local zeroext i16 @w_EepromReadWord(i16 zeroext, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
