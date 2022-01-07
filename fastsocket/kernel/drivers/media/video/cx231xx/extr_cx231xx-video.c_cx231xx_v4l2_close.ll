; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-video.c_cx231xx_v4l2_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-video.c_cx231xx_v4l2_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.cx231xx_fh* }
%struct.cx231xx_fh = type { i32, i64, i64, i32, i32, i64, i32, i32, i32, %struct.cx231xx_fh* }
%struct.cx231xx = type { i32, i64, i64, i32, i32, i64, i32, i32, i32, %struct.cx231xx* }

@.str = private unnamed_addr constant [10 x i8] c"users=%d\0A\00", align 1
@CX231XX_BOARD_CNXT_VIDEO_GRABBER = common dso_local global i64 0, align 8
@CX231XX_BOARD_HAUPPAUGE_USBLIVE2 = common dso_local global i64 0, align 8
@V4L2_BUF_TYPE_VBI_CAPTURE = common dso_local global i64 0, align 8
@DEV_DISCONNECTED = common dso_local global i32 0, align 4
@INDEX_VANC = common dso_local global i32 0, align 4
@INDEX_HANC = common dso_local global i32 0, align 4
@core = common dso_local global i32 0, align 4
@s_power = common dso_local global i32 0, align 4
@CX231XX_SUSPEND = common dso_local global i32 0, align 4
@INDEX_VIDEO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @cx231xx_v4l2_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx231xx_v4l2_close(%struct.file* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.cx231xx_fh*, align 8
  %5 = alloca %struct.cx231xx*, align 8
  store %struct.file* %0, %struct.file** %3, align 8
  %6 = load %struct.file*, %struct.file** %3, align 8
  %7 = getelementptr inbounds %struct.file, %struct.file* %6, i32 0, i32 0
  %8 = load %struct.cx231xx_fh*, %struct.cx231xx_fh** %7, align 8
  store %struct.cx231xx_fh* %8, %struct.cx231xx_fh** %4, align 8
  %9 = load %struct.cx231xx_fh*, %struct.cx231xx_fh** %4, align 8
  %10 = getelementptr inbounds %struct.cx231xx_fh, %struct.cx231xx_fh* %9, i32 0, i32 9
  %11 = load %struct.cx231xx_fh*, %struct.cx231xx_fh** %10, align 8
  %12 = bitcast %struct.cx231xx_fh* %11 to %struct.cx231xx*
  store %struct.cx231xx* %12, %struct.cx231xx** %5, align 8
  %13 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %14 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @cx231xx_videodbg(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %18 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @cx231xx_videodbg(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load %struct.cx231xx_fh*, %struct.cx231xx_fh** %4, align 8
  %22 = call i64 @res_check(%struct.cx231xx_fh* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %1
  %25 = load %struct.cx231xx_fh*, %struct.cx231xx_fh** %4, align 8
  %26 = call i32 @res_free(%struct.cx231xx_fh* %25)
  br label %27

27:                                               ; preds = %24, %1
  %28 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %29 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @CX231XX_BOARD_CNXT_VIDEO_GRABBER, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %100

33:                                               ; preds = %27
  %34 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %35 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @CX231XX_BOARD_HAUPPAUGE_USBLIVE2, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %100

39:                                               ; preds = %33
  %40 = load %struct.cx231xx_fh*, %struct.cx231xx_fh** %4, align 8
  %41 = getelementptr inbounds %struct.cx231xx_fh, %struct.cx231xx_fh* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @V4L2_BUF_TYPE_VBI_CAPTURE, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %99

45:                                               ; preds = %39
  %46 = load %struct.cx231xx_fh*, %struct.cx231xx_fh** %4, align 8
  %47 = getelementptr inbounds %struct.cx231xx_fh, %struct.cx231xx_fh* %46, i32 0, i32 6
  %48 = call i32 @videobuf_stop(i32* %47)
  %49 = load %struct.cx231xx_fh*, %struct.cx231xx_fh** %4, align 8
  %50 = getelementptr inbounds %struct.cx231xx_fh, %struct.cx231xx_fh* %49, i32 0, i32 6
  %51 = call i32 @videobuf_mmap_free(i32* %50)
  %52 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %53 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @DEV_DISCONNECTED, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %71

58:                                               ; preds = %45
  %59 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %60 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %59, i32 0, i32 8
  %61 = call i64 @atomic_read(i32* %60)
  %62 = icmp sgt i64 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %58
  %64 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %65 = bitcast %struct.cx231xx* %64 to %struct.cx231xx_fh*
  %66 = call i32 @cx231xx_release_resources(%struct.cx231xx_fh* %65)
  %67 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %68 = bitcast %struct.cx231xx* %67 to %struct.cx231xx_fh*
  %69 = call i32 @kfree(%struct.cx231xx_fh* %68)
  store %struct.cx231xx* null, %struct.cx231xx** %5, align 8
  store i32 0, i32* %2, align 4
  br label %162

70:                                               ; preds = %58
  store i32 0, i32* %2, align 4
  br label %162

71:                                               ; preds = %45
  %72 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %73 = bitcast %struct.cx231xx* %72 to %struct.cx231xx_fh*
  %74 = call i32 @cx231xx_uninit_vbi_isoc(%struct.cx231xx_fh* %73)
  %75 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %76 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %75, i32 0, i32 7
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %84, label %79

79:                                               ; preds = %71
  %80 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %81 = bitcast %struct.cx231xx* %80 to %struct.cx231xx_fh*
  %82 = load i32, i32* @INDEX_VANC, align 4
  %83 = call i32 @cx231xx_set_alt_setting(%struct.cx231xx_fh* %81, i32 %82, i32 0)
  br label %89

84:                                               ; preds = %71
  %85 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %86 = bitcast %struct.cx231xx* %85 to %struct.cx231xx_fh*
  %87 = load i32, i32* @INDEX_HANC, align 4
  %88 = call i32 @cx231xx_set_alt_setting(%struct.cx231xx_fh* %86, i32 %87, i32 0)
  br label %89

89:                                               ; preds = %84, %79
  %90 = load %struct.cx231xx_fh*, %struct.cx231xx_fh** %4, align 8
  %91 = call i32 @kfree(%struct.cx231xx_fh* %90)
  %92 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %93 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = add nsw i32 %94, -1
  store i32 %95, i32* %93, align 8
  %96 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %97 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %96, i32 0, i32 4
  %98 = call i32 @wake_up_interruptible_nr(i32* %97, i32 1)
  store i32 0, i32* %2, align 4
  br label %162

99:                                               ; preds = %39
  br label %100

100:                                              ; preds = %99, %33, %27
  %101 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %102 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = icmp eq i32 %103, 1
  br i1 %104, label %105, label %152

105:                                              ; preds = %100
  %106 = load %struct.cx231xx_fh*, %struct.cx231xx_fh** %4, align 8
  %107 = getelementptr inbounds %struct.cx231xx_fh, %struct.cx231xx_fh* %106, i32 0, i32 6
  %108 = call i32 @videobuf_stop(i32* %107)
  %109 = load %struct.cx231xx_fh*, %struct.cx231xx_fh** %4, align 8
  %110 = getelementptr inbounds %struct.cx231xx_fh, %struct.cx231xx_fh* %109, i32 0, i32 6
  %111 = call i32 @videobuf_mmap_free(i32* %110)
  %112 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %113 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @DEV_DISCONNECTED, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %125

118:                                              ; preds = %105
  %119 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %120 = bitcast %struct.cx231xx* %119 to %struct.cx231xx_fh*
  %121 = call i32 @cx231xx_release_resources(%struct.cx231xx_fh* %120)
  %122 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %123 = bitcast %struct.cx231xx* %122 to %struct.cx231xx_fh*
  %124 = call i32 @kfree(%struct.cx231xx_fh* %123)
  store %struct.cx231xx* null, %struct.cx231xx** %5, align 8
  store i32 0, i32* %2, align 4
  br label %162

125:                                              ; preds = %105
  %126 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %127 = bitcast %struct.cx231xx* %126 to %struct.cx231xx_fh*
  %128 = load i32, i32* @core, align 4
  %129 = load i32, i32* @s_power, align 4
  %130 = call i32 @call_all(%struct.cx231xx_fh* %127, i32 %128, i32 %129, i32 0)
  %131 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %132 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %131, i32 0, i32 5
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %125
  %136 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %137 = bitcast %struct.cx231xx* %136 to %struct.cx231xx_fh*
  %138 = call i32 @cx231xx_uninit_isoc(%struct.cx231xx_fh* %137)
  br label %143

139:                                              ; preds = %125
  %140 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %141 = bitcast %struct.cx231xx* %140 to %struct.cx231xx_fh*
  %142 = call i32 @cx231xx_uninit_bulk(%struct.cx231xx_fh* %141)
  br label %143

143:                                              ; preds = %139, %135
  %144 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %145 = bitcast %struct.cx231xx* %144 to %struct.cx231xx_fh*
  %146 = load i32, i32* @CX231XX_SUSPEND, align 4
  %147 = call i32 @cx231xx_set_mode(%struct.cx231xx_fh* %145, i32 %146)
  %148 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %149 = bitcast %struct.cx231xx* %148 to %struct.cx231xx_fh*
  %150 = load i32, i32* @INDEX_VIDEO, align 4
  %151 = call i32 @cx231xx_set_alt_setting(%struct.cx231xx_fh* %149, i32 %150, i32 0)
  br label %152

152:                                              ; preds = %143, %100
  %153 = load %struct.cx231xx_fh*, %struct.cx231xx_fh** %4, align 8
  %154 = call i32 @kfree(%struct.cx231xx_fh* %153)
  %155 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %156 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = add nsw i32 %157, -1
  store i32 %158, i32* %156, align 8
  %159 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %160 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %159, i32 0, i32 4
  %161 = call i32 @wake_up_interruptible_nr(i32* %160, i32 1)
  store i32 0, i32* %2, align 4
  br label %162

162:                                              ; preds = %152, %118, %89, %70, %63
  %163 = load i32, i32* %2, align 4
  ret i32 %163
}

declare dso_local i32 @cx231xx_videodbg(i8*, i32) #1

declare dso_local i64 @res_check(%struct.cx231xx_fh*) #1

declare dso_local i32 @res_free(%struct.cx231xx_fh*) #1

declare dso_local i32 @videobuf_stop(i32*) #1

declare dso_local i32 @videobuf_mmap_free(i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @cx231xx_release_resources(%struct.cx231xx_fh*) #1

declare dso_local i32 @kfree(%struct.cx231xx_fh*) #1

declare dso_local i32 @cx231xx_uninit_vbi_isoc(%struct.cx231xx_fh*) #1

declare dso_local i32 @cx231xx_set_alt_setting(%struct.cx231xx_fh*, i32, i32) #1

declare dso_local i32 @wake_up_interruptible_nr(i32*, i32) #1

declare dso_local i32 @call_all(%struct.cx231xx_fh*, i32, i32, i32) #1

declare dso_local i32 @cx231xx_uninit_isoc(%struct.cx231xx_fh*) #1

declare dso_local i32 @cx231xx_uninit_bulk(%struct.cx231xx_fh*) #1

declare dso_local i32 @cx231xx_set_mode(%struct.cx231xx_fh*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
