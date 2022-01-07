; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/lguest/extr_lguest_device.c_desc_size.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/lguest/extr_lguest_device.c_desc_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lguest_device_desc = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lguest_device_desc*)* @desc_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @desc_size(%struct.lguest_device_desc* %0) #0 {
  %2 = alloca %struct.lguest_device_desc*, align 8
  store %struct.lguest_device_desc* %0, %struct.lguest_device_desc** %2, align 8
  %3 = load %struct.lguest_device_desc*, %struct.lguest_device_desc** %2, align 8
  %4 = getelementptr inbounds %struct.lguest_device_desc, %struct.lguest_device_desc* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = sext i32 %5 to i64
  %7 = mul i64 %6, 4
  %8 = add i64 12, %7
  %9 = load %struct.lguest_device_desc*, %struct.lguest_device_desc** %2, align 8
  %10 = getelementptr inbounds %struct.lguest_device_desc, %struct.lguest_device_desc* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = mul nsw i32 %11, 2
  %13 = sext i32 %12 to i64
  %14 = add i64 %8, %13
  %15 = load %struct.lguest_device_desc*, %struct.lguest_device_desc** %2, align 8
  %16 = getelementptr inbounds %struct.lguest_device_desc, %struct.lguest_device_desc* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = sext i32 %17 to i64
  %19 = add i64 %14, %18
  %20 = trunc i64 %19 to i32
  ret i32 %20
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
