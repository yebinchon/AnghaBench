; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/firewire/extr_firedtv-avc.c_avc_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/firewire/extr_firedtv-avc.c_avc_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.firedtv = type { i32, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.firedtv*, i32, i32, i32)* }

@avc_debug = common dso_local global i32 0, align 4
@FCP_COMMAND_REGISTER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"FCP command write failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"FCP response timed out\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.firedtv*)* @avc_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @avc_write(%struct.firedtv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.firedtv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.firedtv* %0, %struct.firedtv** %3, align 8
  %6 = load %struct.firedtv*, %struct.firedtv** %3, align 8
  %7 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %6, i32 0, i32 0
  store i32 0, i32* %7, align 8
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %58, %1
  %9 = load i32, i32* %5, align 4
  %10 = icmp slt i32 %9, 6
  br i1 %10, label %11, label %61

11:                                               ; preds = %8
  %12 = load i32, i32* @avc_debug, align 4
  %13 = call i64 @unlikely(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %11
  %16 = load %struct.firedtv*, %struct.firedtv** %3, align 8
  %17 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.firedtv*, %struct.firedtv** %3, align 8
  %20 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @debug_fcp(i32 %18, i32 %21)
  br label %23

23:                                               ; preds = %15, %11
  %24 = load %struct.firedtv*, %struct.firedtv** %3, align 8
  %25 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %24, i32 0, i32 5
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32 (%struct.firedtv*, i32, i32, i32)*, i32 (%struct.firedtv*, i32, i32, i32)** %27, align 8
  %29 = load %struct.firedtv*, %struct.firedtv** %3, align 8
  %30 = load i32, i32* @FCP_COMMAND_REGISTER, align 4
  %31 = load %struct.firedtv*, %struct.firedtv** %3, align 8
  %32 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.firedtv*, %struct.firedtv** %3, align 8
  %35 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = call i32 %28(%struct.firedtv* %29, i32 %30, i32 %33, i32 %36)
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %23
  %41 = load %struct.firedtv*, %struct.firedtv** %3, align 8
  %42 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @dev_err(i32 %43, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %45 = load i32, i32* %4, align 4
  store i32 %45, i32* %2, align 4
  br label %68

46:                                               ; preds = %23
  %47 = load %struct.firedtv*, %struct.firedtv** %3, align 8
  %48 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.firedtv*, %struct.firedtv** %3, align 8
  %51 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @msecs_to_jiffies(i32 200)
  %54 = call i64 @wait_event_timeout(i32 %49, i32 %52, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %46
  store i32 0, i32* %2, align 4
  br label %68

57:                                               ; preds = %46
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %5, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %5, align 4
  br label %8

61:                                               ; preds = %8
  %62 = load %struct.firedtv*, %struct.firedtv** %3, align 8
  %63 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @dev_err(i32 %64, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %66 = load i32, i32* @ETIMEDOUT, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %2, align 4
  br label %68

68:                                               ; preds = %61, %56, %40
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @debug_fcp(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i64 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
