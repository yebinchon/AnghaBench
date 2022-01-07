; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_cpia_pp.c_cpia_pp_streamRead.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_cpia_pp.c_cpia_pp_streamRead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_cam_entry = type { i32, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [36 x i8] c"Internal driver error: cam is NULL\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Internal driver error: buffer is NULL\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"unable to ReverseSetup\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@PARPORT_CHUNK_SIZE = common dso_local global i32 0, align 4
@EOI = common dso_local global i64 0, align 8
@CPIA_MAX_IMAGE_SIZE = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64*, i32)* @cpia_pp_streamRead to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpia_pp_streamRead(i8* %0, i64* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.pp_cam_entry*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to %struct.pp_cam_entry*
  store %struct.pp_cam_entry* %15, %struct.pp_cam_entry** %8, align 8
  store i32 0, i32* %9, align 4
  %16 = load %struct.pp_cam_entry*, %struct.pp_cam_entry** %8, align 8
  %17 = icmp eq %struct.pp_cam_entry* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %3
  %19 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %129

22:                                               ; preds = %3
  %23 = load i64*, i64** %6, align 8
  %24 = icmp eq i64* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %129

29:                                               ; preds = %22
  %30 = load %struct.pp_cam_entry*, %struct.pp_cam_entry** %8, align 8
  %31 = getelementptr inbounds %struct.pp_cam_entry, %struct.pp_cam_entry* %30, i32 0, i32 4
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %29
  %35 = load %struct.pp_cam_entry*, %struct.pp_cam_entry** %8, align 8
  %36 = getelementptr inbounds %struct.pp_cam_entry, %struct.pp_cam_entry* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %37)
  %39 = load %struct.pp_cam_entry*, %struct.pp_cam_entry** %8, align 8
  %40 = getelementptr inbounds %struct.pp_cam_entry, %struct.pp_cam_entry* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = add nsw i32 %41, -1
  store i32 %42, i32* %40, align 8
  br label %43

43:                                               ; preds = %34, %29
  %44 = load %struct.pp_cam_entry*, %struct.pp_cam_entry** %8, align 8
  %45 = getelementptr inbounds %struct.pp_cam_entry, %struct.pp_cam_entry* %44, i32 0, i32 0
  store i32 0, i32* %45, align 8
  %46 = load %struct.pp_cam_entry*, %struct.pp_cam_entry** %8, align 8
  %47 = call i64 @ReverseSetup(%struct.pp_cam_entry* %46, i32 1)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %43
  %50 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %51 = load i32, i32* @EIO, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  br label %129

53:                                               ; preds = %43
  store i32 0, i32* %11, align 4
  %54 = load i32, i32* @PARPORT_CHUNK_SIZE, align 4
  store i32 %54, i32* %12, align 4
  br label %55

55:                                               ; preds = %114, %53
  %56 = load %struct.pp_cam_entry*, %struct.pp_cam_entry** %8, align 8
  %57 = getelementptr inbounds %struct.pp_cam_entry, %struct.pp_cam_entry* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %58, 0
  %60 = xor i1 %59, true
  br i1 %60, label %61, label %115

61:                                               ; preds = %55
  %62 = call i32 (...) @cond_resched()
  %63 = load %struct.pp_cam_entry*, %struct.pp_cam_entry** %8, align 8
  %64 = getelementptr inbounds %struct.pp_cam_entry, %struct.pp_cam_entry* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i64*, i64** %6, align 8
  %67 = load i32, i32* %12, align 4
  %68 = call i32 @cpia_pp_read(i32 %65, i64* %66, i32 %67)
  store i32 %68, i32* %13, align 4
  %69 = load i32, i32* %13, align 4
  %70 = icmp sle i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %61
  br label %115

72:                                               ; preds = %61
  store i32 -1, i32* %10, align 4
  br label %73

73:                                               ; preds = %92, %72
  %74 = load i32, i32* %10, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %10, align 4
  %76 = load i32, i32* %13, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %73
  %79 = load i32, i32* %11, align 4
  %80 = icmp slt i32 %79, 4
  br label %81

81:                                               ; preds = %78, %73
  %82 = phi i1 [ false, %73 ], [ %80, %78 ]
  br i1 %82, label %83, label %95

83:                                               ; preds = %81
  %84 = load i64*, i64** %6, align 8
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @EOI, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %91

88:                                               ; preds = %83
  %89 = load i32, i32* %11, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %11, align 4
  br label %92

91:                                               ; preds = %83
  store i32 0, i32* %11, align 4
  br label %92

92:                                               ; preds = %91, %88
  %93 = load i64*, i64** %6, align 8
  %94 = getelementptr inbounds i64, i64* %93, i32 1
  store i64* %94, i64** %6, align 8
  br label %73

95:                                               ; preds = %81
  %96 = load i32, i32* %10, align 4
  %97 = load i32, i32* %9, align 4
  %98 = add nsw i32 %97, %96
  store i32 %98, i32* %9, align 4
  %99 = load i32, i32* %11, align 4
  %100 = icmp eq i32 %99, 4
  br i1 %100, label %101, label %104

101:                                              ; preds = %95
  %102 = load %struct.pp_cam_entry*, %struct.pp_cam_entry** %8, align 8
  %103 = getelementptr inbounds %struct.pp_cam_entry, %struct.pp_cam_entry* %102, i32 0, i32 0
  store i32 1, i32* %103, align 8
  br label %115

104:                                              ; preds = %95
  %105 = load i32, i32* @CPIA_MAX_IMAGE_SIZE, align 4
  %106 = load i32, i32* %9, align 4
  %107 = sub nsw i32 %105, %106
  %108 = load i32, i32* @PARPORT_CHUNK_SIZE, align 4
  %109 = icmp sle i32 %107, %108
  br i1 %109, label %110, label %114

110:                                              ; preds = %104
  %111 = load i32, i32* @CPIA_MAX_IMAGE_SIZE, align 4
  %112 = load i32, i32* %9, align 4
  %113 = sub nsw i32 %111, %112
  store i32 %113, i32* %12, align 4
  br label %114

114:                                              ; preds = %110, %104
  br label %55

115:                                              ; preds = %101, %71, %55
  %116 = load %struct.pp_cam_entry*, %struct.pp_cam_entry** %8, align 8
  %117 = call i32 @EndTransferMode(%struct.pp_cam_entry* %116)
  %118 = load %struct.pp_cam_entry*, %struct.pp_cam_entry** %8, align 8
  %119 = getelementptr inbounds %struct.pp_cam_entry, %struct.pp_cam_entry* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %115
  %123 = load i32, i32* %9, align 4
  br label %127

124:                                              ; preds = %115
  %125 = load i32, i32* @EIO, align 4
  %126 = sub nsw i32 0, %125
  br label %127

127:                                              ; preds = %124, %122
  %128 = phi i32 [ %123, %122 ], [ %126, %124 ]
  store i32 %128, i32* %4, align 4
  br label %129

129:                                              ; preds = %127, %49, %25, %18
  %130 = load i32, i32* %4, align 4
  ret i32 %130
}

declare dso_local i32 @DBG(i8*, ...) #1

declare dso_local i64 @ReverseSetup(%struct.pp_cam_entry*, i32) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local i32 @cpia_pp_read(i32, i64*, i32) #1

declare dso_local i32 @EndTransferMode(%struct.pp_cam_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
