; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_pktcdvd.c_pkt_debugfs_dev_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_pktcdvd.c_pkt_debugfs_dev_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pktcdvd_device = type { i32*, i32* }

@pkt_debugfs_root = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pktcdvd_device*)* @pkt_debugfs_dev_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pkt_debugfs_dev_remove(%struct.pktcdvd_device* %0) #0 {
  %2 = alloca %struct.pktcdvd_device*, align 8
  store %struct.pktcdvd_device* %0, %struct.pktcdvd_device** %2, align 8
  %3 = load i32, i32* @pkt_debugfs_root, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %31

6:                                                ; preds = %1
  %7 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %2, align 8
  %8 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %7, i32 0, i32 1
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %6
  %12 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %2, align 8
  %13 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = call i32 @debugfs_remove(i32* %14)
  br label %16

16:                                               ; preds = %11, %6
  %17 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %2, align 8
  %18 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %17, i32 0, i32 1
  store i32* null, i32** %18, align 8
  %19 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %2, align 8
  %20 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %16
  %24 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %2, align 8
  %25 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = call i32 @debugfs_remove(i32* %26)
  br label %28

28:                                               ; preds = %23, %16
  %29 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %2, align 8
  %30 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %29, i32 0, i32 0
  store i32* null, i32** %30, align 8
  br label %31

31:                                               ; preds = %28, %5
  ret void
}

declare dso_local i32 @debugfs_remove(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
