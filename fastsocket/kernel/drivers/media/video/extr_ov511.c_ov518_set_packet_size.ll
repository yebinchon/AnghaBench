; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ov511.c_ov518_set_packet_size.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ov511.c_ov518_set_packet_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ov511 = type { i64, i32, i32, i32, i64 }

@EIO = common dso_local global i32 0, align 4
@BCL_OV518 = common dso_local global i64 0, align 8
@OV518_ALT_SIZE_0 = common dso_local global i32 0, align 4
@OV518_ALT_SIZE_128 = common dso_local global i32 0, align 4
@OV518_ALT_SIZE_256 = common dso_local global i32 0, align 4
@OV518_ALT_SIZE_384 = common dso_local global i32 0, align 4
@OV518_ALT_SIZE_512 = common dso_local global i32 0, align 4
@OV518_ALT_SIZE_640 = common dso_local global i32 0, align 4
@OV518_ALT_SIZE_768 = common dso_local global i32 0, align 4
@OV518_ALT_SIZE_896 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Set packet size: invalid size (%d)\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Set packet size: Invalid bridge type\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"%d, alt=%d\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"Set packet size: set interface error\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@OV511_RESET_NOREGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_ov511*, i32)* @ov518_set_packet_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov518_set_packet_size(%struct.usb_ov511* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_ov511*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.usb_ov511* %0, %struct.usb_ov511** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %8 = call i64 @ov51x_stop(%struct.usb_ov511* %7)
  %9 = icmp slt i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i32, i32* @EIO, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %3, align 4
  br label %136

13:                                               ; preds = %2
  %14 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %15 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @BCL_OV518, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %72

19:                                               ; preds = %13
  %20 = load i32, i32* %5, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = load i32, i32* @OV518_ALT_SIZE_0, align 4
  store i32 %23, i32* %6, align 4
  br label %71

24:                                               ; preds = %19
  %25 = load i32, i32* %5, align 4
  %26 = icmp eq i32 %25, 128
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = load i32, i32* @OV518_ALT_SIZE_128, align 4
  store i32 %28, i32* %6, align 4
  br label %70

29:                                               ; preds = %24
  %30 = load i32, i32* %5, align 4
  %31 = icmp eq i32 %30, 256
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = load i32, i32* @OV518_ALT_SIZE_256, align 4
  store i32 %33, i32* %6, align 4
  br label %69

34:                                               ; preds = %29
  %35 = load i32, i32* %5, align 4
  %36 = icmp eq i32 %35, 384
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = load i32, i32* @OV518_ALT_SIZE_384, align 4
  store i32 %38, i32* %6, align 4
  br label %68

39:                                               ; preds = %34
  %40 = load i32, i32* %5, align 4
  %41 = icmp eq i32 %40, 512
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = load i32, i32* @OV518_ALT_SIZE_512, align 4
  store i32 %43, i32* %6, align 4
  br label %67

44:                                               ; preds = %39
  %45 = load i32, i32* %5, align 4
  %46 = icmp eq i32 %45, 640
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = load i32, i32* @OV518_ALT_SIZE_640, align 4
  store i32 %48, i32* %6, align 4
  br label %66

49:                                               ; preds = %44
  %50 = load i32, i32* %5, align 4
  %51 = icmp eq i32 %50, 768
  br i1 %51, label %52, label %54

52:                                               ; preds = %49
  %53 = load i32, i32* @OV518_ALT_SIZE_768, align 4
  store i32 %53, i32* %6, align 4
  br label %65

54:                                               ; preds = %49
  %55 = load i32, i32* %5, align 4
  %56 = icmp eq i32 %55, 896
  br i1 %56, label %57, label %59

57:                                               ; preds = %54
  %58 = load i32, i32* @OV518_ALT_SIZE_896, align 4
  store i32 %58, i32* %6, align 4
  br label %64

59:                                               ; preds = %54
  %60 = load i32, i32* %5, align 4
  %61 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %3, align 4
  br label %136

64:                                               ; preds = %57
  br label %65

65:                                               ; preds = %64, %52
  br label %66

66:                                               ; preds = %65, %47
  br label %67

67:                                               ; preds = %66, %42
  br label %68

68:                                               ; preds = %67, %37
  br label %69

69:                                               ; preds = %68, %32
  br label %70

70:                                               ; preds = %69, %27
  br label %71

71:                                               ; preds = %70, %22
  br label %76

72:                                               ; preds = %13
  %73 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %3, align 4
  br label %136

76:                                               ; preds = %71
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* %6, align 4
  %79 = call i32 @PDEBUG(i32 3, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %77, i32 %78)
  %80 = load i32, i32* %5, align 4
  %81 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %82 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 8
  %83 = load i32, i32* %5, align 4
  %84 = icmp sgt i32 %83, 0
  br i1 %84, label %85, label %99

85:                                               ; preds = %76
  %86 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %87 = load i32, i32* %5, align 4
  %88 = call i32 @ov518_reg_w32(%struct.usb_ov511* %86, i32 48, i32 %87, i32 2)
  %89 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %90 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %89, i32 0, i32 4
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %85
  %94 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %95 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %95, align 8
  br label %98

98:                                               ; preds = %93, %85
  br label %99

99:                                               ; preds = %98, %76
  %100 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %101 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %104 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %6, align 4
  %107 = call i64 @usb_set_interface(i32 %102, i32 %105, i32 %106)
  %108 = icmp slt i64 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %99
  %110 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  %111 = load i32, i32* @EBUSY, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %3, align 4
  br label %136

113:                                              ; preds = %99
  %114 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %115 = call i64 @reg_w(%struct.usb_ov511* %114, i32 47, i32 128)
  %116 = icmp slt i64 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %113
  %118 = load i32, i32* @EIO, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %3, align 4
  br label %136

120:                                              ; preds = %113
  %121 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %122 = call i64 @ov51x_restart(%struct.usb_ov511* %121)
  %123 = icmp slt i64 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %120
  %125 = load i32, i32* @EIO, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %3, align 4
  br label %136

127:                                              ; preds = %120
  %128 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %129 = load i32, i32* @OV511_RESET_NOREGS, align 4
  %130 = call i64 @ov51x_reset(%struct.usb_ov511* %128, i32 %129)
  %131 = icmp slt i64 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %127
  %133 = load i32, i32* @EIO, align 4
  %134 = sub nsw i32 0, %133
  store i32 %134, i32* %3, align 4
  br label %136

135:                                              ; preds = %127
  store i32 0, i32* %3, align 4
  br label %136

136:                                              ; preds = %135, %132, %124, %117, %109, %72, %59, %10
  %137 = load i32, i32* %3, align 4
  ret i32 %137
}

declare dso_local i64 @ov51x_stop(%struct.usb_ov511*) #1

declare dso_local i32 @err(i8*, ...) #1

declare dso_local i32 @PDEBUG(i32, i8*, i32, i32) #1

declare dso_local i32 @ov518_reg_w32(%struct.usb_ov511*, i32, i32, i32) #1

declare dso_local i64 @usb_set_interface(i32, i32, i32) #1

declare dso_local i64 @reg_w(%struct.usb_ov511*, i32, i32) #1

declare dso_local i64 @ov51x_restart(%struct.usb_ov511*) #1

declare dso_local i64 @ov51x_reset(%struct.usb_ov511*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
