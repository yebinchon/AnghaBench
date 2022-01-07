; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_addi-datahwdrv_apci3120.c_i_APCI3120_Reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_addi-datahwdrv_apci3120.c_i_APCI3120_Reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i16, i64, i64, i64, i64, i64, i64, i32, i8*, i8* }
%struct.comedi_device = type { i64 }

@APCI3120_DISABLE = common dso_local global i8* null, align 8
@devpriv = common dso_local global %struct.TYPE_2__* null, align 8
@APCI3120_EOC_MODE = common dso_local global i32 0, align 4
@APCI3120_WRITE_MODE_SELECT = common dso_local global i64 0, align 8
@APCI3120_WR_ADDRESS = common dso_local global i64 0, align 8
@APCI3120_ANALOG_OP_CHANNEL_1 = common dso_local global i32 0, align 4
@APCI3120_ANALOG_OUTPUT_1 = common dso_local global i64 0, align 8
@APCI3120_ANALOG_OP_CHANNEL_2 = common dso_local global i32 0, align 4
@APCI3120_ANALOG_OP_CHANNEL_3 = common dso_local global i32 0, align 4
@APCI3120_ANALOG_OP_CHANNEL_4 = common dso_local global i32 0, align 4
@APCI3120_ANALOG_OP_CHANNEL_5 = common dso_local global i32 0, align 4
@APCI3120_ANALOG_OUTPUT_2 = common dso_local global i64 0, align 8
@APCI3120_ANALOG_OP_CHANNEL_6 = common dso_local global i32 0, align 4
@APCI3120_ANALOG_OP_CHANNEL_7 = common dso_local global i32 0, align 4
@APCI3120_ANALOG_OP_CHANNEL_8 = common dso_local global i32 0, align 4
@APCI3120_RESET_FIFO = common dso_local global i64 0, align 8
@APCI3120_RD_STATUS = common dso_local global i64 0, align 8
@APCI3120_SEQ_RAM_ADDRESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i_APCI3120_Reset(%struct.comedi_device* %0) #0 {
  %2 = alloca %struct.comedi_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i16, align 2
  store %struct.comedi_device* %0, %struct.comedi_device** %2, align 8
  %5 = load i8*, i8** @APCI3120_DISABLE, align 8
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 9
  store i8* %5, i8** %7, align 8
  %8 = load i8*, i8** @APCI3120_DISABLE, align 8
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 8
  store i8* %8, i8** %10, align 8
  %11 = load i32, i32* @APCI3120_EOC_MODE, align 4
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 7
  store i32 %11, i32* %13, align 8
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 6
  store i64 0, i64* %15, align 8
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 5
  store i64 0, i64* %17, align 8
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 4
  store i64 0, i64* %19, align 8
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 3
  store i64 0, i64* %21, align 8
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 2
  store i64 0, i64* %23, align 8
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  store i64 0, i64* %25, align 8
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %30 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @APCI3120_WRITE_MODE_SELECT, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @outb(i64 %28, i64 %33)
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  store i16 0, i16* %36, align 8
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i16, i16* %38, align 8
  %40 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %41 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @APCI3120_WR_ADDRESS, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 @outw(i16 zeroext %39, i64 %44)
  %46 = load i32, i32* @APCI3120_ANALOG_OP_CHANNEL_1, align 4
  %47 = or i32 8191, %46
  %48 = trunc i32 %47 to i16
  %49 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %50 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @APCI3120_ANALOG_OUTPUT_1, align 8
  %53 = add nsw i64 %51, %52
  %54 = call i32 @outw(i16 zeroext %48, i64 %53)
  %55 = load i32, i32* @APCI3120_ANALOG_OP_CHANNEL_2, align 4
  %56 = or i32 8191, %55
  %57 = trunc i32 %56 to i16
  %58 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %59 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @APCI3120_ANALOG_OUTPUT_1, align 8
  %62 = add nsw i64 %60, %61
  %63 = call i32 @outw(i16 zeroext %57, i64 %62)
  %64 = load i32, i32* @APCI3120_ANALOG_OP_CHANNEL_3, align 4
  %65 = or i32 8191, %64
  %66 = trunc i32 %65 to i16
  %67 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %68 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @APCI3120_ANALOG_OUTPUT_1, align 8
  %71 = add nsw i64 %69, %70
  %72 = call i32 @outw(i16 zeroext %66, i64 %71)
  %73 = load i32, i32* @APCI3120_ANALOG_OP_CHANNEL_4, align 4
  %74 = or i32 8191, %73
  %75 = trunc i32 %74 to i16
  %76 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %77 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @APCI3120_ANALOG_OUTPUT_1, align 8
  %80 = add nsw i64 %78, %79
  %81 = call i32 @outw(i16 zeroext %75, i64 %80)
  %82 = load i32, i32* @APCI3120_ANALOG_OP_CHANNEL_5, align 4
  %83 = or i32 8191, %82
  %84 = trunc i32 %83 to i16
  %85 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %86 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @APCI3120_ANALOG_OUTPUT_2, align 8
  %89 = add nsw i64 %87, %88
  %90 = call i32 @outw(i16 zeroext %84, i64 %89)
  %91 = load i32, i32* @APCI3120_ANALOG_OP_CHANNEL_6, align 4
  %92 = or i32 8191, %91
  %93 = trunc i32 %92 to i16
  %94 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %95 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @APCI3120_ANALOG_OUTPUT_2, align 8
  %98 = add nsw i64 %96, %97
  %99 = call i32 @outw(i16 zeroext %93, i64 %98)
  %100 = load i32, i32* @APCI3120_ANALOG_OP_CHANNEL_7, align 4
  %101 = or i32 8191, %100
  %102 = trunc i32 %101 to i16
  %103 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %104 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @APCI3120_ANALOG_OUTPUT_2, align 8
  %107 = add nsw i64 %105, %106
  %108 = call i32 @outw(i16 zeroext %102, i64 %107)
  %109 = load i32, i32* @APCI3120_ANALOG_OP_CHANNEL_8, align 4
  %110 = or i32 8191, %109
  %111 = trunc i32 %110 to i16
  %112 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %113 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @APCI3120_ANALOG_OUTPUT_2, align 8
  %116 = add nsw i64 %114, %115
  %117 = call i32 @outw(i16 zeroext %111, i64 %116)
  %118 = call i32 @udelay(i32 10)
  %119 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %120 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = add nsw i64 %121, 0
  %123 = call i32 @inw(i64 %122)
  %124 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %125 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @APCI3120_RESET_FIFO, align 8
  %128 = add nsw i64 %126, %127
  %129 = call i32 @inb(i64 %128)
  %130 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %131 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @APCI3120_RD_STATUS, align 8
  %134 = add nsw i64 %132, %133
  %135 = call i32 @inw(i64 %134)
  store i32 0, i32* %3, align 4
  br label %136

136:                                              ; preds = %150, %1
  %137 = load i32, i32* %3, align 4
  %138 = icmp ult i32 %137, 16
  br i1 %138, label %139, label %153

139:                                              ; preds = %136
  %140 = load i32, i32* %3, align 4
  %141 = shl i32 %140, 8
  %142 = trunc i32 %141 to i16
  store i16 %142, i16* %4, align 2
  %143 = load i16, i16* %4, align 2
  %144 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %145 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @APCI3120_SEQ_RAM_ADDRESS, align 8
  %148 = add nsw i64 %146, %147
  %149 = call i32 @outw(i16 zeroext %143, i64 %148)
  br label %150

150:                                              ; preds = %139
  %151 = load i32, i32* %3, align 4
  %152 = add i32 %151, 1
  store i32 %152, i32* %3, align 4
  br label %136

153:                                              ; preds = %136
  ret i32 0
}

declare dso_local i32 @outb(i64, i64) #1

declare dso_local i32 @outw(i16 zeroext, i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @inw(i64) #1

declare dso_local i32 @inb(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
