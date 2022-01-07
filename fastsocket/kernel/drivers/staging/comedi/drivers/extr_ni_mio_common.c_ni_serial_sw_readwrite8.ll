; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_serial_sw_readwrite8.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_serial_sw_readwrite8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 (%struct.comedi_device*, i32)*, i32, i32 (%struct.comedi_device*, i32, i32)*, i32 }
%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }

@devpriv = common dso_local global %struct.TYPE_2__* null, align 8
@DIO_SDOUT = common dso_local global i32 0, align 4
@DIO_Output_Register = common dso_local global i32 0, align 4
@DIO_Software_Serial_Control = common dso_local global i32 0, align 4
@DIO_Control_Register = common dso_local global i32 0, align 4
@DIO_Parallel_Input_Register = common dso_local global i32 0, align 4
@DIO_SDIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, i8, i8*)* @ni_serial_sw_readwrite8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ni_serial_sw_readwrite8(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, i8 zeroext %2, i8* %3) #0 {
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store i8 %2, i8* %7, align 1
  store i8* %3, i8** %8, align 8
  store i8 0, i8* %10, align 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = add nsw i32 %13, 999
  %15 = sdiv i32 %14, 1000
  %16 = call i32 @udelay(i32 %15)
  store i8 -128, i8* %9, align 1
  br label %17

17:                                               ; preds = %107, %4
  %18 = load i8, i8* %9, align 1
  %19 = icmp ne i8 %18, 0
  br i1 %19, label %20, label %112

20:                                               ; preds = %17
  %21 = load i32, i32* @DIO_SDOUT, align 4
  %22 = xor i32 %21, -1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 8
  %26 = and i32 %25, %22
  store i32 %26, i32* %24, align 8
  %27 = load i8, i8* %7, align 1
  %28 = zext i8 %27 to i32
  %29 = load i8, i8* %9, align 1
  %30 = zext i8 %29 to i32
  %31 = and i32 %28, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %20
  %34 = load i32, i32* @DIO_SDOUT, align 4
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 8
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 8
  br label %39

39:                                               ; preds = %33, %20
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 3
  %42 = load i32 (%struct.comedi_device*, i32, i32)*, i32 (%struct.comedi_device*, i32, i32)** %41, align 8
  %43 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @DIO_Output_Register, align 4
  %48 = call i32 %42(%struct.comedi_device* %43, i32 %46, i32 %47)
  %49 = load i32, i32* @DIO_Software_Serial_Control, align 4
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 8
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 3
  %56 = load i32 (%struct.comedi_device*, i32, i32)*, i32 (%struct.comedi_device*, i32, i32)** %55, align 8
  %57 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @DIO_Control_Register, align 4
  %62 = call i32 %56(%struct.comedi_device* %57, i32 %60, i32 %61)
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = add nsw i32 %65, 999
  %67 = sdiv i32 %66, 2000
  %68 = call i32 @udelay(i32 %67)
  %69 = load i32, i32* @DIO_Software_Serial_Control, align 4
  %70 = xor i32 %69, -1
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = and i32 %73, %70
  store i32 %74, i32* %72, align 8
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 3
  %77 = load i32 (%struct.comedi_device*, i32, i32)*, i32 (%struct.comedi_device*, i32, i32)** %76, align 8
  %78 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @DIO_Control_Register, align 4
  %83 = call i32 %77(%struct.comedi_device* %78, i32 %81, i32 %82)
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = add nsw i32 %86, 999
  %88 = sdiv i32 %87, 2000
  %89 = call i32 @udelay(i32 %88)
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 1
  %92 = load i32 (%struct.comedi_device*, i32)*, i32 (%struct.comedi_device*, i32)** %91, align 8
  %93 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %94 = load i32, i32* @DIO_Parallel_Input_Register, align 4
  %95 = call i32 %92(%struct.comedi_device* %93, i32 %94)
  %96 = load i32, i32* @DIO_SDIN, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %106

99:                                               ; preds = %39
  %100 = load i8, i8* %9, align 1
  %101 = zext i8 %100 to i32
  %102 = load i8, i8* %10, align 1
  %103 = zext i8 %102 to i32
  %104 = or i32 %103, %101
  %105 = trunc i32 %104 to i8
  store i8 %105, i8* %10, align 1
  br label %106

106:                                              ; preds = %99, %39
  br label %107

107:                                              ; preds = %106
  %108 = load i8, i8* %9, align 1
  %109 = zext i8 %108 to i32
  %110 = ashr i32 %109, 1
  %111 = trunc i32 %110 to i8
  store i8 %111, i8* %9, align 1
  br label %17

112:                                              ; preds = %17
  %113 = load i8*, i8** %8, align 8
  %114 = icmp ne i8* %113, null
  br i1 %114, label %115, label %118

115:                                              ; preds = %112
  %116 = load i8, i8* %10, align 1
  %117 = load i8*, i8** %8, align 8
  store i8 %116, i8* %117, align 1
  br label %118

118:                                              ; preds = %115, %112
  ret i32 0
}

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
