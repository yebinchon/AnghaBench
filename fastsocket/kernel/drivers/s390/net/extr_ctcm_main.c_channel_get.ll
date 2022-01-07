; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_ctcm_main.c_channel_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_ctcm_main.c_channel_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.channel = type { i32, i32, i32, %struct.channel*, i32 }

@channels = common dso_local global %struct.channel* null, align 8
@CTCM_ID_SIZE = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@CTC_DBF_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"%s(%d, %s, %d) not found in channel list\0A\00", align 1
@CTCM_FUNTAIL = common dso_local global i32 0, align 4
@CHANNEL_FLAGS_INUSE = common dso_local global i32 0, align 4
@CHANNEL_FLAGS_RWMASK = common dso_local global i32 0, align 4
@WRITE = common dso_local global i32 0, align 4
@CHANNEL_FLAGS_WRITE = common dso_local global i32 0, align 4
@CHANNEL_FLAGS_READ = common dso_local global i32 0, align 4
@CTC_STATE_STOPPED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.channel* (i32, i8*, i32)* @channel_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.channel* @channel_get(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.channel*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.channel*, %struct.channel** @channels, align 8
  store %struct.channel* %8, %struct.channel** %7, align 8
  br label %9

9:                                                ; preds = %30, %3
  %10 = load %struct.channel*, %struct.channel** %7, align 8
  %11 = icmp ne %struct.channel* %10, null
  br i1 %11, label %12, label %28

12:                                               ; preds = %9
  %13 = load %struct.channel*, %struct.channel** %7, align 8
  %14 = getelementptr inbounds %struct.channel, %struct.channel* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = load i32, i32* @CTCM_ID_SIZE, align 4
  %18 = call i64 @strncmp(i32 %15, i8* %16, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %12
  %21 = load %struct.channel*, %struct.channel** %7, align 8
  %22 = getelementptr inbounds %struct.channel, %struct.channel* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %23, %24
  br label %26

26:                                               ; preds = %20, %12
  %27 = phi i1 [ true, %12 ], [ %25, %20 ]
  br label %28

28:                                               ; preds = %26, %9
  %29 = phi i1 [ false, %9 ], [ %27, %26 ]
  br i1 %29, label %30, label %34

30:                                               ; preds = %28
  %31 = load %struct.channel*, %struct.channel** %7, align 8
  %32 = getelementptr inbounds %struct.channel, %struct.channel* %31, i32 0, i32 3
  %33 = load %struct.channel*, %struct.channel** %32, align 8
  store %struct.channel* %33, %struct.channel** %7, align 8
  br label %9

34:                                               ; preds = %28
  %35 = load %struct.channel*, %struct.channel** %7, align 8
  %36 = icmp ne %struct.channel* %35, null
  br i1 %36, label %45, label %37

37:                                               ; preds = %34
  %38 = load i32, i32* @ERROR, align 4
  %39 = load i32, i32* @CTC_DBF_ERROR, align 4
  %40 = load i32, i32* @CTCM_FUNTAIL, align 4
  %41 = load i32, i32* %4, align 4
  %42 = load i8*, i8** %5, align 8
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @CTCM_DBF_TEXT_(i32 %38, i32 %39, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %41, i8* %42, i32 %43)
  br label %84

45:                                               ; preds = %34
  %46 = load %struct.channel*, %struct.channel** %7, align 8
  %47 = getelementptr inbounds %struct.channel, %struct.channel* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @CHANNEL_FLAGS_INUSE, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %45
  store %struct.channel* null, %struct.channel** %7, align 8
  br label %83

53:                                               ; preds = %45
  %54 = load i32, i32* @CHANNEL_FLAGS_INUSE, align 4
  %55 = load %struct.channel*, %struct.channel** %7, align 8
  %56 = getelementptr inbounds %struct.channel, %struct.channel* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 4
  %59 = load i32, i32* @CHANNEL_FLAGS_RWMASK, align 4
  %60 = xor i32 %59, -1
  %61 = load %struct.channel*, %struct.channel** %7, align 8
  %62 = getelementptr inbounds %struct.channel, %struct.channel* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = and i32 %63, %60
  store i32 %64, i32* %62, align 4
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* @WRITE, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %53
  %69 = load i32, i32* @CHANNEL_FLAGS_WRITE, align 4
  br label %72

70:                                               ; preds = %53
  %71 = load i32, i32* @CHANNEL_FLAGS_READ, align 4
  br label %72

72:                                               ; preds = %70, %68
  %73 = phi i32 [ %69, %68 ], [ %71, %70 ]
  %74 = load %struct.channel*, %struct.channel** %7, align 8
  %75 = getelementptr inbounds %struct.channel, %struct.channel* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = or i32 %76, %73
  store i32 %77, i32* %75, align 4
  %78 = load %struct.channel*, %struct.channel** %7, align 8
  %79 = getelementptr inbounds %struct.channel, %struct.channel* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @CTC_STATE_STOPPED, align 4
  %82 = call i32 @fsm_newstate(i32 %80, i32 %81)
  br label %83

83:                                               ; preds = %72, %52
  br label %84

84:                                               ; preds = %83, %37
  %85 = load %struct.channel*, %struct.channel** %7, align 8
  ret %struct.channel* %85
}

declare dso_local i64 @strncmp(i32, i8*, i32) #1

declare dso_local i32 @CTCM_DBF_TEXT_(i32, i32, i8*, i32, i32, i8*, i32) #1

declare dso_local i32 @fsm_newstate(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
