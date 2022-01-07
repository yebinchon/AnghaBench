; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_c-qcam.c_qc_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_c-qcam.c_qc_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qcam_device = type { i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qcam_device*)* @qc_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qc_setup(%struct.qcam_device* %0) #0 {
  %2 = alloca %struct.qcam_device*, align 8
  store %struct.qcam_device* %0, %struct.qcam_device** %2, align 8
  %3 = load %struct.qcam_device*, %struct.qcam_device** %2, align 8
  %4 = call i32 @qc_reset(%struct.qcam_device* %3)
  %5 = load %struct.qcam_device*, %struct.qcam_device** %2, align 8
  %6 = load %struct.qcam_device*, %struct.qcam_device** %2, align 8
  %7 = getelementptr inbounds %struct.qcam_device, %struct.qcam_device* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @qcam_set(%struct.qcam_device* %5, i32 11, i32 %8)
  %10 = load %struct.qcam_device*, %struct.qcam_device** %2, align 8
  %11 = load %struct.qcam_device*, %struct.qcam_device** %2, align 8
  %12 = getelementptr inbounds %struct.qcam_device, %struct.qcam_device* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @qcam_set(%struct.qcam_device* %10, i32 17, i32 %13)
  %15 = load %struct.qcam_device*, %struct.qcam_device** %2, align 8
  %16 = load %struct.qcam_device*, %struct.qcam_device** %2, align 8
  %17 = getelementptr inbounds %struct.qcam_device, %struct.qcam_device* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = sdiv i32 %18, 2
  %20 = call i32 @qcam_set(%struct.qcam_device* %15, i32 19, i32 %19)
  %21 = load %struct.qcam_device*, %struct.qcam_device** %2, align 8
  %22 = load %struct.qcam_device*, %struct.qcam_device** %2, align 8
  %23 = getelementptr inbounds %struct.qcam_device, %struct.qcam_device* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @qcam_set(%struct.qcam_device* %21, i32 13, i32 %24)
  %26 = load %struct.qcam_device*, %struct.qcam_device** %2, align 8
  %27 = load %struct.qcam_device*, %struct.qcam_device** %2, align 8
  %28 = getelementptr inbounds %struct.qcam_device, %struct.qcam_device* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @qcam_set(%struct.qcam_device* %26, i32 15, i32 %29)
  %31 = load %struct.qcam_device*, %struct.qcam_device** %2, align 8
  %32 = load %struct.qcam_device*, %struct.qcam_device** %2, align 8
  %33 = getelementptr inbounds %struct.qcam_device, %struct.qcam_device* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @qcam_set(%struct.qcam_device* %31, i32 25, i32 %34)
  %36 = load %struct.qcam_device*, %struct.qcam_device** %2, align 8
  %37 = load %struct.qcam_device*, %struct.qcam_device** %2, align 8
  %38 = getelementptr inbounds %struct.qcam_device, %struct.qcam_device* %37, i32 0, i32 6
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @qcam_set(%struct.qcam_device* %36, i32 31, i32 %39)
  %41 = load %struct.qcam_device*, %struct.qcam_device** %2, align 8
  %42 = call i32 @qcam_set(%struct.qcam_device* %41, i32 45, i32 2)
  ret void
}

declare dso_local i32 @qc_reset(%struct.qcam_device*) #1

declare dso_local i32 @qcam_set(%struct.qcam_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
