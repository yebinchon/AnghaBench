; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_eeprom.c_eeprom_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_eeprom.c_eeprom_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipath_devdata = type { i32, %struct.TYPE_2__*, i8*, i8* }
%struct.TYPE_2__ = type { i32, i32 }

@VERBOSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"Resetting i2c eeprom; initial gpioout reg is %llx\0A\00", align 1
@i2c_line_low = common dso_local global i32 0, align 4
@i2c_line_high = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipath_devdata*)* @eeprom_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eeprom_reset(%struct.ipath_devdata* %0) #0 {
  %2 = alloca %struct.ipath_devdata*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.ipath_devdata* %0, %struct.ipath_devdata** %2, align 8
  store i32 9, i32* %3, align 4
  %7 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %8 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %7, i32 0, i32 3
  store i8** %8, i8*** %4, align 8
  %9 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %10 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %9, i32 0, i32 0
  %11 = load i64, i64* %6, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %14 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %15 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i8* @ipath_read_kreg64(%struct.ipath_devdata* %13, i32 %18)
  %20 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %21 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %20, i32 0, i32 2
  store i8* %19, i8** %21, align 8
  %22 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %23 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %24 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i8* @ipath_read_kreg64(%struct.ipath_devdata* %22, i32 %27)
  %29 = load i8**, i8*** %4, align 8
  store i8* %28, i8** %29, align 8
  %30 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %31 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %30, i32 0, i32 0
  %32 = load i64, i64* %6, align 8
  %33 = call i32 @spin_unlock_irqrestore(i32* %31, i64 %32)
  %34 = load i32, i32* @VERBOSE, align 4
  %35 = load i8**, i8*** %4, align 8
  %36 = load i8*, i8** %35, align 8
  %37 = ptrtoint i8* %36 to i64
  %38 = call i32 @ipath_cdbg(i32 %34, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i64 %37)
  %39 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %40 = load i32, i32* @i2c_line_low, align 4
  %41 = call i32 @scl_out(%struct.ipath_devdata* %39, i32 %40)
  %42 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %43 = load i32, i32* @i2c_line_high, align 4
  %44 = call i32 @sda_out(%struct.ipath_devdata* %42, i32 %43)
  br label %45

45:                                               ; preds = %69, %1
  %46 = load i32, i32* %3, align 4
  %47 = add nsw i32 %46, -1
  store i32 %47, i32* %3, align 4
  %48 = icmp ne i32 %46, 0
  br i1 %48, label %49, label %73

49:                                               ; preds = %45
  %50 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %51 = load i32, i32* @i2c_line_high, align 4
  %52 = call i32 @scl_out(%struct.ipath_devdata* %50, i32 %51)
  %53 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %54 = call i64 @sda_in(%struct.ipath_devdata* %53, i32 0)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %69

56:                                               ; preds = %49
  %57 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %58 = load i32, i32* @i2c_line_low, align 4
  %59 = call i32 @sda_out(%struct.ipath_devdata* %57, i32 %58)
  %60 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %61 = load i32, i32* @i2c_line_low, align 4
  %62 = call i32 @scl_out(%struct.ipath_devdata* %60, i32 %61)
  %63 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %64 = load i32, i32* @i2c_line_high, align 4
  %65 = call i32 @scl_out(%struct.ipath_devdata* %63, i32 %64)
  %66 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %67 = load i32, i32* @i2c_line_high, align 4
  %68 = call i32 @sda_out(%struct.ipath_devdata* %66, i32 %67)
  store i32 0, i32* %5, align 4
  br label %74

69:                                               ; preds = %49
  %70 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %71 = load i32, i32* @i2c_line_low, align 4
  %72 = call i32 @scl_out(%struct.ipath_devdata* %70, i32 %71)
  br label %45

73:                                               ; preds = %45
  store i32 1, i32* %5, align 4
  br label %74

74:                                               ; preds = %73, %56
  %75 = load i32, i32* %5, align 4
  ret i32 %75
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i8* @ipath_read_kreg64(%struct.ipath_devdata*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ipath_cdbg(i32, i8*, i64) #1

declare dso_local i32 @scl_out(%struct.ipath_devdata*, i32) #1

declare dso_local i32 @sda_out(%struct.ipath_devdata*, i32) #1

declare dso_local i64 @sda_in(%struct.ipath_devdata*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
