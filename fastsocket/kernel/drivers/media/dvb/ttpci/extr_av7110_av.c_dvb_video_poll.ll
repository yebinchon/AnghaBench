; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ttpci/extr_av7110_av.c_dvb_video_poll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ttpci/extr_av7110_av.c_dvb_video_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32, %struct.dvb_device* }
%struct.dvb_device = type { %struct.av7110* }
%struct.av7110 = type { i64, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i64, i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"av7110:%p, \0A\00", align 1
@O_ACCMODE = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@POLLPRI = common dso_local global i32 0, align 4
@FREE_COND = common dso_local global i64 0, align 8
@POLLOUT = common dso_local global i32 0, align 4
@POLLWRNORM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32*)* @dvb_video_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dvb_video_poll(%struct.file* %0, i32* %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.dvb_device*, align 8
  %6 = alloca %struct.av7110*, align 8
  %7 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load %struct.file*, %struct.file** %3, align 8
  %9 = getelementptr inbounds %struct.file, %struct.file* %8, i32 0, i32 1
  %10 = load %struct.dvb_device*, %struct.dvb_device** %9, align 8
  store %struct.dvb_device* %10, %struct.dvb_device** %5, align 8
  %11 = load %struct.dvb_device*, %struct.dvb_device** %5, align 8
  %12 = getelementptr inbounds %struct.dvb_device, %struct.dvb_device* %11, i32 0, i32 0
  %13 = load %struct.av7110*, %struct.av7110** %12, align 8
  store %struct.av7110* %13, %struct.av7110** %6, align 8
  store i32 0, i32* %7, align 4
  %14 = load %struct.av7110*, %struct.av7110** %6, align 8
  %15 = call i32 @dprintk(i32 2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), %struct.av7110* %14)
  %16 = load %struct.file*, %struct.file** %3, align 8
  %17 = getelementptr inbounds %struct.file, %struct.file* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @O_ACCMODE, align 4
  %20 = and i32 %18, %19
  %21 = load i32, i32* @O_RDONLY, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %2
  %24 = load %struct.file*, %struct.file** %3, align 8
  %25 = load %struct.av7110*, %struct.av7110** %6, align 8
  %26 = getelementptr inbounds %struct.av7110, %struct.av7110* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32*, i32** %4, align 8
  %29 = call i32 @poll_wait(%struct.file* %24, i32* %27, i32* %28)
  br label %30

30:                                               ; preds = %23, %2
  %31 = load %struct.file*, %struct.file** %3, align 8
  %32 = load %struct.av7110*, %struct.av7110** %6, align 8
  %33 = getelementptr inbounds %struct.av7110, %struct.av7110* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 2
  %35 = load i32*, i32** %4, align 8
  %36 = call i32 @poll_wait(%struct.file* %31, i32* %34, i32* %35)
  %37 = load %struct.av7110*, %struct.av7110** %6, align 8
  %38 = getelementptr inbounds %struct.av7110, %struct.av7110* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.av7110*, %struct.av7110** %6, align 8
  %42 = getelementptr inbounds %struct.av7110, %struct.av7110* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %40, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %30
  %47 = load i32, i32* @POLLPRI, align 4
  store i32 %47, i32* %7, align 4
  br label %48

48:                                               ; preds = %46, %30
  %49 = load %struct.file*, %struct.file** %3, align 8
  %50 = getelementptr inbounds %struct.file, %struct.file* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @O_ACCMODE, align 4
  %53 = and i32 %51, %52
  %54 = load i32, i32* @O_RDONLY, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %78

56:                                               ; preds = %48
  %57 = load %struct.av7110*, %struct.av7110** %6, align 8
  %58 = getelementptr inbounds %struct.av7110, %struct.av7110* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %71

61:                                               ; preds = %56
  %62 = load i64, i64* @FREE_COND, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %61
  %65 = load i32, i32* @POLLOUT, align 4
  %66 = load i32, i32* @POLLWRNORM, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* %7, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %7, align 4
  br label %70

70:                                               ; preds = %64, %61
  br label %77

71:                                               ; preds = %56
  %72 = load i32, i32* @POLLOUT, align 4
  %73 = load i32, i32* @POLLWRNORM, align 4
  %74 = or i32 %72, %73
  %75 = load i32, i32* %7, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %7, align 4
  br label %77

77:                                               ; preds = %71, %70
  br label %78

78:                                               ; preds = %77, %48
  %79 = load i32, i32* %7, align 4
  ret i32 %79
}

declare dso_local i32 @dprintk(i32, i8*, %struct.av7110*) #1

declare dso_local i32 @poll_wait(%struct.file*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
