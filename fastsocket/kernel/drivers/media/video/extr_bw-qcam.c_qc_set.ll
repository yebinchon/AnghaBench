; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_bw-qcam.c_qc_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_bw-qcam.c_qc_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qcam_device = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@QC_MODE_MASK = common dso_local global i32 0, align 4
@QC_UNIDIR = common dso_local global i32 0, align 4
@QC_BIDIR = common dso_local global i32 0, align 4
@QC_PARAM_CHANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qcam_device*)* @qc_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qc_set(%struct.qcam_device* %0) #0 {
  %2 = alloca %struct.qcam_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.qcam_device* %0, %struct.qcam_device** %2, align 8
  %5 = load %struct.qcam_device*, %struct.qcam_device** %2, align 8
  %6 = call i32 @qc_reset(%struct.qcam_device* %5)
  %7 = load %struct.qcam_device*, %struct.qcam_device** %2, align 8
  %8 = call i32 @qc_command(%struct.qcam_device* %7, i32 11)
  %9 = load %struct.qcam_device*, %struct.qcam_device** %2, align 8
  %10 = load %struct.qcam_device*, %struct.qcam_device** %2, align 8
  %11 = getelementptr inbounds %struct.qcam_device, %struct.qcam_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @qc_command(%struct.qcam_device* %9, i32 %12)
  %14 = load %struct.qcam_device*, %struct.qcam_device** %2, align 8
  %15 = getelementptr inbounds %struct.qcam_device, %struct.qcam_device* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.qcam_device*, %struct.qcam_device** %2, align 8
  %18 = getelementptr inbounds %struct.qcam_device, %struct.qcam_device* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = sdiv i32 %16, %19
  store i32 %20, i32* %3, align 4
  %21 = load %struct.qcam_device*, %struct.qcam_device** %2, align 8
  %22 = call i32 @qc_command(%struct.qcam_device* %21, i32 17)
  %23 = load %struct.qcam_device*, %struct.qcam_device** %2, align 8
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @qc_command(%struct.qcam_device* %23, i32 %24)
  %26 = load %struct.qcam_device*, %struct.qcam_device** %2, align 8
  %27 = getelementptr inbounds %struct.qcam_device, %struct.qcam_device* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @QC_MODE_MASK, align 4
  %30 = and i32 %28, %29
  %31 = load i32, i32* @QC_UNIDIR, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %46

33:                                               ; preds = %1
  %34 = load %struct.qcam_device*, %struct.qcam_device** %2, align 8
  %35 = getelementptr inbounds %struct.qcam_device, %struct.qcam_device* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, 6
  br i1 %37, label %38, label %46

38:                                               ; preds = %33
  %39 = load %struct.qcam_device*, %struct.qcam_device** %2, align 8
  %40 = getelementptr inbounds %struct.qcam_device, %struct.qcam_device* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %3, align 4
  %42 = load %struct.qcam_device*, %struct.qcam_device** %2, align 8
  %43 = getelementptr inbounds %struct.qcam_device, %struct.qcam_device* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = mul nsw i32 %44, 4
  store i32 %45, i32* %4, align 4
  br label %67

46:                                               ; preds = %33, %1
  %47 = load %struct.qcam_device*, %struct.qcam_device** %2, align 8
  %48 = getelementptr inbounds %struct.qcam_device, %struct.qcam_device* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.qcam_device*, %struct.qcam_device** %2, align 8
  %51 = getelementptr inbounds %struct.qcam_device, %struct.qcam_device* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 4
  %53 = mul nsw i32 %49, %52
  store i32 %53, i32* %3, align 4
  %54 = load %struct.qcam_device*, %struct.qcam_device** %2, align 8
  %55 = getelementptr inbounds %struct.qcam_device, %struct.qcam_device* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @QC_MODE_MASK, align 4
  %58 = and i32 %56, %57
  %59 = load i32, i32* @QC_BIDIR, align 4
  %60 = icmp eq i32 %58, %59
  %61 = zext i1 %60 to i64
  %62 = select i1 %60, i32 24, i32 8
  %63 = load %struct.qcam_device*, %struct.qcam_device** %2, align 8
  %64 = getelementptr inbounds %struct.qcam_device, %struct.qcam_device* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = mul nsw i32 %62, %65
  store i32 %66, i32* %4, align 4
  br label %67

