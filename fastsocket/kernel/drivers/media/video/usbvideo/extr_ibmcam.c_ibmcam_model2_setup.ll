; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvideo/extr_ibmcam.c_ibmcam_model2_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvideo/extr_ibmcam.c_ibmcam_model2_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvd = type { i32 }

@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uvd*)* @ibmcam_model2_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ibmcam_model2_setup(%struct.uvd* %0) #0 {
  %2 = alloca %struct.uvd*, align 8
  store %struct.uvd* %0, %struct.uvd** %2, align 8
  %3 = load %struct.uvd*, %struct.uvd** %2, align 8
  %4 = call i32 @ibmcam_veio(%struct.uvd* %3, i32 0, i32 0, i32 256)
  %5 = load %struct.uvd*, %struct.uvd** %2, align 8
  %6 = call i32 @ibmcam_veio(%struct.uvd* %5, i32 1, i32 0, i32 278)
  %7 = load %struct.uvd*, %struct.uvd** %2, align 8
  %8 = call i32 @ibmcam_veio(%struct.uvd* %7, i32 0, i32 96, i32 278)
  %9 = load %struct.uvd*, %struct.uvd** %2, align 8
  %10 = call i32 @ibmcam_veio(%struct.uvd* %9, i32 0, i32 2, i32 274)
  %11 = load %struct.uvd*, %struct.uvd** %2, align 8
  %12 = call i32 @ibmcam_veio(%struct.uvd* %11, i32 0, i32 188, i32 300)
  %13 = load %struct.uvd*, %struct.uvd** %2, align 8
  %14 = call i32 @ibmcam_veio(%struct.uvd* %13, i32 0, i32 8, i32 299)
  %15 = load %struct.uvd*, %struct.uvd** %2, align 8
  %16 = call i32 @ibmcam_veio(%struct.uvd* %15, i32 0, i32 0, i32 264)
  %17 = load %struct.uvd*, %struct.uvd** %2, align 8
  %18 = call i32 @ibmcam_veio(%struct.uvd* %17, i32 0, i32 1, i32 307)
  %19 = load %struct.uvd*, %struct.uvd** %2, align 8
  %20 = call i32 @ibmcam_veio(%struct.uvd* %19, i32 0, i32 1, i32 258)
  %21 = load %struct.uvd*, %struct.uvd** %2, align 8
  %22 = getelementptr inbounds %struct.uvd, %struct.uvd* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %84 [
    i32 131, label %24
    i32 130, label %39
    i32 129, label %54
    i32 128, label %69
  ]

24:                                               ; preds = %1
  %25 = load %struct.uvd*, %struct.uvd** %2, align 8
  %26 = call i32 @ibmcam_veio(%struct.uvd* %25, i32 0, i32 44, i32 259)
  %27 = load %struct.uvd*, %struct.uvd** %2, align 8
  %28 = call i32 @ibmcam_veio(%struct.uvd* %27, i32 0, i32 0, i32 260)
  %29 = load %struct.uvd*, %struct.uvd** %2, align 8
  %30 = call i32 @ibmcam_veio(%struct.uvd* %29, i32 0, i32 36, i32 261)
  %31 = load %struct.uvd*, %struct.uvd** %2, align 8
  %32 = call i32 @ibmcam_veio(%struct.uvd* %31, i32 0, i32 185, i32 266)
  %33 = load %struct.uvd*, %struct.uvd** %2, align 8
  %34 = call i32 @ibmcam_veio(%struct.uvd* %33, i32 0, i32 56, i32 281)
  %35 = load %struct.uvd*, %struct.uvd** %2, align 8
  %36 = call i32 @ibmcam_veio(%struct.uvd* %35, i32 0, i32 3, i32 262)
  %37 = load %struct.uvd*, %struct.uvd** %2, align 8
  %38 = call i32 @ibmcam_veio(%struct.uvd* %37, i32 0, i32 144, i32 263)
  br label %84

