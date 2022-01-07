; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_cb_pcidda.c_cb_pcidda_calibrate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_cb_pcidda.c_cb_pcidda_calibrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i32* }
%struct.comedi_device = type { i32 }

@devpriv = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, i32, i32)* @cb_pcidda_calibrate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cb_pcidda_calibrate(%struct.comedi_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = load i32, i32* %5, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  store i32 %11, i32* %17, align 4
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i64 @offset_eeprom_address(i32 %21, i32 %22)
  %24 = getelementptr inbounds i32, i32* %20, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @eeprom_coarse_byte(i32 %25)
  store i32 %26, i32* %7, align 4
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i64 @offset_eeprom_address(i32 %30, i32 %31)
  %33 = getelementptr inbounds i32, i32* %29, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @eeprom_fine_byte(i32 %34)
  store i32 %35, i32* %8, align 4
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* %6, align 4
  %41 = call i64 @gain_eeprom_address(i32 %39, i32 %40)
  %42 = getelementptr inbounds i32, i32* %38, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @eeprom_coarse_byte(i32 %43)
  store i32 %44, i32* %9, align 4
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* %6, align 4
  %50 = call i64 @gain_eeprom_address(i32 %48, i32 %49)
  %51 = getelementptr inbounds i32, i32* %47, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @eeprom_fine_byte(i32 %52)
  store i32 %53, i32* %10, align 4
  %54 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @caldac_number(i32 %55)
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @coarse_offset_channel(i32 %57)
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @cb_pcidda_write_caldac(%struct.comedi_device* %54, i32 %56, i32 %58, i32 %59)
  %61 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %62 = load i32, i32* %5, align 4
  %63 = call i32 @caldac_number(i32 %62)
  %64 = load i32, i32* %5, align 4
  %65 = call i32 @fine_offset_channel(i32 %64)
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @cb_pcidda_write_caldac(%struct.comedi_device* %61, i32 %63, i32 %65, i32 %66)
  %68 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %69 = load i32, i32* %5, align 4
  %70 = call i32 @caldac_number(i32 %69)
  %71 = load i32, i32* %5, align 4
  %72 = call i32 @coarse_gain_channel(i32 %71)
  %73 = load i32, i32* %9, align 4
  %74 = call i32 @cb_pcidda_write_caldac(%struct.comedi_device* %68, i32 %70, i32 %72, i32 %73)
  %75 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %76 = load i32, i32* %5, align 4
  %77 = call i32 @caldac_number(i32 %76)
  %78 = load i32, i32* %5, align 4
  %79 = call i32 @fine_gain_channel(i32 %78)
  %80 = load i32, i32* %10, align 4
  %81 = call i32 @cb_pcidda_write_caldac(%struct.comedi_device* %75, i32 %77, i32 %79, i32 %80)
  ret void
}

declare dso_local i32 @eeprom_coarse_byte(i32) #1

declare dso_local i64 @offset_eeprom_address(i32, i32) #1

declare dso_local i32 @eeprom_fine_byte(i32) #1

declare dso_local i64 @gain_eeprom_address(i32, i32) #1

declare dso_local i32 @cb_pcidda_write_caldac(%struct.comedi_device*, i32, i32, i32) #1

declare dso_local i32 @caldac_number(i32) #1

declare dso_local i32 @coarse_offset_channel(i32) #1

declare dso_local i32 @fine_offset_channel(i32) #1

declare dso_local i32 @coarse_gain_channel(i32) #1

declare dso_local i32 @fine_gain_channel(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
