; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_stv680.c_stv680_newframe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_stv680.c_stv680_newframe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_stv = type { i64, i64, %struct.TYPE_4__*, %struct.TYPE_3__*, i32, i64 }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64, i32 }

@FRAME_READY = common dso_local global i64 0, align 8
@FRAME_GRABBING = common dso_local global i64 0, align 8
@BUFFER_READY = common dso_local global i64 0, align 8
@STV680_MAX_NULLPACKETS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [57 x i8] c"STV(i): too many null length packets, restarting capture\00", align 1
@FRAME_ERROR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"STV(e): FRAME_ERROR in _newframe\00", align 1
@EIO = common dso_local global i32 0, align 4
@BUFFER_BUSY = common dso_local global i64 0, align 8
@BUFFER_UNUSED = common dso_local global i64 0, align 8
@STV680_NUMSCRATCH = common dso_local global i64 0, align 8
@STV680_MAX_ERRORS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"STV(i): too many errors, restarting capture\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_stv*, i32)* @stv680_newframe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stv680_newframe(%struct.usb_stv* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_stv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.usb_stv* %0, %struct.usb_stv** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %156, %2
  %8 = load %struct.usb_stv*, %struct.usb_stv** %4, align 8
  %9 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %8, i32 0, i32 5
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %36

12:                                               ; preds = %7
  %13 = load %struct.usb_stv*, %struct.usb_stv** %4, align 8
  %14 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %13, i32 0, i32 3
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @FRAME_READY, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %34, label %23

23:                                               ; preds = %12
  %24 = load %struct.usb_stv*, %struct.usb_stv** %4, align 8
  %25 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %24, i32 0, i32 3
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @FRAME_GRABBING, align 8
  %33 = icmp eq i64 %31, %32
  br label %34

34:                                               ; preds = %23, %12
  %35 = phi i1 [ true, %12 ], [ %33, %23 ]
  br label %36

36:                                               ; preds = %34, %7
  %37 = phi i1 [ false, %7 ], [ %35, %34 ]
  br i1 %37, label %38, label %157

38:                                               ; preds = %36
  %39 = load %struct.usb_stv*, %struct.usb_stv** %4, align 8
  %40 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %39, i32 0, i32 3
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %38
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %6, align 4
  br label %51

51:                                               ; preds = %48, %38
  %52 = load %struct.usb_stv*, %struct.usb_stv** %4, align 8
  %53 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.usb_stv*, %struct.usb_stv** %4, align 8
  %56 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %55, i32 0, i32 2
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = load %struct.usb_stv*, %struct.usb_stv** %4, align 8
  %59 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @BUFFER_READY, align 8
  %65 = icmp eq i64 %63, %64
  %66 = zext i1 %65 to i32
  %67 = call i32 @wait_event_interruptible(i32 %54, i32 %66)
  %68 = load %struct.usb_stv*, %struct.usb_stv** %4, align 8
  %69 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @STV680_MAX_NULLPACKETS, align 8
  %72 = icmp sgt i64 %70, %71
  br i1 %72, label %73, label %81

