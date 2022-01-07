; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_siena.c_siena_probe_nic.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_siena.c_siena_probe_nic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { %struct.siena_nic_data*, %struct.TYPE_5__, %struct.TYPE_4__, i32, i32, i64 }
%struct.siena_nic_data = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@probe = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Siena FPGA not supported\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@FR_AZ_CS_DEBUG = common dso_local global i32 0, align 4
@FRF_CZ_CS_PORT_NUM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Unable to register driver with MCPU\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Host already registered with MCPU\0A\00", align 1
@RESET_TYPE_ALL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"failed to reset NIC\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"INT_KER at %llx (virt %p phys %llx)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [43 x i8] c"NVRAM is invalid therefore using defaults\0A\00", align 1
@PHY_TYPE_NONE = common dso_local global i32 0, align 4
@MDIO_PRTAD_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efx_nic*)* @siena_probe_nic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @siena_probe_nic(%struct.efx_nic* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.efx_nic*, align 8
  %4 = alloca %struct.siena_nic_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %3, align 8
  store i32 0, i32* %5, align 4
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.siena_nic_data* @kzalloc(i32 4, i32 %8)
  store %struct.siena_nic_data* %9, %struct.siena_nic_data** %4, align 8
  %10 = load %struct.siena_nic_data*, %struct.siena_nic_data** %4, align 8
  %11 = icmp ne %struct.siena_nic_data* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %172

15:                                               ; preds = %1
  %16 = load %struct.siena_nic_data*, %struct.siena_nic_data** %4, align 8
  %17 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %18 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %17, i32 0, i32 0
  store %struct.siena_nic_data* %16, %struct.siena_nic_data** %18, align 8
  %19 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %20 = call i64 @efx_nic_fpga_ver(%struct.efx_nic* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %15
  %23 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %24 = load i32, i32* @probe, align 4
  %25 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %26 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @netif_err(%struct.efx_nic* %23, i32 %24, i32 %27, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @ENODEV, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %7, align 4
  br label %166

31:                                               ; preds = %15
  %32 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %33 = load i32, i32* @FR_AZ_CS_DEBUG, align 4
  %34 = call i32 @efx_reado(%struct.efx_nic* %32, i32* %6, i32 %33)
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @FRF_CZ_CS_PORT_NUM, align 4
  %37 = call i64 @EFX_OWORD_FIELD(i32 %35, i32 %36)
  %38 = sub nsw i64 %37, 1
  %39 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %40 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %39, i32 0, i32 5
  store i64 %38, i64* %40, align 8
  %41 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %42 = call i32 @efx_mcdi_init(%struct.efx_nic* %41)
  %43 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %44 = call i32 @efx_mcdi_handle_assertion(%struct.efx_nic* %43)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %31
  br label %166

48:                                               ; preds = %31
  %49 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %50 = call i32 @efx_mcdi_drv_attach(%struct.efx_nic* %49, i32 1, i32* %5)
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %48
  %54 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %55 = load i32, i32* @probe, align 4
  %56 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %57 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @netif_err(%struct.efx_nic* %54, i32 %55, i32 %58, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %165

60:                                               ; preds = %48
  %61 = load i32, i32* %5, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %60
  %64 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %65 = load i32, i32* @probe, align 4
  %66 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %67 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @netif_err(%struct.efx_nic* %64, i32 %65, i32 %68, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  br label %70

70:                                               ; preds = %63, %60
  %71 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %72 = load i32, i32* @RESET_TYPE_ALL, align 4
  %73 = call i32 @siena_reset_hw(%struct.efx_nic* %71, i32 %72)
  store i32 %73, i32* %7, align 4
  %74 = load i32, i32* %7, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %70
  %77 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %78 = load i32, i32* @probe, align 4
  %79 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %80 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @netif_err(%struct.efx_nic* %77, i32 %78, i32 %81, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %162

83:                                               ; preds = %70
  %84 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %85 = call i32 @siena_init_wol(%struct.efx_nic* %84)
  %86 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %87 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %88 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %87, i32 0, i32 1
  %89 = call i32 @efx_nic_alloc_buffer(%struct.efx_nic* %86, %struct.TYPE_5__* %88, i32 4)
  store i32 %89, i32* %7, align 4
  %90 = load i32, i32* %7, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %83
  br label %161

93:                                               ; preds = %83
  %94 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %95 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = and i32 %97, 15
  %99 = call i32 @BUG_ON(i32 %98)
  %100 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %101 = load i32, i32* @probe, align 4
  %102 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %103 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %102, i32 0, i32 4
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %106 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = sext i32 %108 to i64
  %110 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %111 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %115 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = call i64 @virt_to_phys(i32 %117)
  %119 = call i32 @netif_dbg(%struct.efx_nic* %100, i32 %101, i32 %104, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i64 %109, i32 %113, i64 %118)
  %120 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %121 = call i32 @siena_probe_nvconfig(%struct.efx_nic* %120)
  store i32 %121, i32* %7, align 4
  %122 = load i32, i32* %7, align 4
  %123 = load i32, i32* @EINVAL, align 4
  %124 = sub nsw i32 0, %123
  %125 = icmp eq i32 %122, %124
  br i1 %125, label %126, label %140

126:                                              ; preds = %93
  %127 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %128 = load i32, i32* @probe, align 4
  %129 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %130 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %129, i32 0, i32 4
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @netif_err(%struct.efx_nic* %127, i32 %128, i32 %131, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0))
  %133 = load i32, i32* @PHY_TYPE_NONE, align 4
  %134 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %135 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %134, i32 0, i32 3
  store i32 %133, i32* %135, align 4
  %136 = load i32, i32* @MDIO_PRTAD_NONE, align 4
  %137 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %138 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %137, i32 0, i32 2
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 0
  store i32 %136, i32* %139, align 8
  br label %145

140:                                              ; preds = %93
  %141 = load i32, i32* %7, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %140
  br label %156

144:                                              ; preds = %140
  br label %145

145:                                              ; preds = %144, %126
  %146 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %147 = call i32 @efx_mcdi_mon_probe(%struct.efx_nic* %146)
  store i32 %147, i32* %7, align 4
  %148 = load i32, i32* %7, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %145
  br label %156

151:                                              ; preds = %145
  %152 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %153 = call i32 @efx_sriov_probe(%struct.efx_nic* %152)
  %154 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %155 = call i32 @efx_ptp_probe(%struct.efx_nic* %154)
  store i32 0, i32* %2, align 4
  br label %172

156:                                              ; preds = %150, %143
  %157 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %158 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %159 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %158, i32 0, i32 1
  %160 = call i32 @efx_nic_free_buffer(%struct.efx_nic* %157, %struct.TYPE_5__* %159)
  br label %161

161:                                              ; preds = %156, %92
  br label %162

162:                                              ; preds = %161, %76
  %163 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %164 = call i32 @efx_mcdi_drv_attach(%struct.efx_nic* %163, i32 0, i32* null)
  br label %165

165:                                              ; preds = %162, %53
  br label %166

166:                                              ; preds = %165, %47, %22
  %167 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %168 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %167, i32 0, i32 0
  %169 = load %struct.siena_nic_data*, %struct.siena_nic_data** %168, align 8
  %170 = call i32 @kfree(%struct.siena_nic_data* %169)
  %171 = load i32, i32* %7, align 4
  store i32 %171, i32* %2, align 4
  br label %172

172:                                              ; preds = %166, %151, %12
  %173 = load i32, i32* %2, align 4
  ret i32 %173
}

declare dso_local %struct.siena_nic_data* @kzalloc(i32, i32) #1

declare dso_local i64 @efx_nic_fpga_ver(%struct.efx_nic*) #1

declare dso_local i32 @netif_err(%struct.efx_nic*, i32, i32, i8*) #1

declare dso_local i32 @efx_reado(%struct.efx_nic*, i32*, i32) #1

declare dso_local i64 @EFX_OWORD_FIELD(i32, i32) #1

declare dso_local i32 @efx_mcdi_init(%struct.efx_nic*) #1

declare dso_local i32 @efx_mcdi_handle_assertion(%struct.efx_nic*) #1

declare dso_local i32 @efx_mcdi_drv_attach(%struct.efx_nic*, i32, i32*) #1

declare dso_local i32 @siena_reset_hw(%struct.efx_nic*, i32) #1

declare dso_local i32 @siena_init_wol(%struct.efx_nic*) #1

declare dso_local i32 @efx_nic_alloc_buffer(%struct.efx_nic*, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @netif_dbg(%struct.efx_nic*, i32, i32, i8*, i64, i32, i64) #1

declare dso_local i64 @virt_to_phys(i32) #1

declare dso_local i32 @siena_probe_nvconfig(%struct.efx_nic*) #1

declare dso_local i32 @efx_mcdi_mon_probe(%struct.efx_nic*) #1

declare dso_local i32 @efx_sriov_probe(%struct.efx_nic*) #1

declare dso_local i32 @efx_ptp_probe(%struct.efx_nic*) #1

declare dso_local i32 @efx_nic_free_buffer(%struct.efx_nic*, %struct.TYPE_5__*) #1

declare dso_local i32 @kfree(%struct.siena_nic_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
