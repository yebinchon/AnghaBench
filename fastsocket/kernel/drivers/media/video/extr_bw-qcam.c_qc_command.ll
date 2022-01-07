; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_bw-qcam.c_qc_command.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_bw-qcam.c_qc_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qcam_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qcam_device*, i32)* @qc_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qc_command(%struct.qcam_device* %0, i32 %1) #0 {
  %3 = alloca %struct.qcam_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.qcam_device* %0, %struct.qcam_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.qcam_device*, %struct.qcam_device** %3, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @write_lpdata(%struct.qcam_device* %8, i32 %9)
  %11 = load %struct.qcam_device*, %struct.qcam_device** %3, align 8
  %12 = call i32 @write_lpcontrol(%struct.qcam_device* %11, i32 6)
  %13 = load %struct.qcam_device*, %struct.qcam_device** %3, align 8
  %14 = call i32 @qc_waithand(%struct.qcam_device* %13, i32 1)
  store i32 %14, i32* %5, align 4
  %15 = load %struct.qcam_device*, %struct.qcam_device** %3, align 8
  %16 = call i32 @write_lpcontrol(%struct.qcam_device* %15, i32 14)
  %17 = load %struct.qcam_device*, %struct.qcam_device** %3, align 8
  %18 = call i32 @qc_waithand(%struct.qcam_device* %17, i32 0)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %5, align 4
  %20 = and i32 %19, 240
  %21 = load i32, i32* %6, align 4
  %22 = and i32 %21, 240
  %23 = ashr i32 %22, 4
  %24 = or i32 %20, %23
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  ret i32 %25
}

declare dso_local i32 @write_lpdata(%struct.qcam_device*, i32) #1

declare dso_local i32 @write_lpcontrol(%struct.qcam_device*, i32) #1

declare dso_local i32 @qc_waithand(%struct.qcam_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
