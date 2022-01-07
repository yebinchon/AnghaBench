; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/extr_si4713-i2c.c_si4713_write_econtrol_string.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/extr_si4713-i2c.c_si4713_write_econtrol_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.si4713_device = type { i32 }
%struct.v4l2_ext_control = type { i32, i32, i32 }
%struct.v4l2_queryctrl = type { i32, i32 }

@MAX_RDS_PS_NAME = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i64 0, align 8
@MAX_RDS_RADIO_TEXT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.si4713_device*, %struct.v4l2_ext_control*)* @si4713_write_econtrol_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si4713_write_econtrol_string(%struct.si4713_device* %0, %struct.v4l2_ext_control* %1) #0 {
  %3 = alloca %struct.si4713_device*, align 8
  %4 = alloca %struct.v4l2_ext_control*, align 8
  %5 = alloca %struct.v4l2_queryctrl, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store %struct.si4713_device* %0, %struct.si4713_device** %3, align 8
  store %struct.v4l2_ext_control* %1, %struct.v4l2_ext_control** %4, align 8
  store i64 0, i64* %7, align 8
  %13 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %4, align 8
  %14 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %5, i32 0, i32 0
  store i32 %15, i32* %16, align 4
  %17 = load %struct.si4713_device*, %struct.si4713_device** %3, align 8
  %18 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %17, i32 0, i32 0
  %19 = call i64 @si4713_queryctrl(i32* %18, %struct.v4l2_queryctrl* %5)
  store i64 %19, i64* %7, align 8
  %20 = load i64, i64* %7, align 8
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  br label %119

23:                                               ; preds = %2
  %24 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %4, align 8
  %25 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %115 [
    i32 129, label %27
    i32 128, label %71
  ]

27:                                               ; preds = %23
  %28 = load i32, i32* @MAX_RDS_PS_NAME, align 4
  %29 = add nsw i32 %28, 1
  %30 = zext i32 %29 to i64
  %31 = call i8* @llvm.stacksave()
  store i8* %31, i8** %8, align 8
  %32 = alloca i8, i64 %30, align 16
  store i64 %30, i64* %9, align 8
  %33 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %4, align 8
  %34 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = sub nsw i32 %35, 1
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @MAX_RDS_PS_NAME, align 4
  %39 = icmp sgt i32 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %27
  %41 = load i64, i64* @ERANGE, align 8
  %42 = sub nsw i64 0, %41
  store i64 %42, i64* %7, align 8
  store i32 2, i32* %10, align 4
  br label %67

43:                                               ; preds = %27
  %44 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %4, align 8
  %45 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %6, align 4
  %48 = call i64 @copy_from_user(i8* %32, i32 %46, i32 %47)
  store i64 %48, i64* %7, align 8
  %49 = load i64, i64* %7, align 8
  %50 = icmp slt i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %43
  store i32 2, i32* %10, align 4
  br label %67

52:                                               ; preds = %43
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %32, i64 %54
  store i8 0, i8* %55, align 1
  %56 = call i32 @strlen(i8* %32)
  %57 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %5, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = srem i32 %56, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %52
  %62 = load i64, i64* @ERANGE, align 8
  %63 = sub nsw i64 0, %62
  store i64 %63, i64* %7, align 8
  store i32 2, i32* %10, align 4
  br label %67

64:                                               ; preds = %52
  %65 = load %struct.si4713_device*, %struct.si4713_device** %3, align 8
  %66 = call i64 @si4713_set_rds_ps_name(%struct.si4713_device* %65, i8* %32)
  store i64 %66, i64* %7, align 8
  store i32 0, i32* %10, align 4
  br label %67

67:                                               ; preds = %61, %51, %40, %64
  %68 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %68)
  %69 = load i32, i32* %10, align 4
  switch i32 %69, label %122 [
    i32 0, label %70
    i32 2, label %119
  ]

70:                                               ; preds = %67
  br label %118

71:                                               ; preds = %23
  %72 = load i32, i32* @MAX_RDS_RADIO_TEXT, align 4
  %73 = add nsw i32 %72, 1
  %74 = zext i32 %73 to i64
  %75 = call i8* @llvm.stacksave()
  store i8* %75, i8** %11, align 8
  %76 = alloca i8, i64 %74, align 16
  store i64 %74, i64* %12, align 8
  %77 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %4, align 8
  %78 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = sub nsw i32 %79, 1
  store i32 %80, i32* %6, align 4
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* @MAX_RDS_RADIO_TEXT, align 4
  %83 = icmp sgt i32 %81, %82
  br i1 %83, label %84, label %87

84:                                               ; preds = %71
  %85 = load i64, i64* @ERANGE, align 8
  %86 = sub nsw i64 0, %85
  store i64 %86, i64* %7, align 8
  store i32 2, i32* %10, align 4
  br label %111

87:                                               ; preds = %71
  %88 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %4, align 8
  %89 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %6, align 4
  %92 = call i64 @copy_from_user(i8* %76, i32 %90, i32 %91)
  store i64 %92, i64* %7, align 8
  %93 = load i64, i64* %7, align 8
  %94 = icmp slt i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %87
  store i32 2, i32* %10, align 4
  br label %111

96:                                               ; preds = %87
  %97 = load i32, i32* %6, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8, i8* %76, i64 %98
  store i8 0, i8* %99, align 1
  %100 = call i32 @strlen(i8* %76)
  %101 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %5, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = srem i32 %100, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %96
  %106 = load i64, i64* @ERANGE, align 8
  %107 = sub nsw i64 0, %106
  store i64 %107, i64* %7, align 8
  store i32 2, i32* %10, align 4
  br label %111

108:                                              ; preds = %96
  %109 = load %struct.si4713_device*, %struct.si4713_device** %3, align 8
  %110 = call i64 @si4713_set_rds_radio_text(%struct.si4713_device* %109, i8* %76)
  store i64 %110, i64* %7, align 8
  store i32 0, i32* %10, align 4
  br label %111

111:                                              ; preds = %105, %95, %84, %108
  %112 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %112)
  %113 = load i32, i32* %10, align 4
  switch i32 %113, label %122 [
    i32 0, label %114
    i32 2, label %119
  ]

114:                                              ; preds = %111
  br label %118

115:                                              ; preds = %23
  %116 = load i64, i64* @EINVAL, align 8
  %117 = sub nsw i64 0, %116
  store i64 %117, i64* %7, align 8
  br label %118

118:                                              ; preds = %115, %114, %70
  br label %119

119:                                              ; preds = %118, %111, %67, %22
  %120 = load i64, i64* %7, align 8
  %121 = trunc i64 %120 to i32
  ret i32 %121

122:                                              ; preds = %111, %67
  unreachable
}

declare dso_local i64 @si4713_queryctrl(i32*, %struct.v4l2_queryctrl*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @copy_from_user(i8*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @si4713_set_rds_ps_name(%struct.si4713_device*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i64 @si4713_set_rds_radio_text(%struct.si4713_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
