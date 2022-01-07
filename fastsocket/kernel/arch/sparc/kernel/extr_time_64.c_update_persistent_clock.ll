; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_time_64.c_update_persistent_clock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_time_64.c_update_persistent_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32 }
%struct.rtc_device = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"rtc0\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @update_persistent_clock(i32 %0) #0 {
  %2 = alloca %struct.timespec, align 4
  %3 = alloca %struct.rtc_device*, align 8
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.timespec, %struct.timespec* %2, i32 0, i32 0
  store i32 %0, i32* %5, align 4
  %6 = call %struct.rtc_device* @rtc_class_open(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store %struct.rtc_device* %6, %struct.rtc_device** %3, align 8
  store i32 -1, i32* %4, align 4
  %7 = load %struct.rtc_device*, %struct.rtc_device** %3, align 8
  %8 = icmp ne %struct.rtc_device* %7, null
  br i1 %8, label %9, label %16

9:                                                ; preds = %1
  %10 = load %struct.rtc_device*, %struct.rtc_device** %3, align 8
  %11 = getelementptr inbounds %struct.timespec, %struct.timespec* %2, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @rtc_set_mmss(%struct.rtc_device* %10, i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load %struct.rtc_device*, %struct.rtc_device** %3, align 8
  %15 = call i32 @rtc_class_close(%struct.rtc_device* %14)
  br label %16

16:                                               ; preds = %9, %1
  %17 = load i32, i32* %4, align 4
  ret i32 %17
}

declare dso_local %struct.rtc_device* @rtc_class_open(i8*) #1

declare dso_local i32 @rtc_set_mmss(%struct.rtc_device*, i32) #1

declare dso_local i32 @rtc_class_close(%struct.rtc_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
