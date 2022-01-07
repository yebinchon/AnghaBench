; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_firmware_class.c_release_firmware.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_firmware_class.c_release_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.builtin_fw = type { i64 }
%struct.firmware = type { i64 }

@__start_builtin_fw = common dso_local global %struct.builtin_fw* null, align 8
@__end_builtin_fw = common dso_local global %struct.builtin_fw* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @release_firmware(%struct.firmware* %0) #0 {
  %2 = alloca %struct.firmware*, align 8
  %3 = alloca %struct.builtin_fw*, align 8
  store %struct.firmware* %0, %struct.firmware** %2, align 8
  %4 = load %struct.firmware*, %struct.firmware** %2, align 8
  %5 = icmp ne %struct.firmware* %4, null
  br i1 %5, label %6, label %31

6:                                                ; preds = %1
  %7 = load %struct.builtin_fw*, %struct.builtin_fw** @__start_builtin_fw, align 8
  store %struct.builtin_fw* %7, %struct.builtin_fw** %3, align 8
  br label %8

8:                                                ; preds = %22, %6
  %9 = load %struct.builtin_fw*, %struct.builtin_fw** %3, align 8
  %10 = load %struct.builtin_fw*, %struct.builtin_fw** @__end_builtin_fw, align 8
  %11 = icmp ne %struct.builtin_fw* %9, %10
  br i1 %11, label %12, label %25

12:                                               ; preds = %8
  %13 = load %struct.firmware*, %struct.firmware** %2, align 8
  %14 = getelementptr inbounds %struct.firmware, %struct.firmware* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.builtin_fw*, %struct.builtin_fw** %3, align 8
  %17 = getelementptr inbounds %struct.builtin_fw, %struct.builtin_fw* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %15, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %12
  br label %28

21:                                               ; preds = %12
  br label %22

22:                                               ; preds = %21
  %23 = load %struct.builtin_fw*, %struct.builtin_fw** %3, align 8
  %24 = getelementptr inbounds %struct.builtin_fw, %struct.builtin_fw* %23, i32 1
  store %struct.builtin_fw* %24, %struct.builtin_fw** %3, align 8
  br label %8

25:                                               ; preds = %8
  %26 = load %struct.firmware*, %struct.firmware** %2, align 8
  %27 = call i32 @firmware_free_data(%struct.firmware* %26)
  br label %28

28:                                               ; preds = %25, %20
  %29 = load %struct.firmware*, %struct.firmware** %2, align 8
  %30 = call i32 @kfree(%struct.firmware* %29)
  br label %31

31:                                               ; preds = %28, %1
  ret void
}

declare dso_local i32 @firmware_free_data(%struct.firmware*) #1

declare dso_local i32 @kfree(%struct.firmware*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
