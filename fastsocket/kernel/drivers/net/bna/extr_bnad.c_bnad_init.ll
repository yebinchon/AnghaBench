; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bnad.c_bnad_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bnad.c_bnad_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnad = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i64, i32, %struct.pci_dev*, %struct.net_device* }
%struct.pci_dev = type { i32 }
%struct.net_device = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"ioremap for bar0 failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"bar0 mapped to %p, len %llu\0A\00", align 1
@bnad_msix_disable = common dso_local global i32 0, align 4
@BNAD_CF_MSIX = common dso_local global i32 0, align 4
@BNAD_CF_DIM_ENABLED = common dso_local global i32 0, align 4
@BNAD_MAILBOX_MSIX_VECTORS = common dso_local global i64 0, align 8
@BNAD_TXQ_DEPTH = common dso_local global i32 0, align 4
@BNAD_RXQ_DEPTH = common dso_local global i32 0, align 4
@BFI_TX_COALESCING_TIMEO = common dso_local global i32 0, align 4
@BFI_RX_COALESCING_TIMEO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"%s_wq_%d\00", align 1
@BNAD_NAME = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnad*, %struct.pci_dev*, %struct.net_device*)* @bnad_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnad_init(%struct.bnad* %0, %struct.pci_dev* %1, %struct.net_device* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bnad*, align 8
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i64, align 8
  store %struct.bnad* %0, %struct.bnad** %5, align 8
  store %struct.pci_dev* %1, %struct.pci_dev** %6, align 8
  store %struct.net_device* %2, %struct.net_device** %7, align 8
  %9 = load %struct.net_device*, %struct.net_device** %7, align 8
  %10 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %11 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %10, i32 0, i32 0
  %12 = call i32 @SET_NETDEV_DEV(%struct.net_device* %9, i32* %11)
  %13 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %14 = load %struct.net_device*, %struct.net_device** %7, align 8
  %15 = call i32 @pci_set_drvdata(%struct.pci_dev* %13, %struct.net_device* %14)
  %16 = load %struct.net_device*, %struct.net_device** %7, align 8
  %17 = load %struct.bnad*, %struct.bnad** %5, align 8
  %18 = getelementptr inbounds %struct.bnad, %struct.bnad* %17, i32 0, i32 19
  store %struct.net_device* %16, %struct.net_device** %18, align 8
  %19 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %20 = load %struct.bnad*, %struct.bnad** %5, align 8
  %21 = getelementptr inbounds %struct.bnad, %struct.bnad* %20, i32 0, i32 18
  store %struct.pci_dev* %19, %struct.pci_dev** %21, align 8
  %22 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %23 = call i32 @pci_resource_start(%struct.pci_dev* %22, i32 0)
  %24 = load %struct.bnad*, %struct.bnad** %5, align 8
  %25 = getelementptr inbounds %struct.bnad, %struct.bnad* %24, i32 0, i32 17
  store i32 %23, i32* %25, align 8
  %26 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %27 = call i64 @pci_resource_len(%struct.pci_dev* %26, i32 0)
  %28 = load %struct.bnad*, %struct.bnad** %5, align 8
  %29 = getelementptr inbounds %struct.bnad, %struct.bnad* %28, i32 0, i32 16
  store i64 %27, i64* %29, align 8
  %30 = load %struct.bnad*, %struct.bnad** %5, align 8
  %31 = getelementptr inbounds %struct.bnad, %struct.bnad* %30, i32 0, i32 17
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.bnad*, %struct.bnad** %5, align 8
  %34 = getelementptr inbounds %struct.bnad, %struct.bnad* %33, i32 0, i32 16
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @ioremap_nocache(i32 %32, i64 %35)
  %37 = load %struct.bnad*, %struct.bnad** %5, align 8
  %38 = getelementptr inbounds %struct.bnad, %struct.bnad* %37, i32 0, i32 6
  store i32 %36, i32* %38, align 8
  %39 = load %struct.bnad*, %struct.bnad** %5, align 8
  %40 = getelementptr inbounds %struct.bnad, %struct.bnad* %39, i32 0, i32 6
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %51, label %43

43:                                               ; preds = %3
  %44 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %45 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %44, i32 0, i32 0
  %46 = call i32 @dev_err(i32* %45, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %47 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %48 = call i32 @pci_set_drvdata(%struct.pci_dev* %47, %struct.net_device* null)
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %4, align 4
  br label %141

51:                                               ; preds = %3
  %52 = load %struct.bnad*, %struct.bnad** %5, align 8
  %53 = getelementptr inbounds %struct.bnad, %struct.bnad* %52, i32 0, i32 6
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.bnad*, %struct.bnad** %5, align 8
  %56 = getelementptr inbounds %struct.bnad, %struct.bnad* %55, i32 0, i32 16
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @pr_info(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %54, i64 %57)
  %59 = load %struct.bnad*, %struct.bnad** %5, align 8
  %60 = getelementptr inbounds %struct.bnad, %struct.bnad* %59, i32 0, i32 14
  %61 = load i64, i64* %8, align 8
  %62 = call i32 @spin_lock_irqsave(i32* %60, i64 %61)
  %63 = load i32, i32* @bnad_msix_disable, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %51
  %66 = load i32, i32* @BNAD_CF_MSIX, align 4
  %67 = load %struct.bnad*, %struct.bnad** %5, align 8
  %68 = getelementptr inbounds %struct.bnad, %struct.bnad* %67, i32 0, i32 15
  store i32 %66, i32* %68, align 4
  br label %69

69:                                               ; preds = %65, %51
  %70 = load i32, i32* @BNAD_CF_DIM_ENABLED, align 4
  %71 = load %struct.bnad*, %struct.bnad** %5, align 8
  %72 = getelementptr inbounds %struct.bnad, %struct.bnad* %71, i32 0, i32 15
  %73 = load i32, i32* %72, align 4
  %74 = or i32 %73, %70
  store i32 %74, i32* %72, align 4
  %75 = load %struct.bnad*, %struct.bnad** %5, align 8
  %76 = call i32 @bnad_q_num_init(%struct.bnad* %75)
  %77 = load %struct.bnad*, %struct.bnad** %5, align 8
  %78 = getelementptr inbounds %struct.bnad, %struct.bnad* %77, i32 0, i32 14
  %79 = load i64, i64* %8, align 8
  %80 = call i32 @spin_unlock_irqrestore(i32* %78, i64 %79)
  %81 = load %struct.bnad*, %struct.bnad** %5, align 8
  %82 = getelementptr inbounds %struct.bnad, %struct.bnad* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.bnad*, %struct.bnad** %5, align 8
  %85 = getelementptr inbounds %struct.bnad, %struct.bnad* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = mul nsw i32 %83, %86
  %88 = load %struct.bnad*, %struct.bnad** %5, align 8
  %89 = getelementptr inbounds %struct.bnad, %struct.bnad* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.bnad*, %struct.bnad** %5, align 8
  %92 = getelementptr inbounds %struct.bnad, %struct.bnad* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = mul nsw i32 %90, %93
  %95 = add nsw i32 %87, %94
  %96 = sext i32 %95 to i64
  %97 = load i64, i64* @BNAD_MAILBOX_MSIX_VECTORS, align 8
  %98 = add nsw i64 %96, %97
  %99 = load %struct.bnad*, %struct.bnad** %5, align 8
  %100 = getelementptr inbounds %struct.bnad, %struct.bnad* %99, i32 0, i32 13
  store i64 %98, i64* %100, align 8
  %101 = load i32, i32* @BNAD_TXQ_DEPTH, align 4
  %102 = load %struct.bnad*, %struct.bnad** %5, align 8
  %103 = getelementptr inbounds %struct.bnad, %struct.bnad* %102, i32 0, i32 12
  store i32 %101, i32* %103, align 8
  %104 = load i32, i32* @BNAD_RXQ_DEPTH, align 4
  %105 = load %struct.bnad*, %struct.bnad** %5, align 8
  %106 = getelementptr inbounds %struct.bnad, %struct.bnad* %105, i32 0, i32 11
  store i32 %104, i32* %106, align 4
  %107 = load %struct.bnad*, %struct.bnad** %5, align 8
  %108 = getelementptr inbounds %struct.bnad, %struct.bnad* %107, i32 0, i32 4
  store i32 1, i32* %108, align 8
  %109 = load i32, i32* @BFI_TX_COALESCING_TIMEO, align 4
  %110 = load %struct.bnad*, %struct.bnad** %5, align 8
  %111 = getelementptr inbounds %struct.bnad, %struct.bnad* %110, i32 0, i32 10
  store i32 %109, i32* %111, align 8
  %112 = load i32, i32* @BFI_RX_COALESCING_TIMEO, align 4
  %113 = load %struct.bnad*, %struct.bnad** %5, align 8
  %114 = getelementptr inbounds %struct.bnad, %struct.bnad* %113, i32 0, i32 9
  store i32 %112, i32* %114, align 4
  %115 = load %struct.bnad*, %struct.bnad** %5, align 8
  %116 = getelementptr inbounds %struct.bnad, %struct.bnad* %115, i32 0, i32 8
  %117 = load i32, i32* %116, align 8
  %118 = load i8*, i8** @BNAD_NAME, align 8
  %119 = load %struct.bnad*, %struct.bnad** %5, align 8
  %120 = getelementptr inbounds %struct.bnad, %struct.bnad* %119, i32 0, i32 5
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @sprintf(i32 %117, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* %118, i32 %121)
  %123 = load %struct.bnad*, %struct.bnad** %5, align 8
  %124 = getelementptr inbounds %struct.bnad, %struct.bnad* %123, i32 0, i32 8
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @create_singlethread_workqueue(i32 %125)
  %127 = load %struct.bnad*, %struct.bnad** %5, align 8
  %128 = getelementptr inbounds %struct.bnad, %struct.bnad* %127, i32 0, i32 7
  store i32 %126, i32* %128, align 4
  %129 = load %struct.bnad*, %struct.bnad** %5, align 8
  %130 = getelementptr inbounds %struct.bnad, %struct.bnad* %129, i32 0, i32 7
  %131 = load i32, i32* %130, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %140, label %133

133:                                              ; preds = %69
  %134 = load %struct.bnad*, %struct.bnad** %5, align 8
  %135 = getelementptr inbounds %struct.bnad, %struct.bnad* %134, i32 0, i32 6
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @iounmap(i32 %136)
  %138 = load i32, i32* @ENOMEM, align 4
  %139 = sub nsw i32 0, %138
  store i32 %139, i32* %4, align 4
  br label %141

140:                                              ; preds = %69
  store i32 0, i32* %4, align 4
  br label %141

141:                                              ; preds = %140, %133, %43
  %142 = load i32, i32* %4, align 4
  ret i32 %142
}

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, i32*) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.net_device*) #1

declare dso_local i32 @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i64 @pci_resource_len(%struct.pci_dev*, i32) #1

declare dso_local i32 @ioremap_nocache(i32, i64) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @pr_info(i8*, i32, i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @bnad_q_num_init(%struct.bnad*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @sprintf(i32, i8*, i8*, i32) #1

declare dso_local i32 @create_singlethread_workqueue(i32) #1

declare dso_local i32 @iounmap(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
