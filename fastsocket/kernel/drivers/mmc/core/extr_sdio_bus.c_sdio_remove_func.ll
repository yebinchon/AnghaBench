; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/core/extr_sdio_bus.c_sdio_remove_func.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/core/extr_sdio_bus.c_sdio_remove_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdio_func = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sdio_remove_func(%struct.sdio_func* %0) #0 {
  %2 = alloca %struct.sdio_func*, align 8
  store %struct.sdio_func* %0, %struct.sdio_func** %2, align 8
  %3 = load %struct.sdio_func*, %struct.sdio_func** %2, align 8
  %4 = call i64 @sdio_func_present(%struct.sdio_func* %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = load %struct.sdio_func*, %struct.sdio_func** %2, align 8
  %8 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %7, i32 0, i32 0
  %9 = call i32 @device_del(i32* %8)
  br label %10

10:                                               ; preds = %6, %1
  %11 = load %struct.sdio_func*, %struct.sdio_func** %2, align 8
  %12 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %11, i32 0, i32 0
  %13 = call i32 @put_device(i32* %12)
  ret void
}

declare dso_local i64 @sdio_func_present(%struct.sdio_func*) #1

declare dso_local i32 @device_del(i32*) #1

declare dso_local i32 @put_device(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
