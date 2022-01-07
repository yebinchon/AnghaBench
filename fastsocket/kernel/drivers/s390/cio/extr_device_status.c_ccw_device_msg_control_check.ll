; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_device_status.c_ccw_device_msg_control_check.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_device_status.c_ccw_device_msg_control_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw_device = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.irb = type { i32 }

@SCHN_STAT_CHN_DATA_CHK = common dso_local global i32 0, align 4
@SCHN_STAT_CHN_CTRL_CHK = common dso_local global i32 0, align 4
@SCHN_STAT_INTF_CTRL_CHK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [124 x i8] c"Channel-Check or Interface-Control-Check received ... device %04x on subchannel 0.%x.%04x, dev_stat : %02X sch_stat : %02X\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"chk%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ccw_device*, %struct.irb*)* @ccw_device_msg_control_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ccw_device_msg_control_check(%struct.ccw_device* %0, %struct.irb* %1) #0 {
  %3 = alloca %struct.ccw_device*, align 8
  %4 = alloca %struct.irb*, align 8
  %5 = alloca [15 x i8], align 1
  store %struct.ccw_device* %0, %struct.ccw_device** %3, align 8
  store %struct.irb* %1, %struct.irb** %4, align 8
  %6 = load %struct.irb*, %struct.irb** %4, align 8
  %7 = getelementptr inbounds %struct.irb, %struct.irb* %6, i32 0, i32 0
  %8 = call i32 @scsw_is_valid_cstat(i32* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %21

10:                                               ; preds = %2
  %11 = load %struct.irb*, %struct.irb** %4, align 8
  %12 = getelementptr inbounds %struct.irb, %struct.irb* %11, i32 0, i32 0
  %13 = call i32 @scsw_cstat(i32* %12)
  %14 = load i32, i32* @SCHN_STAT_CHN_DATA_CHK, align 4
  %15 = load i32, i32* @SCHN_STAT_CHN_CTRL_CHK, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @SCHN_STAT_INTF_CTRL_CHK, align 4
  %18 = or i32 %16, %17
  %19 = and i32 %13, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %10, %2
  br label %60

22:                                               ; preds = %10
  %23 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %24 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %23, i32 0, i32 0
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %30 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %29, i32 0, i32 0
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %36 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %35, i32 0, i32 0
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.irb*, %struct.irb** %4, align 8
  %42 = getelementptr inbounds %struct.irb, %struct.irb* %41, i32 0, i32 0
  %43 = call i32 @scsw_dstat(i32* %42)
  %44 = load %struct.irb*, %struct.irb** %4, align 8
  %45 = getelementptr inbounds %struct.irb, %struct.irb* %44, i32 0, i32 0
  %46 = call i32 @scsw_cstat(i32* %45)
  %47 = call i32 @CIO_MSG_EVENT(i32 0, i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %34, i32 %40, i32 %43, i32 %46)
  %48 = getelementptr inbounds [15 x i8], [15 x i8]* %5, i64 0, i64 0
  %49 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %50 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %49, i32 0, i32 0
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @sprintf(i8* %48, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  %56 = getelementptr inbounds [15 x i8], [15 x i8]* %5, i64 0, i64 0
  %57 = call i32 @CIO_TRACE_EVENT(i32 0, i8* %56)
  %58 = load %struct.irb*, %struct.irb** %4, align 8
  %59 = call i32 @CIO_HEX_EVENT(i32 0, %struct.irb* %58, i32 4)
  br label %60

60:                                               ; preds = %22, %21
  ret void
}

declare dso_local i32 @scsw_is_valid_cstat(i32*) #1

declare dso_local i32 @scsw_cstat(i32*) #1

declare dso_local i32 @CIO_MSG_EVENT(i32, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @scsw_dstat(i32*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @CIO_TRACE_EVENT(i32, i8*) #1

declare dso_local i32 @CIO_HEX_EVENT(i32, %struct.irb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
