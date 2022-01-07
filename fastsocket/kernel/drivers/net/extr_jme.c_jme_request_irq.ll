; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_jme.c_jme_request_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_jme.c_jme_request_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jme_adapter = type { %struct.TYPE_4__*, i32, %struct.net_device* }
%struct.TYPE_4__ = type { i32 }
%struct.net_device = type { i32, i32 }

@jme_intr = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@JME_FLAG_MSI = common dso_local global i32 0, align 4
@jme_msi = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Unable to request %s interrupt (return: %d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"MSI\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"INTx\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.jme_adapter*)* @jme_request_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jme_request_irq(%struct.jme_adapter* %0) #0 {
  %2 = alloca %struct.jme_adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.jme_adapter* %0, %struct.jme_adapter** %2, align 8
  %7 = load %struct.jme_adapter*, %struct.jme_adapter** %2, align 8
  %8 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %7, i32 0, i32 2
  %9 = load %struct.net_device*, %struct.net_device** %8, align 8
  store %struct.net_device* %9, %struct.net_device** %4, align 8
  %10 = load i32, i32* @jme_intr, align 4
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* @IRQF_SHARED, align 4
  store i32 %11, i32* %6, align 4
  %12 = load %struct.jme_adapter*, %struct.jme_adapter** %2, align 8
  %13 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = call i32 @pci_enable_msi(%struct.TYPE_4__* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @JME_FLAG_MSI, align 4
  %19 = load %struct.jme_adapter*, %struct.jme_adapter** %2, align 8
  %20 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %19, i32 0, i32 1
  %21 = call i32 @set_bit(i32 %18, i32* %20)
  %22 = load i32, i32* @jme_msi, align 4
  store i32 %22, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %23

23:                                               ; preds = %17, %1
  %24 = load %struct.jme_adapter*, %struct.jme_adapter** %2, align 8
  %25 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.net_device*, %struct.net_device** %4, align 8
  %32 = getelementptr inbounds %struct.net_device, %struct.net_device* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.net_device*, %struct.net_device** %4, align 8
  %35 = call i32 @request_irq(i32 %28, i32 %29, i32 %30, i32 %33, %struct.net_device* %34)
  store i32 %35, i32* %3, align 4
  %36 = load i32, i32* %3, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %66

38:                                               ; preds = %23
  %39 = load %struct.jme_adapter*, %struct.jme_adapter** %2, align 8
  %40 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = load i32, i32* @JME_FLAG_MSI, align 4
  %43 = load %struct.jme_adapter*, %struct.jme_adapter** %2, align 8
  %44 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %43, i32 0, i32 1
  %45 = call i64 @test_bit(i32 %42, i32* %44)
  %46 = icmp ne i64 %45, 0
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %49 = load i32, i32* %3, align 4
  %50 = call i32 @jeprintk(%struct.TYPE_4__* %41, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i8* %48, i32 %49)
  %51 = load i32, i32* @JME_FLAG_MSI, align 4
  %52 = load %struct.jme_adapter*, %struct.jme_adapter** %2, align 8
  %53 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %52, i32 0, i32 1
  %54 = call i64 @test_bit(i32 %51, i32* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %38
  %57 = load %struct.jme_adapter*, %struct.jme_adapter** %2, align 8
  %58 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %57, i32 0, i32 0
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = call i32 @pci_disable_msi(%struct.TYPE_4__* %59)
  %61 = load i32, i32* @JME_FLAG_MSI, align 4
  %62 = load %struct.jme_adapter*, %struct.jme_adapter** %2, align 8
  %63 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %62, i32 0, i32 1
  %64 = call i32 @clear_bit(i32 %61, i32* %63)
  br label %65

65:                                               ; preds = %56, %38
  br label %74

66:                                               ; preds = %23
  %67 = load %struct.jme_adapter*, %struct.jme_adapter** %2, align 8
  %68 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %67, i32 0, i32 0
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.net_device*, %struct.net_device** %4, align 8
  %73 = getelementptr inbounds %struct.net_device, %struct.net_device* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 4
  br label %74

74:                                               ; preds = %66, %65
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i32 @pci_enable_msi(%struct.TYPE_4__*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.net_device*) #1

declare dso_local i32 @jeprintk(%struct.TYPE_4__*, i8*, i8*, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @pci_disable_msi(%struct.TYPE_4__*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
