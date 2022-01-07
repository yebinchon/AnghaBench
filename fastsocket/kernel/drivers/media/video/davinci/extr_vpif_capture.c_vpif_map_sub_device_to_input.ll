; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_vpif_capture.c_vpif_map_sub_device_to_input.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_vpif_capture.c_vpif_map_sub_device_to_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32** }
%struct.vpif_subdev_info = type { i32 }
%struct.channel_obj = type { i64 }
%struct.vpif_capture_config = type { i32, %struct.vpif_subdev_info*, %struct.vpif_capture_chan_config* }
%struct.vpif_capture_chan_config = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i8* }

@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"vpif_map_sub_device_to_input\0A\00", align 1
@vpif_obj = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.vpif_subdev_info* (%struct.channel_obj*, %struct.vpif_capture_config*, i32, i32*)* @vpif_map_sub_device_to_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.vpif_subdev_info* @vpif_map_sub_device_to_input(%struct.channel_obj* %0, %struct.vpif_capture_config* %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.vpif_subdev_info*, align 8
  %6 = alloca %struct.channel_obj*, align 8
  %7 = alloca %struct.vpif_capture_config*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.vpif_capture_chan_config*, align 8
  %11 = alloca %struct.vpif_subdev_info*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.channel_obj* %0, %struct.channel_obj** %6, align 8
  store %struct.vpif_capture_config* %1, %struct.vpif_capture_config** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store %struct.vpif_subdev_info* null, %struct.vpif_subdev_info** %11, align 8
  store i8* null, i8** %12, align 8
  %14 = load i32, i32* @debug, align 4
  %15 = call i32 @vpif_dbg(i32 2, i32 %14, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.vpif_capture_config*, %struct.vpif_capture_config** %7, align 8
  %17 = getelementptr inbounds %struct.vpif_capture_config, %struct.vpif_capture_config* %16, i32 0, i32 2
  %18 = load %struct.vpif_capture_chan_config*, %struct.vpif_capture_chan_config** %17, align 8
  %19 = load %struct.channel_obj*, %struct.channel_obj** %6, align 8
  %20 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.vpif_capture_chan_config, %struct.vpif_capture_chan_config* %18, i64 %21
  store %struct.vpif_capture_chan_config* %22, %struct.vpif_capture_chan_config** %10, align 8
  store i32 0, i32* %13, align 4
  br label %23

23:                                               ; preds = %43, %4
  %24 = load i32, i32* %13, align 4
  %25 = load %struct.vpif_capture_chan_config*, %struct.vpif_capture_chan_config** %10, align 8
  %26 = getelementptr inbounds %struct.vpif_capture_chan_config, %struct.vpif_capture_chan_config* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %46

29:                                               ; preds = %23
  %30 = load i32, i32* %13, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %42

33:                                               ; preds = %29
  %34 = load %struct.vpif_capture_chan_config*, %struct.vpif_capture_chan_config** %10, align 8
  %35 = getelementptr inbounds %struct.vpif_capture_chan_config, %struct.vpif_capture_chan_config* %34, i32 0, i32 1
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = load i32, i32* %13, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  store i8* %41, i8** %12, align 8
  br label %46

42:                                               ; preds = %29
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %13, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %13, align 4
  br label %23

46:                                               ; preds = %33, %23
  %47 = load i32, i32* %13, align 4
  %48 = load %struct.vpif_capture_chan_config*, %struct.vpif_capture_chan_config** %10, align 8
  %49 = getelementptr inbounds %struct.vpif_capture_chan_config, %struct.vpif_capture_chan_config* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp eq i32 %47, %50
  br i1 %51, label %55, label %52

52:                                               ; preds = %46
  %53 = load i8*, i8** %12, align 8
  %54 = icmp eq i8* null, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %52, %46
  %56 = load %struct.vpif_subdev_info*, %struct.vpif_subdev_info** %11, align 8
  store %struct.vpif_subdev_info* %56, %struct.vpif_subdev_info** %5, align 8
  br label %102

57:                                               ; preds = %52
  store i32 0, i32* %13, align 4
  br label %58

58:                                               ; preds = %79, %57
  %59 = load i32, i32* %13, align 4
  %60 = load %struct.vpif_capture_config*, %struct.vpif_capture_config** %7, align 8
  %61 = getelementptr inbounds %struct.vpif_capture_config, %struct.vpif_capture_config* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp slt i32 %59, %62
  br i1 %63, label %64, label %82

64:                                               ; preds = %58
  %65 = load %struct.vpif_capture_config*, %struct.vpif_capture_config** %7, align 8
  %66 = getelementptr inbounds %struct.vpif_capture_config, %struct.vpif_capture_config* %65, i32 0, i32 1
  %67 = load %struct.vpif_subdev_info*, %struct.vpif_subdev_info** %66, align 8
  %68 = load i32, i32* %13, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.vpif_subdev_info, %struct.vpif_subdev_info* %67, i64 %69
  store %struct.vpif_subdev_info* %70, %struct.vpif_subdev_info** %11, align 8
  %71 = load %struct.vpif_subdev_info*, %struct.vpif_subdev_info** %11, align 8
  %72 = getelementptr inbounds %struct.vpif_subdev_info, %struct.vpif_subdev_info* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i8*, i8** %12, align 8
  %75 = call i32 @strcmp(i32 %73, i8* %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %64
  br label %82

78:                                               ; preds = %64
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %13, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %13, align 4
  br label %58

82:                                               ; preds = %77, %58
  %83 = load i32, i32* %13, align 4
  %84 = load %struct.vpif_capture_config*, %struct.vpif_capture_config** %7, align 8
  %85 = getelementptr inbounds %struct.vpif_capture_config, %struct.vpif_capture_config* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = icmp eq i32 %83, %86
  br i1 %87, label %88, label %90

88:                                               ; preds = %82
  %89 = load %struct.vpif_subdev_info*, %struct.vpif_subdev_info** %11, align 8
  store %struct.vpif_subdev_info* %89, %struct.vpif_subdev_info** %5, align 8
  br label %102

90:                                               ; preds = %82
  %91 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @vpif_obj, i32 0, i32 0), align 8
  %92 = load i32, i32* %13, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32*, i32** %91, i64 %93
  %95 = load i32*, i32** %94, align 8
  %96 = icmp eq i32* null, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %90
  store %struct.vpif_subdev_info* null, %struct.vpif_subdev_info** %5, align 8
  br label %102

98:                                               ; preds = %90
  %99 = load i32, i32* %13, align 4
  %100 = load i32*, i32** %9, align 8
  store i32 %99, i32* %100, align 4
  %101 = load %struct.vpif_subdev_info*, %struct.vpif_subdev_info** %11, align 8
  store %struct.vpif_subdev_info* %101, %struct.vpif_subdev_info** %5, align 8
  br label %102

102:                                              ; preds = %98, %97, %88, %55
  %103 = load %struct.vpif_subdev_info*, %struct.vpif_subdev_info** %5, align 8
  ret %struct.vpif_subdev_info* %103
}

declare dso_local i32 @vpif_dbg(i32, i32, i8*) #1

declare dso_local i32 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
