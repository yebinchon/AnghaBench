; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_labpc.c_labpc_eeprom_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_labpc.c_labpc_eeprom_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 (i32, i64)* }
%struct.comedi_device = type { i64 }

@EEPROM_EN_BIT = common dso_local global i32 0, align 4
@devpriv = common dso_local global %struct.TYPE_2__* null, align 8
@COMMAND5_REG = common dso_local global i64 0, align 8
@EEPROM_WRITE_UNPROTECT_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, i32)* @labpc_eeprom_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @labpc_eeprom_read(%struct.comedi_device* %0, i32 %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 3, i32* %6, align 4
  store i32 8, i32* %7, align 4
  %8 = load i32, i32* @EEPROM_EN_BIT, align 4
  %9 = xor i32 %8, -1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = and i32 %12, %9
  store i32 %13, i32* %11, align 8
  %14 = call i32 @udelay(i32 1)
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i32 (i32, i64)*, i32 (i32, i64)** %16, align 8
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %22 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @COMMAND5_REG, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 %17(i32 %20, i64 %25)
  %27 = load i32, i32* @EEPROM_EN_BIT, align 4
  %28 = load i32, i32* @EEPROM_WRITE_UNPROTECT_BIT, align 4
  %29 = or i32 %27, %28
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 8
  %34 = call i32 @udelay(i32 1)
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i32 (i32, i64)*, i32 (i32, i64)** %36, align 8
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %42 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @COMMAND5_REG, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i32 %37(i32 %40, i64 %45)
  %47 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %48 = call i32 @labpc_serial_out(%struct.comedi_device* %47, i32 3, i32 8)
  %49 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @labpc_serial_out(%struct.comedi_device* %49, i32 %50, i32 8)
  %52 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %53 = call i32 @labpc_serial_in(%struct.comedi_device* %52)
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* @EEPROM_EN_BIT, align 4
  %55 = xor i32 %54, -1
  %56 = load i32, i32* @EEPROM_WRITE_UNPROTECT_BIT, align 4
  %57 = xor i32 %56, -1
  %58 = and i32 %55, %57
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = and i32 %61, %58
  store i32 %62, i32* %60, align 8
  %63 = call i32 @udelay(i32 1)
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  %66 = load i32 (i32, i64)*, i32 (i32, i64)** %65, align 8
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %71 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @COMMAND5_REG, align 8
  %74 = add nsw i64 %72, %73
  %75 = call i32 %66(i32 %69, i64 %74)
  %76 = load i32, i32* %5, align 4
  ret i32 %76
}

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @labpc_serial_out(%struct.comedi_device*, i32, i32) #1

declare dso_local i32 @labpc_serial_in(%struct.comedi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
