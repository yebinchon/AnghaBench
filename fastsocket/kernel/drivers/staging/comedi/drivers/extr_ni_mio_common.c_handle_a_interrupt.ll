; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_mio_common.c_handle_a_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_mio_common.c_handle_a_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i16 (%struct.comedi_device*, i32)*, i32 }
%struct.comedi_device = type { %struct.comedi_subdevice* }
%struct.comedi_subdevice = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@NI_AI_SUBDEV = common dso_local global i32 0, align 4
@COMEDI_SUBD_UNUSED = common dso_local global i64 0, align 8
@AI_Overrun_St = common dso_local global i16 0, align 2
@AI_Overflow_St = common dso_local global i16 0, align 2
@AI_SC_TC_Error_St = common dso_local global i16 0, align 2
@AI_SC_TC_St = common dso_local global i16 0, align 2
@AI_START1_St = common dso_local global i16 0, align 2
@.str = private unnamed_addr constant [48 x i8] c"ni_mio_common: a_status=0xffff.  Card removed?\0A\00", align 1
@SRF_RUNNING = common dso_local global i32 0, align 4
@COMEDI_CB_ERROR = common dso_local global i32 0, align 4
@COMEDI_CB_EOA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"ni_mio_common: ai error a_status=%04x\0A\00", align 1
@COMEDI_CB_OVERFLOW = common dso_local global i32 0, align 4
@devpriv = common dso_local global %struct.TYPE_4__* null, align 8
@AI_FIFO_Half_Full_St = common dso_local global i16 0, align 2
@handle_a_interrupt.timeout = internal constant i32 10, align 4
@AI_Status_1_Register = common dso_local global i32 0, align 4
@AI_STOP_St = common dso_local global i16 0, align 2
@CHSR_DONE = common dso_local global i32 0, align 4
@CHSR_DRDY = common dso_local global i32 0, align 4
@CHSR_DRQ0 = common dso_local global i32 0, align 4
@CHSR_DRQ1 = common dso_local global i32 0, align 4
@CHSR_ERROR = common dso_local global i32 0, align 4
@CHSR_INT = common dso_local global i32 0, align 4
@CHSR_LINKC = common dso_local global i32 0, align 4
@CHSR_LxERR_mask = common dso_local global i32 0, align 4
@CHSR_MRDY = common dso_local global i32 0, align 4
@CHSR_SABORT = common dso_local global i32 0, align 4
@CHSR_XFERR = common dso_local global i32 0, align 4
@Interrupt_A_St = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, i16, i32)* @handle_a_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_a_interrupt(%struct.comedi_device* %0, i16 zeroext %1, i32 %2) #0 {
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i32, align 4
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store i16 %1, i16* %5, align 2
  store i32 %2, i32* %6, align 4
  %9 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %10 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %9, i32 0, i32 0
  %11 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %10, align 8
  %12 = load i32, i32* @NI_AI_SUBDEV, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %11, i64 %13
  store %struct.comedi_subdevice* %14, %struct.comedi_subdevice** %7, align 8
  %15 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %16 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @COMEDI_SUBD_UNUSED, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  br label %177

21:                                               ; preds = %3
  %22 = load i16, i16* %5, align 2
  %23 = zext i16 %22 to i32
  %24 = load i16, i16* @AI_Overrun_St, align 2
  %25 = zext i16 %24 to i32
  %26 = load i16, i16* @AI_Overflow_St, align 2
  %27 = zext i16 %26 to i32
  %28 = or i32 %25, %27
  %29 = load i16, i16* @AI_SC_TC_Error_St, align 2
  %30 = zext i16 %29 to i32
  %31 = or i32 %28, %30
  %32 = load i16, i16* @AI_SC_TC_St, align 2
  %33 = zext i16 %32 to i32
  %34 = or i32 %31, %33
  %35 = load i16, i16* @AI_START1_St, align 2
  %36 = zext i16 %35 to i32
  %37 = or i32 %34, %36
  %38 = and i32 %23, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %131

40:                                               ; preds = %21
  %41 = load i16, i16* %5, align 2
  %42 = zext i16 %41 to i32
  %43 = icmp eq i32 %42, 65535
  br i1 %43, label %44, label %65

44:                                               ; preds = %40
  %45 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %46 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %47 = call i32 @comedi_get_subdevice_runflags(%struct.comedi_subdevice* %46)
  %48 = load i32, i32* @SRF_RUNNING, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %64

51:                                               ; preds = %44
  %52 = load i32, i32* @COMEDI_CB_ERROR, align 4
  %53 = load i32, i32* @COMEDI_CB_EOA, align 4
  %54 = or i32 %52, %53
  %55 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %56 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %55, i32 0, i32 1
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %59, %54
  store i32 %60, i32* %58, align 4
  %61 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %62 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %63 = call i32 @ni_event(%struct.comedi_device* %61, %struct.comedi_subdevice* %62)
  br label %64

64:                                               ; preds = %51, %44
  br label %177