67:                                               ; preds = %46, %38
  %68 = load i32, i32* %3, align 4
  %69 = load i32, i32* %4, align 4
  %70 = call i32 @DIV_ROUND_UP(i32 %68, i32 %69)
  store i32 %70, i32* %3, align 4
  %71 = load %struct.qcam_device*, %struct.qcam_device** %2, align 8
  %72 = call i32 @qc_command(%struct.qcam_device* %71, i32 19)
  %73 = load %struct.qcam_device*, %struct.qcam_device** %2, align 8
  %74 = load i32, i32* %3, align 4
  %75 = call i32 @qc_command(%struct.qcam_device* %73, i32 %74)
  %76 = load %struct.qcam_device*, %struct.qcam_device** %2, align 8
  %77 = call i32 @qc_command(%struct.qcam_device* %76, i32 13)
  %78 = load %struct.qcam_device*, %struct.qcam_device** %2, align 8
  %79 = load %struct.qcam_device*, %struct.qcam_device** %2, align 8
  %80 = getelementptr inbounds %struct.qcam_device, %struct.qcam_device* %79, i32 0, i32 6
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @qc_command(%struct.qcam_device* %78, i32 %81)
  %83 = load %struct.qcam_device*, %struct.qcam_device** %2, align 8
  %84 = call i32 @qc_command(%struct.qcam_device* %83, i32 15)
  %85 = load %struct.qcam_device*, %struct.qcam_device** %2, align 8
  %86 = load %struct.qcam_device*, %struct.qcam_device** %2, align 8
  %87 = getelementptr inbounds %struct.qcam_device, %struct.qcam_device* %86, i32 0, i32 7
  %88 = load i32, i32* %87, align 4
  %89 = sdiv i32 %88, 2
  %90 = call i32 @qc_command(%struct.qcam_device* %85, i32 %89)
  %91 = load %struct.qcam_device*, %struct.qcam_device** %2, align 8
  %92 = call i32 @qc_command(%struct.qcam_device* %91, i32 25)
  %93 = load %struct.qcam_device*, %struct.qcam_device** %2, align 8
  %94 = load %struct.qcam_device*, %struct.qcam_device** %2, align 8
  %95 = getelementptr inbounds %struct.qcam_device, %struct.qcam_device* %94, i32 0, i32 8
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @qc_command(%struct.qcam_device* %93, i32 %96)
  %98 = load %struct.qcam_device*, %struct.qcam_device** %2, align 8
  %99 = call i32 @qc_command(%struct.qcam_device* %98, i32 31)
  %100 = load %struct.qcam_device*, %struct.qcam_device** %2, align 8
  %101 = load %struct.qcam_device*, %struct.qcam_device** %2, align 8
  %102 = getelementptr inbounds %struct.qcam_device, %struct.qcam_device* %101, i32 0, i32 9
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @qc_command(%struct.qcam_device* %100, i32 %103)
  %105 = load i32, i32* @QC_PARAM_CHANGE, align 4
  %106 = xor i32 %105, -1
  %107 = load %struct.qcam_device*, %struct.qcam_device** %2, align 8
  %108 = getelementptr inbounds %struct.qcam_device, %struct.qcam_device* %107, i32 0, i32 10
  %109 = load i32, i32* %108, align 4
  %110 = and i32 %109, %106
  store i32 %110, i32* %108, align 4
  ret void
}

declare dso_local i32 @qc_reset(%struct.qcam_device*) #1

declare dso_local i32 @qc_command(%struct.qcam_device*, i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
