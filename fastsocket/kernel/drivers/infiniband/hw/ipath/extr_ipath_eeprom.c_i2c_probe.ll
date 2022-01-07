; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_eeprom.c_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_eeprom.c_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipath_devdata = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"Failed reset probing device 0x%02X\0A\00", align 1
@READ_CMD = common dso_local global i32 0, align 4
@VERBOSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Failed startcmd for device 0x%02X\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Response from device 0x%02X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipath_devdata*, i32)* @i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_probe(%struct.ipath_devdata* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ipath_devdata*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ipath_devdata* %0, %struct.ipath_devdata** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %8 = load %struct.ipath_devdata*, %struct.ipath_devdata** %4, align 8
  %9 = call i32 @eeprom_reset(%struct.ipath_devdata* %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load %struct.ipath_devdata*, %struct.ipath_devdata** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @ipath_dev_err(%struct.ipath_devdata* %13, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %3, align 4
  br label %39

17:                                               ; preds = %2
  %18 = load %struct.ipath_devdata*, %struct.ipath_devdata** %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @READ_CMD, align 4
  %21 = or i32 %19, %20
  %22 = call i32 @i2c_startcmd(%struct.ipath_devdata* %18, i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %17
  %26 = load i32, i32* @VERBOSE, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @ipath_cdbg(i32 %26, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  br label %37

29:                                               ; preds = %17
  %30 = load %struct.ipath_devdata*, %struct.ipath_devdata** %4, align 8
  %31 = call i32 @rd_byte(%struct.ipath_devdata* %30)
  store i32 %31, i32* %7, align 4
  %32 = load %struct.ipath_devdata*, %struct.ipath_devdata** %4, align 8
  %33 = call i32 @stop_cmd(%struct.ipath_devdata* %32)
  %34 = load i32, i32* @VERBOSE, align 4
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @ipath_cdbg(i32 %34, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %35)
  br label %37

37:                                               ; preds = %29, %25
  %38 = load i32, i32* %6, align 4
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %37, %12
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @eeprom_reset(%struct.ipath_devdata*) #1

declare dso_local i32 @ipath_dev_err(%struct.ipath_devdata*, i8*, i32) #1

declare dso_local i32 @i2c_startcmd(%struct.ipath_devdata*, i32) #1

declare dso_local i32 @ipath_cdbg(i32, i8*, i32) #1

declare dso_local i32 @rd_byte(%struct.ipath_devdata*) #1

declare dso_local i32 @stop_cmd(%struct.ipath_devdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
