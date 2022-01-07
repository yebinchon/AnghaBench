; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_vpfe_capture.c_vpfe_stop_ccdc_capture.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_vpfe_capture.c_vpfe_stop_ccdc_capture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (i32)*, i32 (i32)* }
%struct.vpfe_device = type { i64 }

@ccdc_dev = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vpfe_device*)* @vpfe_stop_ccdc_capture to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vpfe_stop_ccdc_capture(%struct.vpfe_device* %0) #0 {
  %2 = alloca %struct.vpfe_device*, align 8
  store %struct.vpfe_device* %0, %struct.vpfe_device** %2, align 8
  %3 = load %struct.vpfe_device*, %struct.vpfe_device** %2, align 8
  %4 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %3, i32 0, i32 0
  store i64 0, i64* %4, align 8
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ccdc_dev, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %8 = load i32 (i32)*, i32 (i32)** %7, align 8
  %9 = call i32 %8(i32 0)
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ccdc_dev, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32 (i32)*, i32 (i32)** %12, align 8
  %14 = icmp ne i32 (i32)* %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ccdc_dev, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32 (i32)*, i32 (i32)** %18, align 8
  %20 = call i32 %19(i32 0)
  br label %21

21:                                               ; preds = %15, %1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
