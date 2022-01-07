; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_handle_fifo_dregs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_handle_fifo_dregs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i16 (%struct.comedi_device*, i32)*, i16* }
%struct.comedi_device = type { %struct.comedi_subdevice* }
%struct.comedi_subdevice = type { i32 }

@NI_AI_SUBDEV = common dso_local global i32 0, align 4
@boardtype = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@ni_reg_611x = common dso_local global i64 0, align 8
@devpriv = common dso_local global %struct.TYPE_3__* null, align 8
@AI_Status_1_Register = common dso_local global i32 0, align 4
@AI_FIFO_Empty_St = common dso_local global i16 0, align 2
@ADC_FIFO_Data_611x = common dso_local global i32 0, align 4
@ni_reg_6143 = common dso_local global i64 0, align 8
@AIFIFO_Status_6143 = common dso_local global i32 0, align 4
@AIFIFO_Data_6143 = common dso_local global i32 0, align 4
@AIFIFO_Control_6143 = common dso_local global i32 0, align 4
@ADC_FIFO_Data_Register = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*)* @ni_handle_fifo_dregs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ni_handle_fifo_dregs(%struct.comedi_device* %0) #0 {
  %2 = alloca %struct.comedi_device*, align 8
  %3 = alloca %struct.comedi_subdevice*, align 8
  %4 = alloca [2 x i16], align 2
  %5 = alloca i32, align 4
  %6 = alloca i16, align 2
  %7 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %2, align 8
  %8 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %9 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %8, i32 0, i32 0
  %10 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %11 = load i32, i32* @NI_AI_SUBDEV, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %10, i64 %12
  store %struct.comedi_subdevice* %13, %struct.comedi_subdevice** %3, align 8
  %14 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @boardtype, i32 0, i32 0), align 8
  %15 = load i64, i64* @ni_reg_611x, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %45

17:                                               ; preds = %1
  br label %18

18:                                               ; preds = %30, %17
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devpriv, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i16 (%struct.comedi_device*, i32)*, i16 (%struct.comedi_device*, i32)** %20, align 8
  %22 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %23 = load i32, i32* @AI_Status_1_Register, align 4
  %24 = call signext i16 %21(%struct.comedi_device* %22, i32 %23)
  %25 = sext i16 %24 to i32
  %26 = load i16, i16* @AI_FIFO_Empty_St, align 2
  %27 = sext i16 %26 to i32
  %28 = and i32 %25, %27
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %44

30:                                               ; preds = %18
  %31 = load i32, i32* @ADC_FIFO_Data_611x, align 4
  %32 = call i32 @ni_readl(i32 %31)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = ashr i32 %33, 16
  %35 = trunc i32 %34 to i16
  %36 = getelementptr inbounds [2 x i16], [2 x i16]* %4, i64 0, i64 0
  store i16 %35, i16* %36, align 2
  %37 = load i32, i32* %5, align 4
  %38 = and i32 %37, 65535
  %39 = trunc i32 %38 to i16
  %40 = getelementptr inbounds [2 x i16], [2 x i16]* %4, i64 0, i64 1
  store i16 %39, i16* %40, align 2
  %41 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %3, align 8
  %42 = getelementptr inbounds [2 x i16], [2 x i16]* %4, i64 0, i64 0
  %43 = call i32 @cfc_write_array_to_buffer(%struct.comedi_subdevice* %41, i16* %42, i32 4)
  br label %18

44:                                               ; preds = %18
  br label %151

45:                                               ; preds = %1
  %46 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @boardtype, i32 0, i32 0), align 8
  %47 = load i64, i64* @ni_reg_6143, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %91

49:                                               ; preds = %45
  store i32 0, i32* %7, align 4
  br label %50

50:                                               ; preds = %55, %49
  %51 = load i32, i32* @AIFIFO_Status_6143, align 4
  %52 = call i32 @ni_readl(i32 %51)
  %53 = and i32 %52, 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %71

55:                                               ; preds = %50
  %56 = load i32, i32* @AIFIFO_Data_6143, align 4
  %57 = call i32 @ni_readl(i32 %56)
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* %5, align 4
  %59 = ashr i32 %58, 16
  %60 = trunc i32 %59 to i16
  %61 = getelementptr inbounds [2 x i16], [2 x i16]* %4, i64 0, i64 0
  store i16 %60, i16* %61, align 2
  %62 = load i32, i32* %5, align 4
  %63 = and i32 %62, 65535
  %64 = trunc i32 %63 to i16
  %65 = getelementptr inbounds [2 x i16], [2 x i16]* %4, i64 0, i64 1
  store i16 %64, i16* %65, align 2
  %66 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %3, align 8
  %67 = getelementptr inbounds [2 x i16], [2 x i16]* %4, i64 0, i64 0
  %68 = call i32 @cfc_write_array_to_buffer(%struct.comedi_subdevice* %66, i16* %67, i32 4)
  %69 = load i32, i32* %7, align 4
  %70 = add nsw i32 %69, 2
  store i32 %70, i32* %7, align 4
  br label %50