65:                                               ; preds = %40
  %66 = load i16, i16* %5, align 2
  %67 = zext i16 %66 to i32
  %68 = load i16, i16* @AI_Overrun_St, align 2
  %69 = zext i16 %68 to i32
  %70 = load i16, i16* @AI_Overflow_St, align 2
  %71 = zext i16 %70 to i32
  %72 = or i32 %69, %71
  %73 = load i16, i16* @AI_SC_TC_Error_St, align 2
  %74 = zext i16 %73 to i32
  %75 = or i32 %72, %74
  %76 = and i32 %67, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %114

78:                                               ; preds = %65
  %79 = load i16, i16* %5, align 2
  %80 = zext i16 %79 to i32
  %81 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %80)
  %82 = load i16, i16* %5, align 2
  %83 = call i32 @ni_mio_print_status_a(i16 zeroext %82)
  %84 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %85 = call i32 @shutdown_ai_command(%struct.comedi_device* %84)
  %86 = load i32, i32* @COMEDI_CB_ERROR, align 4
  %87 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %88 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %87, i32 0, i32 1
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = or i32 %91, %86
  store i32 %92, i32* %90, align 4
  %93 = load i16, i16* %5, align 2
  %94 = zext i16 %93 to i32
  %95 = load i16, i16* @AI_Overrun_St, align 2
  %96 = zext i16 %95 to i32
  %97 = load i16, i16* @AI_Overflow_St, align 2
  %98 = zext i16 %97 to i32
  %99 = or i32 %96, %98
  %100 = and i32 %94, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %110

102:                                              ; preds = %78
  %103 = load i32, i32* @COMEDI_CB_OVERFLOW, align 4
  %104 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %105 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %104, i32 0, i32 1
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = or i32 %108, %103
  store i32 %109, i32* %107, align 4
  br label %110

110:                                              ; preds = %102, %78
  %111 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %112 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %113 = call i32 @ni_event(%struct.comedi_device* %111, %struct.comedi_subdevice* %112)
  br label %177

114:                                              ; preds = %65
  %115 = load i16, i16* %5, align 2
  %116 = zext i16 %115 to i32
  %117 = load i16, i16* @AI_SC_TC_St, align 2
  %118 = zext i16 %117 to i32
  %119 = and i32 %116, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %130

121:                                              ; preds = %114
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %129, label %126

126:                                              ; preds = %121
  %127 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %128 = call i32 @shutdown_ai_command(%struct.comedi_device* %127)
  br label %129

129:                                              ; preds = %126, %121
  br label %130

130:                                              ; preds = %129, %114
  br label %131

131:                                              ; preds = %130, %21
  %132 = load i16, i16* %5, align 2
  %133 = zext i16 %132 to i32
  %134 = load i16, i16* @AI_FIFO_Half_Full_St, align 2
  %135 = zext i16 %134 to i32
  %136 = and i32 %133, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %162

138:                                              ; preds = %131
  store i32 0, i32* %8, align 4
  br label %139

139:                                              ; preds = %158, %138
  %140 = load i32, i32* %8, align 4
  %141 = icmp slt i32 %140, 10
  br i1 %141, label %142, label %161

142:                                              ; preds = %139
  %143 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %144 = call i32 @ni_handle_fifo_half_full(%struct.comedi_device* %143)
  %145 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 0
  %147 = load i16 (%struct.comedi_device*, i32)*, i16 (%struct.comedi_device*, i32)** %146, align 8
  %148 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %149 = load i32, i32* @AI_Status_1_Register, align 4
  %150 = call zeroext i16 %147(%struct.comedi_device* %148, i32 %149)
  %151 = zext i16 %150 to i32
  %152 = load i16, i16* @AI_FIFO_Half_Full_St, align 2
  %153 = zext i16 %152 to i32
  %154 = and i32 %151, %153
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %142
  br label %161

157:                                              ; preds = %142
  br label %158

158:                                              ; preds = %157
  %159 = load i32, i32* %8, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %8, align 4
  br label %139

161:                                              ; preds = %156, %139
  br label %162

162:                                              ; preds = %161, %131
  %163 = load i16, i16* %5, align 2
  %164 = zext i16 %163 to i32
  %165 = load i16, i16* @AI_STOP_St, align 2
  %166 = zext i16 %165 to i32
  %167 = and i32 %164, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %173

169:                                              ; preds = %162
  %170 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %171 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %172 = call i32 @ni_handle_eos(%struct.comedi_device* %170, %struct.comedi_subdevice* %171)
  br label %173

173:                                              ; preds = %169, %162
  %174 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %175 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %176 = call i32 @ni_event(%struct.comedi_device* %174, %struct.comedi_subdevice* %175)
  br label %177

177:                                              ; preds = %173, %110, %64, %20
  ret void
}

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @comedi_get_subdevice_runflags(%struct.comedi_subdevice*) #1

declare dso_local i32 @ni_event(%struct.comedi_device*, %struct.comedi_subdevice*) #1

declare dso_local i32 @ni_mio_print_status_a(i16 zeroext) #1

declare dso_local i32 @shutdown_ai_command(%struct.comedi_device*) #1

declare dso_local i32 @ni_handle_fifo_half_full(%struct.comedi_device*) #1

declare dso_local i32 @ni_handle_eos(%struct.comedi_device*, %struct.comedi_subdevice*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
