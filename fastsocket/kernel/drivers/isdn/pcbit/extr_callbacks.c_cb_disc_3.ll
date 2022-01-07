; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/pcbit/extr_callbacks.c_cb_disc_3.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/pcbit/extr_callbacks.c_cb_disc_3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcbit_dev = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_5__*)* }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.pcbit_chan = type { i32 }
%struct.callb_data = type { i32 }

@ISDN_STAT_BHUP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cb_disc_3(%struct.pcbit_dev* %0, %struct.pcbit_chan* %1, %struct.callb_data* %2) #0 {
  %4 = alloca %struct.pcbit_dev*, align 8
  %5 = alloca %struct.pcbit_chan*, align 8
  %6 = alloca %struct.callb_data*, align 8
  %7 = alloca %struct.TYPE_5__, align 4
  store %struct.pcbit_dev* %0, %struct.pcbit_dev** %4, align 8
  store %struct.pcbit_chan* %1, %struct.pcbit_chan** %5, align 8
  store %struct.callb_data* %2, %struct.callb_data** %6, align 8
  %8 = load i32, i32* @ISDN_STAT_BHUP, align 4
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 2
  store i32 %8, i32* %9, align 4
  %10 = load %struct.pcbit_dev*, %struct.pcbit_dev** %4, align 8
  %11 = getelementptr inbounds %struct.pcbit_dev, %struct.pcbit_dev* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  store i32 %12, i32* %13, align 4
  %14 = load %struct.pcbit_chan*, %struct.pcbit_chan** %5, align 8
  %15 = getelementptr inbounds %struct.pcbit_chan, %struct.pcbit_chan* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  store i32 %16, i32* %17, align 4
  %18 = load %struct.pcbit_dev*, %struct.pcbit_dev** %4, align 8
  %19 = getelementptr inbounds %struct.pcbit_dev, %struct.pcbit_dev* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32 (%struct.TYPE_5__*)*, i32 (%struct.TYPE_5__*)** %21, align 8
  %23 = call i32 %22(%struct.TYPE_5__* %7)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
