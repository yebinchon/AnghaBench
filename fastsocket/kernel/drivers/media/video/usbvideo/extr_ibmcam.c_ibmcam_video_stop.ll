; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvideo/extr_ibmcam.c_ibmcam_video_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvideo/extr_ibmcam.c_ibmcam_video_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvd = type { i32 }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uvd*)* @ibmcam_video_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ibmcam_video_stop(%struct.uvd* %0) #0 {
  %2 = alloca %struct.uvd*, align 8
  store %struct.uvd* %0, %struct.uvd** %2, align 8
  %3 = load %struct.uvd*, %struct.uvd** %2, align 8
  %4 = call %struct.TYPE_2__* @IBMCAM_T(%struct.uvd* %3)
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %67 [
    i32 131, label %7
    i32 130, label %24
    i32 128, label %24
    i32 129, label %41
  ]

7:                                                ; preds = %1
  %8 = load %struct.uvd*, %struct.uvd** %2, align 8
  %9 = call i32 @ibmcam_veio(%struct.uvd* %8, i32 0, i32 0, i32 268)
  %10 = load %struct.uvd*, %struct.uvd** %2, align 8
  %11 = call i32 @ibmcam_veio(%struct.uvd* %10, i32 0, i32 0, i32 268)
  %12 = load %struct.uvd*, %struct.uvd** %2, align 8
  %13 = call i32 @ibmcam_veio(%struct.uvd* %12, i32 0, i32 1, i32 276)
  %14 = load %struct.uvd*, %struct.uvd** %2, align 8
  %15 = call i32 @ibmcam_veio(%struct.uvd* %14, i32 0, i32 192, i32 268)
  %16 = load %struct.uvd*, %struct.uvd** %2, align 8
  %17 = call i32 @ibmcam_veio(%struct.uvd* %16, i32 0, i32 0, i32 268)
  %18 = load %struct.uvd*, %struct.uvd** %2, align 8
  %19 = call i32 @ibmcam_send_FF_04_02(%struct.uvd* %18)
  %20 = load %struct.uvd*, %struct.uvd** %2, align 8
  %21 = call i32 @ibmcam_veio(%struct.uvd* %20, i32 1, i32 0, i32 256)
  %22 = load %struct.uvd*, %struct.uvd** %2, align 8
  %23 = call i32 @ibmcam_veio(%struct.uvd* %22, i32 0, i32 129, i32 256)
  br label %67

24:                                               ; preds = %1, %1
  %25 = load %struct.uvd*, %struct.uvd** %2, align 8
  %26 = call i32 @ibmcam_veio(%struct.uvd* %25, i32 0, i32 0, i32 268)
  %27 = load %struct.uvd*, %struct.uvd** %2, align 8
  %28 = call i32 @ibmcam_model2_Packet1(%struct.uvd* %27, i32 48, i32 4)
  %29 = load %struct.uvd*, %struct.uvd** %2, align 8
  %30 = call i32 @ibmcam_veio(%struct.uvd* %29, i32 0, i32 128, i32 256)
  %31 = load %struct.uvd*, %struct.uvd** %2, align 8
  %32 = call i32 @ibmcam_veio(%struct.uvd* %31, i32 0, i32 32, i32 273)
  %33 = load %struct.uvd*, %struct.uvd** %2, align 8
  %34 = call i32 @ibmcam_veio(%struct.uvd* %33, i32 0, i32 160, i32 273)
  %35 = load %struct.uvd*, %struct.uvd** %2, align 8
  %36 = call i32 @ibmcam_model2_Packet1(%struct.uvd* %35, i32 48, i32 2)
  %37 = load %struct.uvd*, %struct.uvd** %2, align 8
  %38 = call i32 @ibmcam_veio(%struct.uvd* %37, i32 0, i32 32, i32 273)
  %39 = load %struct.uvd*, %struct.uvd** %2, align 8
  %40 = call i32 @ibmcam_veio(%struct.uvd* %39, i32 0, i32 0, i32 274)
  br label %67

41:                                               ; preds = %1
  %42 = load %struct.uvd*, %struct.uvd** %2, align 8
  %43 = call i32 @ibmcam_veio(%struct.uvd* %42, i32 0, i32 0, i32 268)
  %44 = load %struct.uvd*, %struct.uvd** %2, align 8
  %45 = call i32 @ibmcam_veio(%struct.uvd* %44, i32 0, i32 6, i32 300)
  %46 = load %struct.uvd*, %struct.uvd** %2, align 8
  %47 = call i32 @ibmcam_model3_Packet1(%struct.uvd* %46, i32 70, i32 0)
  %48 = load %struct.uvd*, %struct.uvd** %2, align 8
  %49 = call i32 @ibmcam_veio(%struct.uvd* %48, i32 1, i32 0, i32 278)
  %50 = load %struct.uvd*, %struct.uvd** %2, align 8
  %51 = call i32 @ibmcam_veio(%struct.uvd* %50, i32 0, i32 100, i32 278)
  %52 = load %struct.uvd*, %struct.uvd** %2, align 8
  %53 = call i32 @ibmcam_veio(%struct.uvd* %52, i32 1, i32 0, i32 277)
  %54 = load %struct.uvd*, %struct.uvd** %2, align 8
  %55 = call i32 @ibmcam_veio(%struct.uvd* %54, i32 0, i32 3, i32 277)
  %56 = load %struct.uvd*, %struct.uvd** %2, align 8
  %57 = call i32 @ibmcam_veio(%struct.uvd* %56, i32 0, i32 8, i32 291)
  %58 = load %struct.uvd*, %struct.uvd** %2, align 8
  %59 = call i32 @ibmcam_veio(%struct.uvd* %58, i32 0, i32 0, i32 279)
  %60 = load %struct.uvd*, %struct.uvd** %2, align 8
  %61 = call i32 @ibmcam_veio(%struct.uvd* %60, i32 0, i32 0, i32 274)
  %62 = load %struct.uvd*, %struct.uvd** %2, align 8
  %63 = call i32 @ibmcam_veio(%struct.uvd* %62, i32 0, i32 128, i32 256)
  %64 = load %struct.uvd*, %struct.uvd** %2, align 8
  %65 = call %struct.TYPE_2__* @IBMCAM_T(%struct.uvd* %64)
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  store i32 0, i32* %66, align 4
  br label %67

67:                                               ; preds = %1, %41, %24, %7
  ret void
}

declare dso_local %struct.TYPE_2__* @IBMCAM_T(%struct.uvd*) #1

declare dso_local i32 @ibmcam_veio(%struct.uvd*, i32, i32, i32) #1

declare dso_local i32 @ibmcam_send_FF_04_02(%struct.uvd*) #1

declare dso_local i32 @ibmcam_model2_Packet1(%struct.uvd*, i32, i32) #1

declare dso_local i32 @ibmcam_model3_Packet1(%struct.uvd*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
