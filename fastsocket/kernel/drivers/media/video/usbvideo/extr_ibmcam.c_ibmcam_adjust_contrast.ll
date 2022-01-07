; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvideo/extr_ibmcam.c_ibmcam_adjust_contrast.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvideo/extr_ibmcam.c_ibmcam_adjust_contrast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i16, i16, i16 }
%struct.uvd = type { i32, i32, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i8 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@contrast_14 = common dso_local global i32 0, align 4
@ibmcam_adjust_contrast.cv = internal constant [7 x %struct.anon] [%struct.anon { i16 5, i16 5, i16 15 }, %struct.anon { i16 4, i16 4, i16 22 }, %struct.anon { i16 2, i16 3, i16 22 }, %struct.anon { i16 2, i16 8, i16 22 }, %struct.anon { i16 1, i16 12, i16 22 }, %struct.anon { i16 1, i16 14, i16 22 }, %struct.anon { i16 1, i16 16, i16 22 }], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uvd*)* @ibmcam_adjust_contrast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ibmcam_adjust_contrast(%struct.uvd* %0) #0 {
  %2 = alloca %struct.uvd*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.uvd* %0, %struct.uvd** %2, align 8
  %8 = load %struct.uvd*, %struct.uvd** %2, align 8
  %9 = getelementptr inbounds %struct.uvd, %struct.uvd* %8, i32 0, i32 3
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = ashr i32 %11, 12
  %13 = trunc i32 %12 to i8
  store i8 %13, i8* %3, align 1
  %14 = load i8, i8* %3, align 1
  %15 = zext i8 %14 to i32
  %16 = icmp sge i32 %15, 16
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store i8 15, i8* %3, align 1
  br label %18

18:                                               ; preds = %17, %1
  %19 = load i8, i8* %3, align 1
  %20 = zext i8 %19 to i32
  %21 = sub nsw i32 15, %20
  %22 = trunc i32 %21 to i8
  store i8 %22, i8* %4, align 1
  %23 = load i8, i8* %4, align 1
  %24 = zext i8 %23 to i32
  %25 = load %struct.uvd*, %struct.uvd** %2, align 8
  %26 = getelementptr inbounds %struct.uvd, %struct.uvd* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i8, i8* %27, align 4
  %29 = zext i8 %28 to i32
  %30 = icmp eq i32 %24, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %18
  br label %102

32:                                               ; preds = %18
  %33 = load i8, i8* %4, align 1
  %34 = load %struct.uvd*, %struct.uvd** %2, align 8
  %35 = getelementptr inbounds %struct.uvd, %struct.uvd* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  store i8 %33, i8* %36, align 4
  %37 = load %struct.uvd*, %struct.uvd** %2, align 8
  %38 = call %struct.TYPE_6__* @IBMCAM_T(%struct.uvd* %37)
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  switch i32 %40, label %101 [
    i32 131, label %41
    i32 130, label %56
    i32 128, label %56
    i32 129, label %57
  ]

41:                                               ; preds = %32
  store i32 5, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %42

42:                                               ; preds = %52, %41
  %43 = load i32, i32* %6, align 4
  %44 = icmp slt i32 %43, 5
  br i1 %44, label %45, label %55

45:                                               ; preds = %42
  %46 = load %struct.uvd*, %struct.uvd** %2, align 8
  %47 = load i32, i32* @contrast_14, align 4
  %48 = load i8, i8* %4, align 1
  %49 = call i32 @ibmcam_Packet_Format1(%struct.uvd* %46, i32 %47, i8 zeroext %48)
  %50 = load %struct.uvd*, %struct.uvd** %2, align 8
  %51 = call i32 @ibmcam_send_FF_04_02(%struct.uvd* %50)
  br label %52

52:                                               ; preds = %45
  %53 = load i32, i32* %6, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %6, align 4
  br label %42

55:                                               ; preds = %42
  br label %102

