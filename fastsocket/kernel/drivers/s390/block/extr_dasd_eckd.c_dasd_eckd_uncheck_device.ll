; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_eckd.c_dasd_eckd_uncheck_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_eckd.c_dasd_eckd_uncheck_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_device = type { i64 }
%struct.dasd_eckd_private = type { i32*, i64, i32*, i32*, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dasd_device*)* @dasd_eckd_uncheck_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dasd_eckd_uncheck_device(%struct.dasd_device* %0) #0 {
  %2 = alloca %struct.dasd_device*, align 8
  %3 = alloca %struct.dasd_eckd_private*, align 8
  store %struct.dasd_device* %0, %struct.dasd_device** %2, align 8
  %4 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %5 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = inttoptr i64 %6 to %struct.dasd_eckd_private*
  store %struct.dasd_eckd_private* %7, %struct.dasd_eckd_private** %3, align 8
  %8 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %9 = call i32 @dasd_alias_disconnect_device_from_lcu(%struct.dasd_device* %8)
  %10 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %3, align 8
  %11 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %10, i32 0, i32 5
  store i32* null, i32** %11, align 8
  %12 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %3, align 8
  %13 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %12, i32 0, i32 4
  store i32* null, i32** %13, align 8
  %14 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %3, align 8
  %15 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %14, i32 0, i32 3
  store i32* null, i32** %15, align 8
  %16 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %3, align 8
  %17 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %16, i32 0, i32 2
  store i32* null, i32** %17, align 8
  %18 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %3, align 8
  %19 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %18, i32 0, i32 1
  store i64 0, i64* %19, align 8
  %20 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %3, align 8
  %21 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = call i32 @kfree(i32* %22)
  %24 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %3, align 8
  %25 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %24, i32 0, i32 0
  store i32* null, i32** %25, align 8
  ret void
}

declare dso_local i32 @dasd_alias_disconnect_device_from_lcu(%struct.dasd_device*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
