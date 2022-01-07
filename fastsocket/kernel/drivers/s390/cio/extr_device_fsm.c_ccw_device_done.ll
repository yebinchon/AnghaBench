; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_device_fsm.c_ccw_device_done.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_device_fsm.c_ccw_device_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw_device = type { %struct.TYPE_10__*, i32, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_9__, %struct.TYPE_7__, i32 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.subchannel = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@DEV_STATE_ONLINE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Boxed device %04x on subchannel %04x\0A\00", align 1
@CIO_BOXED = common dso_local global i32 0, align 4
@NOTIFY_OK = common dso_local global i32 0, align 4
@CDEV_TODO_UNREG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Device %04x gone on subchannel %04x\0A\00", align 1
@CIO_GONE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"Disconnected device %04x on subchannel %04x\0A\00", align 1
@CIO_NO_PATH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ccw_device*, i32)* @ccw_device_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ccw_device_done(%struct.ccw_device* %0, i32 %1) #0 {
  %3 = alloca %struct.ccw_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.subchannel*, align 8
  store %struct.ccw_device* %0, %struct.ccw_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %7 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %6, i32 0, i32 2
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.subchannel* @to_subchannel(i32 %9)
  store %struct.subchannel* %10, %struct.subchannel** %5, align 8
  %11 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %12 = call i32 @ccw_device_set_timeout(%struct.ccw_device* %11, i32 0)
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @DEV_STATE_ONLINE, align 4
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load %struct.subchannel*, %struct.subchannel** %5, align 8
  %18 = call i32 @cio_disable_subchannel(%struct.subchannel* %17)
  br label %19

19:                                               ; preds = %16, %2
  %20 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %21 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %20, i32 0, i32 0
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 4
  %24 = call i32 @memset(i32* %23, i32 0, i32 4)
  %25 = load i32, i32* %4, align 4
  %26 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %27 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %26, i32 0, i32 0
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  store i32 %25, i32* %29, align 8
  %30 = load i32, i32* %4, align 4
  switch i32 %30, label %123 [
    i32 130, label %31
    i32 128, label %63
    i32 129, label %93
  ]

31:                                               ; preds = %19
  %32 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %33 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %32, i32 0, i32 0
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.subchannel*, %struct.subchannel** %5, align 8
  %39 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @CIO_MSG_EVENT(i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %41)
  %43 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %44 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %31
  %48 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %49 = load i32, i32* @CIO_BOXED, align 4
  %50 = call i32 @ccw_device_notify(%struct.ccw_device* %48, i32 %49)
  %51 = load i32, i32* @NOTIFY_OK, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %47
  %54 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %55 = load i32, i32* @CDEV_TODO_UNREG, align 4
  %56 = call i32 @ccw_device_sched_todo(%struct.ccw_device* %54, i32 %55)
  br label %57

57:                                               ; preds = %53, %47, %31
  %58 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %59 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %58, i32 0, i32 0
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  store i64 0, i64* %62, align 8
  br label %124

63:                                               ; preds = %19
  %64 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %65 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %64, i32 0, i32 0
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 3
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.subchannel*, %struct.subchannel** %5, align 8
  %71 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @CIO_MSG_EVENT(i32 0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %69, i32 %73)
  %75 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %76 = load i32, i32* @CIO_GONE, align 4
  %77 = call i32 @ccw_device_notify(%struct.ccw_device* %75, i32 %76)
  %78 = load i32, i32* @NOTIFY_OK, align 4
  %79 = icmp ne i32 %77, %78
  br i1 %79, label %80, label %84

80:                                               ; preds = %63
  %81 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %82 = load i32, i32* @CDEV_TODO_UNREG, align 4
  %83 = call i32 @ccw_device_sched_todo(%struct.ccw_device* %81, i32 %82)
  br label %87

84:                                               ; preds = %63
  %85 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %86 = call i32 @ccw_device_set_disconnected(%struct.ccw_device* %85)
  br label %87

87:                                               ; preds = %84, %80
  %88 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %89 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %88, i32 0, i32 0
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 0
  store i64 0, i64* %92, align 8
  br label %124

93:                                               ; preds = %19
  %94 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %95 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %94, i32 0, i32 0
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 3
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.subchannel*, %struct.subchannel** %5, align 8
  %101 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @CIO_MSG_EVENT(i32 0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %99, i32 %103)
  %105 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %106 = load i32, i32* @CIO_NO_PATH, align 4
  %107 = call i32 @ccw_device_notify(%struct.ccw_device* %105, i32 %106)
  %108 = load i32, i32* @NOTIFY_OK, align 4
  %109 = icmp ne i32 %107, %108
  br i1 %109, label %110, label %114

110:                                              ; preds = %93
  %111 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %112 = load i32, i32* @CDEV_TODO_UNREG, align 4
  %113 = call i32 @ccw_device_sched_todo(%struct.ccw_device* %111, i32 %112)
  br label %117

114:                                              ; preds = %93
  %115 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %116 = call i32 @ccw_device_set_disconnected(%struct.ccw_device* %115)
  br label %117

117:                                              ; preds = %114, %110
  %118 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %119 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %118, i32 0, i32 0
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 0
  store i64 0, i64* %122, align 8
  br label %124

123:                                              ; preds = %19
  br label %124

124:                                              ; preds = %123, %117, %87, %57
  %125 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %126 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %125, i32 0, i32 0
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 2
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %140

132:                                              ; preds = %124
  %133 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %134 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %133, i32 0, i32 0
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 2
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 0
  store i64 0, i64* %137, align 8
  %138 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %139 = call i32 @ccw_device_oper_notify(%struct.ccw_device* %138)
  br label %140

140:                                              ; preds = %132, %124
  %141 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %142 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %141, i32 0, i32 0
  %143 = load %struct.TYPE_10__*, %struct.TYPE_10__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 1
  %145 = call i32 @wake_up(i32* %144)
  ret void
}

declare dso_local %struct.subchannel* @to_subchannel(i32) #1

declare dso_local i32 @ccw_device_set_timeout(%struct.ccw_device*, i32) #1

declare dso_local i32 @cio_disable_subchannel(%struct.subchannel*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @CIO_MSG_EVENT(i32, i8*, i32, i32) #1

declare dso_local i32 @ccw_device_notify(%struct.ccw_device*, i32) #1

declare dso_local i32 @ccw_device_sched_todo(%struct.ccw_device*, i32) #1

declare dso_local i32 @ccw_device_set_disconnected(%struct.ccw_device*) #1

declare dso_local i32 @ccw_device_oper_notify(%struct.ccw_device*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
