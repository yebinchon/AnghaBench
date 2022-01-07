; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/rc/extr_ir-raw.c_ir_raw_event_store.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/rc/extr_ir-raw.c_ir_raw_event_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rc_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ir_raw_event = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"sample: (%05dus %s)\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ir_raw_event_store(%struct.rc_dev* %0, %struct.ir_raw_event* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rc_dev*, align 8
  %5 = alloca %struct.ir_raw_event*, align 8
  store %struct.rc_dev* %0, %struct.rc_dev** %4, align 8
  store %struct.ir_raw_event* %1, %struct.ir_raw_event** %5, align 8
  %6 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %7 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = icmp ne %struct.TYPE_2__* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %3, align 4
  br label %37

13:                                               ; preds = %2
  %14 = load %struct.ir_raw_event*, %struct.ir_raw_event** %5, align 8
  %15 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @TO_US(i32 %16)
  %18 = load %struct.ir_raw_event*, %struct.ir_raw_event** %5, align 8
  %19 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @TO_STR(i32 %20)
  %22 = call i32 @IR_dprintk(i32 2, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %21)
  %23 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %24 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.ir_raw_event*, %struct.ir_raw_event** %5, align 8
  %29 = bitcast %struct.ir_raw_event* %28 to i8*
  %30 = call i32 @__kfifo_put(i32 %27, i8* %29, i32 8)
  %31 = sext i32 %30 to i64
  %32 = icmp ne i64 %31, 8
  br i1 %32, label %33, label %36

33:                                               ; preds = %13
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %37

36:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %36, %33, %10
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @IR_dprintk(i32, i8*, i32, i32) #1

declare dso_local i32 @TO_US(i32) #1

declare dso_local i32 @TO_STR(i32) #1

declare dso_local i32 @__kfifo_put(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
