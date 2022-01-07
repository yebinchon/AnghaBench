; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx18/extr_cx18-ioctl.c_cx18_s_std.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx18/extr_cx18-ioctl.c_cx18_s_std.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.cx18_open_id = type { i32, %struct.cx18* }
%struct.cx18 = type { i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32* }
%struct.TYPE_3__ = type { i32, i32, i32 }

@V4L2_STD_ALL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@CX18_F_I_RADIO_USER = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@V4L2_STD_525_60 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Switching standard to %llx.\0A\00", align 1
@core = common dso_local global i32 0, align 4
@s_std = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx18_s_std(%struct.file* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.cx18_open_id*, align 8
  %9 = alloca %struct.cx18*, align 8
  %10 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.cx18_open_id*
  store %struct.cx18_open_id* %12, %struct.cx18_open_id** %8, align 8
  %13 = load %struct.cx18_open_id*, %struct.cx18_open_id** %8, align 8
  %14 = getelementptr inbounds %struct.cx18_open_id, %struct.cx18_open_id* %13, i32 0, i32 1
  %15 = load %struct.cx18*, %struct.cx18** %14, align 8
  store %struct.cx18* %15, %struct.cx18** %9, align 8
  %16 = load %struct.cx18*, %struct.cx18** %9, align 8
  %17 = getelementptr inbounds %struct.cx18, %struct.cx18* %16, i32 0, i32 7
  %18 = load %struct.cx18_open_id*, %struct.cx18_open_id** %8, align 8
  %19 = getelementptr inbounds %struct.cx18_open_id, %struct.cx18_open_id* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @v4l2_prio_check(i32* %17, i32 %20)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load i32, i32* %10, align 4
  store i32 %25, i32* %4, align 4
  br label %137

26:                                               ; preds = %3
  %27 = load i32*, i32** %7, align 8
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @V4L2_STD_ALL, align 4
  %30 = and i32 %28, %29
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %137

35:                                               ; preds = %26
  %36 = load i32*, i32** %7, align 8
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.cx18*, %struct.cx18** %9, align 8
  %39 = getelementptr inbounds %struct.cx18, %struct.cx18* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp eq i32 %37, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  store i32 0, i32* %4, align 4
  br label %137

43:                                               ; preds = %35
  %44 = load i32, i32* @CX18_F_I_RADIO_USER, align 4
  %45 = load %struct.cx18*, %struct.cx18** %9, align 8
  %46 = getelementptr inbounds %struct.cx18, %struct.cx18* %45, i32 0, i32 6
  %47 = call i64 @test_bit(i32 %44, i32* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %43
  %50 = load %struct.cx18*, %struct.cx18** %9, align 8
  %51 = getelementptr inbounds %struct.cx18, %struct.cx18* %50, i32 0, i32 5
  %52 = call i64 @atomic_read(i32* %51)
  %53 = icmp sgt i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %49, %43
  %55 = load i32, i32* @EBUSY, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %4, align 4
  br label %137

57:                                               ; preds = %49
  %58 = load i32*, i32** %7, align 8
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.cx18*, %struct.cx18** %9, align 8
  %61 = getelementptr inbounds %struct.cx18, %struct.cx18* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  %62 = load i32*, i32** %7, align 8
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @V4L2_STD_525_60, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  %67 = zext i1 %66 to i64
  %68 = select i1 %66, i32 1, i32 0
  %69 = load %struct.cx18*, %struct.cx18** %9, align 8
  %70 = getelementptr inbounds %struct.cx18, %struct.cx18* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  %71 = load %struct.cx18*, %struct.cx18** %9, align 8
  %72 = getelementptr inbounds %struct.cx18, %struct.cx18* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %73, 0
  %75 = xor i1 %74, true
  %76 = zext i1 %75 to i32
  %77 = load %struct.cx18*, %struct.cx18** %9, align 8
  %78 = getelementptr inbounds %struct.cx18, %struct.cx18* %77, i32 0, i32 2
  store i32 %76, i32* %78, align 8
  %79 = load %struct.cx18*, %struct.cx18** %9, align 8
  %80 = getelementptr inbounds %struct.cx18, %struct.cx18* %79, i32 0, i32 4
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  store i32 %76, i32* %81, align 8
  %82 = load %struct.cx18*, %struct.cx18** %9, align 8
  %83 = getelementptr inbounds %struct.cx18, %struct.cx18* %82, i32 0, i32 4
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 1
  store i32 720, i32* %84, align 4
  %85 = load %struct.cx18*, %struct.cx18** %9, align 8
  %86 = getelementptr inbounds %struct.cx18, %struct.cx18* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = icmp ne i32 %87, 0
  %89 = zext i1 %88 to i64
  %90 = select i1 %88, i32 576, i32 480
  %91 = load %struct.cx18*, %struct.cx18** %9, align 8
  %92 = getelementptr inbounds %struct.cx18, %struct.cx18* %91, i32 0, i32 4
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 2
  store i32 %90, i32* %93, align 8
  %94 = load %struct.cx18*, %struct.cx18** %9, align 8
  %95 = getelementptr inbounds %struct.cx18, %struct.cx18* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = icmp ne i32 %96, 0
  %98 = zext i1 %97 to i64
  %99 = select i1 %97, i32 18, i32 12
  %100 = load %struct.cx18*, %struct.cx18** %9, align 8
  %101 = getelementptr inbounds %struct.cx18, %struct.cx18* %100, i32 0, i32 3
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  store i32 %99, i32* %102, align 8
  %103 = load %struct.cx18*, %struct.cx18** %9, align 8
  %104 = getelementptr inbounds %struct.cx18, %struct.cx18* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = icmp ne i32 %105, 0
  %107 = zext i1 %106 to i64
  %108 = select i1 %106, i32 6, i32 10
  %109 = load %struct.cx18*, %struct.cx18** %9, align 8
  %110 = getelementptr inbounds %struct.cx18, %struct.cx18* %109, i32 0, i32 3
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 1
  %112 = load i32*, i32** %111, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 0
  store i32 %108, i32* %113, align 4
  %114 = load %struct.cx18*, %struct.cx18** %9, align 8
  %115 = getelementptr inbounds %struct.cx18, %struct.cx18* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = icmp ne i32 %116, 0
  %118 = zext i1 %117 to i64
  %119 = select i1 %117, i32 318, i32 273
  %120 = load %struct.cx18*, %struct.cx18** %9, align 8
  %121 = getelementptr inbounds %struct.cx18, %struct.cx18* %120, i32 0, i32 3
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 1
  %123 = load i32*, i32** %122, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 1
  store i32 %119, i32* %124, align 4
  %125 = load %struct.cx18*, %struct.cx18** %9, align 8
  %126 = getelementptr inbounds %struct.cx18, %struct.cx18* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = sext i32 %127 to i64
  %129 = call i32 @CX18_DEBUG_INFO(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %128)
  %130 = load %struct.cx18*, %struct.cx18** %9, align 8
  %131 = load i32, i32* @core, align 4
  %132 = load i32, i32* @s_std, align 4
  %133 = load %struct.cx18*, %struct.cx18** %9, align 8
  %134 = getelementptr inbounds %struct.cx18, %struct.cx18* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @cx18_call_all(%struct.cx18* %130, i32 %131, i32 %132, i32 %135)
  store i32 0, i32* %4, align 4
  br label %137

137:                                              ; preds = %57, %54, %42, %32, %24
  %138 = load i32, i32* %4, align 4
  ret i32 %138
}

declare dso_local i32 @v4l2_prio_check(i32*, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @CX18_DEBUG_INFO(i8*, i64) #1

declare dso_local i32 @cx18_call_all(%struct.cx18*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
