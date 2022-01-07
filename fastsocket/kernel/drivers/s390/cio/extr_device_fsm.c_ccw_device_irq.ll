; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_device_fsm.c_ccw_device_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_device_fsm.c_ccw_device_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw_device = type { %struct.TYPE_14__*, i32 (%struct.ccw_device*, i32, %struct.irb*)* }
%struct.TYPE_14__ = type { %struct.TYPE_13__, i8*, i64, i32 }
%struct.TYPE_13__ = type { i64, i64 }
%struct.irb = type { %struct.TYPE_12__, %struct.TYPE_15__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@__LC_IRB = common dso_local global i64 0, align 8
@DEV_STAT_UNIT_CHECK = common dso_local global i32 0, align 4
@DEV_STATE_W4SENSE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ccw_device*, i32)* @ccw_device_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ccw_device_irq(%struct.ccw_device* %0, i32 %1) #0 {
  %3 = alloca %struct.ccw_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.irb*, align 8
  %6 = alloca i32, align 4
  store %struct.ccw_device* %0, %struct.ccw_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i64, i64* @__LC_IRB, align 8
  %8 = inttoptr i64 %7 to %struct.irb*
  store %struct.irb* %8, %struct.irb** %5, align 8
  %9 = load %struct.irb*, %struct.irb** %5, align 8
  %10 = getelementptr inbounds %struct.irb, %struct.irb* %9, i32 0, i32 1
  %11 = call i32 @scsw_is_tm(%struct.TYPE_15__* %10)
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  store i32 %14, i32* %6, align 4
  %15 = load %struct.irb*, %struct.irb** %5, align 8
  %16 = getelementptr inbounds %struct.irb, %struct.irb* %15, i32 0, i32 1
  %17 = call i32 @scsw_is_solicited(%struct.TYPE_15__* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %86, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %61

22:                                               ; preds = %19
  %23 = load %struct.irb*, %struct.irb** %5, align 8
  %24 = getelementptr inbounds %struct.irb, %struct.irb* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @DEV_STAT_UNIT_CHECK, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %61

31:                                               ; preds = %22
  %32 = load %struct.irb*, %struct.irb** %5, align 8
  %33 = getelementptr inbounds %struct.irb, %struct.irb* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %61, label %39

39:                                               ; preds = %31
  %40 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %41 = load %struct.irb*, %struct.irb** %5, align 8
  %42 = call i64 @ccw_device_do_sense(%struct.ccw_device* %40, %struct.irb* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  br label %62

45:                                               ; preds = %39
  %46 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %47 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %46, i32 0, i32 0
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 3
  %50 = load %struct.irb*, %struct.irb** %5, align 8
  %51 = call i32 @memcpy(i32* %49, %struct.irb* %50, i32 8)
  %52 = load i8*, i8** @DEV_STATE_W4SENSE, align 8
  %53 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %54 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %53, i32 0, i32 0
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 1
  store i8* %52, i8** %56, align 8
  %57 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %58 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %57, i32 0, i32 0
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 2
  store i64 0, i64* %60, align 8
  br label %127

61:                                               ; preds = %31, %22, %19
  br label %62

62:                                               ; preds = %61, %44
  %63 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %64 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %63, i32 0, i32 1
  %65 = load i32 (%struct.ccw_device*, i32, %struct.irb*)*, i32 (%struct.ccw_device*, i32, %struct.irb*)** %64, align 8
  %66 = icmp ne i32 (%struct.ccw_device*, i32, %struct.irb*)* %65, null
  br i1 %66, label %67, label %74

67:                                               ; preds = %62
  %68 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %69 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %68, i32 0, i32 1
  %70 = load i32 (%struct.ccw_device*, i32, %struct.irb*)*, i32 (%struct.ccw_device*, i32, %struct.irb*)** %69, align 8
  %71 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %72 = load %struct.irb*, %struct.irb** %5, align 8
  %73 = call i32 %70(%struct.ccw_device* %71, i32 0, %struct.irb* %72)
  br label %74

74:                                               ; preds = %67, %62
  %75 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %76 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %75, i32 0, i32 0
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %74
  %83 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %84 = call i32 @ccw_device_online_verify(%struct.ccw_device* %83, i32 0)
  br label %85

85:                                               ; preds = %82, %74
  br label %127

86:                                               ; preds = %2
  %87 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %88 = load %struct.irb*, %struct.irb** %5, align 8
  %89 = call i32 @ccw_device_accumulate_irb(%struct.ccw_device* %87, %struct.irb* %88)
  %90 = load i32, i32* %6, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %112

92:                                               ; preds = %86
  %93 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %94 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %93, i32 0, i32 0
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %112

100:                                              ; preds = %92
  %101 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %102 = load %struct.irb*, %struct.irb** %5, align 8
  %103 = call i64 @ccw_device_do_sense(%struct.ccw_device* %101, %struct.irb* %102)
  %104 = icmp eq i64 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %100
  %106 = load i8*, i8** @DEV_STATE_W4SENSE, align 8
  %107 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %108 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %107, i32 0, i32 0
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 1
  store i8* %106, i8** %110, align 8
  br label %111

111:                                              ; preds = %105, %100
  br label %127

112:                                              ; preds = %92, %86
  %113 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %114 = call i64 @ccw_device_call_handler(%struct.ccw_device* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %127

116:                                              ; preds = %112
  %117 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %118 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %117, i32 0, i32 0
  %119 = load %struct.TYPE_14__*, %struct.TYPE_14__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %116
  %125 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %126 = call i32 @ccw_device_online_verify(%struct.ccw_device* %125, i32 0)
  br label %127

127:                                              ; preds = %45, %85, %111, %124, %116, %112
  ret void
}

declare dso_local i32 @scsw_is_tm(%struct.TYPE_15__*) #1

declare dso_local i32 @scsw_is_solicited(%struct.TYPE_15__*) #1

declare dso_local i64 @ccw_device_do_sense(%struct.ccw_device*, %struct.irb*) #1

declare dso_local i32 @memcpy(i32*, %struct.irb*, i32) #1

declare dso_local i32 @ccw_device_online_verify(%struct.ccw_device*, i32) #1

declare dso_local i32 @ccw_device_accumulate_irb(%struct.ccw_device*, %struct.irb*) #1

declare dso_local i64 @ccw_device_call_handler(%struct.ccw_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
