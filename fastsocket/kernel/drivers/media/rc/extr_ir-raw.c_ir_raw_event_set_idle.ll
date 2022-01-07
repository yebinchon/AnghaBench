; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/rc/extr_ir-raw.c_ir_raw_event_set_idle.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/rc/extr_ir-raw.c_ir_raw_event_set_idle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rc_dev = type { i32, i32 (%struct.rc_dev*, i32)*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"%s idle mode\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"enter\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"leave\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ir_raw_event_set_idle(%struct.rc_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.rc_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.rc_dev* %0, %struct.rc_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.rc_dev*, %struct.rc_dev** %3, align 8
  %6 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %5, i32 0, i32 2
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = icmp ne %struct.TYPE_4__* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  br label %51

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  %13 = zext i1 %12 to i64
  %14 = select i1 %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %15 = call i32 @IR_dprintk(i32 2, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %14)
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %35

18:                                               ; preds = %10
  %19 = load %struct.rc_dev*, %struct.rc_dev** %3, align 8
  %20 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %19, i32 0, i32 2
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  store i32 1, i32* %23, align 4
  %24 = load %struct.rc_dev*, %struct.rc_dev** %3, align 8
  %25 = load %struct.rc_dev*, %struct.rc_dev** %3, align 8
  %26 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %25, i32 0, i32 2
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = call i32 @ir_raw_event_store(%struct.rc_dev* %24, %struct.TYPE_5__* %28)
  %30 = load %struct.rc_dev*, %struct.rc_dev** %3, align 8
  %31 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %30, i32 0, i32 2
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = call i32 @init_ir_raw_event(%struct.TYPE_5__* %33)
  br label %35

35:                                               ; preds = %18, %10
  %36 = load %struct.rc_dev*, %struct.rc_dev** %3, align 8
  %37 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %36, i32 0, i32 1
  %38 = load i32 (%struct.rc_dev*, i32)*, i32 (%struct.rc_dev*, i32)** %37, align 8
  %39 = icmp ne i32 (%struct.rc_dev*, i32)* %38, null
  br i1 %39, label %40, label %47

40:                                               ; preds = %35
  %41 = load %struct.rc_dev*, %struct.rc_dev** %3, align 8
  %42 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %41, i32 0, i32 1
  %43 = load i32 (%struct.rc_dev*, i32)*, i32 (%struct.rc_dev*, i32)** %42, align 8
  %44 = load %struct.rc_dev*, %struct.rc_dev** %3, align 8
  %45 = load i32, i32* %4, align 4
  %46 = call i32 %43(%struct.rc_dev* %44, i32 %45)
  br label %47

47:                                               ; preds = %40, %35
  %48 = load i32, i32* %4, align 4
  %49 = load %struct.rc_dev*, %struct.rc_dev** %3, align 8
  %50 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  br label %51

51:                                               ; preds = %47, %9
  ret void
}

declare dso_local i32 @IR_dprintk(i32, i8*, i8*) #1

declare dso_local i32 @ir_raw_event_store(%struct.rc_dev*, %struct.TYPE_5__*) #1

declare dso_local i32 @init_ir_raw_event(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
