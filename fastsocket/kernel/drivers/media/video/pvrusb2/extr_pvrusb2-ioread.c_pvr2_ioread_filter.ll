; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pvrusb2/extr_pvrusb2-ioread.c_pvr2_ioread_filter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pvrusb2/extr_pvrusb2-ioread.c_pvr2_ioread_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvr2_ioread = type { i32, i32, i32, i64, i64, i64*, i64*, i32, i32, i32 }

@PVR2_TRACE_DATA_FLOW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"/*---TRACE_READ---*/ sync_state <== 2 (skipped %u bytes)\00", align 1
@PVR2_TRACE_ERROR_LEGS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"ERROR: pvr2_ioread filter sync problem len=%u offs=%u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pvr2_ioread*)* @pvr2_ioread_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pvr2_ioread_filter(%struct.pvr2_ioread* %0) #0 {
  %2 = alloca %struct.pvr2_ioread*, align 8
  %3 = alloca i32, align 4
  store %struct.pvr2_ioread* %0, %struct.pvr2_ioread** %2, align 8
  %4 = load %struct.pvr2_ioread*, %struct.pvr2_ioread** %2, align 8
  %5 = getelementptr inbounds %struct.pvr2_ioread, %struct.pvr2_ioread* %4, i32 0, i32 9
  %6 = load i32, i32* %5, align 8
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %137

9:                                                ; preds = %1
  %10 = load %struct.pvr2_ioread*, %struct.pvr2_ioread** %2, align 8
  %11 = getelementptr inbounds %struct.pvr2_ioread, %struct.pvr2_ioread* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 1
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  br label %137

15:                                               ; preds = %9
  %16 = load %struct.pvr2_ioread*, %struct.pvr2_ioread** %2, align 8
  %17 = getelementptr inbounds %struct.pvr2_ioread, %struct.pvr2_ioread* %16, i32 0, i32 8
  %18 = call i32 @mutex_lock(i32* %17)
  br label %19

