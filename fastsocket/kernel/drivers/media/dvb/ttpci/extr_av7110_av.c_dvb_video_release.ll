; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ttpci/extr_av7110_av.c_dvb_video_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ttpci/extr_av7110_av.c_dvb_video_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { i32, %struct.dvb_device* }
%struct.dvb_device = type { %struct.av7110* }
%struct.av7110 = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"av7110:%p, \0A\00", align 1
@O_ACCMODE = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@RP_VIDEO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @dvb_video_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dvb_video_release(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.dvb_device*, align 8
  %6 = alloca %struct.av7110*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %7 = load %struct.file*, %struct.file** %4, align 8
  %8 = getelementptr inbounds %struct.file, %struct.file* %7, i32 0, i32 1
  %9 = load %struct.dvb_device*, %struct.dvb_device** %8, align 8
  store %struct.dvb_device* %9, %struct.dvb_device** %5, align 8
  %10 = load %struct.dvb_device*, %struct.dvb_device** %5, align 8
  %11 = getelementptr inbounds %struct.dvb_device, %struct.dvb_device* %10, i32 0, i32 0
  %12 = load %struct.av7110*, %struct.av7110** %11, align 8
  store %struct.av7110* %12, %struct.av7110** %6, align 8
  %13 = load %struct.av7110*, %struct.av7110** %6, align 8
  %14 = call i32 @dprintk(i32 2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), %struct.av7110* %13)
  %15 = load %struct.file*, %struct.file** %4, align 8
  %16 = getelementptr inbounds %struct.file, %struct.file* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @O_ACCMODE, align 4
  %19 = and i32 %17, %18
  %20 = load i32, i32* @O_RDONLY, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %2
  %23 = load %struct.av7110*, %struct.av7110** %6, align 8
  %24 = load i32, i32* @RP_VIDEO, align 4
  %25 = call i32 @av7110_av_stop(%struct.av7110* %23, i32 %24)
  br label %26

26:                                               ; preds = %22, %2
  %27 = load %struct.inode*, %struct.inode** %3, align 8
  %28 = load %struct.file*, %struct.file** %4, align 8
  %29 = call i32 @dvb_generic_release(%struct.inode* %27, %struct.file* %28)
  ret i32 %29
}

declare dso_local i32 @dprintk(i32, i8*, %struct.av7110*) #1

declare dso_local i32 @av7110_av_stop(%struct.av7110*, i32) #1

declare dso_local i32 @dvb_generic_release(%struct.inode*, %struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
