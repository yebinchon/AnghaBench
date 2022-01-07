; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_eeprom.c_wr_byte.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_eeprom.c_wr_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipath_devdata = type { i32 }

@i2c_line_high = common dso_local global i32 0, align 4
@i2c_line_low = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipath_devdata*, i32)* @wr_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wr_byte(%struct.ipath_devdata* %0, i32 %1) #0 {
  %3 = alloca %struct.ipath_devdata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ipath_devdata* %0, %struct.ipath_devdata** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 7, i32* %5, align 4
  br label %7

7:                                                ; preds = %24, %2
  %8 = load i32, i32* %5, align 4
  %9 = icmp sge i32 %8, 0
  br i1 %9, label %10, label %27

10:                                               ; preds = %7
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* %5, align 4
  %13 = ashr i32 %11, %12
  %14 = and i32 %13, 1
  store i32 %14, i32* %6, align 4
  %15 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @sda_out(%struct.ipath_devdata* %15, i32 %16)
  %18 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %19 = load i32, i32* @i2c_line_high, align 4
  %20 = call i32 @scl_out(%struct.ipath_devdata* %18, i32 %19)
  %21 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %22 = load i32, i32* @i2c_line_low, align 4
  %23 = call i32 @scl_out(%struct.ipath_devdata* %21, i32 %22)
  br label %24

24:                                               ; preds = %10
  %25 = load i32, i32* %5, align 4
  %26 = add nsw i32 %25, -1
  store i32 %26, i32* %5, align 4
  br label %7

27:                                               ; preds = %7
  %28 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %29 = call i32 @i2c_ackrcv(%struct.ipath_devdata* %28)
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i32 1, i32 0
  ret i32 %33
}

declare dso_local i32 @sda_out(%struct.ipath_devdata*, i32) #1

declare dso_local i32 @scl_out(%struct.ipath_devdata*, i32) #1

declare dso_local i32 @i2c_ackrcv(%struct.ipath_devdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
