; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_synclink_gt.c_alloc_dev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_synclink_gt.c_alloc_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slgt_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.pci_dev*, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32* }
%struct.pci_dev = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"%s device alloc failed adapter=%d port=%d\0A\00", align 1
@driver_name = common dso_local global i32 0, align 4
@slgt_port_ops = common dso_local global i32 0, align 4
@MGSL_MAGIC = common dso_local global i32 0, align 4
@bh_handler = common dso_local global i32 0, align 4
@DMABUFSIZE = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@default_params = common dso_local global i32 0, align 4
@HDLC_TXIDLE_FLAGS = common dso_local global i32 0, align 4
@tx_timeout = common dso_local global i32 0, align 4
@rx_timeout = common dso_local global i32 0, align 4
@MGSL_BUS_TYPE_PCI = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.slgt_info* (i32, i32, %struct.pci_dev*)* @alloc_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.slgt_info* @alloc_dev(i32 %0, i32 %1, %struct.pci_dev* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca %struct.slgt_info*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.pci_dev* %2, %struct.pci_dev** %6, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.slgt_info* @kzalloc(i32 112, i32 %8)
  store %struct.slgt_info* %9, %struct.slgt_info** %7, align 8
  %10 = load %struct.slgt_info*, %struct.slgt_info** %7, align 8
  %11 = icmp ne %struct.slgt_info* %10, null
  br i1 %11, label %19, label %12

12:                                               ; preds = %3
  %13 = load i32, i32* @driver_name, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = inttoptr i64 %16 to i8*
  %18 = call i32 @DBGERR(i8* %17)
  br label %104

19:                                               ; preds = %3
  %20 = load %struct.slgt_info*, %struct.slgt_info** %7, align 8
  %21 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %20, i32 0, i32 17
  %22 = call i32 @tty_port_init(%struct.TYPE_2__* %21)
  %23 = load %struct.slgt_info*, %struct.slgt_info** %7, align 8
  %24 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %23, i32 0, i32 17
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 2
  store i32* @slgt_port_ops, i32** %25, align 8
  %26 = load i32, i32* @MGSL_MAGIC, align 4
  %27 = load %struct.slgt_info*, %struct.slgt_info** %7, align 8
  %28 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %27, i32 0, i32 20
  store i32 %26, i32* %28, align 8
  %29 = load %struct.slgt_info*, %struct.slgt_info** %7, align 8
  %30 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %29, i32 0, i32 19
  %31 = load i32, i32* @bh_handler, align 4
  %32 = call i32 @INIT_WORK(i32* %30, i32 %31)
  %33 = load %struct.slgt_info*, %struct.slgt_info** %7, align 8
  %34 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %33, i32 0, i32 0
  store i32 4096, i32* %34, align 8
  %35 = load %struct.slgt_info*, %struct.slgt_info** %7, align 8
  %36 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %35, i32 0, i32 1
  store i32 14745600, i32* %36, align 4
  %37 = load i32, i32* @DMABUFSIZE, align 4
  %38 = load %struct.slgt_info*, %struct.slgt_info** %7, align 8
  %39 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %38, i32 0, i32 18
  store i32 %37, i32* %39, align 8
  %40 = load i32, i32* @HZ, align 4
  %41 = mul nsw i32 5, %40
  %42 = sdiv i32 %41, 10
  %43 = load %struct.slgt_info*, %struct.slgt_info** %7, align 8
  %44 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %43, i32 0, i32 17
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  store i32 %42, i32* %45, align 8
  %46 = load i32, i32* @HZ, align 4
  %47 = mul nsw i32 30, %46
  %48 = load %struct.slgt_info*, %struct.slgt_info** %7, align 8
  %49 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %48, i32 0, i32 17
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  store i32 %47, i32* %50, align 4
  %51 = load %struct.slgt_info*, %struct.slgt_info** %7, align 8
  %52 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %51, i32 0, i32 16
  %53 = call i32 @init_waitqueue_head(i32* %52)
  %54 = load %struct.slgt_info*, %struct.slgt_info** %7, align 8
  %55 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %54, i32 0, i32 15
  %56 = call i32 @init_waitqueue_head(i32* %55)
  %57 = load %struct.slgt_info*, %struct.slgt_info** %7, align 8
  %58 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %57, i32 0, i32 14
  %59 = call i32 @spin_lock_init(i32* %58)
  %60 = load %struct.slgt_info*, %struct.slgt_info** %7, align 8
  %61 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %60, i32 0, i32 13
  %62 = call i32 @memcpy(i32* %61, i32* @default_params, i32 4)
  %63 = load i32, i32* @HDLC_TXIDLE_FLAGS, align 4
  %64 = load %struct.slgt_info*, %struct.slgt_info** %7, align 8
  %65 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %64, i32 0, i32 12
  store i32 %63, i32* %65, align 8
  %66 = load i32, i32* %4, align 4
  %67 = load %struct.slgt_info*, %struct.slgt_info** %7, align 8
  %68 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 8
  %69 = load i32, i32* %5, align 4
  %70 = load %struct.slgt_info*, %struct.slgt_info** %7, align 8
  %71 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %70, i32 0, i32 3
  store i32 %69, i32* %71, align 4
  %72 = load %struct.slgt_info*, %struct.slgt_info** %7, align 8
  %73 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %72, i32 0, i32 11
  %74 = load i32, i32* @tx_timeout, align 4
  %75 = load %struct.slgt_info*, %struct.slgt_info** %7, align 8
  %76 = ptrtoint %struct.slgt_info* %75 to i64
  %77 = call i32 @setup_timer(i32* %73, i32 %74, i64 %76)
  %78 = load %struct.slgt_info*, %struct.slgt_info** %7, align 8
  %79 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %78, i32 0, i32 10
  %80 = load i32, i32* @rx_timeout, align 4
  %81 = load %struct.slgt_info*, %struct.slgt_info** %7, align 8
  %82 = ptrtoint %struct.slgt_info* %81 to i64
  %83 = call i32 @setup_timer(i32* %79, i32 %80, i64 %82)
  %84 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %85 = load %struct.slgt_info*, %struct.slgt_info** %7, align 8
  %86 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %85, i32 0, i32 9
  store %struct.pci_dev* %84, %struct.pci_dev** %86, align 8
  %87 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %88 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.slgt_info*, %struct.slgt_info** %7, align 8
  %91 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %90, i32 0, i32 8
  store i32 %89, i32* %91, align 8
  %92 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %93 = call i32 @pci_resource_start(%struct.pci_dev* %92, i32 0)
  %94 = load %struct.slgt_info*, %struct.slgt_info** %7, align 8
  %95 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %94, i32 0, i32 7
  store i32 %93, i32* %95, align 4
  %96 = load i32, i32* @MGSL_BUS_TYPE_PCI, align 4
  %97 = load %struct.slgt_info*, %struct.slgt_info** %7, align 8
  %98 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %97, i32 0, i32 6
  store i32 %96, i32* %98, align 8
  %99 = load i32, i32* @IRQF_SHARED, align 4
  %100 = load %struct.slgt_info*, %struct.slgt_info** %7, align 8
  %101 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %100, i32 0, i32 5
  store i32 %99, i32* %101, align 4
  %102 = load %struct.slgt_info*, %struct.slgt_info** %7, align 8
  %103 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %102, i32 0, i32 4
  store i32 -1, i32* %103, align 8
  br label %104

104:                                              ; preds = %19, %12
  %105 = load %struct.slgt_info*, %struct.slgt_info** %7, align 8
  ret %struct.slgt_info* %105
}

declare dso_local %struct.slgt_info* @kzalloc(i32, i32) #1

declare dso_local i32 @DBGERR(i8*) #1

declare dso_local i32 @tty_port_init(%struct.TYPE_2__*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @setup_timer(i32*, i32, i64) #1

declare dso_local i32 @pci_resource_start(%struct.pci_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
