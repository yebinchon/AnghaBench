; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/addi-data/extr_addi_eeprom.c_v_EepromWaitBusy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/addi-data/extr_addi_eeprom.c_v_EepromWaitBusy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @v_EepromWaitBusy(i16 zeroext %0) #0 {
  %2 = alloca i16, align 2
  %3 = alloca i8, align 1
  store i16 %0, i16* %2, align 2
  store i8 0, i8* %3, align 1
  br label %4

4:                                                ; preds = %14, %1
  %5 = load i16, i16* %2, align 2
  %6 = zext i16 %5 to i32
  %7 = add nsw i32 %6, 63
  %8 = trunc i32 %7 to i16
  %9 = call zeroext i8 @inb(i16 zeroext %8)
  store i8 %9, i8* %3, align 1
  %10 = load i8, i8* %3, align 1
  %11 = zext i8 %10 to i32
  %12 = and i32 %11, 128
  %13 = trunc i32 %12 to i8
  store i8 %13, i8* %3, align 1
  br label %14

14:                                               ; preds = %4
  %15 = load i8, i8* %3, align 1
  %16 = zext i8 %15 to i32
  %17 = icmp eq i32 %16, 128
  br i1 %17, label %4, label %18

18:                                               ; preds = %14
  ret void
}

declare dso_local zeroext i8 @inb(i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
