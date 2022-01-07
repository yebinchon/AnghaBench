; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/sn9c102/extr_sn9c102_core.c_sn9c102_find_eof_header.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/sn9c102/extr_sn9c102_core.c_sn9c102_find_eof_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32 }
%struct.sn9c102_device = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }

@sn9c102_find_eof_header.eof_header = internal constant [4 x [4 x %struct.TYPE_8__]] [[4 x %struct.TYPE_8__] zeroinitializer, [4 x %struct.TYPE_8__] [%struct.TYPE_8__ { i32 64, i32 0, i32 0, i32 0 }, %struct.TYPE_8__ zeroinitializer, %struct.TYPE_8__ zeroinitializer, %struct.TYPE_8__ zeroinitializer], [4 x %struct.TYPE_8__] [%struct.TYPE_8__ { i32 128, i32 0, i32 0, i32 0 }, %struct.TYPE_8__ zeroinitializer, %struct.TYPE_8__ zeroinitializer, %struct.TYPE_8__ zeroinitializer], [4 x %struct.TYPE_8__] [%struct.TYPE_8__ { i32 192, i32 0, i32 0, i32 0 }, %struct.TYPE_8__ zeroinitializer, %struct.TYPE_8__ zeroinitializer, %struct.TYPE_8__ zeroinitializer]], align 16
@V4L2_PIX_FMT_SN9C10X = common dso_local global i64 0, align 8
@V4L2_PIX_FMT_JPEG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.sn9c102_device*, i8*, i64)* @sn9c102_find_eof_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @sn9c102_find_eof_header(%struct.sn9c102_device* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sn9c102_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.sn9c102_device* %0, %struct.sn9c102_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.sn9c102_device*, %struct.sn9c102_device** %5, align 8
  %11 = getelementptr inbounds %struct.sn9c102_device, %struct.sn9c102_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @V4L2_PIX_FMT_SN9C10X, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %25, label %17

17:                                               ; preds = %3
  %18 = load %struct.sn9c102_device*, %struct.sn9c102_device** %5, align 8
  %19 = getelementptr inbounds %struct.sn9c102_device, %struct.sn9c102_device* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @V4L2_PIX_FMT_JPEG, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %17, %3
  store i8* null, i8** %4, align 8
  br label %64

26:                                               ; preds = %17
  store i64 0, i64* %8, align 8
  br label %27

27:                                               ; preds = %60, %26
  %28 = load i64, i64* %7, align 8
  %29 = icmp uge i64 %28, 4
  br i1 %29, label %30, label %35

30:                                               ; preds = %27
  %31 = load i64, i64* %8, align 8
  %32 = load i64, i64* %7, align 8
  %33 = sub i64 %32, 4
  %34 = icmp ule i64 %31, %33
  br label %35

35:                                               ; preds = %30, %27
  %36 = phi i1 [ false, %27 ], [ %34, %30 ]
  br i1 %36, label %37, label %63

37:                                               ; preds = %35
  store i64 0, i64* %9, align 8
  br label %38

38:                                               ; preds = %56, %37
  %39 = load i64, i64* %9, align 8
  %40 = call i64 @ARRAY_SIZE(%struct.TYPE_8__** bitcast ([4 x [4 x %struct.TYPE_8__]]* @sn9c102_find_eof_header.eof_header to %struct.TYPE_8__**))
  %41 = icmp ult i64 %39, %40
  br i1 %41, label %42, label %59

42:                                               ; preds = %38
  %43 = load i8*, i8** %6, align 8
  %44 = load i64, i64* %8, align 8
  %45 = getelementptr i8, i8* %43, i64 %44
  %46 = load i64, i64* %9, align 8
  %47 = getelementptr inbounds [4 x [4 x %struct.TYPE_8__]], [4 x [4 x %struct.TYPE_8__]]* @sn9c102_find_eof_header.eof_header, i64 0, i64 %46
  %48 = getelementptr inbounds [4 x %struct.TYPE_8__], [4 x %struct.TYPE_8__]* %47, i64 0, i64 0
  %49 = call i32 @memcmp(i8* %45, %struct.TYPE_8__* %48, i32 4)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %42
  %52 = load i8*, i8** %6, align 8
  %53 = load i64, i64* %8, align 8
  %54 = getelementptr i8, i8* %52, i64 %53
  store i8* %54, i8** %4, align 8
  br label %64

55:                                               ; preds = %42
  br label %56

56:                                               ; preds = %55
  %57 = load i64, i64* %9, align 8
  %58 = add i64 %57, 1
  store i64 %58, i64* %9, align 8
  br label %38

59:                                               ; preds = %38
  br label %60

60:                                               ; preds = %59
  %61 = load i64, i64* %8, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* %8, align 8
  br label %27

63:                                               ; preds = %35
  store i8* null, i8** %4, align 8
  br label %64

64:                                               ; preds = %63, %51, %25
  %65 = load i8*, i8** %4, align 8
  ret i8* %65
}

declare dso_local i64 @ARRAY_SIZE(%struct.TYPE_8__**) #1

declare dso_local i32 @memcmp(i8*, %struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
