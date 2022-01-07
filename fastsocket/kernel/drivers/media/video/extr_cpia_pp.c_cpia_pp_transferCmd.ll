; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_cpia_pp.c_cpia_pp_transferCmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_cpia_pp.c_cpia_pp_transferCmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_cam_entry = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"Internal driver error: cam is NULL\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Internal driver error: command is NULL\0A\00", align 1
@PACKET_LENGTH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"Error writing command\0A\00", align 1
@DATA_IN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"Internal driver error: data is NULL\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"Error reading command result\0A\00", align 1
@DATA_OUT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [28 x i8] c"Error writing command data\0A\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"Unexpected first byte of command: %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32*)* @cpia_pp_transferCmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpia_pp_transferCmd(i8* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.pp_cam_entry*, align 8
  %12 = alloca [8 x i32], align 16
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %9, align 4
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.pp_cam_entry*
  store %struct.pp_cam_entry* %14, %struct.pp_cam_entry** %11, align 8
  %15 = load %struct.pp_cam_entry*, %struct.pp_cam_entry** %11, align 8
  %16 = icmp eq %struct.pp_cam_entry* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %109

21:                                               ; preds = %3
  %22 = load i32*, i32** %6, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %109

28:                                               ; preds = %21
  %29 = load i32*, i32** %6, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 7
  %31 = load i32, i32* %30, align 4
  %32 = shl i32 %31, 8
  %33 = load i32*, i32** %6, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 6
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %32, %35
  store i32 %36, i32* %10, align 4
  %37 = load %struct.pp_cam_entry*, %struct.pp_cam_entry** %11, align 8
  %38 = load i32*, i32** %6, align 8
  %39 = load i32, i32* @PACKET_LENGTH, align 4
  %40 = call i32 @WritePacket(%struct.pp_cam_entry* %37, i32* %38, i32 %39)
  store i32 %40, i32* %8, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %28
  %43 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %44 = load i32, i32* %8, align 4
  store i32 %44, i32* %4, align 4
  br label %109

45:                                               ; preds = %28
  %46 = load i32*, i32** %6, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @DATA_IN, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %71

51:                                               ; preds = %45
  %52 = load i32*, i32** %7, align 8
  %53 = icmp eq i32* %52, null
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  %55 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %4, align 4
  br label %109

58:                                               ; preds = %51
  %59 = load %struct.pp_cam_entry*, %struct.pp_cam_entry** %11, align 8
  %60 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 0
  %61 = call i32 @ReadPacket(%struct.pp_cam_entry* %59, i32* %60, i32 8)
  store i32 %61, i32* %8, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %58
  %64 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  %65 = load i32, i32* %8, align 4
  store i32 %65, i32* %4, align 4
  br label %109

66:                                               ; preds = %58
  %67 = load i32*, i32** %7, align 8
  %68 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 0
  %69 = load i32, i32* %10, align 4
  %70 = call i32 @memcpy(i32* %67, i32* %68, i32 %69)
  br label %107

71:                                               ; preds = %45
  %72 = load i32*, i32** %6, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @DATA_OUT, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %99

77:                                               ; preds = %71
  %78 = load i32, i32* %10, align 4
  %79 = icmp sgt i32 %78, 0
  br i1 %79, label %80, label %98

80:                                               ; preds = %77
  %81 = load i32*, i32** %7, align 8
  %82 = icmp eq i32* %81, null
  br i1 %82, label %83, label %87

83:                                               ; preds = %80
  %84 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %9, align 4
  br label %97

87:                                               ; preds = %80
  %88 = load %struct.pp_cam_entry*, %struct.pp_cam_entry** %11, align 8
  %89 = load i32*, i32** %7, align 8
  %90 = load i32, i32* %10, align 4
  %91 = call i32 @WritePacket(%struct.pp_cam_entry* %88, i32* %89, i32 %90)
  store i32 %91, i32* %8, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %87
  %94 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  %95 = load i32, i32* %8, align 4
  store i32 %95, i32* %4, align 4
  br label %109

96:                                               ; preds = %87
  br label %97

97:                                               ; preds = %96, %83
  br label %98

98:                                               ; preds = %97, %77
  br label %106

99:                                               ; preds = %71
  %100 = load i32*, i32** %6, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0), i32 %102)
  %104 = load i32, i32* @EINVAL, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %9, align 4
  br label %106

106:                                              ; preds = %99, %98
  br label %107

107:                                              ; preds = %106, %66
  %108 = load i32, i32* %9, align 4
  store i32 %108, i32* %4, align 4
  br label %109

109:                                              ; preds = %107, %93, %63, %54, %42, %24, %17
  %110 = load i32, i32* %4, align 4
  ret i32 %110
}

declare dso_local i32 @DBG(i8*, ...) #1

declare dso_local i32 @WritePacket(%struct.pp_cam_entry*, i32*, i32) #1

declare dso_local i32 @ReadPacket(%struct.pp_cam_entry*, i32*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
