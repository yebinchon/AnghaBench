; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/eeprom/extr_eeprom_93cx6.c_eeprom_93cx6_multiread.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/eeprom/extr_eeprom_93cx6.c_eeprom_93cx6_multiread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eeprom_93cx6 = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @eeprom_93cx6_multiread(%struct.eeprom_93cx6* %0, i64 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.eeprom_93cx6*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.eeprom_93cx6* %0, %struct.eeprom_93cx6** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %11

11:                                               ; preds = %28, %4
  %12 = load i32, i32* %9, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp ult i32 %12, %13
  br i1 %14, label %15, label %31

15:                                               ; preds = %11
  store i32 0, i32* %10, align 4
  %16 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %5, align 8
  %17 = load i64, i64* %6, align 8
  %18 = load i32, i32* %9, align 4
  %19 = zext i32 %18 to i64
  %20 = add nsw i64 %17, %19
  %21 = call i32 @eeprom_93cx6_read(%struct.eeprom_93cx6* %16, i64 %20, i32* %10)
  %22 = load i32, i32* %10, align 4
  %23 = call i32 @cpu_to_le16(i32 %22)
  %24 = load i32*, i32** %7, align 8
  %25 = load i32, i32* %9, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  store i32 %23, i32* %27, align 4
  br label %28

28:                                               ; preds = %15
  %29 = load i32, i32* %9, align 4
  %30 = add i32 %29, 1
  store i32 %30, i32* %9, align 4
  br label %11

31:                                               ; preds = %11
  ret void
}

declare dso_local i32 @eeprom_93cx6_read(%struct.eeprom_93cx6*, i64, i32*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
