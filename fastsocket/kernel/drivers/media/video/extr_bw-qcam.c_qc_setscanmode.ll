; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_bw-qcam.c_qc_setscanmode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_bw-qcam.c_qc_setscanmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qcam_device = type { i32, i32, i32, i32, i32 }

@QC_MODE_MASK = common dso_local global i32 0, align 4
@QC_PARAM_CHANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qcam_device*)* @qc_setscanmode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qc_setscanmode(%struct.qcam_device* %0) #0 {
  %2 = alloca %struct.qcam_device*, align 8
  %3 = alloca i32, align 4
  store %struct.qcam_device* %0, %struct.qcam_device** %2, align 8
  %4 = load %struct.qcam_device*, %struct.qcam_device** %2, align 8
  %5 = getelementptr inbounds %struct.qcam_device, %struct.qcam_device* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  store i32 %6, i32* %3, align 4
  %7 = load %struct.qcam_device*, %struct.qcam_device** %2, align 8
  %8 = getelementptr inbounds %struct.qcam_device, %struct.qcam_device* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %19 [
    i32 1, label %10
    i32 2, label %13
    i32 4, label %16
  ]

10:                                               ; preds = %1
  %11 = load %struct.qcam_device*, %struct.qcam_device** %2, align 8
  %12 = getelementptr inbounds %struct.qcam_device, %struct.qcam_device* %11, i32 0, i32 0
  store i32 0, i32* %12, align 4
  br label %19

13:                                               ; preds = %1
  %14 = load %struct.qcam_device*, %struct.qcam_device** %2, align 8
  %15 = getelementptr inbounds %struct.qcam_device, %struct.qcam_device* %14, i32 0, i32 0
  store i32 4, i32* %15, align 4
  br label %19

16:                                               ; preds = %1
  %17 = load %struct.qcam_device*, %struct.qcam_device** %2, align 8
  %18 = getelementptr inbounds %struct.qcam_device, %struct.qcam_device* %17, i32 0, i32 0
  store i32 8, i32* %18, align 4
  br label %19

19:                                               ; preds = %1, %16, %13, %10
  %20 = load %struct.qcam_device*, %struct.qcam_device** %2, align 8
  %21 = getelementptr inbounds %struct.qcam_device, %struct.qcam_device* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %29 [
    i32 4, label %23
    i32 6, label %24
  ]

23:                                               ; preds = %19
  br label %29

24:                                               ; preds = %19
  %25 = load %struct.qcam_device*, %struct.qcam_device** %2, align 8
  %26 = getelementptr inbounds %struct.qcam_device, %struct.qcam_device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, 2
  store i32 %28, i32* %26, align 4
  br label %29

29:                                               ; preds = %19, %24, %23
  %30 = load %struct.qcam_device*, %struct.qcam_device** %2, align 8
  %31 = getelementptr inbounds %struct.qcam_device, %struct.qcam_device* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @QC_MODE_MASK, align 4
  %34 = and i32 %32, %33
  switch i32 %34, label %41 [
    i32 130, label %35
    i32 129, label %40
    i32 128, label %40
  ]

35:                                               ; preds = %29
  %36 = load %struct.qcam_device*, %struct.qcam_device** %2, align 8
  %37 = getelementptr inbounds %struct.qcam_device, %struct.qcam_device* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %37, align 4
  br label %41

40:                                               ; preds = %29, %29
  br label %41

41:                                               ; preds = %29, %40, %35
  %42 = load %struct.qcam_device*, %struct.qcam_device** %2, align 8
  %43 = getelementptr inbounds %struct.qcam_device, %struct.qcam_device* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %3, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %41
  %48 = load i32, i32* @QC_PARAM_CHANGE, align 4
  %49 = load %struct.qcam_device*, %struct.qcam_device** %2, align 8
  %50 = getelementptr inbounds %struct.qcam_device, %struct.qcam_device* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %51, %48
  store i32 %52, i32* %50, align 4
  br label %53

53:                                               ; preds = %47, %41
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
