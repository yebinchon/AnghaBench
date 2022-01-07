; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/lguest/extr_lguest_device.c_lg_features.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/lguest/extr_lguest_device.c_lg_features.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lguest_device_desc = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.lguest_device_desc*)* @lg_features to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @lg_features(%struct.lguest_device_desc* %0) #0 {
  %2 = alloca %struct.lguest_device_desc*, align 8
  store %struct.lguest_device_desc* %0, %struct.lguest_device_desc** %2, align 8
  %3 = load %struct.lguest_device_desc*, %struct.lguest_device_desc** %2, align 8
  %4 = call i64 @lg_vq(%struct.lguest_device_desc* %3)
  %5 = load %struct.lguest_device_desc*, %struct.lguest_device_desc** %2, align 8
  %6 = getelementptr inbounds %struct.lguest_device_desc, %struct.lguest_device_desc* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add nsw i64 %4, %7
  %9 = inttoptr i64 %8 to i8*
  ret i8* %9
}

declare dso_local i64 @lg_vq(%struct.lguest_device_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
