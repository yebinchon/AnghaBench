; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/et61x251/extr_et61x251.h_et61x251_attach_sensor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/et61x251/extr_et61x251.h_et61x251_attach_sensor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.et61x251_device = type { i32 }
%struct.et61x251_sensor = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @et61x251_attach_sensor(%struct.et61x251_device* %0, %struct.et61x251_sensor* %1) #0 {
  %3 = alloca %struct.et61x251_device*, align 8
  %4 = alloca %struct.et61x251_sensor*, align 8
  store %struct.et61x251_device* %0, %struct.et61x251_device** %3, align 8
  store %struct.et61x251_sensor* %1, %struct.et61x251_sensor** %4, align 8
  %5 = load %struct.et61x251_device*, %struct.et61x251_device** %3, align 8
  %6 = getelementptr inbounds %struct.et61x251_device, %struct.et61x251_device* %5, i32 0, i32 0
  %7 = load %struct.et61x251_sensor*, %struct.et61x251_sensor** %4, align 8
  %8 = call i32 @memcpy(i32* %6, %struct.et61x251_sensor* %7, i32 4)
  ret void
}

declare dso_local i32 @memcpy(i32*, %struct.et61x251_sensor*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
