; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/base/power/extr_trace.c_set_trace_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/base/power/extr_trace.c_set_trace_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }

@DEVSEED = common dso_local global i32 0, align 4
@DEVHASH = common dso_local global i32 0, align 4
@dev_hash_value = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_trace_device(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %3 = load i32, i32* @DEVSEED, align 4
  %4 = load %struct.device*, %struct.device** %2, align 8
  %5 = call i32 @dev_name(%struct.device* %4)
  %6 = load i32, i32* @DEVHASH, align 4
  %7 = call i32 @hash_string(i32 %3, i32 %5, i32 %6)
  store i32 %7, i32* @dev_hash_value, align 4
  ret void
}

declare dso_local i32 @hash_string(i32, i32, i32) #1

declare dso_local i32 @dev_name(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
