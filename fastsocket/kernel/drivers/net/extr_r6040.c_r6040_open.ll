; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_r6040.c_r6040_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_r6040.c_r6040_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }
%struct.r6040_private = type { i64, i32, i32, i32, i8*, i32, i32, i8* }

@r6040_interrupt = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@RX_DESC_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@TX_DESC_SIZE = common dso_local global i32 0, align 4
@r6040_timer = common dso_local global i32 0, align 4
@ICPLUS_PHY_ID = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @r6040_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r6040_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.r6040_private*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.r6040_private* @netdev_priv(%struct.net_device* %6)
  store %struct.r6040_private* %7, %struct.r6040_private** %4, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = getelementptr inbounds %struct.net_device, %struct.net_device* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @IRQF_SHARED, align 4
  %12 = load %struct.net_device*, %struct.net_device** %3, align 8
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.net_device*, %struct.net_device** %3, align 8
  %16 = call i32 @request_irq(i32 %10, i32* @r6040_interrupt, i32 %11, i32 %14, %struct.net_device* %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* %5, align 4
  store i32 %20, i32* %2, align 4
  br label %122

21:                                               ; preds = %1
  %22 = load %struct.net_device*, %struct.net_device** %3, align 8
  %23 = call i32 @r6040_mac_address(%struct.net_device* %22)
  %24 = load %struct.r6040_private*, %struct.r6040_private** %4, align 8
  %25 = getelementptr inbounds %struct.r6040_private, %struct.r6040_private* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @RX_DESC_SIZE, align 4
  %28 = load %struct.r6040_private*, %struct.r6040_private** %4, align 8
  %29 = getelementptr inbounds %struct.r6040_private, %struct.r6040_private* %28, i32 0, i32 3
  %30 = call i8* @pci_alloc_consistent(i32 %26, i32 %27, i32* %29)
  %31 = load %struct.r6040_private*, %struct.r6040_private** %4, align 8
  %32 = getelementptr inbounds %struct.r6040_private, %struct.r6040_private* %31, i32 0, i32 4
  store i8* %30, i8** %32, align 8
  %33 = load %struct.r6040_private*, %struct.r6040_private** %4, align 8
  %34 = getelementptr inbounds %struct.r6040_private, %struct.r6040_private* %33, i32 0, i32 4
  %35 = load i8*, i8** %34, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %21
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %122

40:                                               ; preds = %21
  %41 = load %struct.r6040_private*, %struct.r6040_private** %4, align 8
  %42 = getelementptr inbounds %struct.r6040_private, %struct.r6040_private* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @TX_DESC_SIZE, align 4
  %45 = load %struct.r6040_private*, %struct.r6040_private** %4, align 8
  %46 = getelementptr inbounds %struct.r6040_private, %struct.r6040_private* %45, i32 0, i32 6
  %47 = call i8* @pci_alloc_consistent(i32 %43, i32 %44, i32* %46)
  %48 = load %struct.r6040_private*, %struct.r6040_private** %4, align 8
  %49 = getelementptr inbounds %struct.r6040_private, %struct.r6040_private* %48, i32 0, i32 7
  store i8* %47, i8** %49, align 8
  %50 = load %struct.r6040_private*, %struct.r6040_private** %4, align 8
  %51 = getelementptr inbounds %struct.r6040_private, %struct.r6040_private* %50, i32 0, i32 7
  %52 = load i8*, i8** %51, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %68, label %54

54:                                               ; preds = %40
  %55 = load %struct.r6040_private*, %struct.r6040_private** %4, align 8
  %56 = getelementptr inbounds %struct.r6040_private, %struct.r6040_private* %55, i32 0, i32 5
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @RX_DESC_SIZE, align 4
  %59 = load %struct.r6040_private*, %struct.r6040_private** %4, align 8
  %60 = getelementptr inbounds %struct.r6040_private, %struct.r6040_private* %59, i32 0, i32 4
  %61 = load i8*, i8** %60, align 8
  %62 = load %struct.r6040_private*, %struct.r6040_private** %4, align 8
  %63 = getelementptr inbounds %struct.r6040_private, %struct.r6040_private* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @pci_free_consistent(i32 %57, i32 %58, i8* %61, i32 %64)
  %66 = load i32, i32* @ENOMEM, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %2, align 4
  br label %122

68:                                               ; preds = %40
  %69 = load %struct.net_device*, %struct.net_device** %3, align 8
  %70 = call i32 @r6040_up(%struct.net_device* %69)
  store i32 %70, i32* %5, align 4
  %71 = load i32, i32* %5, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %97

73:                                               ; preds = %68
  %74 = load %struct.r6040_private*, %struct.r6040_private** %4, align 8
  %75 = getelementptr inbounds %struct.r6040_private, %struct.r6040_private* %74, i32 0, i32 5
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @TX_DESC_SIZE, align 4
  %78 = load %struct.r6040_private*, %struct.r6040_private** %4, align 8
  %79 = getelementptr inbounds %struct.r6040_private, %struct.r6040_private* %78, i32 0, i32 7
  %80 = load i8*, i8** %79, align 8
  %81 = load %struct.r6040_private*, %struct.r6040_private** %4, align 8
  %82 = getelementptr inbounds %struct.r6040_private, %struct.r6040_private* %81, i32 0, i32 6
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @pci_free_consistent(i32 %76, i32 %77, i8* %80, i32 %83)
  %85 = load %struct.r6040_private*, %struct.r6040_private** %4, align 8
  %86 = getelementptr inbounds %struct.r6040_private, %struct.r6040_private* %85, i32 0, i32 5
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @RX_DESC_SIZE, align 4
  %89 = load %struct.r6040_private*, %struct.r6040_private** %4, align 8
  %90 = getelementptr inbounds %struct.r6040_private, %struct.r6040_private* %89, i32 0, i32 4
  %91 = load i8*, i8** %90, align 8
  %92 = load %struct.r6040_private*, %struct.r6040_private** %4, align 8
  %93 = getelementptr inbounds %struct.r6040_private, %struct.r6040_private* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @pci_free_consistent(i32 %87, i32 %88, i8* %91, i32 %94)
  %96 = load i32, i32* %5, align 4
  store i32 %96, i32* %2, align 4
  br label %122

97:                                               ; preds = %68
  %98 = load %struct.r6040_private*, %struct.r6040_private** %4, align 8
  %99 = getelementptr inbounds %struct.r6040_private, %struct.r6040_private* %98, i32 0, i32 2
  %100 = call i32 @napi_enable(i32* %99)
  %101 = load %struct.net_device*, %struct.net_device** %3, align 8
  %102 = call i32 @netif_start_queue(%struct.net_device* %101)
  %103 = load %struct.r6040_private*, %struct.r6040_private** %4, align 8
  %104 = getelementptr inbounds %struct.r6040_private, %struct.r6040_private* %103, i32 0, i32 1
  %105 = load i32, i32* @r6040_timer, align 4
  %106 = load %struct.net_device*, %struct.net_device** %3, align 8
  %107 = ptrtoint %struct.net_device* %106 to i64
  %108 = call i32 @setup_timer(i32* %104, i32 %105, i64 %107)
  %109 = load %struct.r6040_private*, %struct.r6040_private** %4, align 8
  %110 = getelementptr inbounds %struct.r6040_private, %struct.r6040_private* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @ICPLUS_PHY_ID, align 8
  %113 = icmp ne i64 %111, %112
  br i1 %113, label %114, label %121

114:                                              ; preds = %97
  %115 = load %struct.r6040_private*, %struct.r6040_private** %4, align 8
  %116 = getelementptr inbounds %struct.r6040_private, %struct.r6040_private* %115, i32 0, i32 1
  %117 = load i64, i64* @jiffies, align 8
  %118 = load i64, i64* @HZ, align 8
  %119 = add nsw i64 %117, %118
  %120 = call i32 @mod_timer(i32* %116, i64 %119)
  br label %121

121:                                              ; preds = %114, %97
  store i32 0, i32* %2, align 4
  br label %122

122:                                              ; preds = %121, %73, %54, %37, %19
  %123 = load i32, i32* %2, align 4
  ret i32 %123
}

declare dso_local %struct.r6040_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @request_irq(i32, i32*, i32, i32, %struct.net_device*) #1

declare dso_local i32 @r6040_mac_address(%struct.net_device*) #1

declare dso_local i8* @pci_alloc_consistent(i32, i32, i32*) #1

declare dso_local i32 @pci_free_consistent(i32, i32, i8*, i32) #1

declare dso_local i32 @r6040_up(%struct.net_device*) #1

declare dso_local i32 @napi_enable(i32*) #1

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

declare dso_local i32 @setup_timer(i32*, i32, i64) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
