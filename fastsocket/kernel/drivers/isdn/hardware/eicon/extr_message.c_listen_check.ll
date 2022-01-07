; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/eicon/extr_message.c_listen_check.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/eicon/extr_message.c_listen_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i64, %struct.TYPE_8__*, i64, i32 }
%struct.TYPE_8__ = type { i32, i32, i64 }

@.str = private unnamed_addr constant [20 x i8] c"listen_check(%d,%d)\00", align 1
@remove_started = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"listen_check(%d)\00", align 1
@LISTENING = common dso_local global i32 0, align 4
@OAD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"\01\FD\00", align 1
@KEY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"\04CA20\00", align 1
@CAI = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"\01\C0\00", align 1
@UID = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"\06Capi20\00", align 1
@LLI = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [3 x i8] c"\01\C4\00", align 1
@SHIFT = common dso_local global i32 0, align 4
@SIN = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [4 x i8] c"\02\00\00\00", align 1
@LISTEN_SIG_ASSIGN_PEND = common dso_local global i32 0, align 4
@ASSIGN = common dso_local global i32 0, align 4
@DSIG_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*)* @listen_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @listen_check(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  store i64 0, i64* %6, align 8
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 3
  %12 = load i64, i64* %11, align 8
  %13 = call i32 (i8*, i64, ...) @dprintf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i64 %9, i64 %12)
  %14 = call i32 @dbug(i32 1, i32 %13)
  %15 = load i32, i32* @remove_started, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %115, label %17

17:                                               ; preds = %1
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %115, label %22

22:                                               ; preds = %17
  store i64 0, i64* %3, align 8
  br label %23

23:                                               ; preds = %43, %22
  %24 = load i64, i64* %3, align 8
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ult i64 %24, %27
  br i1 %28, label %29, label %46

29:                                               ; preds = %23
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 2
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %31, align 8
  %33 = load i64, i64* %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i64 %33
  store %struct.TYPE_8__* %34, %struct.TYPE_8__** %5, align 8
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %29
  %40 = load i64, i64* %6, align 8
  %41 = add nsw i64 %40, 1
  store i64 %41, i64* %6, align 8
  br label %42

42:                                               ; preds = %39, %29
  br label %43

43:                                               ; preds = %42
  %44 = load i64, i64* %3, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %3, align 8
  br label %23

46:                                               ; preds = %23
  %47 = load i64, i64* %6, align 8
  %48 = call i32 (i8*, i64, ...) @dprintf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i64 %47)
  %49 = call i32 @dbug(i32 1, i32 %48)
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* %3, align 8
  br label %53

53:                                               ; preds = %111, %46
  %54 = load i64, i64* %3, align 8
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* %6, align 8
  %59 = add nsw i64 %57, %58
  %60 = icmp ult i64 %54, %59
  br i1 %60, label %61, label %114

61:                                               ; preds = %53
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %63 = call i64 @get_plci(%struct.TYPE_9__* %62)
  store i64 %63, i64* %4, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %110

65:                                               ; preds = %61
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = add i64 %68, 1
  store i64 %69, i64* %67, align 8
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 2
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %71, align 8
  %73 = load i64, i64* %4, align 8
  %74 = sub i64 %73, 1
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i64 %74
  store %struct.TYPE_8__* %75, %struct.TYPE_8__** %5, align 8
  %76 = load i32, i32* @LISTENING, align 4
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 4
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %80 = load i32, i32* @OAD, align 4
  %81 = call i32 @add_p(%struct.TYPE_8__* %79, i32 %80, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %83 = load i32, i32* @KEY, align 4
  %84 = call i32 @add_p(%struct.TYPE_8__* %82, i32 %83, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %86 = load i32, i32* @CAI, align 4
  %87 = call i32 @add_p(%struct.TYPE_8__* %85, i32 %86, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %89 = load i32, i32* @UID, align 4
  %90 = call i32 @add_p(%struct.TYPE_8__* %88, i32 %89, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %92 = load i32, i32* @LLI, align 4
  %93 = call i32 @add_p(%struct.TYPE_8__* %91, i32 %92, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %95 = load i32, i32* @SHIFT, align 4
  %96 = or i32 %95, 6
  %97 = call i32 @add_p(%struct.TYPE_8__* %94, i32 %96, i8* null)
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %99 = load i32, i32* @SIN, align 4
  %100 = call i32 @add_p(%struct.TYPE_8__* %98, i32 %99, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %101 = load i32, i32* @LISTEN_SIG_ASSIGN_PEND, align 4
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 0
  store i32 %101, i32* %103, align 8
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %105 = load i32, i32* @ASSIGN, align 4
  %106 = load i32, i32* @DSIG_ID, align 4
  %107 = call i32 @sig_req(%struct.TYPE_8__* %104, i32 %105, i32 %106)
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %109 = call i32 @send_req(%struct.TYPE_8__* %108)
  br label %110

110:                                              ; preds = %65, %61
  br label %111

111:                                              ; preds = %110
  %112 = load i64, i64* %3, align 8
  %113 = add i64 %112, 1
  store i64 %113, i64* %3, align 8
  br label %53

114:                                              ; preds = %53
  br label %115

115:                                              ; preds = %114, %17, %1
  ret void
}

declare dso_local i32 @dbug(i32, i32) #1

declare dso_local i32 @dprintf(i8*, i64, ...) #1

declare dso_local i64 @get_plci(%struct.TYPE_9__*) #1

declare dso_local i32 @add_p(%struct.TYPE_8__*, i32, i8*) #1

declare dso_local i32 @sig_req(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @send_req(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
