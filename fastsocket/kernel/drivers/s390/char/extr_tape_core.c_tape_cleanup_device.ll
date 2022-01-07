; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_tape_core.c_tape_cleanup_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_tape_core.c_tape_cleanup_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tape_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 (%struct.tape_device*)* }

@MS_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tape_device*)* @tape_cleanup_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tape_cleanup_device(%struct.tape_device* %0) #0 {
  %2 = alloca %struct.tape_device*, align 8
  store %struct.tape_device* %0, %struct.tape_device** %2, align 8
  %3 = load %struct.tape_device*, %struct.tape_device** %2, align 8
  %4 = call i32 @tapeblock_cleanup_device(%struct.tape_device* %3)
  %5 = load %struct.tape_device*, %struct.tape_device** %2, align 8
  %6 = call i32 @tapechar_cleanup_device(%struct.tape_device* %5)
  %7 = load %struct.tape_device*, %struct.tape_device** %2, align 8
  %8 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = load i32 (%struct.tape_device*)*, i32 (%struct.tape_device*)** %10, align 8
  %12 = load %struct.tape_device*, %struct.tape_device** %2, align 8
  %13 = call i32 %11(%struct.tape_device* %12)
  %14 = load %struct.tape_device*, %struct.tape_device** %2, align 8
  %15 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @module_put(i32 %18)
  %20 = load %struct.tape_device*, %struct.tape_device** %2, align 8
  %21 = call i32 @tape_remove_minor(%struct.tape_device* %20)
  %22 = load %struct.tape_device*, %struct.tape_device** %2, align 8
  %23 = load i32, i32* @MS_UNKNOWN, align 4
  %24 = call i32 @tape_med_state_set(%struct.tape_device* %22, i32 %23)
  ret void
}

declare dso_local i32 @tapeblock_cleanup_device(%struct.tape_device*) #1

declare dso_local i32 @tapechar_cleanup_device(%struct.tape_device*) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @tape_remove_minor(%struct.tape_device*) #1

declare dso_local i32 @tape_med_state_set(%struct.tape_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
