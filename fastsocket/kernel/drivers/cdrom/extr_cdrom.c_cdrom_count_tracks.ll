; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/cdrom/extr_cdrom.c_cdrom_count_tracks.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/cdrom/extr_cdrom.c_cdrom_count_tracks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdrom_device_info = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.cdrom_device_info*, i32, %struct.cdrom_tochdr*)* }
%struct.cdrom_tochdr = type { i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i8* }
%struct.cdrom_tocentry = type { i32, i32, i32, i32, i32 }

@CD_COUNT_TRACKS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"entering cdrom_count_tracks\0A\00", align 1
@CDROMREADTOCHDR = common dso_local global i32 0, align 4
@ENOMEDIUM = common dso_local global i32 0, align 4
@CDS_NO_DISC = common dso_local global i8* null, align 8
@CDS_NO_INFO = common dso_local global i8* null, align 8
@CDROM_MSF = common dso_local global i32 0, align 4
@CDROMREADTOCENTRY = common dso_local global i32 0, align 4
@CDROM_DATA_TRACK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"track %d: format=%d, ctrl=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"disc has %d tracks: %d=audio %d=data %d=Cd-I %d=XA\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cdrom_device_info*, %struct.TYPE_5__*)* @cdrom_count_tracks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cdrom_count_tracks(%struct.cdrom_device_info* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca %struct.cdrom_device_info*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.cdrom_tochdr, align 4
  %6 = alloca %struct.cdrom_tocentry, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.cdrom_device_info* %0, %struct.cdrom_device_info** %3, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 2
  store i32 0, i32* %10, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 3
  store i32 0, i32* %12, align 4
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  store i32 0, i32* %14, align 4
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  store i32 0, i32* %16, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 4
  store i8* null, i8** %18, align 8
  %19 = load i32, i32* @CD_COUNT_TRACKS, align 4
  %20 = call i32 (i32, i8*, ...) @cdinfo(i32 %19, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %3, align 8
  %22 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32 (%struct.cdrom_device_info*, i32, %struct.cdrom_tochdr*)*, i32 (%struct.cdrom_device_info*, i32, %struct.cdrom_tochdr*)** %24, align 8
  %26 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %3, align 8
  %27 = load i32, i32* @CDROMREADTOCHDR, align 4
  %28 = call i32 %25(%struct.cdrom_device_info* %26, i32 %27, %struct.cdrom_tochdr* %5)
  store i32 %28, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %44

30:                                               ; preds = %2
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @ENOMEDIUM, align 4
  %33 = sub nsw i32 0, %32
  %34 = icmp eq i32 %31, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = load i8*, i8** @CDS_NO_DISC, align 8
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 4
  store i8* %36, i8** %38, align 8
  br label %43

39:                                               ; preds = %30
  %40 = load i8*, i8** @CDS_NO_INFO, align 8
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 4
  store i8* %40, i8** %42, align 8
  br label %43

43:                                               ; preds = %39, %35
  br label %135

44:                                               ; preds = %2
  %45 = load i32, i32* @CDROM_MSF, align 4
  %46 = getelementptr inbounds %struct.cdrom_tocentry, %struct.cdrom_tocentry* %6, i32 0, i32 0
  store i32 %45, i32* %46, align 4
  %47 = getelementptr inbounds %struct.cdrom_tochdr, %struct.cdrom_tochdr* %5, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %8, align 4
  br label %49

49:                                               ; preds = %115, %44
  %50 = load i32, i32* %8, align 4
  %51 = getelementptr inbounds %struct.cdrom_tochdr, %struct.cdrom_tochdr* %5, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = icmp sle i32 %50, %52
  br i1 %53, label %54, label %118

54:                                               ; preds = %49
  %55 = load i32, i32* %8, align 4
  %56 = getelementptr inbounds %struct.cdrom_tocentry, %struct.cdrom_tocentry* %6, i32 0, i32 3
  store i32 %55, i32* %56, align 4
  %57 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %3, align 8
  %58 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %57, i32 0, i32 0
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32 (%struct.cdrom_device_info*, i32, %struct.cdrom_tochdr*)*, i32 (%struct.cdrom_device_info*, i32, %struct.cdrom_tochdr*)** %60, align 8
  %62 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %3, align 8
  %63 = load i32, i32* @CDROMREADTOCENTRY, align 4
  %64 = bitcast %struct.cdrom_tocentry* %6 to %struct.cdrom_tochdr*
  %65 = call i32 %61(%struct.cdrom_device_info* %62, i32 %63, %struct.cdrom_tochdr* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %54
  %68 = load i8*, i8** @CDS_NO_INFO, align 8
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 4
  store i8* %68, i8** %70, align 8
  br label %135

71:                                               ; preds = %54
  %72 = getelementptr inbounds %struct.cdrom_tocentry, %struct.cdrom_tocentry* %6, i32 0, i32 4
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @CDROM_DATA_TRACK, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %102

77:                                               ; preds = %71
  %78 = getelementptr inbounds %struct.cdrom_tocentry, %struct.cdrom_tocentry* %6, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = icmp eq i32 %79, 16
  br i1 %80, label %81, label %86

81:                                               ; preds = %77
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %83, align 4
  br label %101

86:                                               ; preds = %77
  %87 = getelementptr inbounds %struct.cdrom_tocentry, %struct.cdrom_tocentry* %6, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = icmp eq i32 %88, 32
  br i1 %89, label %90, label %95

90:                                               ; preds = %86
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %92, align 8
  br label %100

95:                                               ; preds = %86
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %97, align 8
  br label %100

100:                                              ; preds = %95, %90
  br label %101

101:                                              ; preds = %100, %81
  br label %107

102:                                              ; preds = %71
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %104, align 4
  br label %107

107:                                              ; preds = %102, %101
  %108 = load i32, i32* @CD_COUNT_TRACKS, align 4
  %109 = load i32, i32* %8, align 4
  %110 = getelementptr inbounds %struct.cdrom_tocentry, %struct.cdrom_tocentry* %6, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = getelementptr inbounds %struct.cdrom_tocentry, %struct.cdrom_tocentry* %6, i32 0, i32 4
  %113 = load i32, i32* %112, align 4
  %114 = call i32 (i32, i8*, ...) @cdinfo(i32 %108, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %109, i32 %111, i32 %113)
  br label %115

115:                                              ; preds = %107
  %116 = load i32, i32* %8, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %8, align 4
  br label %49

118:                                              ; preds = %49
  %119 = load i32, i32* @CD_COUNT_TRACKS, align 4
  %120 = getelementptr inbounds %struct.cdrom_tochdr, %struct.cdrom_tochdr* %5, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = call i32 (i32, i8*, ...) @cdinfo(i32 %119, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i32 %121, i32 %124, i32 %127, i32 %130, i32 %133)
  br label %135

135:                                              ; preds = %118, %67, %43
  ret void
}

declare dso_local i32 @cdinfo(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
