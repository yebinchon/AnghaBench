; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/extr_atmel-ssc.c_ssc_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/extr_atmel-ssc.c_ssc_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssc_device = type { %struct.TYPE_2__*, i32, i64 }
%struct.TYPE_2__ = type { i32 }

@user_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"device already free\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ssc_free(%struct.ssc_device* %0) #0 {
  %2 = alloca %struct.ssc_device*, align 8
  store %struct.ssc_device* %0, %struct.ssc_device** %2, align 8
  %3 = call i32 @spin_lock(i32* @user_lock)
  %4 = load %struct.ssc_device*, %struct.ssc_device** %2, align 8
  %5 = getelementptr inbounds %struct.ssc_device, %struct.ssc_device* %4, i32 0, i32 2
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %17

8:                                                ; preds = %1
  %9 = load %struct.ssc_device*, %struct.ssc_device** %2, align 8
  %10 = getelementptr inbounds %struct.ssc_device, %struct.ssc_device* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = add nsw i64 %11, -1
  store i64 %12, i64* %10, align 8
  %13 = load %struct.ssc_device*, %struct.ssc_device** %2, align 8
  %14 = getelementptr inbounds %struct.ssc_device, %struct.ssc_device* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @clk_disable(i32 %15)
  br label %23

17:                                               ; preds = %1
  %18 = load %struct.ssc_device*, %struct.ssc_device** %2, align 8
  %19 = getelementptr inbounds %struct.ssc_device, %struct.ssc_device* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = call i32 @dev_dbg(i32* %21, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %23

23:                                               ; preds = %17, %8
  %24 = call i32 @spin_unlock(i32* @user_lock)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @clk_disable(i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
