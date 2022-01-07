; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_dmm32at.c_dmm32at_ai_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_dmm32at.c_dmm32at_ai_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.comedi_cmd }
%struct.comedi_cmd = type { i8, i64, i32, i32, i32* }

@EINVAL = common dso_local global i32 0, align 4
@DMM32AT_FIFOCNTRL = common dso_local global i32 0, align 4
@DMM32AT_FIFORESET = common dso_local global i32 0, align 4
@DMM32AT_SCANENABLE = common dso_local global i32 0, align 4
@DMM32AT_AILOW = common dso_local global i32 0, align 4
@DMM32AT_AIHIGH = common dso_local global i32 0, align 4
@DMM32AT_AICONF = common dso_local global i32 0, align 4
@dmm32at_rangebits = common dso_local global i32* null, align 8
@DMM32AT_CNTRL = common dso_local global i32 0, align 4
@DMM32AT_INTRESET = common dso_local global i32 0, align 4
@TRIG_COUNT = common dso_local global i64 0, align 8
@devpriv = common dso_local global %struct.TYPE_4__* null, align 8
@DMM32AT_AIRBACK = common dso_local global i32 0, align 4
@DMM32AT_STATUS = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [9 x i8] c"timeout\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@DMM32AT_INTCLOCK = common dso_local global i32 0, align 4
@DMM32AT_ADINT = common dso_local global i32 0, align 4
@DMM32AT_CONV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*)* @dmm32at_ai_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dmm32at_ai_cmd(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca %struct.comedi_subdevice*, align 8
  %6 = alloca %struct.comedi_cmd*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %5, align 8
  %12 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %13 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %12, i32 0, i32 1
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  store %struct.comedi_cmd* %15, %struct.comedi_cmd** %6, align 8
  %16 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %17 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %16, i32 0, i32 4
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %151

23:                                               ; preds = %2
  %24 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %25 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %24, i32 0, i32 4
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @CR_CHAN(i32 %28)
  %30 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %31 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = sub nsw i32 %32, 1
  %34 = and i32 %29, %33
  %35 = trunc i32 %34 to i8
  store i8 %35, i8* %9, align 1
  %36 = load i8, i8* %9, align 1
  %37 = zext i8 %36 to i32
  %38 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %39 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %38, i32 0, i32 0
  %40 = load i8, i8* %39, align 8
  %41 = zext i8 %40 to i32
  %42 = add nsw i32 %37, %41
  %43 = sub nsw i32 %42, 1
  %44 = trunc i32 %43 to i8
  store i8 %44, i8* %10, align 1
  %45 = load i8, i8* %10, align 1
  %46 = zext i8 %45 to i32
  %47 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %48 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp sge i32 %46, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %23
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  br label %151

54:                                               ; preds = %23
  %55 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %56 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %55, i32 0, i32 4
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @CR_RANGE(i32 %59)
  store i32 %60, i32* %8, align 4
  %61 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %62 = load i32, i32* @DMM32AT_FIFOCNTRL, align 4
  %63 = load i32, i32* @DMM32AT_FIFORESET, align 4
  %64 = call i32 @dmm_outb(%struct.comedi_device* %61, i32 %62, i32 %63)
  %65 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %66 = load i32, i32* @DMM32AT_FIFOCNTRL, align 4
  %67 = load i32, i32* @DMM32AT_SCANENABLE, align 4
  %68 = call i32 @dmm_outb(%struct.comedi_device* %65, i32 %66, i32 %67)
  %69 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %70 = load i32, i32* @DMM32AT_AILOW, align 4
  %71 = load i8, i8* %9, align 1
  %72 = zext i8 %71 to i32
  %73 = call i32 @dmm_outb(%struct.comedi_device* %69, i32 %70, i32 %72)
  %74 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %75 = load i32, i32* @DMM32AT_AIHIGH, align 4
  %76 = load i8, i8* %10, align 1
  %77 = zext i8 %76 to i32
  %78 = call i32 @dmm_outb(%struct.comedi_device* %74, i32 %75, i32 %77)
  %79 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %80 = load i32, i32* @DMM32AT_AICONF, align 4
  %81 = load i32*, i32** @dmm32at_rangebits, align 8
  %82 = load i32, i32* %8, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @dmm_outb(%struct.comedi_device* %79, i32 %80, i32 %85)
  %87 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %88 = load i32, i32* @DMM32AT_CNTRL, align 4
  %89 = load i32, i32* @DMM32AT_INTRESET, align 4
  %90 = call i32 @dmm_outb(%struct.comedi_device* %87, i32 %88, i32 %89)
  %91 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %92 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @TRIG_COUNT, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %102

96:                                               ; preds = %54
  %97 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %98 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 4
  br label %105

102:                                              ; preds = %54
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  store i32 -1, i32* %104, align 4
  br label %105

105:                                              ; preds = %102, %96
  store i32 0, i32* %7, align 4
  br label %106

106:                                              ; preds = %121, %105
  %107 = load i32, i32* %7, align 4
  %108 = icmp slt i32 %107, 40000
  br i1 %108, label %109, label %124

109:                                              ; preds = %106
  %110 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %111 = load i32, i32* @DMM32AT_AIRBACK, align 4
  %112 = call zeroext i8 @dmm_inb(%struct.comedi_device* %110, i32 %111)
  store i8 %112, i8* %11, align 1
  %113 = load i8, i8* %11, align 1
  %114 = zext i8 %113 to i32
  %115 = load i8, i8* @DMM32AT_STATUS, align 1
  %116 = zext i8 %115 to i32
  %117 = and i32 %114, %116
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %109
  br label %124

120:                                              ; preds = %109
  br label %121

121:                                              ; preds = %120
  %122 = load i32, i32* %7, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %7, align 4
  br label %106

124:                                              ; preds = %119, %106
  %125 = load i32, i32* %7, align 4
  %126 = icmp eq i32 %125, 40000
  br i1 %126, label %127, label %131

127:                                              ; preds = %124
  %128 = call i32 @printk(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %129 = load i32, i32* @ETIMEDOUT, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %3, align 4
  br label %151

131:                                              ; preds = %124
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = icmp sgt i32 %134, 1
  br i1 %135, label %136, label %142

136:                                              ; preds = %131
  %137 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %138 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %139 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @dmm32at_setaitimer(%struct.comedi_device* %137, i32 %140)
  br label %150

142:                                              ; preds = %131
  %143 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %144 = load i32, i32* @DMM32AT_INTCLOCK, align 4
  %145 = load i32, i32* @DMM32AT_ADINT, align 4
  %146 = call i32 @dmm_outb(%struct.comedi_device* %143, i32 %144, i32 %145)
  %147 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %148 = load i32, i32* @DMM32AT_CONV, align 4
  %149 = call i32 @dmm_outb(%struct.comedi_device* %147, i32 %148, i32 255)
  br label %150

150:                                              ; preds = %142, %136
  store i32 0, i32* %3, align 4
  br label %151

151:                                              ; preds = %150, %127, %51, %20
  %152 = load i32, i32* %3, align 4
  ret i32 %152
}

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @CR_RANGE(i32) #1

declare dso_local i32 @dmm_outb(%struct.comedi_device*, i32, i32) #1

declare dso_local zeroext i8 @dmm_inb(%struct.comedi_device*, i32) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @dmm32at_setaitimer(%struct.comedi_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
