; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-417.c_mpeg_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-417.c_mpeg_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.cx231xx_fh* }
%struct.cx231xx_fh = type { %struct.TYPE_4__, i32, %struct.cx231xx* }
%struct.TYPE_4__ = type { i64, i64 }
%struct.cx231xx = type { i32, i32, i64 }

@.str = private unnamed_addr constant [26 x i8] c"mpeg_release()! dev=0x%p\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"abort!!!\0A\00", align 1
@CX231XX_SUSPEND = common dso_local global i32 0, align 4
@CX2341X_ENC_STOP_CAPTURE = common dso_local global i32 0, align 4
@CX231xx_END_NOW = common dso_local global i32 0, align 4
@CX231xx_MPEG_CAPTURE = common dso_local global i32 0, align 4
@CX231xx_RAW_BITS_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @mpeg_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpeg_release(%struct.file* %0) #0 {
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
  %10 = getelementptr inbounds %struct.cx231xx_fh, %struct.cx231xx_fh* %9, i32 0, i32 2
  %11 = load %struct.cx231xx*, %struct.cx231xx** %10, align 8
  store %struct.cx231xx* %11, %struct.cx231xx** %5, align 8
  %12 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %13 = call i32 (i32, i8*, ...) @dprintk(i32 3, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), %struct.cx231xx* %12)
  %14 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %15 = icmp ne %struct.cx231xx* %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %1
  %17 = call i32 (i32, i8*, ...) @dprintk(i32 3, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %91

18:                                               ; preds = %1
  %19 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %20 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %19, i32 0, i32 0
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %23 = call i32 @cx231xx_stop_TS1(%struct.cx231xx* %22)
  %24 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %25 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %18
  %29 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %30 = call i32 @cx231xx_uninit_isoc(%struct.cx231xx* %29)
  br label %34

31:                                               ; preds = %18
  %32 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %33 = call i32 @cx231xx_uninit_bulk(%struct.cx231xx* %32)
  br label %34

34:                                               ; preds = %31, %28
  %35 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %36 = load i32, i32* @CX231XX_SUSPEND, align 4
  %37 = call i32 @cx231xx_set_mode(%struct.cx231xx* %35, i32 %36)
  %38 = load %struct.cx231xx_fh*, %struct.cx231xx_fh** %4, align 8
  %39 = getelementptr inbounds %struct.cx231xx_fh, %struct.cx231xx_fh* %38, i32 0, i32 2
  %40 = load %struct.cx231xx*, %struct.cx231xx** %39, align 8
  %41 = load i32, i32* @CX2341X_ENC_STOP_CAPTURE, align 4
  %42 = load i32, i32* @CX231xx_END_NOW, align 4
  %43 = load i32, i32* @CX231xx_MPEG_CAPTURE, align 4
  %44 = load i32, i32* @CX231xx_RAW_BITS_NONE, align 4
  %45 = call i32 @cx231xx_api_cmd(%struct.cx231xx* %40, i32 %41, i32 3, i32 0, i32 %42, i32 %43, i32 %44)
  %46 = load %struct.cx231xx_fh*, %struct.cx231xx_fh** %4, align 8
  %47 = getelementptr inbounds %struct.cx231xx_fh, %struct.cx231xx_fh* %46, i32 0, i32 1
  %48 = call i32 @atomic_cmpxchg(i32* %47, i32 1, i32 0)
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %50, label %60

50:                                               ; preds = %34
  %51 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %52 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %51, i32 0, i32 1
  %53 = call i64 @atomic_dec_return(i32* %52)
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %50
  %56 = call i32 @msleep(i32 500)
  %57 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %58 = call i32 @cx231xx_417_check_encoder(%struct.cx231xx* %57)
  br label %59

59:                                               ; preds = %55, %50
  br label %60

60:                                               ; preds = %59, %34
  %61 = load %struct.cx231xx_fh*, %struct.cx231xx_fh** %4, align 8
  %62 = getelementptr inbounds %struct.cx231xx_fh, %struct.cx231xx_fh* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %60
  %67 = load %struct.cx231xx_fh*, %struct.cx231xx_fh** %4, align 8
  %68 = getelementptr inbounds %struct.cx231xx_fh, %struct.cx231xx_fh* %67, i32 0, i32 0
  %69 = call i32 @videobuf_streamoff(%struct.TYPE_4__* %68)
  br label %70

70:                                               ; preds = %66, %60
  %71 = load %struct.cx231xx_fh*, %struct.cx231xx_fh** %4, align 8
  %72 = getelementptr inbounds %struct.cx231xx_fh, %struct.cx231xx_fh* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %70
  %77 = load %struct.cx231xx_fh*, %struct.cx231xx_fh** %4, align 8
  %78 = getelementptr inbounds %struct.cx231xx_fh, %struct.cx231xx_fh* %77, i32 0, i32 0
  %79 = call i32 @videobuf_read_stop(%struct.TYPE_4__* %78)
  br label %80

80:                                               ; preds = %76, %70
  %81 = load %struct.cx231xx_fh*, %struct.cx231xx_fh** %4, align 8
  %82 = getelementptr inbounds %struct.cx231xx_fh, %struct.cx231xx_fh* %81, i32 0, i32 0
  %83 = call i32 @videobuf_mmap_free(%struct.TYPE_4__* %82)
  %84 = load %struct.file*, %struct.file** %3, align 8
  %85 = getelementptr inbounds %struct.file, %struct.file* %84, i32 0, i32 0
  store %struct.cx231xx_fh* null, %struct.cx231xx_fh** %85, align 8
  %86 = load %struct.cx231xx_fh*, %struct.cx231xx_fh** %4, align 8
  %87 = call i32 @kfree(%struct.cx231xx_fh* %86)
  %88 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %89 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %88, i32 0, i32 0
  %90 = call i32 @mutex_unlock(i32* %89)
  store i32 0, i32* %2, align 4
  br label %91

91:                                               ; preds = %80, %16
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local i32 @dprintk(i32, i8*, ...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @cx231xx_stop_TS1(%struct.cx231xx*) #1

declare dso_local i32 @cx231xx_uninit_isoc(%struct.cx231xx*) #1

declare dso_local i32 @cx231xx_uninit_bulk(%struct.cx231xx*) #1

declare dso_local i32 @cx231xx_set_mode(%struct.cx231xx*, i32) #1

declare dso_local i32 @cx231xx_api_cmd(%struct.cx231xx*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @atomic_cmpxchg(i32*, i32, i32) #1

declare dso_local i64 @atomic_dec_return(i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @cx231xx_417_check_encoder(%struct.cx231xx*) #1

declare dso_local i32 @videobuf_streamoff(%struct.TYPE_4__*) #1

declare dso_local i32 @videobuf_read_stop(%struct.TYPE_4__*) #1

declare dso_local i32 @videobuf_mmap_free(%struct.TYPE_4__*) #1

declare dso_local i32 @kfree(%struct.cx231xx_fh*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
