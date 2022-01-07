; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_efx.c_efx_init_struct.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_efx.c_efx_init_struct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i32, i32, i32, %struct.TYPE_4__*, i32, i32*, i32, i32, %struct.TYPE_3__, i32*, i32, i32, %struct.net_device*, i32, i32, i32, %struct.pci_dev*, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { %struct.net_device* }
%struct.pci_dev = type { i32 }
%struct.net_device = type { i32 }

@efx_reset_work = common dso_local global i32 0, align 4
@efx_monitor = common dso_local global i32 0, align 4
@efx_selftest_async_work = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4
@STATE_UNINIT = common dso_local global i32 0, align 4
@efx_dummy_phy_operations = common dso_local global i32 0, align 4
@efx_mac_work = common dso_local global i32 0, align 4
@EFX_MAX_CHANNELS = common dso_local global i32 0, align 4
@interrupt_mode = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"sfc%s\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efx_nic*, %struct.pci_dev*, %struct.net_device*)* @efx_init_struct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efx_init_struct(%struct.efx_nic* %0, %struct.pci_dev* %1, %struct.net_device* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.efx_nic*, align 8
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %5, align 8
  store %struct.pci_dev* %1, %struct.pci_dev** %6, align 8
  store %struct.net_device* %2, %struct.net_device** %7, align 8
  %9 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %10 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %9, i32 0, i32 21
  %11 = call i32 @spin_lock_init(i32* %10)
  %12 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %13 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %12, i32 0, i32 19
  %14 = load i32, i32* @efx_reset_work, align 4
  %15 = call i32 @INIT_WORK(i32* %13, i32 %14)
  %16 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %17 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %16, i32 0, i32 18
  %18 = load i32, i32* @efx_monitor, align 4
  %19 = call i32 @INIT_DELAYED_WORK(i32* %17, i32 %18)
  %20 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %21 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %20, i32 0, i32 17
  %22 = load i32, i32* @efx_selftest_async_work, align 4
  %23 = call i32 @INIT_DELAYED_WORK(i32* %21, i32 %22)
  %24 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %25 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %26 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %25, i32 0, i32 16
  store %struct.pci_dev* %24, %struct.pci_dev** %26, align 8
  %27 = load i32, i32* @debug, align 4
  %28 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %29 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %28, i32 0, i32 15
  store i32 %27, i32* %29, align 8
  %30 = load i32, i32* @STATE_UNINIT, align 4
  %31 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %32 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %31, i32 0, i32 14
  store i32 %30, i32* %32, align 4
  %33 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %34 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %33, i32 0, i32 13
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %37 = call i8* @pci_name(%struct.pci_dev* %36)
  %38 = call i32 @strlcpy(i32 %35, i8* %37, i32 4)
  %39 = load %struct.net_device*, %struct.net_device** %7, align 8
  %40 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %41 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %40, i32 0, i32 12
  store %struct.net_device* %39, %struct.net_device** %41, align 8
  %42 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %43 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %42, i32 0, i32 0
  store i32 1, i32* %43, align 8
  %44 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %45 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %44, i32 0, i32 11
  %46 = call i32 @spin_lock_init(i32* %45)
  %47 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %48 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %47, i32 0, i32 10
  %49 = call i32 @mutex_init(i32* %48)
  %50 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %51 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %50, i32 0, i32 9
  store i32* @efx_dummy_phy_operations, i32** %51, align 8
  %52 = load %struct.net_device*, %struct.net_device** %7, align 8
  %53 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %54 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %53, i32 0, i32 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  store %struct.net_device* %52, %struct.net_device** %55, align 8
  %56 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %57 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %56, i32 0, i32 7
  %58 = load i32, i32* @efx_mac_work, align 4
  %59 = call i32 @INIT_WORK(i32* %57, i32 %58)
  %60 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %61 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %60, i32 0, i32 6
  %62 = call i32 @init_waitqueue_head(i32* %61)
  store i32 0, i32* %8, align 4
  br label %63

63:                                               ; preds = %87, %3
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* @EFX_MAX_CHANNELS, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %90

67:                                               ; preds = %63
  %68 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @efx_alloc_channel(%struct.efx_nic* %68, i32 %69, i32* null)
  %71 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %72 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %71, i32 0, i32 5
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %8, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  store i32 %70, i32* %76, align 4
  %77 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %78 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %77, i32 0, i32 5
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %8, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %67
  br label %127

86:                                               ; preds = %67
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %8, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %8, align 4
  br label %63

90:                                               ; preds = %63
  %91 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %92 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %91, i32 0, i32 3
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @EFX_MAX_CHANNELS, align 4
  %97 = icmp sgt i32 %95, %96
  %98 = zext i1 %97 to i32
  %99 = call i32 @EFX_BUG_ON_PARANOID(i32 %98)
  %100 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %101 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %100, i32 0, i32 3
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @interrupt_mode, align 4
  %106 = call i32 @max(i32 %104, i32 %105)
  %107 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %108 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %107, i32 0, i32 4
  store i32 %106, i32* %108, align 8
  %109 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %110 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %113 = call i8* @pci_name(%struct.pci_dev* %112)
  %114 = call i32 @snprintf(i32 %111, i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %113)
  %115 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %116 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @create_singlethread_workqueue(i32 %117)
  %119 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %120 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %119, i32 0, i32 1
  store i32 %118, i32* %120, align 4
  %121 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %122 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %126, label %125

125:                                              ; preds = %90
  br label %127

126:                                              ; preds = %90
  store i32 0, i32* %4, align 4
  br label %132

127:                                              ; preds = %125, %85
  %128 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %129 = call i32 @efx_fini_struct(%struct.efx_nic* %128)
  %130 = load i32, i32* @ENOMEM, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %4, align 4
  br label %132

132:                                              ; preds = %127, %126
  %133 = load i32, i32* %4, align 4
  ret i32 %133
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i8* @pci_name(%struct.pci_dev*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @efx_alloc_channel(%struct.efx_nic*, i32, i32*) #1

declare dso_local i32 @EFX_BUG_ON_PARANOID(i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i32 @create_singlethread_workqueue(i32) #1

declare dso_local i32 @efx_fini_struct(%struct.efx_nic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
