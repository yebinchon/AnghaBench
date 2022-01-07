; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_b44.c___b44_set_mac_addr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_b44.c___b44_set_mac_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b44 = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@B44_CAM_CTRL = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@CAM_CTRL_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b44*)* @__b44_set_mac_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__b44_set_mac_addr(%struct.b44* %0) #0 {
  %2 = alloca %struct.b44*, align 8
  %3 = alloca i32, align 4
  store %struct.b44* %0, %struct.b44** %2, align 8
  %4 = load %struct.b44*, %struct.b44** %2, align 8
  %5 = load i32, i32* @B44_CAM_CTRL, align 4
  %6 = call i32 @bw32(%struct.b44* %4, i32 %5, i32 0)
  %7 = load %struct.b44*, %struct.b44** %2, align 8
  %8 = getelementptr inbounds %struct.b44, %struct.b44* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @IFF_PROMISC, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %32, label %15

15:                                               ; preds = %1
  %16 = load %struct.b44*, %struct.b44** %2, align 8
  %17 = load %struct.b44*, %struct.b44** %2, align 8
  %18 = getelementptr inbounds %struct.b44, %struct.b44* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @__b44_cam_write(%struct.b44* %16, i32 %21, i32 0)
  %23 = load %struct.b44*, %struct.b44** %2, align 8
  %24 = load i32, i32* @B44_CAM_CTRL, align 4
  %25 = call i32 @br32(%struct.b44* %23, i32 %24)
  store i32 %25, i32* %3, align 4
  %26 = load %struct.b44*, %struct.b44** %2, align 8
  %27 = load i32, i32* @B44_CAM_CTRL, align 4
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @CAM_CTRL_ENABLE, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @bw32(%struct.b44* %26, i32 %27, i32 %30)
  br label %32

32:                                               ; preds = %15, %1
  ret void
}

declare dso_local i32 @bw32(%struct.b44*, i32, i32) #1

declare dso_local i32 @__b44_cam_write(%struct.b44*, i32, i32) #1

declare dso_local i32 @br32(%struct.b44*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
