; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_siena_sriov.c_efx_sriov_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_siena_sriov.c_efx_sriov_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i64, i64, %struct.TYPE_5__, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.net_device* }
%struct.TYPE_5__ = type { %struct.vfdi_status* }
%struct.vfdi_status = type { i32, i32, i64, %struct.TYPE_4__*, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.net_device = type { i32 }

@EFX_MAX_CHANNELS = common dso_local global i32 0, align 4
@EFX_VI_BASE = common dso_local global i32 0, align 4
@EFX_VI_SCALE_MAX = common dso_local global i32 0, align 4
@vf_max_tx_channels = common dso_local global i32 0, align 4
@efx_sriov_peer_work = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@probe = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"enabled SR-IOV for %d VFs, %d VI per VF\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @efx_sriov_init(%struct.efx_nic* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.efx_nic*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.vfdi_status*, align 8
  %6 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %3, align 8
  %7 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %8 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %7, i32 0, i32 12
  %9 = load %struct.net_device*, %struct.net_device** %8, align 8
  store %struct.net_device* %9, %struct.net_device** %4, align 8
  %10 = load i32, i32* @EFX_MAX_CHANNELS, align 4
  %11 = add nsw i32 %10, 1
  %12 = load i32, i32* @EFX_VI_BASE, align 4
  %13 = icmp sge i32 %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @BUILD_BUG_ON(i32 %14)
  %16 = load i32, i32* @EFX_VI_BASE, align 4
  %17 = load i32, i32* @EFX_VI_SCALE_MAX, align 4
  %18 = shl i32 1, %17
  %19 = sub nsw i32 %18, 1
  %20 = and i32 %16, %19
  %21 = call i32 @BUILD_BUG_ON(i32 %20)
  %22 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %23 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %170

27:                                               ; preds = %1
  %28 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %29 = call i32 @efx_sriov_cmd(%struct.efx_nic* %28, i32 1, i32* null, i32* null)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %168

33:                                               ; preds = %27
  %34 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %35 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %36 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %35, i32 0, i32 2
  %37 = call i32 @efx_nic_alloc_buffer(%struct.efx_nic* %34, %struct.TYPE_5__* %36, i32 40)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  br label %165

41:                                               ; preds = %33
  %42 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %43 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load %struct.vfdi_status*, %struct.vfdi_status** %44, align 8
  store %struct.vfdi_status* %45, %struct.vfdi_status** %5, align 8
  %46 = load %struct.vfdi_status*, %struct.vfdi_status** %5, align 8
  %47 = call i32 @memset(%struct.vfdi_status* %46, i32 0, i32 40)
  %48 = load %struct.vfdi_status*, %struct.vfdi_status** %5, align 8
  %49 = getelementptr inbounds %struct.vfdi_status, %struct.vfdi_status* %48, i32 0, i32 0
  store i32 1, i32* %49, align 8
  %50 = load %struct.vfdi_status*, %struct.vfdi_status** %5, align 8
  %51 = getelementptr inbounds %struct.vfdi_status, %struct.vfdi_status* %50, i32 0, i32 1
  store i32 40, i32* %51, align 4
  %52 = load i32, i32* @vf_max_tx_channels, align 4
  %53 = load %struct.vfdi_status*, %struct.vfdi_status** %5, align 8
  %54 = getelementptr inbounds %struct.vfdi_status, %struct.vfdi_status* %53, i32 0, i32 7
  store i32 %52, i32* %54, align 4
  %55 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %56 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %55, i32 0, i32 11
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.vfdi_status*, %struct.vfdi_status** %5, align 8
  %59 = getelementptr inbounds %struct.vfdi_status, %struct.vfdi_status* %58, i32 0, i32 6
  store i32 %57, i32* %59, align 8
  %60 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %61 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %60, i32 0, i32 10
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.vfdi_status*, %struct.vfdi_status** %5, align 8
  %64 = getelementptr inbounds %struct.vfdi_status, %struct.vfdi_status* %63, i32 0, i32 5
  store i32 %62, i32* %64, align 4
  %65 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %66 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = add nsw i64 1, %67
  %69 = load %struct.vfdi_status*, %struct.vfdi_status** %5, align 8
  %70 = getelementptr inbounds %struct.vfdi_status, %struct.vfdi_status* %69, i32 0, i32 2
  store i64 %68, i64* %70, align 8
  %71 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %72 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %71, i32 0, i32 9
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.vfdi_status*, %struct.vfdi_status** %5, align 8
  %75 = getelementptr inbounds %struct.vfdi_status, %struct.vfdi_status* %74, i32 0, i32 4
  store i32 %73, i32* %75, align 8
  %76 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %77 = call i32 @efx_sriov_vf_alloc(%struct.efx_nic* %76)
  store i32 %77, i32* %6, align 4
  %78 = load i32, i32* %6, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %41
  br label %160

81:                                               ; preds = %41
  %82 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %83 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %82, i32 0, i32 8
  %84 = call i32 @mutex_init(i32* %83)
  %85 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %86 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %85, i32 0, i32 4
  %87 = load i32, i32* @efx_sriov_peer_work, align 4
  %88 = call i32 @INIT_WORK(i32* %86, i32 %87)
  %89 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %90 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %89, i32 0, i32 7
  %91 = call i32 @INIT_LIST_HEAD(i32* %90)
  %92 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %93 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %92, i32 0, i32 6
  %94 = call i32 @INIT_LIST_HEAD(i32* %93)
  %95 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %96 = call i32 @efx_sriov_vfs_init(%struct.efx_nic* %95)
  store i32 %96, i32* %6, align 4
  %97 = load i32, i32* %6, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %81
  br label %150

100:                                              ; preds = %81
  %101 = call i32 (...) @rtnl_lock()
  %102 = load %struct.vfdi_status*, %struct.vfdi_status** %5, align 8
  %103 = getelementptr inbounds %struct.vfdi_status, %struct.vfdi_status* %102, i32 0, i32 3
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i64 0
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.net_device*, %struct.net_device** %4, align 8
  %109 = getelementptr inbounds %struct.net_device, %struct.net_device* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @ETH_ALEN, align 4
  %112 = call i32 @memcpy(i32 %107, i32 %110, i32 %111)
  %113 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %114 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %117 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %116, i32 0, i32 1
  store i64 %115, i64* %117, align 8
  %118 = call i32 (...) @rtnl_unlock()
  %119 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %120 = call i32 @efx_sriov_usrev(%struct.efx_nic* %119, i32 1)
  %121 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %122 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %121, i32 0, i32 5
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %125 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = call i32 @pci_enable_sriov(i32 %123, i64 %126)
  store i32 %127, i32* %6, align 4
  %128 = load i32, i32* %6, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %100
  br label %141

131:                                              ; preds = %100
  %132 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %133 = load i32, i32* @probe, align 4
  %134 = load %struct.net_device*, %struct.net_device** %4, align 8
  %135 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %136 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %139 = call i32 @efx_vf_size(%struct.efx_nic* %138)
  %140 = call i32 @netif_info(%struct.efx_nic* %132, i32 %133, %struct.net_device* %134, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i64 %137, i32 %139)
  store i32 0, i32* %2, align 4
  br label %170

141:                                              ; preds = %130
  %142 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %143 = call i32 @efx_sriov_usrev(%struct.efx_nic* %142, i32 0)
  %144 = call i32 (...) @rtnl_lock()
  %145 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %146 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %145, i32 0, i32 1
  store i64 0, i64* %146, align 8
  %147 = call i32 (...) @rtnl_unlock()
  %148 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %149 = call i32 @efx_sriov_vfs_fini(%struct.efx_nic* %148)
  br label %150

150:                                              ; preds = %141, %99
  %151 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %152 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %151, i32 0, i32 4
  %153 = call i32 @cancel_work_sync(i32* %152)
  %154 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %155 = call i32 @efx_sriov_free_local(%struct.efx_nic* %154)
  %156 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %157 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %156, i32 0, i32 3
  %158 = load i32, i32* %157, align 8
  %159 = call i32 @kfree(i32 %158)
  br label %160

160:                                              ; preds = %150, %80
  %161 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %162 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %163 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %162, i32 0, i32 2
  %164 = call i32 @efx_nic_free_buffer(%struct.efx_nic* %161, %struct.TYPE_5__* %163)
  br label %165

165:                                              ; preds = %160, %40
  %166 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %167 = call i32 @efx_sriov_cmd(%struct.efx_nic* %166, i32 0, i32* null, i32* null)
  br label %168

168:                                              ; preds = %165, %32
  %169 = load i32, i32* %6, align 4
  store i32 %169, i32* %2, align 4
  br label %170

170:                                              ; preds = %168, %131, %26
  %171 = load i32, i32* %2, align 4
  ret i32 %171
}

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @efx_sriov_cmd(%struct.efx_nic*, i32, i32*, i32*) #1

declare dso_local i32 @efx_nic_alloc_buffer(%struct.efx_nic*, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @memset(%struct.vfdi_status*, i32, i32) #1

declare dso_local i32 @efx_sriov_vf_alloc(%struct.efx_nic*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @efx_sriov_vfs_init(%struct.efx_nic*) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @rtnl_unlock(...) #1

declare dso_local i32 @efx_sriov_usrev(%struct.efx_nic*, i32) #1

declare dso_local i32 @pci_enable_sriov(i32, i64) #1

declare dso_local i32 @netif_info(%struct.efx_nic*, i32, %struct.net_device*, i8*, i64, i32) #1

declare dso_local i32 @efx_vf_size(%struct.efx_nic*) #1

declare dso_local i32 @efx_sriov_vfs_fini(%struct.efx_nic*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @efx_sriov_free_local(%struct.efx_nic*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @efx_nic_free_buffer(%struct.efx_nic*, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
