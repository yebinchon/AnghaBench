; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_das1800.c_das1800_ai_do_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_das1800.c_das1800_ai_do_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.comedi_device = type { i64, i32 }
%struct.comedi_subdevice = type { %struct.comedi_async* }
%struct.comedi_async = type { %struct.comedi_cmd }
%struct.comedi_cmd = type { i32, i64, i32, i32, i32 }

@.str = private unnamed_addr constant [61 x i8] c"no irq assigned for das-1800, cannot do hardware conversions\00", align 1
@TRIG_WAKE_EOS = common dso_local global i32 0, align 4
@TRIG_RT = common dso_local global i32 0, align 4
@DMA_ENABLED = common dso_local global i32 0, align 4
@devpriv = common dso_local global %struct.TYPE_2__* null, align 8
@FIMD = common dso_local global i32 0, align 4
@TRIG_COUNT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"Error setting up counters\00", align 1
@DAS1800_CONTROL_C = common dso_local global i64 0, align 8
@BMDE = common dso_local global i32 0, align 4
@DAS1800_BURST_RATE = common dso_local global i64 0, align 8
@DAS1800_BURST_LENGTH = common dso_local global i64 0, align 8
@DAS1800_CONTROL_B = common dso_local global i64 0, align 8
@DAS1800_CONTROL_A = common dso_local global i64 0, align 8
@CVEN = common dso_local global i32 0, align 4
@DAS1800_STATUS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*)* @das1800_ai_do_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @das1800_ai_do_cmd(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca %struct.comedi_subdevice*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.comedi_async*, align 8
  %10 = alloca %struct.comedi_cmd, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %5, align 8
  %11 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %12 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %11, i32 0, i32 0
  %13 = load %struct.comedi_async*, %struct.comedi_async** %12, align 8
  store %struct.comedi_async* %13, %struct.comedi_async** %9, align 8
  %14 = load %struct.comedi_async*, %struct.comedi_async** %9, align 8
  %15 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %14, i32 0, i32 0
  %16 = bitcast %struct.comedi_cmd* %10 to i8*
  %17 = bitcast %struct.comedi_cmd* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 %17, i64 32, i1 false)
  %18 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %19 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %2
  %23 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %24 = call i32 @comedi_error(%struct.comedi_device* %23, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %154

25:                                               ; preds = %2
  %26 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %10, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @TRIG_WAKE_EOS, align 4
  %29 = load i32, i32* @TRIG_RT, align 4
  %30 = or i32 %28, %29
  %31 = and i32 %27, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %25
  %34 = load i32, i32* @DMA_ENABLED, align 4
  %35 = xor i32 %34, -1
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %38, %35
  store i32 %39, i32* %37, align 4
  br label %48

40:                                               ; preds = %25
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 4
  br label %48

48:                                               ; preds = %40, %33
  %49 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %10, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @TRIG_WAKE_EOS, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %48
  %55 = load i32, i32* @FIMD, align 4
  %56 = xor i32 %55, -1
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %59, %56
  store i32 %60, i32* %58, align 4
  br label %67

61:                                               ; preds = %48
  %62 = load i32, i32* @FIMD, align 4
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = or i32 %65, %62
  store i32 %66, i32* %64, align 4
  br label %67

67:                                               ; preds = %61, %54
  %68 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %10, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @TRIG_COUNT, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %80

72:                                               ; preds = %67
  %73 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %10, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %10, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = mul nsw i32 %74, %76
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 2
  store i32 %77, i32* %79, align 4
  br label %80

80:                                               ; preds = %72, %67
  %81 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %82 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %83 = call i32 @das1800_cancel(%struct.comedi_device* %81, %struct.comedi_subdevice* %82)
  %84 = call i32 @control_a_bits(%struct.comedi_cmd* byval(%struct.comedi_cmd) align 8 %10)
  store i32 %84, i32* %7, align 4
  %85 = call i32 @control_c_bits(%struct.comedi_cmd* byval(%struct.comedi_cmd) align 8 %10)
  store i32 %85, i32* %8, align 4
  %86 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %87 = call i32 @program_chanlist(%struct.comedi_device* %86, %struct.comedi_cmd* byval(%struct.comedi_cmd) align 8 %10)
  %88 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %89 = call i32 @setup_counters(%struct.comedi_device* %88, %struct.comedi_cmd* byval(%struct.comedi_cmd) align 8 %10)
  store i32 %89, i32* %6, align 4
  %90 = load i32, i32* %6, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %80
  %93 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %94 = call i32 @comedi_error(%struct.comedi_device* %93, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %95 = load i32, i32* %6, align 4
  store i32 %95, i32* %3, align 4
  br label %154

96:                                               ; preds = %80
  %97 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %98 = call i32 @setup_dma(%struct.comedi_device* %97, %struct.comedi_cmd* byval(%struct.comedi_cmd) align 8 %10)
  %99 = load i32, i32* %8, align 4
  %100 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %101 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @DAS1800_CONTROL_C, align 8
  %104 = add nsw i64 %102, %103
  %105 = call i32 @outb(i32 %99, i64 %104)
  %106 = load i32, i32* %8, align 4
  %107 = load i32, i32* @BMDE, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %130

110:                                              ; preds = %96
  %111 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %10, i32 0, i32 4
  %112 = load i32, i32* %111, align 8
  %113 = sdiv i32 %112, 1000
  %114 = sub nsw i32 %113, 1
  %115 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %116 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @DAS1800_BURST_RATE, align 8
  %119 = add nsw i64 %117, %118
  %120 = call i32 @outb(i32 %114, i64 %119)
  %121 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %10, i32 0, i32 3
  %122 = load i32, i32* %121, align 4
  %123 = sub nsw i32 %122, 1
  %124 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %125 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @DAS1800_BURST_LENGTH, align 8
  %128 = add nsw i64 %126, %127
  %129 = call i32 @outb(i32 %123, i64 %128)
  br label %130

130:                                              ; preds = %110, %96
  %131 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %135 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @DAS1800_CONTROL_B, align 8
  %138 = add nsw i64 %136, %137
  %139 = call i32 @outb(i32 %133, i64 %138)
  %140 = load i32, i32* %7, align 4
  %141 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %142 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @DAS1800_CONTROL_A, align 8
  %145 = add nsw i64 %143, %144
  %146 = call i32 @outb(i32 %140, i64 %145)
  %147 = load i32, i32* @CVEN, align 4
  %148 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %149 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* @DAS1800_STATUS, align 8
  %152 = add nsw i64 %150, %151
  %153 = call i32 @outb(i32 %147, i64 %152)
  store i32 0, i32* %3, align 4
  br label %154

154:                                              ; preds = %130, %92, %22
  %155 = load i32, i32* %3, align 4
  ret i32 %155
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @comedi_error(%struct.comedi_device*, i8*) #2

declare dso_local i32 @das1800_cancel(%struct.comedi_device*, %struct.comedi_subdevice*) #2

declare dso_local i32 @control_a_bits(%struct.comedi_cmd* byval(%struct.comedi_cmd) align 8) #2

declare dso_local i32 @control_c_bits(%struct.comedi_cmd* byval(%struct.comedi_cmd) align 8) #2

declare dso_local i32 @program_chanlist(%struct.comedi_device*, %struct.comedi_cmd* byval(%struct.comedi_cmd) align 8) #2

declare dso_local i32 @setup_counters(%struct.comedi_device*, %struct.comedi_cmd* byval(%struct.comedi_cmd) align 8) #2

declare dso_local i32 @setup_dma(%struct.comedi_device*, %struct.comedi_cmd* byval(%struct.comedi_cmd) align 8) #2

declare dso_local i32 @outb(i32, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