19:                                               ; preds = %15, %132
  %20 = load %struct.pvr2_ioread*, %struct.pvr2_ioread** %2, align 8
  %21 = call i32 @pvr2_ioread_get_buffer(%struct.pvr2_ioread* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  br label %133

24:                                               ; preds = %19
  %25 = load %struct.pvr2_ioread*, %struct.pvr2_ioread** %2, align 8
  %26 = getelementptr inbounds %struct.pvr2_ioread, %struct.pvr2_ioread* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %24
  br label %133

30:                                               ; preds = %24
  %31 = load %struct.pvr2_ioread*, %struct.pvr2_ioread** %2, align 8
  %32 = getelementptr inbounds %struct.pvr2_ioread, %struct.pvr2_ioread* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %75, %30
  %35 = load i32, i32* %3, align 4
  %36 = load %struct.pvr2_ioread*, %struct.pvr2_ioread** %2, align 8
  %37 = getelementptr inbounds %struct.pvr2_ioread, %struct.pvr2_ioread* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp ult i32 %35, %38
  br i1 %39, label %40, label %78

40:                                               ; preds = %34
  %41 = load %struct.pvr2_ioread*, %struct.pvr2_ioread** %2, align 8
  %42 = getelementptr inbounds %struct.pvr2_ioread, %struct.pvr2_ioread* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.pvr2_ioread*, %struct.pvr2_ioread** %2, align 8
  %45 = getelementptr inbounds %struct.pvr2_ioread, %struct.pvr2_ioread* %44, i32 0, i32 4
  %46 = load i64, i64* %45, align 8
  %47 = icmp uge i64 %43, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %40
  br label %78

49:                                               ; preds = %40
  %50 = load %struct.pvr2_ioread*, %struct.pvr2_ioread** %2, align 8
  %51 = getelementptr inbounds %struct.pvr2_ioread, %struct.pvr2_ioread* %50, i32 0, i32 5
  %52 = load i64*, i64** %51, align 8
  %53 = load i32, i32* %3, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds i64, i64* %52, i64 %54
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.pvr2_ioread*, %struct.pvr2_ioread** %2, align 8
  %58 = getelementptr inbounds %struct.pvr2_ioread, %struct.pvr2_ioread* %57, i32 0, i32 6
  %59 = load i64*, i64** %58, align 8
  %60 = load %struct.pvr2_ioread*, %struct.pvr2_ioread** %2, align 8
  %61 = getelementptr inbounds %struct.pvr2_ioread, %struct.pvr2_ioread* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds i64, i64* %59, i64 %62
  %64 = load i64, i64* %63, align 8
  %65 = icmp eq i64 %56, %64
  br i1 %65, label %66, label %71

66:                                               ; preds = %49
  %67 = load %struct.pvr2_ioread*, %struct.pvr2_ioread** %2, align 8
  %68 = getelementptr inbounds %struct.pvr2_ioread, %struct.pvr2_ioread* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = add i64 %69, 1
  store i64 %70, i64* %68, align 8
  br label %74

71:                                               ; preds = %49
  %72 = load %struct.pvr2_ioread*, %struct.pvr2_ioread** %2, align 8
  %73 = getelementptr inbounds %struct.pvr2_ioread, %struct.pvr2_ioread* %72, i32 0, i32 3
  store i64 0, i64* %73, align 8
  br label %74

74:                                               ; preds = %71, %66
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %3, align 4
  %77 = add i32 %76, 1
  store i32 %77, i32* %3, align 4
  br label %34

78:                                               ; preds = %48, %34
  %79 = load i32, i32* %3, align 4
  %80 = load %struct.pvr2_ioread*, %struct.pvr2_ioread** %2, align 8
  %81 = getelementptr inbounds %struct.pvr2_ioread, %struct.pvr2_ioread* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = add i32 %82, %79
  store i32 %83, i32* %81, align 8
  %84 = load i32, i32* %3, align 4
  %85 = load %struct.pvr2_ioread*, %struct.pvr2_ioread** %2, align 8
  %86 = getelementptr inbounds %struct.pvr2_ioread, %struct.pvr2_ioread* %85, i32 0, i32 7
  %87 = load i32, i32* %86, align 8
  %88 = add i32 %87, %84
  store i32 %88, i32* %86, align 8
  %89 = load %struct.pvr2_ioread*, %struct.pvr2_ioread** %2, align 8
  %90 = getelementptr inbounds %struct.pvr2_ioread, %struct.pvr2_ioread* %89, i32 0, i32 3
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.pvr2_ioread*, %struct.pvr2_ioread** %2, align 8
  %93 = getelementptr inbounds %struct.pvr2_ioread, %struct.pvr2_ioread* %92, i32 0, i32 4
  %94 = load i64, i64* %93, align 8
  %95 = icmp uge i64 %91, %94
  br i1 %95, label %96, label %115

96:                                               ; preds = %78
  %97 = load %struct.pvr2_ioread*, %struct.pvr2_ioread** %2, align 8
  %98 = getelementptr inbounds %struct.pvr2_ioread, %struct.pvr2_ioread* %97, i32 0, i32 4
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.pvr2_ioread*, %struct.pvr2_ioread** %2, align 8
  %101 = getelementptr inbounds %struct.pvr2_ioread, %struct.pvr2_ioread* %100, i32 0, i32 7
  %102 = load i32, i32* %101, align 8
  %103 = zext i32 %102 to i64
  %104 = sub i64 %103, %99
  %105 = trunc i64 %104 to i32
  store i32 %105, i32* %101, align 8
  %106 = load i32, i32* @PVR2_TRACE_DATA_FLOW, align 4
  %107 = load %struct.pvr2_ioread*, %struct.pvr2_ioread** %2, align 8
  %108 = getelementptr inbounds %struct.pvr2_ioread, %struct.pvr2_ioread* %107, i32 0, i32 7
  %109 = load i32, i32* %108, align 8
  %110 = call i32 (i32, i8*, i32, ...) @pvr2_trace(i32 %106, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %109)
  %111 = load %struct.pvr2_ioread*, %struct.pvr2_ioread** %2, align 8
  %112 = getelementptr inbounds %struct.pvr2_ioread, %struct.pvr2_ioread* %111, i32 0, i32 0
  store i32 2, i32* %112, align 8
  %113 = load %struct.pvr2_ioread*, %struct.pvr2_ioread** %2, align 8
  %114 = getelementptr inbounds %struct.pvr2_ioread, %struct.pvr2_ioread* %113, i32 0, i32 3
  store i64 0, i64* %114, align 8
  br label %133

115:                                              ; preds = %78
  %116 = load %struct.pvr2_ioread*, %struct.pvr2_ioread** %2, align 8
  %117 = getelementptr inbounds %struct.pvr2_ioread, %struct.pvr2_ioread* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.pvr2_ioread*, %struct.pvr2_ioread** %2, align 8
  %120 = getelementptr inbounds %struct.pvr2_ioread, %struct.pvr2_ioread* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = icmp ult i32 %118, %121
  br i1 %122, label %123, label %132

123:                                              ; preds = %115
  %124 = load i32, i32* @PVR2_TRACE_ERROR_LEGS, align 4
  %125 = load %struct.pvr2_ioread*, %struct.pvr2_ioread** %2, align 8
  %126 = getelementptr inbounds %struct.pvr2_ioread, %struct.pvr2_ioread* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.pvr2_ioread*, %struct.pvr2_ioread** %2, align 8
  %129 = getelementptr inbounds %struct.pvr2_ioread, %struct.pvr2_ioread* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = call i32 (i32, i8*, i32, ...) @pvr2_trace(i32 %124, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %127, i32 %130)
  br label %133

132:                                              ; preds = %115
  br label %19

133:                                              ; preds = %123, %96, %29, %23
  %134 = load %struct.pvr2_ioread*, %struct.pvr2_ioread** %2, align 8
  %135 = getelementptr inbounds %struct.pvr2_ioread, %struct.pvr2_ioread* %134, i32 0, i32 8
  %136 = call i32 @mutex_unlock(i32* %135)
  br label %137

137:                                              ; preds = %133, %14, %8
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @pvr2_ioread_get_buffer(%struct.pvr2_ioread*) #1

declare dso_local i32 @pvr2_trace(i32, i8*, i32, ...) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
