; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/addi-data/extr_hwdrv_apci3120.c_i_APCI3120_SetupChannelList.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/addi-data/extr_hwdrv_apci3120.c_i_APCI3120_SetupChannelList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.comedi_device = type { i64 }
%struct.comedi_subdevice = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"range/channel list is empty!\00", align 1
@devpriv = common dso_local global %struct.TYPE_2__* null, align 8
@APCI3120_CLEAR_PA_PR = common dso_local global i32 0, align 4
@APCI3120_WR_ADDRESS = common dso_local global i64 0, align 8
@APCI3120_BIPOLAR_RANGES = common dso_local global i32 0, align 4
@APCI3120_UNIPOLAR = common dso_local global i32 0, align 4
@APCI3120_SEQ_RAM_ADDRESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"\0A Gain = %i\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"\0A Channel = %i\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"\0A Polarity = %i\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i_APCI3120_SetupChannelList(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, i32 %2, i32* %3, i8 signext %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.comedi_device*, align 8
  %8 = alloca %struct.comedi_subdevice*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i16, align 2
  store %struct.comedi_device* %0, %struct.comedi_device** %7, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i8 %4, i8* %11, align 1
  %15 = load i32, i32* %9, align 4
  %16 = icmp slt i32 %15, 1
  br i1 %16, label %17, label %24

17:                                               ; preds = %5
  %18 = load i8, i8* %11, align 1
  %19 = icmp ne i8 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  %21 = load %struct.comedi_device*, %struct.comedi_device** %7, align 8
  %22 = call i32 @comedi_error(%struct.comedi_device* %21, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %23

23:                                               ; preds = %20, %17
  store i32 0, i32* %6, align 4
  br label %141

24:                                               ; preds = %5
  %25 = load i8, i8* %11, align 1
  %26 = icmp ne i8 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  store i32 1, i32* %6, align 4
  br label %141

28:                                               ; preds = %24
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @APCI3120_CLEAR_PA_PR, align 4
  %33 = and i32 %31, %32
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* %9, align 4
  %37 = sub nsw i32 %36, 1
  %38 = and i32 %37, 15
  %39 = shl i32 %38, 8
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = trunc i32 %44 to i16
  %46 = load %struct.comedi_device*, %struct.comedi_device** %7, align 8
  %47 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @APCI3120_WR_ADDRESS, align 8
  %50 = add nsw i64 %48, %49
  %51 = call i32 @outw(i16 zeroext %45, i64 %50)
  store i32 0, i32* %12, align 4
  br label %52

52:                                               ; preds = %137, %28
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp ult i32 %53, %54
  br i1 %55, label %56, label %140

56:                                               ; preds = %52
  %57 = load i32*, i32** %10, align 8
  %58 = load i32, i32* %12, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = call zeroext i16 @CR_CHAN(i32 %61)
  store i16 %62, i16* %14, align 2
  %63 = load i32*, i32** %10, align 8
  %64 = load i32, i32* %12, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @CR_RANGE(i32 %67)
  %69 = load i32, i32* @APCI3120_BIPOLAR_RANGES, align 4
  %70 = icmp ult i32 %68, %69
  br i1 %70, label %71, label %79

71:                                               ; preds = %56
  %72 = load i32, i32* @APCI3120_UNIPOLAR, align 4
  %73 = xor i32 %72, -1
  %74 = and i32 %73, 255
  %75 = load i16, i16* %14, align 2
  %76 = zext i16 %75 to i32
  %77 = and i32 %76, %74
  %78 = trunc i32 %77 to i16
  store i16 %78, i16* %14, align 2
  br label %85

79:                                               ; preds = %56
  %80 = load i32, i32* @APCI3120_UNIPOLAR, align 4
  %81 = load i16, i16* %14, align 2
  %82 = zext i16 %81 to i32
  %83 = or i32 %82, %80
  %84 = trunc i32 %83 to i16
  store i16 %84, i16* %14, align 2
  br label %85

85:                                               ; preds = %79, %71
  %86 = load i32*, i32** %10, align 8
  %87 = load i32, i32* %12, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @CR_RANGE(i32 %90)
  store i32 %91, i32* %13, align 4
  %92 = load i32, i32* %13, align 4
  %93 = and i32 %92, 3
  %94 = shl i32 %93, 4
  %95 = load i16, i16* %14, align 2
  %96 = zext i16 %95 to i32
  %97 = or i32 %96, %94
  %98 = trunc i32 %97 to i16
  store i16 %98, i16* %14, align 2
  %99 = load i32, i32* %12, align 4
  %100 = shl i32 %99, 8
  %101 = load i16, i16* %14, align 2
  %102 = zext i16 %101 to i32
  %103 = or i32 %102, %100
  %104 = trunc i32 %103 to i16
  store i16 %104, i16* %14, align 2
  %105 = load i16, i16* %14, align 2
  %106 = load %struct.comedi_device*, %struct.comedi_device** %7, align 8
  %107 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @APCI3120_SEQ_RAM_ADDRESS, align 8
  %110 = add nsw i64 %108, %109
  %111 = call i32 @outw(i16 zeroext %105, i64 %110)
  %112 = load i32*, i32** %10, align 8
  %113 = load i32, i32* %12, align 4
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @CR_RANGE(i32 %116)
  %118 = trunc i32 %117 to i8
  %119 = zext i8 %118 to i32
  %120 = and i32 %119, 3
  %121 = shl i32 %120, 2
  %122 = trunc i32 %121 to i16
  %123 = call i32 @printk(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i16 zeroext %122)
  %124 = load i32*, i32** %10, align 8
  %125 = load i32, i32* %12, align 4
  %126 = zext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = call zeroext i16 @CR_CHAN(i32 %128)
  %130 = call i32 @printk(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i16 zeroext %129)
  %131 = load i16, i16* %14, align 2
  %132 = zext i16 %131 to i32
  %133 = load i32, i32* @APCI3120_UNIPOLAR, align 4
  %134 = and i32 %132, %133
  %135 = trunc i32 %134 to i16
  %136 = call i32 @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i16 zeroext %135)
  br label %137

137:                                              ; preds = %85
  %138 = load i32, i32* %12, align 4
  %139 = add i32 %138, 1
  store i32 %139, i32* %12, align 4
  br label %52

140:                                              ; preds = %52
  store i32 1, i32* %6, align 4
  br label %141

141:                                              ; preds = %140, %27, %23
  %142 = load i32, i32* %6, align 4
  ret i32 %142
}

declare dso_local i32 @comedi_error(%struct.comedi_device*, i8*) #1

declare dso_local i32 @outw(i16 zeroext, i64) #1

declare dso_local zeroext i16 @CR_CHAN(i32) #1

declare dso_local i32 @CR_RANGE(i32) #1

declare dso_local i32 @printk(i8*, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
