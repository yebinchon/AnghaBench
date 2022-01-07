; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_ai_fifo_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_ai_fifo_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i16* }
%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { %struct.comedi_async* }
%struct.comedi_async = type { i32 }

@boardtype = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@ni_reg_611x = common dso_local global i64 0, align 8
@ADC_FIFO_Data_611x = common dso_local global i32 0, align 4
@ni_reg_6143 = common dso_local global i64 0, align 8
@AIFIFO_Data_6143 = common dso_local global i32 0, align 4
@AIFIFO_Control_6143 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"bug! ai_fifo_buffer too small\00", align 1
@COMEDI_CB_ERROR = common dso_local global i32 0, align 4
@ADC_FIFO_Data_Register = common dso_local global i32 0, align 4
@devpriv = common dso_local global %struct.TYPE_3__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, %struct.comedi_subdevice*, i32)* @ni_ai_fifo_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ni_ai_fifo_read(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, i32 %2) #0 {
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca %struct.comedi_subdevice*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.comedi_async*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [2 x i16], align 2
  %10 = alloca i32, align 4
  %11 = alloca [2 x i16], align 2
  %12 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %14 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %13, i32 0, i32 0
  %15 = load %struct.comedi_async*, %struct.comedi_async** %14, align 8
  store %struct.comedi_async* %15, %struct.comedi_async** %7, align 8
  %16 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @boardtype, i32 0, i32 0), align 8
  %17 = load i64, i64* @ni_reg_611x, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %59

19:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %20

20:                                               ; preds = %40, %19
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* %6, align 4
  %23 = sdiv i32 %22, 2
  %24 = icmp slt i32 %21, %23
  br i1 %24, label %25, label %43

25:                                               ; preds = %20
  %26 = load i32, i32* @ADC_FIFO_Data_611x, align 4
  %27 = call i32 @ni_readl(i32 %26)
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = ashr i32 %28, 16
  %30 = and i32 %29, 65535
  %31 = trunc i32 %30 to i16
  %32 = getelementptr inbounds [2 x i16], [2 x i16]* %9, i64 0, i64 0
  store i16 %31, i16* %32, align 2
  %33 = load i32, i32* %10, align 4
  %34 = and i32 %33, 65535
  %35 = trunc i32 %34 to i16
  %36 = getelementptr inbounds [2 x i16], [2 x i16]* %9, i64 0, i64 1
  store i16 %35, i16* %36, align 2
  %37 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %38 = getelementptr inbounds [2 x i16], [2 x i16]* %9, i64 0, i64 0
  %39 = call i32 @cfc_write_array_to_buffer(%struct.comedi_subdevice* %37, i16* %38, i32 4)
  br label %40

40:                                               ; preds = %25
  %41 = load i32, i32* %8, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %8, align 4
  br label %20

43:                                               ; preds = %20
  %44 = load i32, i32* %6, align 4
  %45 = srem i32 %44, 2
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %58

47:                                               ; preds = %43
  %48 = load i32, i32* @ADC_FIFO_Data_611x, align 4
  %49 = call i32 @ni_readl(i32 %48)
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  %51 = and i32 %50, 65535
  %52 = trunc i32 %51 to i16
  %53 = getelementptr inbounds [2 x i16], [2 x i16]* %9, i64 0, i64 0
  store i16 %52, i16* %53, align 2
  %54 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %55 = getelementptr inbounds [2 x i16], [2 x i16]* %9, i64 0, i64 0
  %56 = load i16, i16* %55, align 2
  %57 = call i32 @cfc_write_to_buffer(%struct.comedi_subdevice* %54, i16 signext %56)
  br label %58

58:                                               ; preds = %47, %43
  br label %146

59:                                               ; preds = %3
  %60 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @boardtype, i32 0, i32 0), align 8
  %61 = load i64, i64* @ni_reg_6143, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %106

63:                                               ; preds = %59
  store i32 0, i32* %8, align 4
  br label %64

64:                                               ; preds = %84, %63
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* %6, align 4
  %67 = sdiv i32 %66, 2
  %68 = icmp slt i32 %65, %67
  br i1 %68, label %69, label %87

