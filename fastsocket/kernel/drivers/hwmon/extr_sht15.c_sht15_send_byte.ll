; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_sht15.c_sht15_send_byte.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_sht15.c_sht15_send_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sht15_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sht15_data*, i32)* @sht15_send_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sht15_send_byte(%struct.sht15_data* %0, i32 %1) #0 {
  %3 = alloca %struct.sht15_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.sht15_data* %0, %struct.sht15_data** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %20, %2
  %7 = load i32, i32* %5, align 4
  %8 = icmp slt i32 %7, 8
  br i1 %8, label %9, label %23

9:                                                ; preds = %6
  %10 = load %struct.sht15_data*, %struct.sht15_data** %3, align 8
  %11 = load i32, i32* %4, align 4
  %12 = and i32 %11, 128
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i32 @sht15_send_bit(%struct.sht15_data* %10, i32 %16)
  %18 = load i32, i32* %4, align 4
  %19 = shl i32 %18, 1
  store i32 %19, i32* %4, align 4
  br label %20

20:                                               ; preds = %9
  %21 = load i32, i32* %5, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %5, align 4
  br label %6

23:                                               ; preds = %6
  ret void
}

declare dso_local i32 @sht15_send_bit(%struct.sht15_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
