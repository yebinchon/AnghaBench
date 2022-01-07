; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/addi-data/extr_addi_eeprom.c_v_EepromSendCommand76.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/addi-data/extr_addi_eeprom.c_v_EepromSendCommand76.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @v_EepromSendCommand76(i32 %0, i32 %1, i8 zeroext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8 %2, i8* %6, align 1
  store i8 0, i8* %7, align 1
  store i32 0, i32* %8, align 4
  store i32 2, i32* %8, align 4
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @outl(i32 %9, i32 %10)
  %12 = call i32 @udelay(i32 100)
  %13 = load i8, i8* %6, align 1
  %14 = zext i8 %13 to i32
  %15 = sub nsw i32 %14, 1
  %16 = trunc i32 %15 to i8
  store i8 %16, i8* %7, align 1
  br label %17

17:                                               ; preds = %42, %3
  %18 = load i8, i8* %7, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp sge i32 %19, 0
  br i1 %20, label %21, label %45

21:                                               ; preds = %17
  %22 = load i32, i32* %5, align 4
  %23 = load i8, i8* %7, align 1
  %24 = sext i8 %23 to i32
  %25 = shl i32 1, %24
  %26 = and i32 %22, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %21
  %29 = load i32, i32* %8, align 4
  %30 = or i32 %29, 4
  store i32 %30, i32* %8, align 4
  br label %34

31:                                               ; preds = %21
  %32 = load i32, i32* %8, align 4
  %33 = and i32 %32, 3
  store i32 %33, i32* %8, align 4
  br label %34

34:                                               ; preds = %31, %28
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @outl(i32 %35, i32 %36)
  %38 = call i32 @udelay(i32 100)
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @v_EepromClock76(i32 %39, i32 %40)
  br label %42

42:                                               ; preds = %34
  %43 = load i8, i8* %7, align 1
  %44 = add i8 %43, -1
  store i8 %44, i8* %7, align 1
  br label %17

45:                                               ; preds = %17
  ret void
}

declare dso_local i32 @outl(i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @v_EepromClock76(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
