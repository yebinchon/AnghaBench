; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_niu.c_niu_init_rx_mac.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_niu.c_niu_init_rx_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.niu = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@NIU_FLAGS_XMAC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.niu*)* @niu_init_rx_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @niu_init_rx_mac(%struct.niu* %0) #0 {
  %2 = alloca %struct.niu*, align 8
  store %struct.niu* %0, %struct.niu** %2, align 8
  %3 = load %struct.niu*, %struct.niu** %2, align 8
  %4 = load %struct.niu*, %struct.niu** %2, align 8
  %5 = getelementptr inbounds %struct.niu, %struct.niu* %4, i32 0, i32 1
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @niu_set_primary_mac(%struct.niu* %3, i32 %8)
  %10 = load %struct.niu*, %struct.niu** %2, align 8
  %11 = getelementptr inbounds %struct.niu, %struct.niu* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @NIU_FLAGS_XMAC, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load %struct.niu*, %struct.niu** %2, align 8
  %18 = call i32 @niu_init_rx_xmac(%struct.niu* %17)
  br label %22

19:                                               ; preds = %1
  %20 = load %struct.niu*, %struct.niu** %2, align 8
  %21 = call i32 @niu_init_rx_bmac(%struct.niu* %20)
  br label %22

22:                                               ; preds = %19, %16
  ret void
}

declare dso_local i32 @niu_set_primary_mac(%struct.niu*, i32) #1

declare dso_local i32 @niu_init_rx_xmac(%struct.niu*) #1

declare dso_local i32 @niu_init_rx_bmac(%struct.niu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
