; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/rc/extr_ir-raw.c_ir_raw_event_store_edge.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/rc/extr_ir-raw.c_ir_raw_event_store_edge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64 }
%struct.rc_dev = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }

@ev = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@EINVAL = common dso_local global i32 0, align 4
@IR_MAX_DURATION = common dso_local global i64 0, align 8
@IR_START_EVENT = common dso_local global i32 0, align 4
@IR_SPACE = common dso_local global i32 0, align 4
@IR_PULSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ir_raw_event_store_edge(%struct.rc_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rc_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.rc_dev* %0, %struct.rc_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* getelementptr inbounds ({ i32, i64 }, { i32, i64 }* bitcast (%struct.TYPE_6__* @ev to { i32, i64 }*), i32 0, i32 0), align 8
  %10 = load i64, i64* getelementptr inbounds ({ i32, i64 }, { i32, i64 }* bitcast (%struct.TYPE_6__* @ev to { i32, i64 }*), i32 0, i32 1), align 8
  %11 = call i32 @DEFINE_IR_RAW_EVENT(i32 %9, i64 %10)
  store i32 0, i32* %8, align 4
  %12 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %13 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %12, i32 0, i32 0
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = icmp ne %struct.TYPE_5__* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %92

19:                                               ; preds = %2
  %20 = call i32 (...) @ktime_get()
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %23 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %22, i32 0, i32 0
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @ktime_sub(i32 %21, i32 %26)
  %28 = call i64 @ktime_to_ns(i32 %27)
  store i64 %28, i64* %7, align 8
  %29 = load i64, i64* %7, align 8
  %30 = load i64, i64* @IR_MAX_DURATION, align 8
  %31 = icmp sgt i64 %29, %30
  br i1 %31, label %39, label %32

32:                                               ; preds = %19
  %33 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %34 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %33, i32 0, i32 0
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %32, %19
  %40 = load i32, i32* @IR_START_EVENT, align 4
  %41 = load i32, i32* %5, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %5, align 4
  br label %45

43:                                               ; preds = %32
  %44 = load i64, i64* %7, align 8
  store i64 %44, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ev, i32 0, i32 1), align 8
  br label %45

45:                                               ; preds = %43, %39
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @IR_START_EVENT, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %52 = call i32 @ir_raw_event_reset(%struct.rc_dev* %51)
  br label %80

53:                                               ; preds = %45
  %54 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %55 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %54, i32 0, i32 0
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @IR_SPACE, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %53
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ev, i32 0, i32 0), align 8
  %63 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %64 = call i32 @ir_raw_event_store(%struct.rc_dev* %63, %struct.TYPE_6__* @ev)
  store i32 %64, i32* %8, align 4
  br label %79

65:                                               ; preds = %53
  %66 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %67 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %66, i32 0, i32 0
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @IR_PULSE, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %65
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ev, i32 0, i32 0), align 8
  %75 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %76 = call i32 @ir_raw_event_store(%struct.rc_dev* %75, %struct.TYPE_6__* @ev)
  store i32 %76, i32* %8, align 4
  br label %78

77:                                               ; preds = %65
  store i32 0, i32* %3, align 4
  br label %92

78:                                               ; preds = %74
  br label %79

79:                                               ; preds = %78, %62
  br label %80

80:                                               ; preds = %79, %50
  %81 = load i32, i32* %6, align 4
  %82 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %83 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %82, i32 0, i32 0
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 1
  store i32 %81, i32* %85, align 4
  %86 = load i32, i32* %5, align 4
  %87 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %88 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %87, i32 0, i32 0
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  store i32 %86, i32* %90, align 4
  %91 = load i32, i32* %8, align 4
  store i32 %91, i32* %3, align 4
  br label %92

92:                                               ; preds = %80, %77, %16
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i32 @DEFINE_IR_RAW_EVENT(i32, i64) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local i64 @ktime_to_ns(i32) #1

declare dso_local i32 @ktime_sub(i32, i32) #1

declare dso_local i32 @ir_raw_event_reset(%struct.rc_dev*) #1

declare dso_local i32 @ir_raw_event_store(%struct.rc_dev*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