73:                                               ; preds = %51
  %74 = load %struct.usb_stv*, %struct.usb_stv** %4, align 8
  %75 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %74, i32 0, i32 1
  store i64 0, i64* %75, align 8
  %76 = call i32 @PDEBUG(i32 2, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  %77 = load %struct.usb_stv*, %struct.usb_stv** %4, align 8
  %78 = call i32 @stv680_stop_stream(%struct.usb_stv* %77)
  %79 = load %struct.usb_stv*, %struct.usb_stv** %4, align 8
  %80 = call i32 @stv680_start_stream(%struct.usb_stv* %79)
  br label %156

81:                                               ; preds = %51
  %82 = load %struct.usb_stv*, %struct.usb_stv** %4, align 8
  %83 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %82, i32 0, i32 2
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = load %struct.usb_stv*, %struct.usb_stv** %4, align 8
  %86 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @BUFFER_READY, align 8
  %92 = icmp ne i64 %90, %91
  br i1 %92, label %93, label %105

93:                                               ; preds = %81
  %94 = load i64, i64* @FRAME_ERROR, align 8
  %95 = load %struct.usb_stv*, %struct.usb_stv** %4, align 8
  %96 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %95, i32 0, i32 3
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %96, align 8
  %98 = load i32, i32* %5, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 0
  store i64 %94, i64* %101, align 8
  %102 = call i32 @PDEBUG(i32 2, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %103 = load i32, i32* @EIO, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %3, align 4
  br label %158

105:                                              ; preds = %81
  %106 = load i64, i64* @BUFFER_BUSY, align 8
  %107 = load %struct.usb_stv*, %struct.usb_stv** %4, align 8
  %108 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %107, i32 0, i32 2
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %108, align 8
  %110 = load %struct.usb_stv*, %struct.usb_stv** %4, align 8
  %111 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  store i64 %106, i64* %114, align 8
  %115 = load %struct.usb_stv*, %struct.usb_stv** %4, align 8
  %116 = load %struct.usb_stv*, %struct.usb_stv** %4, align 8
  %117 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %116, i32 0, i32 2
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %117, align 8
  %119 = load %struct.usb_stv*, %struct.usb_stv** %4, align 8
  %120 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i64 %121
  %123 = call i32 @bayer_unshuffle(%struct.usb_stv* %115, %struct.TYPE_4__* %122)
  %124 = load i64, i64* @BUFFER_UNUSED, align 8
  %125 = load %struct.usb_stv*, %struct.usb_stv** %4, align 8
  %126 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %125, i32 0, i32 2
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %126, align 8
  %128 = load %struct.usb_stv*, %struct.usb_stv** %4, align 8
  %129 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 0
  store i64 %124, i64* %132, align 8
  %133 = load %struct.usb_stv*, %struct.usb_stv** %4, align 8
  %134 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = add i64 %135, 1
  store i64 %136, i64* %134, align 8
  %137 = load %struct.usb_stv*, %struct.usb_stv** %4, align 8
  %138 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @STV680_NUMSCRATCH, align 8
  %141 = icmp uge i64 %139, %140
  br i1 %141, label %142, label %145

142:                                              ; preds = %105
  %143 = load %struct.usb_stv*, %struct.usb_stv** %4, align 8
  %144 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %143, i32 0, i32 0
  store i64 0, i64* %144, align 8
  br label %145

145:                                              ; preds = %142, %105
  %146 = load i32, i32* %6, align 4
  %147 = load i32, i32* @STV680_MAX_ERRORS, align 4
  %148 = icmp sgt i32 %146, %147
  br i1 %148, label %149, label %155

149:                                              ; preds = %145
  store i32 0, i32* %6, align 4
  %150 = call i32 @PDEBUG(i32 2, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  %151 = load %struct.usb_stv*, %struct.usb_stv** %4, align 8
  %152 = call i32 @stv680_stop_stream(%struct.usb_stv* %151)
  %153 = load %struct.usb_stv*, %struct.usb_stv** %4, align 8
  %154 = call i32 @stv680_start_stream(%struct.usb_stv* %153)
  br label %155

155:                                              ; preds = %149, %145
  br label %156

156:                                              ; preds = %155, %73
  br label %7

157:                                              ; preds = %36
  store i32 0, i32* %3, align 4
  br label %158

158:                                              ; preds = %157, %93
  %159 = load i32, i32* %3, align 4
  ret i32 %159
}

declare dso_local i32 @wait_event_interruptible(i32, i32) #1

declare dso_local i32 @PDEBUG(i32, i8*) #1

declare dso_local i32 @stv680_stop_stream(%struct.usb_stv*) #1

declare dso_local i32 @stv680_start_stream(%struct.usb_stv*) #1

declare dso_local i32 @bayer_unshuffle(%struct.usb_stv*, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
