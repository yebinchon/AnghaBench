; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_das16m1.c_das16m1_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_das16m1.c_das16m1_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.comedi_device = type { i64, %struct.comedi_subdevice* }
%struct.comedi_subdevice = type { %struct.comedi_async* }
%struct.comedi_async = type { i32, %struct.comedi_cmd }
%struct.comedi_cmd = type { i64, i32, i32 }

@DAS16M1_8254_FIRST = common dso_local global i64 0, align 8
@devpriv = common dso_local global %struct.TYPE_2__* null, align 8
@TRIG_COUNT = common dso_local global i64 0, align 8
@FIFO_SIZE = common dso_local global i32 0, align 4
@COMEDI_CB_EOA = common dso_local global i32 0, align 4
@OVRUN = common dso_local global i32 0, align 4
@COMEDI_CB_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"fifo overflow\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, i32)* @das16m1_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @das16m1_handler(%struct.comedi_device* %0, i32 %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.comedi_subdevice*, align 8
  %6 = alloca %struct.comedi_async*, align 8
  %7 = alloca %struct.comedi_cmd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %11 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %10, i32 0, i32 1
  %12 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %11, align 8
  store %struct.comedi_subdevice* %12, %struct.comedi_subdevice** %5, align 8
  %13 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %14 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %13, i32 0, i32 0
  %15 = load %struct.comedi_async*, %struct.comedi_async** %14, align 8
  store %struct.comedi_async* %15, %struct.comedi_async** %6, align 8
  %16 = load %struct.comedi_async*, %struct.comedi_async** %6, align 8
  %17 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %16, i32 0, i32 0
  store i32 0, i32* %17, align 8
  %18 = load %struct.comedi_async*, %struct.comedi_async** %6, align 8
  %19 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %18, i32 0, i32 1
  store %struct.comedi_cmd* %19, %struct.comedi_cmd** %7, align 8
  %20 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %21 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @DAS16M1_8254_FIRST, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @i8254_read(i64 %24, i32 0, i32 1)
  store i32 %25, i32* %9, align 4
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %2
  %31 = load i32, i32* %9, align 4
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %31, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  store i32 0, i32* %8, align 4
  br label %44

37:                                               ; preds = %30, %2
  %38 = load i32, i32* %9, align 4
  %39 = sub nsw i32 0, %38
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = sub nsw i32 %39, %42
  store i32 %43, i32* %8, align 4
  br label %44

44:                                               ; preds = %37, %36
  %45 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %46 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @TRIG_COUNT, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %69

50:                                               ; preds = %44
  %51 = load i32, i32* %8, align 4
  %52 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %53 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %56 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = mul nsw i32 %54, %57
  %59 = icmp sgt i32 %51, %58
  br i1 %59, label %60, label %68

60:                                               ; preds = %50
  %61 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %62 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %65 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = mul nsw i32 %63, %66
  store i32 %67, i32* %8, align 4
  br label %68

68:                                               ; preds = %60, %50
  br label %69

69:                                               ; preds = %68, %44
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* @FIFO_SIZE, align 4
  %72 = icmp sgt i32 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %69
  %74 = load i32, i32* @FIFO_SIZE, align 4
  store i32 %74, i32* %8, align 4
  br label %75

75:                                               ; preds = %73, %69
  %76 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %77 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %8, align 4
  %83 = call i32 @insw(i64 %78, i32 %81, i32 %82)
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %8, align 4
  %88 = call i32 @munge_sample_array(i32 %86, i32 %87)
  %89 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %8, align 4
  %94 = sext i32 %93 to i64
  %95 = mul i64 %94, 2
  %96 = trunc i64 %95 to i32
  %97 = call i32 @cfc_write_array_to_buffer(%struct.comedi_subdevice* %89, i32 %92, i32 %96)
  %98 = load i32, i32* %8, align 4
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = add nsw i32 %101, %98
  store i32 %102, i32* %100, align 4
  %103 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %104 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @TRIG_COUNT, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %130

108:                                              ; preds = %75
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %113 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %116 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = mul nsw i32 %114, %117
  %119 = icmp sge i32 %111, %118
  br i1 %119, label %120, label %129

120:                                              ; preds = %108
  %121 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %122 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %123 = call i32 @das16m1_cancel(%struct.comedi_device* %121, %struct.comedi_subdevice* %122)
  %124 = load i32, i32* @COMEDI_CB_EOA, align 4
  %125 = load %struct.comedi_async*, %struct.comedi_async** %6, align 8
  %126 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = or i32 %127, %124
  store i32 %128, i32* %126, align 8
  br label %129

129:                                              ; preds = %120, %108
  br label %130

130:                                              ; preds = %129, %75
  %131 = load i32, i32* %4, align 4
  %132 = load i32, i32* @OVRUN, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %148

135:                                              ; preds = %130
  %136 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %137 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %138 = call i32 @das16m1_cancel(%struct.comedi_device* %136, %struct.comedi_subdevice* %137)
  %139 = load i32, i32* @COMEDI_CB_EOA, align 4
  %140 = load i32, i32* @COMEDI_CB_ERROR, align 4
  %141 = or i32 %139, %140
  %142 = load %struct.comedi_async*, %struct.comedi_async** %6, align 8
  %143 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = or i32 %144, %141
  store i32 %145, i32* %143, align 8
  %146 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %147 = call i32 @comedi_error(%struct.comedi_device* %146, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %148

148:                                              ; preds = %135, %130
  %149 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %150 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %151 = call i32 @comedi_event(%struct.comedi_device* %149, %struct.comedi_subdevice* %150)
  ret void
}

declare dso_local i32 @i8254_read(i64, i32, i32) #1

declare dso_local i32 @insw(i64, i32, i32) #1

declare dso_local i32 @munge_sample_array(i32, i32) #1

declare dso_local i32 @cfc_write_array_to_buffer(%struct.comedi_subdevice*, i32, i32) #1

declare dso_local i32 @das16m1_cancel(%struct.comedi_device*, %struct.comedi_subdevice*) #1

declare dso_local i32 @comedi_error(%struct.comedi_device*, i8*) #1

declare dso_local i32 @comedi_event(%struct.comedi_device*, %struct.comedi_subdevice*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
