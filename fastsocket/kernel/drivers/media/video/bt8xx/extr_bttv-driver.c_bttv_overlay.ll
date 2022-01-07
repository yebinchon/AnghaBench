; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/bt8xx/extr_bttv-driver.c_bttv_overlay.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/bt8xx/extr_bttv-driver.c_bttv_overlay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.bttv_fh = type { i32, %struct.TYPE_8__, i32, %struct.bttv* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.bttv = type { %struct.TYPE_7__*, i32, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.bttv_buffer = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"bttv%d: overlay: !setup_ok\0A\00", align 1
@RESOURCE_OVERLAY = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, i32)* @bttv_overlay to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bttv_overlay(%struct.file* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.bttv_fh*, align 8
  %9 = alloca %struct.bttv*, align 8
  %10 = alloca %struct.bttv_buffer*, align 8
  %11 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.bttv_fh*
  store %struct.bttv_fh* %13, %struct.bttv_fh** %8, align 8
  %14 = load %struct.bttv_fh*, %struct.bttv_fh** %8, align 8
  %15 = getelementptr inbounds %struct.bttv_fh, %struct.bttv_fh* %14, i32 0, i32 3
  %16 = load %struct.bttv*, %struct.bttv** %15, align 8
  store %struct.bttv* %16, %struct.bttv** %9, align 8
  store i32 0, i32* %11, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %56

19:                                               ; preds = %3
  %20 = load %struct.bttv*, %struct.bttv** %9, align 8
  %21 = getelementptr inbounds %struct.bttv, %struct.bttv* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %19
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %107

32:                                               ; preds = %19
  %33 = load %struct.bttv_fh*, %struct.bttv_fh** %8, align 8
  %34 = getelementptr inbounds %struct.bttv_fh, %struct.bttv_fh* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  %40 = call i64 @unlikely(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %32
  %43 = load %struct.bttv*, %struct.bttv** %9, align 8
  %44 = getelementptr inbounds %struct.bttv, %struct.bttv* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @dprintk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %11, align 4
  br label %50

50:                                               ; preds = %42, %32
  %51 = load i32, i32* %11, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  %54 = load i32, i32* %11, align 4
  store i32 %54, i32* %4, align 4
  br label %107

55:                                               ; preds = %50
  br label %56

56:                                               ; preds = %55, %3
  %57 = load %struct.bttv*, %struct.bttv** %9, align 8
  %58 = load %struct.bttv_fh*, %struct.bttv_fh** %8, align 8
  %59 = load i32, i32* @RESOURCE_OVERLAY, align 4
  %60 = call i32 @check_alloc_btres_lock(%struct.bttv* %57, %struct.bttv_fh* %58, i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %56
  %63 = load i32, i32* @EBUSY, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %4, align 4
  br label %107

65:                                               ; preds = %56
  %66 = load i32, i32* %7, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %100

68:                                               ; preds = %65
  %69 = load %struct.bttv*, %struct.bttv** %9, align 8
  %70 = getelementptr inbounds %struct.bttv, %struct.bttv* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.bttv_fh*, %struct.bttv_fh** %8, align 8
  %73 = getelementptr inbounds %struct.bttv_fh, %struct.bttv_fh* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  store i32 %71, i32* %74, align 4
  %75 = call %struct.bttv_buffer* @videobuf_sg_alloc(i32 4)
  store %struct.bttv_buffer* %75, %struct.bttv_buffer** %10, align 8
  %76 = load %struct.bttv*, %struct.bttv** %9, align 8
  %77 = getelementptr inbounds %struct.bttv, %struct.bttv* %76, i32 0, i32 0
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %77, align 8
  %79 = load %struct.bttv_fh*, %struct.bttv_fh** %8, align 8
  %80 = getelementptr inbounds %struct.bttv_fh, %struct.bttv_fh* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 0
  %83 = xor i1 %82, true
  %84 = xor i1 %83, true
  %85 = zext i1 %84 to i32
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.bttv_buffer*, %struct.bttv_buffer** %10, align 8
  %91 = getelementptr inbounds %struct.bttv_buffer, %struct.bttv_buffer* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 4
  %92 = load %struct.bttv*, %struct.bttv** %9, align 8
  %93 = load %struct.bttv_fh*, %struct.bttv_fh** %8, align 8
  %94 = getelementptr inbounds %struct.bttv_fh, %struct.bttv_fh* %93, i32 0, i32 1
  %95 = load %struct.bttv_fh*, %struct.bttv_fh** %8, align 8
  %96 = getelementptr inbounds %struct.bttv_fh, %struct.bttv_fh* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.bttv_buffer*, %struct.bttv_buffer** %10, align 8
  %99 = call i32 @bttv_overlay_risc(%struct.bttv* %92, %struct.TYPE_8__* %94, i32 %97, %struct.bttv_buffer* %98)
  br label %101

100:                                              ; preds = %65
  store %struct.bttv_buffer* null, %struct.bttv_buffer** %10, align 8
  br label %101

101:                                              ; preds = %100, %68
  %102 = load %struct.bttv*, %struct.bttv** %9, align 8
  %103 = load %struct.bttv_fh*, %struct.bttv_fh** %8, align 8
  %104 = load %struct.bttv_buffer*, %struct.bttv_buffer** %10, align 8
  %105 = call i32 @bttv_switch_overlay(%struct.bttv* %102, %struct.bttv_fh* %103, %struct.bttv_buffer* %104)
  store i32 %105, i32* %11, align 4
  %106 = load i32, i32* %11, align 4
  store i32 %106, i32* %4, align 4
  br label %107

107:                                              ; preds = %101, %62, %53, %29
  %108 = load i32, i32* %4, align 4
  ret i32 %108
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dprintk(i8*, i32) #1

declare dso_local i32 @check_alloc_btres_lock(%struct.bttv*, %struct.bttv_fh*, i32) #1

declare dso_local %struct.bttv_buffer* @videobuf_sg_alloc(i32) #1

declare dso_local i32 @bttv_overlay_risc(%struct.bttv*, %struct.TYPE_8__*, i32, %struct.bttv_buffer*) #1

declare dso_local i32 @bttv_switch_overlay(%struct.bttv*, %struct.bttv_fh*, %struct.bttv_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
