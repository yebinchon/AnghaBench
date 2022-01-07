; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/pcbit/extr_layer2.c_pcbit_firmware_bug.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/pcbit/extr_layer2.c_pcbit_firmware_bug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcbit_dev = type { %struct.pcbit_chan*, %struct.pcbit_chan* }
%struct.pcbit_chan = type { i64 }

@ST_ACTIVE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pcbit_dev*)* @pcbit_firmware_bug to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcbit_firmware_bug(%struct.pcbit_dev* %0) #0 {
  %2 = alloca %struct.pcbit_dev*, align 8
  %3 = alloca %struct.pcbit_chan*, align 8
  store %struct.pcbit_dev* %0, %struct.pcbit_dev** %2, align 8
  %4 = load %struct.pcbit_dev*, %struct.pcbit_dev** %2, align 8
  %5 = getelementptr inbounds %struct.pcbit_dev, %struct.pcbit_dev* %4, i32 0, i32 1
  %6 = load %struct.pcbit_chan*, %struct.pcbit_chan** %5, align 8
  store %struct.pcbit_chan* %6, %struct.pcbit_chan** %3, align 8
  %7 = load %struct.pcbit_chan*, %struct.pcbit_chan** %3, align 8
  %8 = getelementptr inbounds %struct.pcbit_chan, %struct.pcbit_chan* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @ST_ACTIVE, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load %struct.pcbit_dev*, %struct.pcbit_dev** %2, align 8
  %14 = load %struct.pcbit_chan*, %struct.pcbit_chan** %3, align 8
  %15 = call i32 @pcbit_fake_conf(%struct.pcbit_dev* %13, %struct.pcbit_chan* %14)
  br label %16

16:                                               ; preds = %12, %1
  %17 = load %struct.pcbit_dev*, %struct.pcbit_dev** %2, align 8
  %18 = getelementptr inbounds %struct.pcbit_dev, %struct.pcbit_dev* %17, i32 0, i32 0
  %19 = load %struct.pcbit_chan*, %struct.pcbit_chan** %18, align 8
  store %struct.pcbit_chan* %19, %struct.pcbit_chan** %3, align 8
  %20 = load %struct.pcbit_chan*, %struct.pcbit_chan** %3, align 8
  %21 = getelementptr inbounds %struct.pcbit_chan, %struct.pcbit_chan* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @ST_ACTIVE, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %16
  %26 = load %struct.pcbit_dev*, %struct.pcbit_dev** %2, align 8
  %27 = load %struct.pcbit_chan*, %struct.pcbit_chan** %3, align 8
  %28 = call i32 @pcbit_fake_conf(%struct.pcbit_dev* %26, %struct.pcbit_chan* %27)
  br label %29

29:                                               ; preds = %25, %16
  ret void
}

declare dso_local i32 @pcbit_fake_conf(%struct.pcbit_dev*, %struct.pcbit_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
