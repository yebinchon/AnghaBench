; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/ubi/extr_wl.c_ubi_wl_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/ubi/extr_wl.c_ubi_wl_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_device = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"close the WL sub-system\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ubi_wl_close(%struct.ubi_device* %0) #0 {
  %2 = alloca %struct.ubi_device*, align 8
  store %struct.ubi_device* %0, %struct.ubi_device** %2, align 8
  %3 = call i32 @dbg_wl(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %4 = load %struct.ubi_device*, %struct.ubi_device** %2, align 8
  %5 = call i32 @cancel_pending(%struct.ubi_device* %4)
  %6 = load %struct.ubi_device*, %struct.ubi_device** %2, align 8
  %7 = call i32 @protection_queue_destroy(%struct.ubi_device* %6)
  %8 = load %struct.ubi_device*, %struct.ubi_device** %2, align 8
  %9 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %8, i32 0, i32 4
  %10 = call i32 @tree_destroy(i32* %9)
  %11 = load %struct.ubi_device*, %struct.ubi_device** %2, align 8
  %12 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %11, i32 0, i32 3
  %13 = call i32 @tree_destroy(i32* %12)
  %14 = load %struct.ubi_device*, %struct.ubi_device** %2, align 8
  %15 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %14, i32 0, i32 2
  %16 = call i32 @tree_destroy(i32* %15)
  %17 = load %struct.ubi_device*, %struct.ubi_device** %2, align 8
  %18 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %17, i32 0, i32 1
  %19 = call i32 @tree_destroy(i32* %18)
  %20 = load %struct.ubi_device*, %struct.ubi_device** %2, align 8
  %21 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @kfree(i32 %22)
  ret void
}

declare dso_local i32 @dbg_wl(i8*) #1

declare dso_local i32 @cancel_pending(%struct.ubi_device*) #1

declare dso_local i32 @protection_queue_destroy(%struct.ubi_device*) #1

declare dso_local i32 @tree_destroy(i32*) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