71:                                               ; preds = %50
  %72 = load i32, i32* @AIFIFO_Status_6143, align 4
  %73 = call i32 @ni_readl(i32 %72)
  %74 = and i32 %73, 1
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %90

76:                                               ; preds = %71
  %77 = load i32, i32* @AIFIFO_Control_6143, align 4
  %78 = call i32 @ni_writel(i32 1, i32 %77)
  %79 = load i32, i32* @AIFIFO_Data_6143, align 4
  %80 = call i32 @ni_readl(i32 %79)
  store i32 %80, i32* %5, align 4
  %81 = load i32, i32* %5, align 4
  %82 = ashr i32 %81, 16
  %83 = and i32 %82, 65535
  %84 = trunc i32 %83 to i16
  %85 = getelementptr inbounds [2 x i16], [2 x i16]* %4, i64 0, i64 0
  store i16 %84, i16* %85, align 2
  %86 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %3, align 8
  %87 = getelementptr inbounds [2 x i16], [2 x i16]* %4, i64 0, i64 0
  %88 = load i16, i16* %87, align 2
  %89 = call i32 @cfc_write_to_buffer(%struct.comedi_subdevice* %86, i16 signext %88)
  br label %90

90:                                               ; preds = %76, %71
  br label %150

91:                                               ; preds = %45
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devpriv, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  %94 = load i16 (%struct.comedi_device*, i32)*, i16 (%struct.comedi_device*, i32)** %93, align 8
  %95 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %96 = load i32, i32* @AI_Status_1_Register, align 4
  %97 = call signext i16 %94(%struct.comedi_device* %95, i32 %96)
  %98 = sext i16 %97 to i32
  %99 = load i16, i16* @AI_FIFO_Empty_St, align 2
  %100 = sext i16 %99 to i32
  %101 = and i32 %98, %100
  %102 = trunc i32 %101 to i16
  store i16 %102, i16* %6, align 2
  br label %103

103:                                              ; preds = %139, %91
  %104 = load i16, i16* %6, align 2
  %105 = sext i16 %104 to i32
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %149

107:                                              ; preds = %103
  store i32 0, i32* %7, align 4
  br label %108

108:                                              ; preds = %136, %107
  %109 = load i32, i32* %7, align 4
  %110 = sext i32 %109 to i64
  %111 = icmp ult i64 %110, 4
  br i1 %111, label %112, label %139

112:                                              ; preds = %108
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devpriv, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 0
  %115 = load i16 (%struct.comedi_device*, i32)*, i16 (%struct.comedi_device*, i32)** %114, align 8
  %116 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %117 = load i32, i32* @AI_Status_1_Register, align 4
  %118 = call signext i16 %115(%struct.comedi_device* %116, i32 %117)
  %119 = sext i16 %118 to i32
  %120 = load i16, i16* @AI_FIFO_Empty_St, align 2
  %121 = sext i16 %120 to i32
  %122 = and i32 %119, %121
  %123 = trunc i32 %122 to i16
  store i16 %123, i16* %6, align 2
  %124 = load i16, i16* %6, align 2
  %125 = icmp ne i16 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %112
  br label %139

127:                                              ; preds = %112
  %128 = load i32, i32* @ADC_FIFO_Data_Register, align 4
  %129 = call signext i16 @ni_readw(i32 %128)
  %130 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devpriv, align 8
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 1
  %132 = load i16*, i16** %131, align 8
  %133 = load i32, i32* %7, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i16, i16* %132, i64 %134
  store i16 %129, i16* %135, align 2
  br label %136

136:                                              ; preds = %127
  %137 = load i32, i32* %7, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %7, align 4
  br label %108

139:                                              ; preds = %126, %108
  %140 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %3, align 8
  %141 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devpriv, align 8
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 1
  %143 = load i16*, i16** %142, align 8
  %144 = load i32, i32* %7, align 4
  %145 = sext i32 %144 to i64
  %146 = mul i64 %145, 2
  %147 = trunc i64 %146 to i32
  %148 = call i32 @cfc_write_array_to_buffer(%struct.comedi_subdevice* %140, i16* %143, i32 %147)
  br label %103

149:                                              ; preds = %103
  br label %150

150:                                              ; preds = %149, %90
  br label %151

151:                                              ; preds = %150, %44
  ret void
}

declare dso_local i32 @ni_readl(i32) #1

declare dso_local i32 @cfc_write_array_to_buffer(%struct.comedi_subdevice*, i16*, i32) #1

declare dso_local i32 @ni_writel(i32, i32) #1

declare dso_local i32 @cfc_write_to_buffer(%struct.comedi_subdevice*, i16 signext) #1

declare dso_local signext i16 @ni_readw(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
