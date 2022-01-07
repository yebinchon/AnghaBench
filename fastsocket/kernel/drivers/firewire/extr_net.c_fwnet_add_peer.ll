; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/firewire/extr_net.c_fwnet_add_peer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/firewire/extr_net.c_fwnet_add_peer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fwnet_device = type { i32, i32 }
%struct.fw_unit = type { i32 }
%struct.fw_device = type { i32*, i32, i32, i32, i32 }
%struct.fwnet_peer = type { i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, %struct.fwnet_device* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FWNET_NO_FIFO_ADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fwnet_device*, %struct.fw_unit*, %struct.fw_device*)* @fwnet_add_peer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fwnet_add_peer(%struct.fwnet_device* %0, %struct.fw_unit* %1, %struct.fw_device* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fwnet_device*, align 8
  %6 = alloca %struct.fw_unit*, align 8
  %7 = alloca %struct.fw_device*, align 8
  %8 = alloca %struct.fwnet_peer*, align 8
  store %struct.fwnet_device* %0, %struct.fwnet_device** %5, align 8
  store %struct.fw_unit* %1, %struct.fw_unit** %6, align 8
  store %struct.fw_device* %2, %struct.fw_device** %7, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.fwnet_peer* @kmalloc(i32 56, i32 %9)
  store %struct.fwnet_peer* %10, %struct.fwnet_peer** %8, align 8
  %11 = load %struct.fwnet_peer*, %struct.fwnet_peer** %8, align 8
  %12 = icmp ne %struct.fwnet_peer* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %84

16:                                               ; preds = %3
  %17 = load %struct.fw_unit*, %struct.fw_unit** %6, align 8
  %18 = getelementptr inbounds %struct.fw_unit, %struct.fw_unit* %17, i32 0, i32 0
  %19 = load %struct.fwnet_peer*, %struct.fwnet_peer** %8, align 8
  %20 = call i32 @dev_set_drvdata(i32* %18, %struct.fwnet_peer* %19)
  %21 = load %struct.fwnet_device*, %struct.fwnet_device** %5, align 8
  %22 = load %struct.fwnet_peer*, %struct.fwnet_peer** %8, align 8
  %23 = getelementptr inbounds %struct.fwnet_peer, %struct.fwnet_peer* %22, i32 0, i32 10
  store %struct.fwnet_device* %21, %struct.fwnet_device** %23, align 8
  %24 = load %struct.fw_device*, %struct.fw_device** %7, align 8
  %25 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 3
  %28 = load i32, i32* %27, align 4
  %29 = shl i32 %28, 32
  %30 = load %struct.fw_device*, %struct.fw_device** %7, align 8
  %31 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 4
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %29, %34
  %36 = load %struct.fwnet_peer*, %struct.fwnet_peer** %8, align 8
  %37 = getelementptr inbounds %struct.fwnet_peer, %struct.fwnet_peer* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load i32, i32* @FWNET_NO_FIFO_ADDR, align 4
  %39 = load %struct.fwnet_peer*, %struct.fwnet_peer** %8, align 8
  %40 = getelementptr inbounds %struct.fwnet_peer, %struct.fwnet_peer* %39, i32 0, i32 9
  store i32 %38, i32* %40, align 4
  %41 = load %struct.fwnet_peer*, %struct.fwnet_peer** %8, align 8
  %42 = getelementptr inbounds %struct.fwnet_peer, %struct.fwnet_peer* %41, i32 0, i32 8
  %43 = call i32 @INIT_LIST_HEAD(i32* %42)
  %44 = load %struct.fwnet_peer*, %struct.fwnet_peer** %8, align 8
  %45 = getelementptr inbounds %struct.fwnet_peer, %struct.fwnet_peer* %44, i32 0, i32 7
  store i64 0, i64* %45, align 8
  %46 = load %struct.fwnet_peer*, %struct.fwnet_peer** %8, align 8
  %47 = getelementptr inbounds %struct.fwnet_peer, %struct.fwnet_peer* %46, i32 0, i32 6
  store i64 0, i64* %47, align 8
  %48 = load %struct.fw_device*, %struct.fw_device** %7, align 8
  %49 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.fwnet_peer*, %struct.fwnet_peer** %8, align 8
  %52 = getelementptr inbounds %struct.fwnet_peer, %struct.fwnet_peer* %51, i32 0, i32 4
  store i32 %50, i32* %52, align 8
  %53 = load %struct.fw_device*, %struct.fw_device** %7, align 8
  %54 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.fwnet_peer*, %struct.fwnet_peer** %8, align 8
  %57 = getelementptr inbounds %struct.fwnet_peer, %struct.fwnet_peer* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @fwnet_max_payload(i32 %55, i32 %58)
  %60 = load %struct.fwnet_peer*, %struct.fwnet_peer** %8, align 8
  %61 = getelementptr inbounds %struct.fwnet_peer, %struct.fwnet_peer* %60, i32 0, i32 5
  store i32 %59, i32* %61, align 4
  %62 = load %struct.fw_device*, %struct.fw_device** %7, align 8
  %63 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.fwnet_peer*, %struct.fwnet_peer** %8, align 8
  %66 = getelementptr inbounds %struct.fwnet_peer, %struct.fwnet_peer* %65, i32 0, i32 3
  store i32 %64, i32* %66, align 4
  %67 = call i32 (...) @smp_rmb()
  %68 = load %struct.fw_device*, %struct.fw_device** %7, align 8
  %69 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.fwnet_peer*, %struct.fwnet_peer** %8, align 8
  %72 = getelementptr inbounds %struct.fwnet_peer, %struct.fwnet_peer* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 8
  %73 = load %struct.fwnet_device*, %struct.fwnet_device** %5, align 8
  %74 = getelementptr inbounds %struct.fwnet_device, %struct.fwnet_device* %73, i32 0, i32 0
  %75 = call i32 @spin_lock_irq(i32* %74)
  %76 = load %struct.fwnet_peer*, %struct.fwnet_peer** %8, align 8
  %77 = getelementptr inbounds %struct.fwnet_peer, %struct.fwnet_peer* %76, i32 0, i32 1
  %78 = load %struct.fwnet_device*, %struct.fwnet_device** %5, align 8
  %79 = getelementptr inbounds %struct.fwnet_device, %struct.fwnet_device* %78, i32 0, i32 1
  %80 = call i32 @list_add_tail(i32* %77, i32* %79)
  %81 = load %struct.fwnet_device*, %struct.fwnet_device** %5, align 8
  %82 = getelementptr inbounds %struct.fwnet_device, %struct.fwnet_device* %81, i32 0, i32 0
  %83 = call i32 @spin_unlock_irq(i32* %82)
  store i32 0, i32* %4, align 4
  br label %84

84:                                               ; preds = %16, %13
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local %struct.fwnet_peer* @kmalloc(i32, i32) #1

declare dso_local i32 @dev_set_drvdata(i32*, %struct.fwnet_peer*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @fwnet_max_payload(i32, i32) #1

declare dso_local i32 @smp_rmb(...) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
