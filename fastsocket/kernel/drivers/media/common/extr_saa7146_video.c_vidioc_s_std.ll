; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/extr_saa7146_video.c_vidioc_s_std.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/extr_saa7146_video.c_vidioc_s_std.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.saa7146_dev = type { %struct.TYPE_3__*, %struct.saa7146_vv* }
%struct.TYPE_3__ = type { i32, i32 (%struct.saa7146_dev*, %struct.TYPE_4__*)*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.saa7146_vv = type { i32, %struct.TYPE_4__*, i32*, i32* }
%struct.saa7146_fh = type { %struct.saa7146_dev* }

@.str = private unnamed_addr constant [14 x i8] c"VIDIOC_S_STD\0A\00", align 1
@STATUS_CAPTURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [64 x i8] c"cannot change video standard while streaming capture is active\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@STATUS_OVERLAY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"suspending video failed. aborting\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"VIDIOC_S_STD: standard not found.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [39 x i8] c"VIDIOC_S_STD: set to standard to '%s'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, i32*)* @vidioc_s_std to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_s_std(%struct.file* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.saa7146_dev*, align 8
  %9 = alloca %struct.saa7146_vv*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.saa7146_fh*
  %15 = getelementptr inbounds %struct.saa7146_fh, %struct.saa7146_fh* %14, i32 0, i32 0
  %16 = load %struct.saa7146_dev*, %struct.saa7146_dev** %15, align 8
  store %struct.saa7146_dev* %16, %struct.saa7146_dev** %8, align 8
  %17 = load %struct.saa7146_dev*, %struct.saa7146_dev** %8, align 8
  %18 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %17, i32 0, i32 1
  %19 = load %struct.saa7146_vv*, %struct.saa7146_vv** %18, align 8
  store %struct.saa7146_vv* %19, %struct.saa7146_vv** %9, align 8
  store i32 0, i32* %10, align 4
  %20 = call i32 @DEB_EE(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.saa7146_vv*, %struct.saa7146_vv** %9, align 8
  %22 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @STATUS_CAPTURE, align 4
  %25 = and i32 %23, %24
  %26 = load i32, i32* @STATUS_CAPTURE, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %3
  %29 = call i32 @DEB_D(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i32, i32* @EBUSY, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %149

32:                                               ; preds = %3
  %33 = load %struct.saa7146_vv*, %struct.saa7146_vv** %9, align 8
  %34 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @STATUS_OVERLAY, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %55

39:                                               ; preds = %32
  %40 = load %struct.saa7146_vv*, %struct.saa7146_vv** %9, align 8
  %41 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %40, i32 0, i32 3
  %42 = load i32*, i32** %41, align 8
  %43 = load %struct.saa7146_vv*, %struct.saa7146_vv** %9, align 8
  %44 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %43, i32 0, i32 2
  store i32* %42, i32** %44, align 8
  %45 = load %struct.saa7146_vv*, %struct.saa7146_vv** %9, align 8
  %46 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %45, i32 0, i32 3
  %47 = load i32*, i32** %46, align 8
  %48 = call i32 @saa7146_stop_preview(i32* %47)
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %11, align 4
  %50 = icmp ne i32 0, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %39
  %52 = call i32 @DEB_D(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %53 = load i32, i32* %11, align 4
  store i32 %53, i32* %4, align 4
  br label %149

54:                                               ; preds = %39
  br label %55

55:                                               ; preds = %54, %32
  store i32 0, i32* %12, align 4
  br label %56

56:                                               ; preds = %81, %55
  %57 = load i32, i32* %12, align 4
  %58 = load %struct.saa7146_dev*, %struct.saa7146_dev** %8, align 8
  %59 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %58, i32 0, i32 0
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp slt i32 %57, %62
  br i1 %63, label %64, label %84

64:                                               ; preds = %56
  %65 = load i32*, i32** %7, align 8
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.saa7146_dev*, %struct.saa7146_dev** %8, align 8
  %68 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %67, i32 0, i32 0
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 2
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = load i32, i32* %12, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = and i32 %66, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %64
  br label %84

80:                                               ; preds = %64
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %12, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %12, align 4
  br label %56

84:                                               ; preds = %79, %56
  %85 = load i32, i32* %12, align 4
  %86 = load %struct.saa7146_dev*, %struct.saa7146_dev** %8, align 8
  %87 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %86, i32 0, i32 0
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = icmp ne i32 %85, %90
  br i1 %91, label %92, label %121

92:                                               ; preds = %84
  %93 = load %struct.saa7146_dev*, %struct.saa7146_dev** %8, align 8
  %94 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %93, i32 0, i32 0
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 2
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %96, align 8
  %98 = load i32, i32* %12, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i64 %99
  %101 = load %struct.saa7146_vv*, %struct.saa7146_vv** %9, align 8
  %102 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %101, i32 0, i32 1
  store %struct.TYPE_4__* %100, %struct.TYPE_4__** %102, align 8
  %103 = load %struct.saa7146_dev*, %struct.saa7146_dev** %8, align 8
  %104 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %103, i32 0, i32 0
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 1
  %107 = load i32 (%struct.saa7146_dev*, %struct.TYPE_4__*)*, i32 (%struct.saa7146_dev*, %struct.TYPE_4__*)** %106, align 8
  %108 = icmp ne i32 (%struct.saa7146_dev*, %struct.TYPE_4__*)* null, %107
  br i1 %108, label %109, label %120

109:                                              ; preds = %92
  %110 = load %struct.saa7146_dev*, %struct.saa7146_dev** %8, align 8
  %111 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %110, i32 0, i32 0
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 1
  %114 = load i32 (%struct.saa7146_dev*, %struct.TYPE_4__*)*, i32 (%struct.saa7146_dev*, %struct.TYPE_4__*)** %113, align 8
  %115 = load %struct.saa7146_dev*, %struct.saa7146_dev** %8, align 8
  %116 = load %struct.saa7146_vv*, %struct.saa7146_vv** %9, align 8
  %117 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %116, i32 0, i32 1
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %117, align 8
  %119 = call i32 %114(%struct.saa7146_dev* %115, %struct.TYPE_4__* %118)
  br label %120

120:                                              ; preds = %109, %92
  store i32 1, i32* %10, align 4
  br label %121

121:                                              ; preds = %120, %84
  %122 = load %struct.saa7146_vv*, %struct.saa7146_vv** %9, align 8
  %123 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %122, i32 0, i32 2
  %124 = load i32*, i32** %123, align 8
  %125 = icmp ne i32* %124, null
  br i1 %125, label %126, label %133

126:                                              ; preds = %121
  %127 = load %struct.saa7146_vv*, %struct.saa7146_vv** %9, align 8
  %128 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %127, i32 0, i32 2
  %129 = load i32*, i32** %128, align 8
  %130 = call i32 @saa7146_start_preview(i32* %129)
  %131 = load %struct.saa7146_vv*, %struct.saa7146_vv** %9, align 8
  %132 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %131, i32 0, i32 2
  store i32* null, i32** %132, align 8
  br label %133

133:                                              ; preds = %126, %121
  %134 = load i32, i32* %10, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %140, label %136

136:                                              ; preds = %133
  %137 = call i32 @DEB_EE(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %138 = load i32, i32* @EINVAL, align 4
  %139 = sub nsw i32 0, %138
  store i32 %139, i32* %4, align 4
  br label %149

140:                                              ; preds = %133
  %141 = load %struct.saa7146_vv*, %struct.saa7146_vv** %9, align 8
  %142 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %141, i32 0, i32 1
  %143 = load %struct.TYPE_4__*, %struct.TYPE_4__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = sext i32 %145 to i64
  %147 = inttoptr i64 %146 to i8*
  %148 = call i32 @DEB_EE(i8* %147)
  store i32 0, i32* %4, align 4
  br label %149

149:                                              ; preds = %140, %136, %51, %28
  %150 = load i32, i32* %4, align 4
  ret i32 %150
}

declare dso_local i32 @DEB_EE(i8*) #1

declare dso_local i32 @DEB_D(i8*) #1

declare dso_local i32 @saa7146_stop_preview(i32*) #1

declare dso_local i32 @saa7146_start_preview(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