39:                                               ; preds = %1
  %40 = load %struct.uvd*, %struct.uvd** %2, align 8
  %41 = call i32 @ibmcam_veio(%struct.uvd* %40, i32 0, i32 40, i32 259)
  %42 = load %struct.uvd*, %struct.uvd** %2, align 8
  %43 = call i32 @ibmcam_veio(%struct.uvd* %42, i32 0, i32 0, i32 260)
  %44 = load %struct.uvd*, %struct.uvd** %2, align 8
  %45 = call i32 @ibmcam_veio(%struct.uvd* %44, i32 0, i32 30, i32 261)
  %46 = load %struct.uvd*, %struct.uvd** %2, align 8
  %47 = call i32 @ibmcam_veio(%struct.uvd* %46, i32 0, i32 57, i32 266)
  %48 = load %struct.uvd*, %struct.uvd** %2, align 8
  %49 = call i32 @ibmcam_veio(%struct.uvd* %48, i32 0, i32 112, i32 281)
  %50 = load %struct.uvd*, %struct.uvd** %2, align 8
  %51 = call i32 @ibmcam_veio(%struct.uvd* %50, i32 0, i32 3, i32 262)
  %52 = load %struct.uvd*, %struct.uvd** %2, align 8
  %53 = call i32 @ibmcam_veio(%struct.uvd* %52, i32 0, i32 152, i32 263)
  br label %84

54:                                               ; preds = %1
  %55 = load %struct.uvd*, %struct.uvd** %2, align 8
  %56 = call i32 @ibmcam_veio(%struct.uvd* %55, i32 0, i32 44, i32 259)
  %57 = load %struct.uvd*, %struct.uvd** %2, align 8
  %58 = call i32 @ibmcam_veio(%struct.uvd* %57, i32 0, i32 0, i32 260)
  %59 = load %struct.uvd*, %struct.uvd** %2, align 8
  %60 = call i32 @ibmcam_veio(%struct.uvd* %59, i32 0, i32 30, i32 261)
  %61 = load %struct.uvd*, %struct.uvd** %2, align 8
  %62 = call i32 @ibmcam_veio(%struct.uvd* %61, i32 0, i32 57, i32 266)
  %63 = load %struct.uvd*, %struct.uvd** %2, align 8
  %64 = call i32 @ibmcam_veio(%struct.uvd* %63, i32 0, i32 112, i32 281)
  %65 = load %struct.uvd*, %struct.uvd** %2, align 8
  %66 = call i32 @ibmcam_veio(%struct.uvd* %65, i32 0, i32 3, i32 262)
  %67 = load %struct.uvd*, %struct.uvd** %2, align 8
  %68 = call i32 @ibmcam_veio(%struct.uvd* %67, i32 0, i32 218, i32 263)
  br label %84

69:                                               ; preds = %1
  %70 = load %struct.uvd*, %struct.uvd** %2, align 8
  %71 = call i32 @ibmcam_veio(%struct.uvd* %70, i32 0, i32 44, i32 259)
  %72 = load %struct.uvd*, %struct.uvd** %2, align 8
  %73 = call i32 @ibmcam_veio(%struct.uvd* %72, i32 0, i32 0, i32 260)
  %74 = load %struct.uvd*, %struct.uvd** %2, align 8
  %75 = call i32 @ibmcam_veio(%struct.uvd* %74, i32 0, i32 36, i32 261)
  %76 = load %struct.uvd*, %struct.uvd** %2, align 8
  %77 = call i32 @ibmcam_veio(%struct.uvd* %76, i32 0, i32 57, i32 266)
  %78 = load %struct.uvd*, %struct.uvd** %2, align 8
  %79 = call i32 @ibmcam_veio(%struct.uvd* %78, i32 0, i32 112, i32 281)
  %80 = load %struct.uvd*, %struct.uvd** %2, align 8
  %81 = call i32 @ibmcam_veio(%struct.uvd* %80, i32 0, i32 3, i32 262)
  %82 = load %struct.uvd*, %struct.uvd** %2, align 8
  %83 = call i32 @ibmcam_veio(%struct.uvd* %82, i32 0, i32 254, i32 263)
  br label %84

84:                                               ; preds = %1, %69, %54, %39, %24
  %85 = load %struct.uvd*, %struct.uvd** %2, align 8
  %86 = call i64 @CAMERA_IS_OPERATIONAL(%struct.uvd* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %84
  br label %92

89:                                               ; preds = %84
  %90 = load i32, i32* @EFAULT, align 4
  %91 = sub nsw i32 0, %90
  br label %92

92:                                               ; preds = %89, %88
  %93 = phi i32 [ 0, %88 ], [ %91, %89 ]
  ret i32 %93
}

declare dso_local i32 @ibmcam_veio(%struct.uvd*, i32, i32, i32) #1

declare dso_local i64 @CAMERA_IS_OPERATIONAL(%struct.uvd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