56:                                               ; preds = %32, %32
  br label %102

57:                                               ; preds = %32
  %58 = load i8, i8* %3, align 1
  %59 = zext i8 %58 to i32
  %60 = sdiv i32 %59, 2
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @RESTRICT_TO_RANGE(i32 %61, i32 0, i32 6)
  %63 = load %struct.uvd*, %struct.uvd** %2, align 8
  %64 = call i32 @ibmcam_veio(%struct.uvd* %63, i32 0, i32 0, i32 268)
  %65 = load %struct.uvd*, %struct.uvd** %2, align 8
  %66 = load i32, i32* %7, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [7 x %struct.anon], [7 x %struct.anon]* @ibmcam_adjust_contrast.cv, i64 0, i64 %67
  %69 = getelementptr inbounds %struct.anon, %struct.anon* %68, i32 0, i32 0
  %70 = load i16, i16* %69, align 2
  %71 = call i32 @ibmcam_model3_Packet1(%struct.uvd* %65, i32 103, i16 zeroext %70)
  %72 = load %struct.uvd*, %struct.uvd** %2, align 8
  %73 = load i32, i32* %7, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [7 x %struct.anon], [7 x %struct.anon]* @ibmcam_adjust_contrast.cv, i64 0, i64 %74
  %76 = getelementptr inbounds %struct.anon, %struct.anon* %75, i32 0, i32 1
  %77 = load i16, i16* %76, align 2
  %78 = call i32 @ibmcam_model3_Packet1(%struct.uvd* %72, i32 91, i16 zeroext %77)
  %79 = load %struct.uvd*, %struct.uvd** %2, align 8
  %80 = load i32, i32* %7, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [7 x %struct.anon], [7 x %struct.anon]* @ibmcam_adjust_contrast.cv, i64 0, i64 %81
  %83 = getelementptr inbounds %struct.anon, %struct.anon* %82, i32 0, i32 2
  %84 = load i16, i16* %83, align 2
  %85 = call i32 @ibmcam_model3_Packet1(%struct.uvd* %79, i32 92, i16 zeroext %84)
  %86 = load %struct.uvd*, %struct.uvd** %2, align 8
  %87 = call i32 @ibmcam_veio(%struct.uvd* %86, i32 0, i32 1, i32 276)
  %88 = load %struct.uvd*, %struct.uvd** %2, align 8
  %89 = call i32 @ibmcam_veio(%struct.uvd* %88, i32 0, i32 192, i32 268)
  %90 = load %struct.uvd*, %struct.uvd** %2, align 8
  %91 = getelementptr inbounds %struct.uvd, %struct.uvd* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.uvd*, %struct.uvd** %2, align 8
  %94 = getelementptr inbounds %struct.uvd, %struct.uvd* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.uvd*, %struct.uvd** %2, align 8
  %97 = getelementptr inbounds %struct.uvd, %struct.uvd* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @usb_rcvisocpipe(i32 %95, i32 %98)
  %100 = call i32 @usb_clear_halt(i32 %92, i32 %99)
  br label %102

101:                                              ; preds = %32
  br label %102

102:                                              ; preds = %31, %101, %57, %56, %55
  ret void
}

declare dso_local %struct.TYPE_6__* @IBMCAM_T(%struct.uvd*) #1

declare dso_local i32 @ibmcam_Packet_Format1(%struct.uvd*, i32, i8 zeroext) #1

declare dso_local i32 @ibmcam_send_FF_04_02(%struct.uvd*) #1

declare dso_local i32 @RESTRICT_TO_RANGE(i32, i32, i32) #1

declare dso_local i32 @ibmcam_veio(%struct.uvd*, i32, i32, i32) #1

declare dso_local i32 @ibmcam_model3_Packet1(%struct.uvd*, i32, i16 zeroext) #1

declare dso_local i32 @usb_clear_halt(i32, i32) #1

declare dso_local i32 @usb_rcvisocpipe(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
