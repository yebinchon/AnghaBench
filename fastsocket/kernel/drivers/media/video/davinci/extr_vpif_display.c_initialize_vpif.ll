; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_vpif_display.c_initialize_vpif.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_vpif_display.c_initialize_vpif.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64*, i32*, i64* }
%struct.TYPE_3__ = type { i32* }

@ch2_numbuffers = common dso_local global i64 0, align 8
@config_params = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@ch3_numbuffers = common dso_local global i64 0, align 8
@ch2_bufsize = common dso_local global i64 0, align 8
@VPIF_CHANNEL2_VIDEO = common dso_local global i64 0, align 8
@ch3_bufsize = common dso_local global i64 0, align 8
@VPIF_CHANNEL3_VIDEO = common dso_local global i64 0, align 8
@VPIF_DISPLAY_MAX_DEVICES = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@vpif_obj = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@ENOMEM = common dso_local global i32 0, align 4
@VPIF_DISPLAY_NUM_CHANNELS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @initialize_vpif to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @initialize_vpif() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 0, i32* %5, align 4
  %8 = load i64, i64* @ch2_numbuffers, align 8
  %9 = icmp sgt i64 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %0
  %11 = load i64, i64* @ch2_numbuffers, align 8
  %12 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @config_params, i32 0, i32 0), align 8
  %13 = icmp slt i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @config_params, i32 0, i32 0), align 8
  store i64 %15, i64* @ch2_numbuffers, align 8
  br label %16

16:                                               ; preds = %14, %10, %0
  %17 = load i64, i64* @ch3_numbuffers, align 8
  %18 = icmp sgt i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %16
  %20 = load i64, i64* @ch3_numbuffers, align 8
  %21 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @config_params, i32 0, i32 0), align 8
  %22 = icmp slt i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @config_params, i32 0, i32 0), align 8
  store i64 %24, i64* @ch3_numbuffers, align 8
  br label %25

25:                                               ; preds = %23, %19, %16
  %26 = load i64, i64* @ch2_bufsize, align 8
  %27 = load i64*, i64** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @config_params, i32 0, i32 1), align 8
  %28 = load i64, i64* @VPIF_CHANNEL2_VIDEO, align 8
  %29 = getelementptr inbounds i64, i64* %27, i64 %28
  %30 = load i64, i64* %29, align 8
  %31 = icmp slt i64 %26, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %25
  %33 = load i64*, i64** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @config_params, i32 0, i32 1), align 8
  %34 = load i64, i64* @VPIF_CHANNEL2_VIDEO, align 8
  %35 = getelementptr inbounds i64, i64* %33, i64 %34
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* @ch2_bufsize, align 8
  br label %37

37:                                               ; preds = %32, %25
  %38 = load i64, i64* @ch3_bufsize, align 8
  %39 = load i64*, i64** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @config_params, i32 0, i32 1), align 8
  %40 = load i64, i64* @VPIF_CHANNEL3_VIDEO, align 8
  %41 = getelementptr inbounds i64, i64* %39, i64 %40
  %42 = load i64, i64* %41, align 8
  %43 = icmp slt i64 %38, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %37
  %45 = load i64*, i64** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @config_params, i32 0, i32 1), align 8
  %46 = load i64, i64* @VPIF_CHANNEL3_VIDEO, align 8
  %47 = getelementptr inbounds i64, i64* %45, i64 %46
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* @ch3_bufsize, align 8
  br label %49

49:                                               ; preds = %44, %37
  %50 = load i64, i64* @ch2_numbuffers, align 8
  %51 = trunc i64 %50 to i32
  %52 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @config_params, i32 0, i32 2), align 8
  %53 = load i64, i64* @VPIF_CHANNEL2_VIDEO, align 8
  %54 = getelementptr inbounds i32, i32* %52, i64 %53
  store i32 %51, i32* %54, align 4
  %55 = load i64, i64* @ch2_numbuffers, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %49
  %58 = load i64, i64* @ch2_bufsize, align 8
  %59 = load i64*, i64** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @config_params, i32 0, i32 3), align 8
  %60 = load i64, i64* @VPIF_CHANNEL2_VIDEO, align 8
  %61 = getelementptr inbounds i64, i64* %59, i64 %60
  store i64 %58, i64* %61, align 8
  br label %62

62:                                               ; preds = %57, %49
  %63 = load i64, i64* @ch3_numbuffers, align 8
  %64 = trunc i64 %63 to i32
  %65 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @config_params, i32 0, i32 2), align 8
  %66 = load i64, i64* @VPIF_CHANNEL3_VIDEO, align 8
  %67 = getelementptr inbounds i32, i32* %65, i64 %66
  store i32 %64, i32* %67, align 4
  %68 = load i64, i64* @ch3_numbuffers, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %62
  %71 = load i64, i64* @ch3_bufsize, align 8
  %72 = load i64*, i64** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @config_params, i32 0, i32 3), align 8
  %73 = load i64, i64* @VPIF_CHANNEL3_VIDEO, align 8
  %74 = getelementptr inbounds i64, i64* %72, i64 %73
  store i64 %71, i64* %74, align 8
  br label %75

75:                                               ; preds = %70, %62
  store i32 0, i32* %6, align 4
  br label %76

76:                                               ; preds = %98, %75
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* @VPIF_DISPLAY_MAX_DEVICES, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %101

80:                                               ; preds = %76
  %81 = load i32, i32* @GFP_KERNEL, align 4
  %82 = call i32 @kmalloc(i32 4, i32 %81)
  %83 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @vpif_obj, i32 0, i32 0), align 8
  %84 = load i32, i32* %6, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  store i32 %82, i32* %86, align 4
  %87 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @vpif_obj, i32 0, i32 0), align 8
  %88 = load i32, i32* %6, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %97, label %93

93:                                               ; preds = %80
  %94 = load i32, i32* %6, align 4
  store i32 %94, i32* %2, align 4
  %95 = load i32, i32* @ENOMEM, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %5, align 4
  br label %110

97:                                               ; preds = %80
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %6, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %6, align 4
  br label %76

101:                                              ; preds = %76
  %102 = load i32, i32* @VPIF_DISPLAY_MAX_DEVICES, align 4
  store i32 %102, i32* %2, align 4
  %103 = load i32, i32* @VPIF_DISPLAY_NUM_CHANNELS, align 4
  store i32 %103, i32* %3, align 4
  %104 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @config_params, i32 0, i32 2), align 8
  %105 = load i32, i32* %6, align 4
  %106 = sub nsw i32 %105, 1
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %104, i64 %107
  %109 = load i32, i32* %108, align 4
  store i32 %109, i32* %4, align 4
  store i32 0, i32* %1, align 4
  br label %127

110:                                              ; preds = %93
  store i32 0, i32* %7, align 4
  br label %111

111:                                              ; preds = %122, %110
  %112 = load i32, i32* %7, align 4
  %113 = load i32, i32* %2, align 4
  %114 = icmp slt i32 %112, %113
  br i1 %114, label %115, label %125

115:                                              ; preds = %111
  %116 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @vpif_obj, i32 0, i32 0), align 8
  %117 = load i32, i32* %7, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @kfree(i32 %120)
  br label %122

122:                                              ; preds = %115
  %123 = load i32, i32* %7, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %7, align 4
  br label %111

125:                                              ; preds = %111
  %126 = load i32, i32* %5, align 4
  store i32 %126, i32* %1, align 4
  br label %127

127:                                              ; preds = %125, %101
  %128 = load i32, i32* %1, align 4
  ret i32 %128
}

declare dso_local i32 @kmalloc(i32, i32) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
