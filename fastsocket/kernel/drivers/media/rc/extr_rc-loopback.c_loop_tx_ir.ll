; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/rc/extr_rc-loopback.c_loop_tx_ir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/rc/extr_rc-loopback.c_loop_tx_ir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.rc_dev = type { %struct.loopback_dev* }
%struct.loopback_dev = type { i64, i64, i64, i32, i64 }

@rawir = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@.str = private unnamed_addr constant [24 x i8] c"invalid tx buffer size\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"invalid tx data, total duration zero\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"ignoring tx, carrier out of range\0A\00", align 1
@RXMASK_LEARNING = common dso_local global i32 0, align 4
@RXMASK_REGULAR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"ignoring tx, rx mask mismatch\0A\00", align 1
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rc_dev*, i32*, i32)* @loop_tx_ir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @loop_tx_ir(%struct.rc_dev* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rc_dev*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.loopback_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.rc_dev* %0, %struct.rc_dev** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %14 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %13, i32 0, i32 0
  %15 = load %struct.loopback_dev*, %struct.loopback_dev** %14, align 8
  store %struct.loopback_dev* %15, %struct.loopback_dev** %8, align 8
  store i32 0, i32* %11, align 4
  %16 = load i64, i64* bitcast (%struct.TYPE_4__* @rawir to i64*), align 4
  %17 = call i32 @DEFINE_IR_RAW_EVENT(i64 %16)
  %18 = load i32, i32* %7, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = urem i64 %22, 4
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %20, %3
  %26 = call i32 @dprintk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %130

29:                                               ; preds = %20
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = udiv i64 %31, 4
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %10, align 4
  store i32 0, i32* %12, align 4
  br label %34

34:                                               ; preds = %47, %29
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp ult i32 %35, %36
  br i1 %37, label %38, label %50

38:                                               ; preds = %34
  %39 = load i32*, i32** %6, align 8
  %40 = load i32, i32* %12, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @abs(i32 %43) #3
  %45 = load i32, i32* %11, align 4
  %46 = add i32 %45, %44
  store i32 %46, i32* %11, align 4
  br label %47

47:                                               ; preds = %38
  %48 = load i32, i32* %12, align 4
  %49 = add i32 %48, 1
  store i32 %49, i32* %12, align 4
  br label %34

50:                                               ; preds = %34
  %51 = load i32, i32* %11, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %50
  %54 = call i32 @dprintk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %4, align 4
  br label %130

57:                                               ; preds = %50
  %58 = load %struct.loopback_dev*, %struct.loopback_dev** %8, align 8
  %59 = getelementptr inbounds %struct.loopback_dev, %struct.loopback_dev* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.loopback_dev*, %struct.loopback_dev** %8, align 8
  %62 = getelementptr inbounds %struct.loopback_dev, %struct.loopback_dev* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp slt i64 %60, %63
  br i1 %64, label %73, label %65

65:                                               ; preds = %57
  %66 = load %struct.loopback_dev*, %struct.loopback_dev** %8, align 8
  %67 = getelementptr inbounds %struct.loopback_dev, %struct.loopback_dev* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.loopback_dev*, %struct.loopback_dev** %8, align 8
  %70 = getelementptr inbounds %struct.loopback_dev, %struct.loopback_dev* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = icmp sgt i64 %68, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %65, %57
  %74 = call i32 @dprintk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  br label %123

75:                                               ; preds = %65
  %76 = load %struct.loopback_dev*, %struct.loopback_dev** %8, align 8
  %77 = getelementptr inbounds %struct.loopback_dev, %struct.loopback_dev* %76, i32 0, i32 4
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %75
  %81 = load i32, i32* @RXMASK_LEARNING, align 4
  store i32 %81, i32* %9, align 4
  br label %84

82:                                               ; preds = %75
  %83 = load i32, i32* @RXMASK_REGULAR, align 4
  store i32 %83, i32* %9, align 4
  br label %84

84:                                               ; preds = %82, %80
  %85 = load i32, i32* %9, align 4
  %86 = load %struct.loopback_dev*, %struct.loopback_dev** %8, align 8
  %87 = getelementptr inbounds %struct.loopback_dev, %struct.loopback_dev* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 8
  %89 = and i32 %85, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %93, label %91

91:                                               ; preds = %84
  %92 = call i32 @dprintk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  br label %123

93:                                               ; preds = %84
  store i32 0, i32* %12, align 4
  br label %94

94:                                               ; preds = %117, %93
  %95 = load i32, i32* %12, align 4
  %96 = load i32, i32* %10, align 4
  %97 = icmp ult i32 %95, %96
  br i1 %97, label %98, label %120

98:                                               ; preds = %94
  %99 = load i32, i32* %12, align 4
  %100 = urem i32 %99, 2
  %101 = icmp ne i32 %100, 0
  %102 = zext i1 %101 to i64
  %103 = select i1 %101, i32 0, i32 1
  store i32 %103, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @rawir, i32 0, i32 0), align 4
  %104 = load i32*, i32** %6, align 8
  %105 = load i32, i32* %12, align 4
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @abs(i32 %108) #3
  %110 = mul nsw i32 %109, 1000
  store i32 %110, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @rawir, i32 0, i32 1), align 4
  %111 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @rawir, i32 0, i32 1), align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %98
  %114 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %115 = call i32 @ir_raw_event_store_with_filter(%struct.rc_dev* %114, %struct.TYPE_4__* @rawir)
  br label %116

116:                                              ; preds = %113, %98
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %12, align 4
  %119 = add i32 %118, 1
  store i32 %119, i32* %12, align 4
  br label %94

120:                                              ; preds = %94
  %121 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %122 = call i32 @ir_raw_event_handle(%struct.rc_dev* %121)
  br label %123

123:                                              ; preds = %120, %91, %73
  %124 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %125 = call i32 @set_current_state(i32 %124)
  %126 = load i32, i32* %11, align 4
  %127 = call i32 @usecs_to_jiffies(i32 %126)
  %128 = call i32 @schedule_timeout(i32 %127)
  %129 = load i32, i32* %7, align 4
  store i32 %129, i32* %4, align 4
  br label %130

130:                                              ; preds = %123, %53, %25
  %131 = load i32, i32* %4, align 4
  ret i32 %131
}

declare dso_local i32 @DEFINE_IR_RAW_EVENT(i64) #1

declare dso_local i32 @dprintk(i8*) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #2

declare dso_local i32 @ir_raw_event_store_with_filter(%struct.rc_dev*, %struct.TYPE_4__*) #1

declare dso_local i32 @ir_raw_event_handle(%struct.rc_dev*) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @schedule_timeout(i32) #1

declare dso_local i32 @usecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
