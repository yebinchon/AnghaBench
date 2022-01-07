; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_gspca.c_vidioc_s_ctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_gspca.c_vidioc_s_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_control = type { i64, i32 }
%struct.gspca_dev = type { i32, i32, i32, i64, i32, %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { %struct.gspca_ctrl* }
%struct.gspca_ctrl = type { i64, i64, i64 }
%struct.TYPE_4__ = type { %struct.ctrl* }
%struct.ctrl = type { i32 (%struct.gspca_dev*, i64)*, i32 (%struct.gspca_dev*)*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@D_CONF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"set ctrl [%08x] = %d\00", align 1
@ERESTARTSYS = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_control*)* @vidioc_s_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_s_ctrl(%struct.file* %0, i8* %1, %struct.v4l2_control* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_control*, align 8
  %8 = alloca %struct.gspca_dev*, align 8
  %9 = alloca %struct.ctrl*, align 8
  %10 = alloca %struct.gspca_ctrl*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_control* %2, %struct.v4l2_control** %7, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.gspca_dev*
  store %struct.gspca_dev* %14, %struct.gspca_dev** %8, align 8
  %15 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %16 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %17 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @get_ctrl(%struct.gspca_dev* %15, i32 %18)
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %11, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %173

25:                                               ; preds = %3
  %26 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %27 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %11, align 4
  %30 = shl i32 1, %29
  %31 = and i32 %28, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %25
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %173

36:                                               ; preds = %25
  %37 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %38 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %37, i32 0, i32 6
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load %struct.ctrl*, %struct.ctrl** %40, align 8
  %42 = load i32, i32* %11, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.ctrl, %struct.ctrl* %41, i64 %43
  store %struct.ctrl* %44, %struct.ctrl** %9, align 8
  %45 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %46 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %45, i32 0, i32 5
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load %struct.gspca_ctrl*, %struct.gspca_ctrl** %47, align 8
  %49 = icmp ne %struct.gspca_ctrl* %48, null
  br i1 %49, label %50, label %77

50:                                               ; preds = %36
  %51 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %52 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %51, i32 0, i32 5
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load %struct.gspca_ctrl*, %struct.gspca_ctrl** %53, align 8
  %55 = load i32, i32* %11, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.gspca_ctrl, %struct.gspca_ctrl* %54, i64 %56
  store %struct.gspca_ctrl* %57, %struct.gspca_ctrl** %10, align 8
  %58 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %59 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.gspca_ctrl*, %struct.gspca_ctrl** %10, align 8
  %62 = getelementptr inbounds %struct.gspca_ctrl, %struct.gspca_ctrl* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp slt i64 %60, %63
  br i1 %64, label %73, label %65

65:                                               ; preds = %50
  %66 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %67 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.gspca_ctrl*, %struct.gspca_ctrl** %10, align 8
  %70 = getelementptr inbounds %struct.gspca_ctrl, %struct.gspca_ctrl* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp sgt i64 %68, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %65, %50
  %74 = load i32, i32* @ERANGE, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %4, align 4
  br label %173

76:                                               ; preds = %65
  br label %99

77:                                               ; preds = %36
  store %struct.gspca_ctrl* null, %struct.gspca_ctrl** %10, align 8
  %78 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %79 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.ctrl*, %struct.ctrl** %9, align 8
  %82 = getelementptr inbounds %struct.ctrl, %struct.ctrl* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp slt i64 %80, %84
  br i1 %85, label %95, label %86

86:                                               ; preds = %77
  %87 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %88 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.ctrl*, %struct.ctrl** %9, align 8
  %91 = getelementptr inbounds %struct.ctrl, %struct.ctrl* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = icmp sgt i64 %89, %93
  br i1 %94, label %95, label %98

95:                                               ; preds = %86, %77
  %96 = load i32, i32* @ERANGE, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %4, align 4
  br label %173

98:                                               ; preds = %86
  br label %99

99:                                               ; preds = %98, %76
  %100 = load i32, i32* @D_CONF, align 4
  %101 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %102 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %105 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = call i32 @PDEBUG(i32 %100, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %103, i64 %106)
  %108 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %109 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %108, i32 0, i32 2
  %110 = call i64 @mutex_lock_interruptible(i32* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %99
  %113 = load i32, i32* @ERESTARTSYS, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %4, align 4
  br label %173

115:                                              ; preds = %99
  %116 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %117 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %116, i32 0, i32 4
  %118 = load i32, i32* %117, align 8
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %123, label %120

120:                                              ; preds = %115
  %121 = load i32, i32* @ENODEV, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %12, align 4
  br label %168

123:                                              ; preds = %115
  %124 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %125 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %124, i32 0, i32 1
  store i32 0, i32* %125, align 4
  %126 = load %struct.ctrl*, %struct.ctrl** %9, align 8
  %127 = getelementptr inbounds %struct.ctrl, %struct.ctrl* %126, i32 0, i32 0
  %128 = load i32 (%struct.gspca_dev*, i64)*, i32 (%struct.gspca_dev*, i64)** %127, align 8
  %129 = icmp ne i32 (%struct.gspca_dev*, i64)* %128, null
  br i1 %129, label %130, label %139

130:                                              ; preds = %123
  %131 = load %struct.ctrl*, %struct.ctrl** %9, align 8
  %132 = getelementptr inbounds %struct.ctrl, %struct.ctrl* %131, i32 0, i32 0
  %133 = load i32 (%struct.gspca_dev*, i64)*, i32 (%struct.gspca_dev*, i64)** %132, align 8
  %134 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %135 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %136 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = call i32 %133(%struct.gspca_dev* %134, i64 %137)
  store i32 %138, i32* %12, align 4
  br label %168

139:                                              ; preds = %123
  %140 = load %struct.gspca_ctrl*, %struct.gspca_ctrl** %10, align 8
  %141 = icmp ne %struct.gspca_ctrl* %140, null
  br i1 %141, label %142, label %164

142:                                              ; preds = %139
  %143 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %144 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = load %struct.gspca_ctrl*, %struct.gspca_ctrl** %10, align 8
  %147 = getelementptr inbounds %struct.gspca_ctrl, %struct.gspca_ctrl* %146, i32 0, i32 2
  store i64 %145, i64* %147, align 8
  %148 = load %struct.ctrl*, %struct.ctrl** %9, align 8
  %149 = getelementptr inbounds %struct.ctrl, %struct.ctrl* %148, i32 0, i32 1
  %150 = load i32 (%struct.gspca_dev*)*, i32 (%struct.gspca_dev*)** %149, align 8
  %151 = icmp ne i32 (%struct.gspca_dev*)* %150, null
  br i1 %151, label %152, label %163

152:                                              ; preds = %142
  %153 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %154 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %153, i32 0, i32 3
  %155 = load i64, i64* %154, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %163

157:                                              ; preds = %152
  %158 = load %struct.ctrl*, %struct.ctrl** %9, align 8
  %159 = getelementptr inbounds %struct.ctrl, %struct.ctrl* %158, i32 0, i32 1
  %160 = load i32 (%struct.gspca_dev*)*, i32 (%struct.gspca_dev*)** %159, align 8
  %161 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %162 = call i32 %160(%struct.gspca_dev* %161)
  br label %163

163:                                              ; preds = %157, %152, %142
  br label %164

164:                                              ; preds = %163, %139
  %165 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %166 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  store i32 %167, i32* %12, align 4
  br label %168

168:                                              ; preds = %164, %130, %120
  %169 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %170 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %169, i32 0, i32 2
  %171 = call i32 @mutex_unlock(i32* %170)
  %172 = load i32, i32* %12, align 4
  store i32 %172, i32* %4, align 4
  br label %173

173:                                              ; preds = %168, %112, %95, %73, %33, %22
  %174 = load i32, i32* %4, align 4
  ret i32 %174
}

declare dso_local i32 @get_ctrl(%struct.gspca_dev*, i32) #1

declare dso_local i32 @PDEBUG(i32, i8*, i32, i64) #1

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
