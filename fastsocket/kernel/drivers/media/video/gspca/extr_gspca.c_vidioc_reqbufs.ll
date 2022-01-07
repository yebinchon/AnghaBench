; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_gspca.c_vidioc_reqbufs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_gspca.c_vidioc_reqbufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_requestbuffers = type { i32, i64 }
%struct.gspca_dev = type { i32, i32, i32, i32, i32, i64, %struct.TYPE_2__*, %struct.file* }
%struct.TYPE_2__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@GSPCA_MEMORY_NO = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@D_STREAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"reqbufs st:%d c:%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_requestbuffers*)* @vidioc_reqbufs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_reqbufs(%struct.file* %0, i8* %1, %struct.v4l2_requestbuffers* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_requestbuffers*, align 8
  %8 = alloca %struct.gspca_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_requestbuffers* %2, %struct.v4l2_requestbuffers** %7, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.gspca_dev*
  store %struct.gspca_dev* %13, %struct.gspca_dev** %8, align 8
  store i32 0, i32* %10, align 4
  %14 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %7, align 8
  %15 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  switch i32 %17, label %19 [
    i32 130, label %18
    i32 129, label %18
    i32 128, label %18
  ]

18:                                               ; preds = %3, %3, %3
  br label %22

19:                                               ; preds = %3
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %164

22:                                               ; preds = %18
  %23 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %24 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %23, i32 0, i32 3
  %25 = call i64 @mutex_lock_interruptible(i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load i32, i32* @ERESTARTSYS, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %164

30:                                               ; preds = %22
  %31 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %32 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @GSPCA_MEMORY_NO, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %52

36:                                               ; preds = %30
  %37 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %38 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 130
  br i1 %40, label %41, label %52

41:                                               ; preds = %36
  %42 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %43 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %7, align 8
  %46 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %44, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %41
  %50 = load i32, i32* @EBUSY, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %10, align 4
  br label %153

52:                                               ; preds = %41, %36, %30
  %53 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %54 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %53, i32 0, i32 7
  %55 = load %struct.file*, %struct.file** %54, align 8
  %56 = icmp ne %struct.file* %55, null
  br i1 %56, label %57, label %66

57:                                               ; preds = %52
  %58 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %59 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %58, i32 0, i32 7
  %60 = load %struct.file*, %struct.file** %59, align 8
  %61 = load %struct.file*, %struct.file** %5, align 8
  %62 = icmp ne %struct.file* %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %57
  %64 = load i32, i32* @EBUSY, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %10, align 4
  br label %153

66:                                               ; preds = %57, %52
  store i32 0, i32* %9, align 4
  br label %67

67:                                               ; preds = %87, %66
  %68 = load i32, i32* %9, align 4
  %69 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %70 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = icmp slt i32 %68, %71
  br i1 %72, label %73, label %90

73:                                               ; preds = %67
  %74 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %75 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %74, i32 0, i32 6
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = load i32, i32* %9, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %73
  %84 = load i32, i32* @EBUSY, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %10, align 4
  br label %153

86:                                               ; preds = %73
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %9, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %9, align 4
  br label %67

90:                                               ; preds = %67
  %91 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %92 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  store i32 %93, i32* %11, align 4
  %94 = load i32, i32* %11, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %107

96:                                               ; preds = %90
  %97 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %98 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %97, i32 0, i32 4
  %99 = call i32 @mutex_lock(i32* %98)
  %100 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %101 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %100, i32 0, i32 5
  store i64 0, i64* %101, align 8
  %102 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %103 = call i32 @gspca_stream_off(%struct.gspca_dev* %102)
  %104 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %105 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %104, i32 0, i32 4
  %106 = call i32 @mutex_unlock(i32* %105)
  br label %107

107:                                              ; preds = %96, %90
  %108 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %109 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = icmp eq i32 %110, 130
  br i1 %111, label %112, label %113

112:                                              ; preds = %107
  store i32 0, i32* %11, align 4
  br label %113

113:                                              ; preds = %112, %107
  %114 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %115 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %113
  %119 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %120 = call i32 @frame_free(%struct.gspca_dev* %119)
  br label %121

121:                                              ; preds = %118, %113
  %122 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %7, align 8
  %123 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = icmp eq i64 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %121
  br label %153

127:                                              ; preds = %121
  %128 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %129 = load %struct.file*, %struct.file** %5, align 8
  %130 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %7, align 8
  %131 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %7, align 8
  %134 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = call i32 @frame_alloc(%struct.gspca_dev* %128, %struct.file* %129, i32 %132, i64 %135)
  store i32 %136, i32* %10, align 4
  %137 = load i32, i32* %10, align 4
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %152

139:                                              ; preds = %127
  %140 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %141 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = sext i32 %142 to i64
  %144 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %7, align 8
  %145 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %144, i32 0, i32 1
  store i64 %143, i64* %145, align 8
  %146 = load i32, i32* %11, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %139
  %149 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %150 = call i32 @gspca_init_transfer(%struct.gspca_dev* %149)
  store i32 %150, i32* %10, align 4
  br label %151

151:                                              ; preds = %148, %139
  br label %152

152:                                              ; preds = %151, %127
  br label %153

153:                                              ; preds = %152, %126, %83, %63, %49
  %154 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %155 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %154, i32 0, i32 3
  %156 = call i32 @mutex_unlock(i32* %155)
  %157 = load i32, i32* @D_STREAM, align 4
  %158 = load i32, i32* %10, align 4
  %159 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %7, align 8
  %160 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %159, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = call i32 @PDEBUG(i32 %157, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %158, i64 %161)
  %163 = load i32, i32* %10, align 4
  store i32 %163, i32* %4, align 4
  br label %164

164:                                              ; preds = %153, %27, %19
  %165 = load i32, i32* %4, align 4
  ret i32 %165
}

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @gspca_stream_off(%struct.gspca_dev*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @frame_free(%struct.gspca_dev*) #1

declare dso_local i32 @frame_alloc(%struct.gspca_dev*, %struct.file*, i32, i64) #1

declare dso_local i32 @gspca_init_transfer(%struct.gspca_dev*) #1

declare dso_local i32 @PDEBUG(i32, i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
