; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_hso.c_hso_free_net_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_hso.c_hso_free_net_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hso_device = type { i32 }
%struct.hso_net = type { %struct.hso_device*, i32, %struct.hso_device**, i32*, i64, i32 }

@MUX_BULK_RX_BUF_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hso_device*)* @hso_free_net_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hso_free_net_device(%struct.hso_device* %0) #0 {
  %2 = alloca %struct.hso_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.hso_net*, align 8
  store %struct.hso_device* %0, %struct.hso_device** %2, align 8
  %5 = load %struct.hso_device*, %struct.hso_device** %2, align 8
  %6 = call %struct.hso_net* @dev2net(%struct.hso_device* %5)
  store %struct.hso_net* %6, %struct.hso_net** %4, align 8
  %7 = load %struct.hso_net*, %struct.hso_net** %4, align 8
  %8 = icmp ne %struct.hso_net* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %72

10:                                               ; preds = %1
  %11 = load %struct.hso_net*, %struct.hso_net** %4, align 8
  %12 = getelementptr inbounds %struct.hso_net, %struct.hso_net* %11, i32 0, i32 5
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @remove_net_device(i32 %13)
  %15 = load %struct.hso_net*, %struct.hso_net** %4, align 8
  %16 = getelementptr inbounds %struct.hso_net, %struct.hso_net* %15, i32 0, i32 4
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %10
  %20 = load %struct.hso_net*, %struct.hso_net** %4, align 8
  %21 = getelementptr inbounds %struct.hso_net, %struct.hso_net* %20, i32 0, i32 4
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @unregister_netdev(i64 %22)
  %24 = load %struct.hso_net*, %struct.hso_net** %4, align 8
  %25 = getelementptr inbounds %struct.hso_net, %struct.hso_net* %24, i32 0, i32 4
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @free_netdev(i64 %26)
  br label %28

28:                                               ; preds = %19, %10
  store i32 0, i32* %3, align 4
  br label %29

29:                                               ; preds = %56, %28
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* @MUX_BULK_RX_BUF_COUNT, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %59

33:                                               ; preds = %29
  %34 = load %struct.hso_net*, %struct.hso_net** %4, align 8
  %35 = getelementptr inbounds %struct.hso_net, %struct.hso_net* %34, i32 0, i32 3
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %3, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @usb_free_urb(i32 %40)
  %42 = load %struct.hso_net*, %struct.hso_net** %4, align 8
  %43 = getelementptr inbounds %struct.hso_net, %struct.hso_net* %42, i32 0, i32 2
  %44 = load %struct.hso_device**, %struct.hso_device*** %43, align 8
  %45 = load i32, i32* %3, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.hso_device*, %struct.hso_device** %44, i64 %46
  %48 = load %struct.hso_device*, %struct.hso_device** %47, align 8
  %49 = call i32 @kfree(%struct.hso_device* %48)
  %50 = load %struct.hso_net*, %struct.hso_net** %4, align 8
  %51 = getelementptr inbounds %struct.hso_net, %struct.hso_net* %50, i32 0, i32 2
  %52 = load %struct.hso_device**, %struct.hso_device*** %51, align 8
  %53 = load i32, i32* %3, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.hso_device*, %struct.hso_device** %52, i64 %54
  store %struct.hso_device* null, %struct.hso_device** %55, align 8
  br label %56

56:                                               ; preds = %33
  %57 = load i32, i32* %3, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %3, align 4
  br label %29

59:                                               ; preds = %29
  %60 = load %struct.hso_net*, %struct.hso_net** %4, align 8
  %61 = getelementptr inbounds %struct.hso_net, %struct.hso_net* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @usb_free_urb(i32 %62)
  %64 = load %struct.hso_net*, %struct.hso_net** %4, align 8
  %65 = getelementptr inbounds %struct.hso_net, %struct.hso_net* %64, i32 0, i32 0
  %66 = load %struct.hso_device*, %struct.hso_device** %65, align 8
  %67 = call i32 @kfree(%struct.hso_device* %66)
  %68 = load %struct.hso_net*, %struct.hso_net** %4, align 8
  %69 = getelementptr inbounds %struct.hso_net, %struct.hso_net* %68, i32 0, i32 0
  store %struct.hso_device* null, %struct.hso_device** %69, align 8
  %70 = load %struct.hso_device*, %struct.hso_device** %2, align 8
  %71 = call i32 @kfree(%struct.hso_device* %70)
  br label %72

72:                                               ; preds = %59, %9
  ret void
}

declare dso_local %struct.hso_net* @dev2net(%struct.hso_device*) #1

declare dso_local i32 @remove_net_device(i32) #1

declare dso_local i32 @unregister_netdev(i64) #1

declare dso_local i32 @free_netdev(i64) #1

declare dso_local i32 @usb_free_urb(i32) #1

declare dso_local i32 @kfree(%struct.hso_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
