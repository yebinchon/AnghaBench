; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ttpci/extr_av7110.c_av7110_fe_lock_fix.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ttpci/extr_av7110.c_av7110_fe_lock_fix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.av7110 = type { i32, i32, i32, i32*, i64 }

@FE_HAS_LOCK = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@DMX_PES_VIDEO = common dso_local global i64 0, align 8
@DMX_PES_AUDIO = common dso_local global i64 0, align 8
@DMX_PES_TELETEXT = common dso_local global i64 0, align 8
@DMX_PES_PCR = common dso_local global i64 0, align 8
@COMTYPE_PIDFILTER = common dso_local global i32 0, align 4
@Scan = common dso_local global i32 0, align 4
@COMTYPE_PID_FILTER = common dso_local global i32 0, align 4
@FlushTSQueue = common dso_local global i32 0, align 4
@GPMQBusy = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.av7110*, i32)* @av7110_fe_lock_fix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @av7110_fe_lock_fix(%struct.av7110* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.av7110*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.av7110* %0, %struct.av7110** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @FE_HAS_LOCK, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  %12 = zext i1 %11 to i64
  %13 = select i1 %11, i32 1, i32 0
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.av7110*, %struct.av7110** %4, align 8
  %16 = getelementptr inbounds %struct.av7110, %struct.av7110* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  %17 = load %struct.av7110*, %struct.av7110** %4, align 8
  %18 = getelementptr inbounds %struct.av7110, %struct.av7110* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %108

23:                                               ; preds = %2
  %24 = load %struct.av7110*, %struct.av7110** %4, align 8
  %25 = getelementptr inbounds %struct.av7110, %struct.av7110* %24, i32 0, i32 4
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.av7110*, %struct.av7110** %4, align 8
  %31 = getelementptr inbounds %struct.av7110, %struct.av7110* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  store i32 0, i32* %3, align 4
  br label %108

32:                                               ; preds = %23
  %33 = load %struct.av7110*, %struct.av7110** %4, align 8
  %34 = getelementptr inbounds %struct.av7110, %struct.av7110* %33, i32 0, i32 2
  %35 = call i64 @mutex_lock_interruptible(i32* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load i32, i32* @ERESTARTSYS, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %108

40:                                               ; preds = %32
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %78

43:                                               ; preds = %40
  %44 = load %struct.av7110*, %struct.av7110** %4, align 8
  %45 = load %struct.av7110*, %struct.av7110** %4, align 8
  %46 = getelementptr inbounds %struct.av7110, %struct.av7110* %45, i32 0, i32 3
  %47 = load i32*, i32** %46, align 8
  %48 = load i64, i64* @DMX_PES_VIDEO, align 8
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.av7110*, %struct.av7110** %4, align 8
  %52 = getelementptr inbounds %struct.av7110, %struct.av7110* %51, i32 0, i32 3
  %53 = load i32*, i32** %52, align 8
  %54 = load i64, i64* @DMX_PES_AUDIO, align 8
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.av7110*, %struct.av7110** %4, align 8
  %58 = getelementptr inbounds %struct.av7110, %struct.av7110* %57, i32 0, i32 3
  %59 = load i32*, i32** %58, align 8
  %60 = load i64, i64* @DMX_PES_TELETEXT, align 8
  %61 = getelementptr inbounds i32, i32* %59, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.av7110*, %struct.av7110** %4, align 8
  %64 = getelementptr inbounds %struct.av7110, %struct.av7110* %63, i32 0, i32 3
  %65 = load i32*, i32** %64, align 8
  %66 = load i64, i64* @DMX_PES_PCR, align 8
  %67 = getelementptr inbounds i32, i32* %65, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @SetPIDs(%struct.av7110* %44, i32 %50, i32 %56, i32 %62, i32 0, i32 %68)
  store i32 %69, i32* %6, align 4
  %70 = load i32, i32* %6, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %77, label %72

72:                                               ; preds = %43
  %73 = load %struct.av7110*, %struct.av7110** %4, align 8
  %74 = load i32, i32* @COMTYPE_PIDFILTER, align 4
  %75 = load i32, i32* @Scan, align 4
  %76 = call i32 @av7110_fw_cmd(%struct.av7110* %73, i32 %74, i32 %75, i32 0)
  store i32 %76, i32* %6, align 4
  br label %77

77:                                               ; preds = %72, %43
  br label %96

78:                                               ; preds = %40
  %79 = load %struct.av7110*, %struct.av7110** %4, align 8
  %80 = call i32 @SetPIDs(%struct.av7110* %79, i32 0, i32 0, i32 0, i32 0, i32 0)
  store i32 %80, i32* %6, align 4
  %81 = load i32, i32* %6, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %95, label %83

83:                                               ; preds = %78
  %84 = load %struct.av7110*, %struct.av7110** %4, align 8
  %85 = load i32, i32* @COMTYPE_PID_FILTER, align 4
  %86 = load i32, i32* @FlushTSQueue, align 4
  %87 = call i32 @av7110_fw_cmd(%struct.av7110* %84, i32 %85, i32 %86, i32 0)
  store i32 %87, i32* %6, align 4
  %88 = load i32, i32* %6, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %94, label %90

90:                                               ; preds = %83
  %91 = load %struct.av7110*, %struct.av7110** %4, align 8
  %92 = load i32, i32* @GPMQBusy, align 4
  %93 = call i32 @av7110_wait_msgstate(%struct.av7110* %91, i32 %92)
  store i32 %93, i32* %6, align 4
  br label %94

94:                                               ; preds = %90, %83
  br label %95

95:                                               ; preds = %94, %78
  br label %96

96:                                               ; preds = %95, %77
  %97 = load i32, i32* %6, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %103, label %99

99:                                               ; preds = %96
  %100 = load i32, i32* %7, align 4
  %101 = load %struct.av7110*, %struct.av7110** %4, align 8
  %102 = getelementptr inbounds %struct.av7110, %struct.av7110* %101, i32 0, i32 1
  store i32 %100, i32* %102, align 4
  br label %103

103:                                              ; preds = %99, %96
  %104 = load %struct.av7110*, %struct.av7110** %4, align 8
  %105 = getelementptr inbounds %struct.av7110, %struct.av7110* %104, i32 0, i32 2
  %106 = call i32 @mutex_unlock(i32* %105)
  %107 = load i32, i32* %6, align 4
  store i32 %107, i32* %3, align 4
  br label %108

108:                                              ; preds = %103, %37, %28, %22
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @SetPIDs(%struct.av7110*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @av7110_fw_cmd(%struct.av7110*, i32, i32, i32) #1

declare dso_local i32 @av7110_wait_msgstate(%struct.av7110*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
