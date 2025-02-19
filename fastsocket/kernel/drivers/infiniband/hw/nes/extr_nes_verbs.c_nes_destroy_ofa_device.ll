; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_verbs.c_nes_destroy_ofa_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_verbs.c_nes_destroy_ofa_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nes_ib_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nes_destroy_ofa_device(%struct.nes_ib_device* %0) #0 {
  %2 = alloca %struct.nes_ib_device*, align 8
  store %struct.nes_ib_device* %0, %struct.nes_ib_device** %2, align 8
  %3 = load %struct.nes_ib_device*, %struct.nes_ib_device** %2, align 8
  %4 = icmp eq %struct.nes_ib_device* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %17

6:                                                ; preds = %1
  %7 = load %struct.nes_ib_device*, %struct.nes_ib_device** %2, align 8
  %8 = call i32 @nes_unregister_ofa_device(%struct.nes_ib_device* %7)
  %9 = load %struct.nes_ib_device*, %struct.nes_ib_device** %2, align 8
  %10 = getelementptr inbounds %struct.nes_ib_device, %struct.nes_ib_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @kfree(i32 %12)
  %14 = load %struct.nes_ib_device*, %struct.nes_ib_device** %2, align 8
  %15 = getelementptr inbounds %struct.nes_ib_device, %struct.nes_ib_device* %14, i32 0, i32 0
  %16 = call i32 @ib_dealloc_device(%struct.TYPE_2__* %15)
  br label %17

17:                                               ; preds = %6, %5
  ret void
}

declare dso_local i32 @nes_unregister_ofa_device(%struct.nes_ib_device*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @ib_dealloc_device(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
