; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/pcmcia/extr_cm4000_cs.c_stop_monitor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/pcmcia/extr_cm4000_cs.c_stop_monitor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cm4000_dev = type { i32, i64 }

@.str = private unnamed_addr constant [17 x i8] c"-> stop_monitor\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"stopping monitor\0A\00", align 1
@IS_ATR_VALID = common dso_local global i32 0, align 4
@IS_ATR_PRESENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"monitor already stopped\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"<- stop_monitor\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cm4000_dev*)* @stop_monitor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stop_monitor(%struct.cm4000_dev* %0) #0 {
  %2 = alloca %struct.cm4000_dev*, align 8
  store %struct.cm4000_dev* %0, %struct.cm4000_dev** %2, align 8
  %3 = load %struct.cm4000_dev*, %struct.cm4000_dev** %2, align 8
  %4 = call i32 @DEBUGP(i32 3, %struct.cm4000_dev* %3, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %5 = load %struct.cm4000_dev*, %struct.cm4000_dev** %2, align 8
  %6 = getelementptr inbounds %struct.cm4000_dev, %struct.cm4000_dev* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %22

9:                                                ; preds = %1
  %10 = load %struct.cm4000_dev*, %struct.cm4000_dev** %2, align 8
  %11 = call i32 @DEBUGP(i32 5, %struct.cm4000_dev* %10, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %12 = load %struct.cm4000_dev*, %struct.cm4000_dev** %2, align 8
  %13 = call i32 @terminate_monitor(%struct.cm4000_dev* %12)
  %14 = load i32, i32* @IS_ATR_VALID, align 4
  %15 = load %struct.cm4000_dev*, %struct.cm4000_dev** %2, align 8
  %16 = getelementptr inbounds %struct.cm4000_dev, %struct.cm4000_dev* %15, i32 0, i32 0
  %17 = call i32 @clear_bit(i32 %14, i32* %16)
  %18 = load i32, i32* @IS_ATR_PRESENT, align 4
  %19 = load %struct.cm4000_dev*, %struct.cm4000_dev** %2, align 8
  %20 = getelementptr inbounds %struct.cm4000_dev, %struct.cm4000_dev* %19, i32 0, i32 0
  %21 = call i32 @clear_bit(i32 %18, i32* %20)
  br label %25

22:                                               ; preds = %1
  %23 = load %struct.cm4000_dev*, %struct.cm4000_dev** %2, align 8
  %24 = call i32 @DEBUGP(i32 5, %struct.cm4000_dev* %23, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %25

25:                                               ; preds = %22, %9
  %26 = load %struct.cm4000_dev*, %struct.cm4000_dev** %2, align 8
  %27 = call i32 @DEBUGP(i32 3, %struct.cm4000_dev* %26, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

declare dso_local i32 @DEBUGP(i32, %struct.cm4000_dev*, i8*) #1

declare dso_local i32 @terminate_monitor(%struct.cm4000_dev*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
