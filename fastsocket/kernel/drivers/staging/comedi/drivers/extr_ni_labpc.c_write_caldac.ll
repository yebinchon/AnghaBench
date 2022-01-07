; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_labpc.c_write_caldac.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_labpc.c_write_caldac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i32, i32 (i32, i64)* }
%struct.comedi_device = type { i64 }

@devpriv = common dso_local global %struct.TYPE_2__* null, align 8
@CALDAC_LOAD_BIT = common dso_local global i32 0, align 4
@EEPROM_EN_BIT = common dso_local global i32 0, align 4
@EEPROM_WRITE_UNPROTECT_BIT = common dso_local global i32 0, align 4
@COMMAND5_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, i32, i32)* @write_caldac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_caldac(%struct.comedi_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = load i32, i32* %5, align 4
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds i32, i32* %10, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = icmp eq i32 %7, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  br label %93

17:                                               ; preds = %3
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  store i32 %18, i32* %24, align 4
  %25 = load i32, i32* @CALDAC_LOAD_BIT, align 4
  %26 = xor i32 %25, -1
  %27 = load i32, i32* @EEPROM_EN_BIT, align 4
  %28 = xor i32 %27, -1
  %29 = and i32 %26, %28
  %30 = load i32, i32* @EEPROM_WRITE_UNPROTECT_BIT, align 4
  %31 = xor i32 %30, -1
  %32 = and i32 %29, %31
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = and i32 %35, %32
  store i32 %36, i32* %34, align 8
  %37 = call i32 @udelay(i32 1)
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 2
  %40 = load i32 (i32, i64)*, i32 (i32, i64)** %39, align 8
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %45 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @COMMAND5_REG, align 8
  %48 = add nsw i64 %46, %47
  %49 = call i32 %40(i32 %43, i64 %48)
  %50 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @labpc_serial_out(%struct.comedi_device* %50, i32 %51, i32 4)
  %53 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @labpc_serial_out(%struct.comedi_device* %53, i32 %54, i32 8)
  %56 = load i32, i32* @CALDAC_LOAD_BIT, align 4
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 8
  %61 = call i32 @udelay(i32 1)
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 2
  %64 = load i32 (i32, i64)*, i32 (i32, i64)** %63, align 8
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %69 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @COMMAND5_REG, align 8
  %72 = add nsw i64 %70, %71
  %73 = call i32 %64(i32 %67, i64 %72)
  %74 = load i32, i32* @CALDAC_LOAD_BIT, align 4
  %75 = xor i32 %74, -1
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = and i32 %78, %75
  store i32 %79, i32* %77, align 8
  %80 = call i32 @udelay(i32 1)
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 2
  %83 = load i32 (i32, i64)*, i32 (i32, i64)** %82, align 8
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %88 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @COMMAND5_REG, align 8
  %91 = add nsw i64 %89, %90
  %92 = call i32 %83(i32 %86, i64 %91)
  br label %93

93:                                               ; preds = %17, %16
  ret void
}

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @labpc_serial_out(%struct.comedi_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
