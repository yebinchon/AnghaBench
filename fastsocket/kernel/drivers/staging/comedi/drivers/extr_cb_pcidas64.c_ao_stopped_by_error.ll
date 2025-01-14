; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_cb_pcidas64.c_ao_stopped_by_error.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_cb_pcidas64.c_ao_stopped_by_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }
%struct.comedi_cmd = type { i64 }
%struct.TYPE_2__ = type { i64 }

@TRIG_NONE = common dso_local global i64 0, align 8
@TRIG_COUNT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_cmd*)* @ao_stopped_by_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ao_stopped_by_error(%struct.comedi_device* %0, %struct.comedi_cmd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca %struct.comedi_cmd*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store %struct.comedi_cmd* %1, %struct.comedi_cmd** %5, align 8
  %6 = load %struct.comedi_cmd*, %struct.comedi_cmd** %5, align 8
  %7 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @TRIG_NONE, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %32

12:                                               ; preds = %2
  %13 = load %struct.comedi_cmd*, %struct.comedi_cmd** %5, align 8
  %14 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @TRIG_COUNT, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %31

18:                                               ; preds = %12
  %19 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %20 = call %struct.TYPE_2__* @priv(%struct.comedi_device* %19)
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  store i32 1, i32* %3, align 4
  br label %32

25:                                               ; preds = %18
  %26 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %27 = call i64 @last_ao_dma_load_completed(%struct.comedi_device* %26)
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  store i32 1, i32* %3, align 4
  br label %32

30:                                               ; preds = %25
  br label %31

31:                                               ; preds = %30, %12
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %31, %29, %24, %11
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local %struct.TYPE_2__* @priv(%struct.comedi_device*) #1

declare dso_local i64 @last_ao_dma_load_completed(%struct.comedi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