69:                                               ; preds = %64
  %70 = load i32, i32* @AIFIFO_Data_6143, align 4
  %71 = call i32 @ni_readl(i32 %70)
  store i32 %71, i32* %12, align 4
  %72 = load i32, i32* %12, align 4
  %73 = ashr i32 %72, 16
  %74 = and i32 %73, 65535
  %75 = trunc i32 %74 to i16
  %76 = getelementptr inbounds [2 x i16], [2 x i16]* %11, i64 0, i64 0
  store i16 %75, i16* %76, align 2
  %77 = load i32, i32* %12, align 4
  %78 = and i32 %77, 65535
  %79 = trunc i32 %78 to i16
  %80 = getelementptr inbounds [2 x i16], [2 x i16]* %11, i64 0, i64 1
  store i16 %79, i16* %80, align 2
  %81 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %82 = getelementptr inbounds [2 x i16], [2 x i16]* %11, i64 0, i64 0
  %83 = call i32 @cfc_write_array_to_buffer(%struct.comedi_subdevice* %81, i16* %82, i32 4)
  br label %84

84:                                               ; preds = %69
  %85 = load i32, i32* %8, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %8, align 4
  br label %64

87:                                               ; preds = %64
  %88 = load i32, i32* %6, align 4
  %89 = srem i32 %88, 2
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %105

91:                                               ; preds = %87
  %92 = load i32, i32* @AIFIFO_Control_6143, align 4
  %93 = call i32 @ni_writel(i32 1, i32 %92)
  %94 = load i32, i32* @AIFIFO_Data_6143, align 4
  %95 = call i32 @ni_readl(i32 %94)
  store i32 %95, i32* %12, align 4
  %96 = load i32, i32* %12, align 4
  %97 = ashr i32 %96, 16
  %98 = and i32 %97, 65535
  %99 = trunc i32 %98 to i16
  %100 = getelementptr inbounds [2 x i16], [2 x i16]* %11, i64 0, i64 0
  store i16 %99, i16* %100, align 2
  %101 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %102 = getelementptr inbounds [2 x i16], [2 x i16]* %11, i64 0, i64 0
  %103 = load i16, i16* %102, align 2
  %104 = call i32 @cfc_write_to_buffer(%struct.comedi_subdevice* %101, i16 signext %103)
  br label %105

105:                                              ; preds = %91, %87
  br label %145

106:                                              ; preds = %59
  %107 = load i32, i32* %6, align 4
  %108 = sext i32 %107 to i64
  %109 = icmp ugt i64 %108, 4
  br i1 %109, label %110, label %118

110:                                              ; preds = %106
  %111 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %112 = call i32 @comedi_error(%struct.comedi_device* %111, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %113 = load i32, i32* @COMEDI_CB_ERROR, align 4
  %114 = load %struct.comedi_async*, %struct.comedi_async** %7, align 8
  %115 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = or i32 %116, %113
  store i32 %117, i32* %115, align 4
  br label %146

118:                                              ; preds = %106
  store i32 0, i32* %8, align 4
  br label %119

119:                                              ; preds = %132, %118
  %120 = load i32, i32* %8, align 4
  %121 = load i32, i32* %6, align 4
  %122 = icmp slt i32 %120, %121
  br i1 %122, label %123, label %135

123:                                              ; preds = %119
  %124 = load i32, i32* @ADC_FIFO_Data_Register, align 4
  %125 = call signext i16 @ni_readw(i32 %124)
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devpriv, align 8
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 0
  %128 = load i16*, i16** %127, align 8
  %129 = load i32, i32* %8, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i16, i16* %128, i64 %130
  store i16 %125, i16* %131, align 2
  br label %132

132:                                              ; preds = %123
  %133 = load i32, i32* %8, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %8, align 4
  br label %119

135:                                              ; preds = %119
  %136 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %137 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devpriv, align 8
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 0
  %139 = load i16*, i16** %138, align 8
  %140 = load i32, i32* %6, align 4
  %141 = sext i32 %140 to i64
  %142 = mul i64 %141, 2
  %143 = trunc i64 %142 to i32
  %144 = call i32 @cfc_write_array_to_buffer(%struct.comedi_subdevice* %136, i16* %139, i32 %143)
  br label %145

145:                                              ; preds = %135, %105
  br label %146

146:                                              ; preds = %110, %145, %58
  ret void
}

declare dso_local i32 @ni_readl(i32) #1

declare dso_local i32 @cfc_write_array_to_buffer(%struct.comedi_subdevice*, i16*, i32) #1

declare dso_local i32 @cfc_write_to_buffer(%struct.comedi_subdevice*, i16 signext) #1

declare dso_local i32 @ni_writel(i32, i32) #1

declare dso_local i32 @comedi_error(%struct.comedi_device*, i8*) #1

declare dso_local signext i16 @ni_readw(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
