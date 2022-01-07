; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mca/extr_mca-legacy.c_mca_mark_as_used.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mca/extr_mca-legacy.c_mca_mark_as_used.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mca_device = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mca_mark_as_used(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.mca_device*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call %struct.mca_device* @mca_find_device_by_slot(i32 %5)
  store %struct.mca_device* %6, %struct.mca_device** %4, align 8
  %7 = load %struct.mca_device*, %struct.mca_device** %4, align 8
  %8 = icmp ne %struct.mca_device* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %18

10:                                               ; preds = %1
  %11 = load %struct.mca_device*, %struct.mca_device** %4, align 8
  %12 = call i64 @mca_device_claimed(%struct.mca_device* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  store i32 1, i32* %2, align 4
  br label %18

15:                                               ; preds = %10
  %16 = load %struct.mca_device*, %struct.mca_device** %4, align 8
  %17 = call i32 @mca_device_set_claim(%struct.mca_device* %16, i32 1)
  store i32 0, i32* %2, align 4
  br label %18

18:                                               ; preds = %15, %14, %9
  %19 = load i32, i32* %2, align 4
  ret i32 %19
}

declare dso_local %struct.mca_device* @mca_find_device_by_slot(i32) #1

declare dso_local i64 @mca_device_claimed(%struct.mca_device*) #1

declare dso_local i32 @mca_device_set_claim(%struct.mca_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
