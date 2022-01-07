; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvideo/extr_ibmcam.c_ibmcam_set_hue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvideo/extr_ibmcam.c_ibmcam_set_hue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvd = type { i32, %struct.TYPE_5__, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i16 }
%struct.TYPE_6__ = type { i32 }

@mod2_hue = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uvd*)* @ibmcam_set_hue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ibmcam_set_hue(%struct.uvd* %0) #0 {
  %2 = alloca %struct.uvd*, align 8
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  store %struct.uvd* %0, %struct.uvd** %2, align 8
  %8 = load %struct.uvd*, %struct.uvd** %2, align 8
  %9 = call %struct.TYPE_6__* @IBMCAM_T(%struct.uvd* %8)
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %82 [
    i32 133, label %12
    i32 132, label %37
    i32 131, label %38
  ]

12:                                               ; preds = %1
  %13 = load %struct.uvd*, %struct.uvd** %2, align 8
  %14 = getelementptr inbounds %struct.uvd, %struct.uvd* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = ashr i32 %16, 9
  %18 = trunc i32 %17 to i16
  store i16 %18, i16* %3, align 2
  %19 = load %struct.uvd*, %struct.uvd** %2, align 8
  %20 = getelementptr inbounds %struct.uvd, %struct.uvd* %19, i32 0, i32 4
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i16, i16* %21, align 4
  %23 = zext i16 %22 to i32
  %24 = load i16, i16* %3, align 2
  %25 = zext i16 %24 to i32
  %26 = icmp eq i32 %23, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %12
  br label %83

28:                                               ; preds = %12
  %29 = load i16, i16* %3, align 2
  %30 = load %struct.uvd*, %struct.uvd** %2, align 8
  %31 = getelementptr inbounds %struct.uvd, %struct.uvd* %30, i32 0, i32 4
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  store i16 %29, i16* %32, align 4
  %33 = load %struct.uvd*, %struct.uvd** %2, align 8
  %34 = load i32, i32* @mod2_hue, align 4
  %35 = load i16, i16* %3, align 2
  %36 = call i32 @ibmcam_model2_Packet1(%struct.uvd* %33, i32 %34, i16 zeroext %35)
  br label %83

37:                                               ; preds = %1
  br label %83

38:                                               ; preds = %1
  %39 = load %struct.uvd*, %struct.uvd** %2, align 8
  %40 = getelementptr inbounds %struct.uvd, %struct.uvd* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = ashr i32 %42, 9
  %44 = add nsw i32 20, %43
  %45 = trunc i32 %44 to i16
  store i16 %45, i16* %7, align 2
  %46 = load %struct.uvd*, %struct.uvd** %2, align 8
  %47 = getelementptr inbounds %struct.uvd, %struct.uvd* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  switch i32 %48, label %52 [
    i32 130, label %49
    i32 129, label %50
    i32 128, label %51
  ]

49:                                               ; preds = %38
  store i16 90, i16* %4, align 2
  store i16 166, i16* %5, align 2
  store i16 175, i16* %6, align 2
  br label %53

50:                                               ; preds = %38
  store i16 70, i16* %4, align 2
  store i16 166, i16* %5, align 2
  store i16 185, i16* %6, align 2
  br label %53

51:                                               ; preds = %38
  store i16 160, i16* %4, align 2
  store i16 175, i16* %5, align 2
  store i16 185, i16* %6, align 2
  br label %53

52:                                               ; preds = %38
  store i16 120, i16* %4, align 2
  store i16 166, i16* %5, align 2
  store i16 175, i16* %6, align 2
  br label %53

53:                                               ; preds = %52, %51, %50, %49
  %54 = load i16, i16* %7, align 2
  %55 = call i32 @RESTRICT_TO_RANGE(i16 zeroext %54, i32 1, i32 127)
  %56 = load %struct.uvd*, %struct.uvd** %2, align 8
  %57 = call i32 @ibmcam_veio(%struct.uvd* %56, i32 0, i32 170, i32 301)
  %58 = load %struct.uvd*, %struct.uvd** %2, align 8
  %59 = call i32 @ibmcam_veio(%struct.uvd* %58, i32 0, i32 30, i32 303)
  %60 = load %struct.uvd*, %struct.uvd** %2, align 8
  %61 = call i32 @ibmcam_veio(%struct.uvd* %60, i32 0, i32 53569, i32 292)
  %62 = load %struct.uvd*, %struct.uvd** %2, align 8
  %63 = load i16, i16* %5, align 2
  %64 = zext i16 %63 to i32
  %65 = call i32 @ibmcam_veio(%struct.uvd* %62, i32 0, i32 %64, i32 295)
  %66 = load %struct.uvd*, %struct.uvd** %2, align 8
  %67 = load i16, i16* %4, align 2
  %68 = zext i16 %67 to i32
  %69 = call i32 @ibmcam_veio(%struct.uvd* %66, i32 0, i32 %68, i32 302)
  %70 = load %struct.uvd*, %struct.uvd** %2, align 8
  %71 = load i16, i16* %6, align 2
  %72 = zext i16 %71 to i32
  %73 = call i32 @ibmcam_veio(%struct.uvd* %70, i32 0, i32 %72, i32 304)
  %74 = load %struct.uvd*, %struct.uvd** %2, align 8
  %75 = call i32 @ibmcam_veio(%struct.uvd* %74, i32 0, i32 35368, i32 292)
  %76 = load %struct.uvd*, %struct.uvd** %2, align 8
  %77 = load i16, i16* %7, align 2
  %78 = zext i16 %77 to i32
  %79 = call i32 @ibmcam_veio(%struct.uvd* %76, i32 0, i32 %78, i32 301)
  %80 = load %struct.uvd*, %struct.uvd** %2, align 8
  %81 = call i32 @ibmcam_veio(%struct.uvd* %80, i32 0, i32 62789, i32 292)
  br label %83

82:                                               ; preds = %1
  br label %83

83:                                               ; preds = %27, %82, %53, %37, %28
  ret void
}

declare dso_local %struct.TYPE_6__* @IBMCAM_T(%struct.uvd*) #1

declare dso_local i32 @ibmcam_model2_Packet1(%struct.uvd*, i32, i16 zeroext) #1

declare dso_local i32 @RESTRICT_TO_RANGE(i16 zeroext, i32, i32) #1

declare dso_local i32 @ibmcam_veio(%struct.uvd*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
