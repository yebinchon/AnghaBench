; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx18/extr_cx18-fileops.c_cx18_unmute.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx18/extr_cx18-fileops.c_cx18_unmute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx18 = type { i32 }

@CX18_INVALID_TASK_HANDLE = common dso_local global i64 0, align 8
@CX18_CPU_SET_MISC_PARAMETERS = common dso_local global i32 0, align 4
@CX18_CPU_SET_AUDIO_MUTE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Can't find valid task handle for unmute\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"Unmute\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cx18_unmute(%struct.cx18* %0) #0 {
  %2 = alloca %struct.cx18*, align 8
  %3 = alloca i64, align 8
  store %struct.cx18* %0, %struct.cx18** %2, align 8
  %4 = load %struct.cx18*, %struct.cx18** %2, align 8
  %5 = getelementptr inbounds %struct.cx18, %struct.cx18* %4, i32 0, i32 0
  %6 = call i64 @atomic_read(i32* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %27

8:                                                ; preds = %1
  %9 = load %struct.cx18*, %struct.cx18** %2, align 8
  %10 = call i64 @cx18_find_handle(%struct.cx18* %9)
  store i64 %10, i64* %3, align 8
  %11 = load i64, i64* %3, align 8
  %12 = load i64, i64* @CX18_INVALID_TASK_HANDLE, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %24

14:                                               ; preds = %8
  %15 = call i32 @cx18_msleep_timeout(i32 100, i32 0)
  %16 = load %struct.cx18*, %struct.cx18** %2, align 8
  %17 = load i32, i32* @CX18_CPU_SET_MISC_PARAMETERS, align 4
  %18 = load i64, i64* %3, align 8
  %19 = call i32 @cx18_vapi(%struct.cx18* %16, i32 %17, i32 2, i64 %18, i32 12)
  %20 = load %struct.cx18*, %struct.cx18** %2, align 8
  %21 = load i32, i32* @CX18_CPU_SET_AUDIO_MUTE, align 4
  %22 = load i64, i64* %3, align 8
  %23 = call i32 @cx18_vapi(%struct.cx18* %20, i32 %21, i32 2, i64 %22, i32 0)
  br label %26

24:                                               ; preds = %8
  %25 = call i32 @CX18_ERR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %24, %14
  br label %27

27:                                               ; preds = %26, %1
  %28 = call i32 @CX18_DEBUG_INFO(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i64 @cx18_find_handle(%struct.cx18*) #1

declare dso_local i32 @cx18_msleep_timeout(i32, i32) #1

declare dso_local i32 @cx18_vapi(%struct.cx18*, i32, i32, i64, i32) #1

declare dso_local i32 @CX18_ERR(i8*) #1

declare dso_local i32 @CX18_DEBUG_INFO(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
