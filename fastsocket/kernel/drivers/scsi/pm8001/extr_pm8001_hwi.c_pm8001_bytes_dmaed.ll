; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/pm8001/extr_pm8001_hwi.c_pm8001_bytes_dmaed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/pm8001/extr_pm8001_hwi.c_pm8001_bytes_dmaed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm8001_hba_info = type { %struct.sas_ha_struct*, %struct.pm8001_phy* }
%struct.sas_ha_struct = type { i32 (%struct.asd_sas_phy*, i32)* }
%struct.asd_sas_phy = type opaque
%struct.pm8001_phy = type { i32, i32, %struct.TYPE_2__, i64, i32, i32, i32, %struct.asd_sas_phy.0 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.asd_sas_phy.0 = type { i32, i32, %struct.sas_phy* }
%struct.sas_phy = type { i32, i32, i32, i32, i32 }
%struct.sas_identify_frame = type { i32, i32, i32 }

@SAS_LINK_RATE_1_5_GBPS = common dso_local global i32 0, align 4
@PORT_TYPE_SAS = common dso_local global i32 0, align 4
@SAS_PROTOCOL_ALL = common dso_local global i32 0, align 4
@PORT_TYPE_SATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"phy %d byte dmaded.\0A\00", align 1
@PORTE_BYTES_DMAED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pm8001_bytes_dmaed(%struct.pm8001_hba_info* %0, i32 %1) #0 {
  %3 = alloca %struct.pm8001_hba_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pm8001_phy*, align 8
  %6 = alloca %struct.asd_sas_phy.0*, align 8
  %7 = alloca %struct.sas_ha_struct*, align 8
  %8 = alloca %struct.sas_phy*, align 8
  %9 = alloca %struct.sas_identify_frame*, align 8
  store %struct.pm8001_hba_info* %0, %struct.pm8001_hba_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %11 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %10, i32 0, i32 1
  %12 = load %struct.pm8001_phy*, %struct.pm8001_phy** %11, align 8
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %12, i64 %14
  store %struct.pm8001_phy* %15, %struct.pm8001_phy** %5, align 8
  %16 = load %struct.pm8001_phy*, %struct.pm8001_phy** %5, align 8
  %17 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %16, i32 0, i32 7
  store %struct.asd_sas_phy.0* %17, %struct.asd_sas_phy.0** %6, align 8
  %18 = load %struct.pm8001_phy*, %struct.pm8001_phy** %5, align 8
  %19 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %18, i32 0, i32 6
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %2
  br label %113

23:                                               ; preds = %2
  %24 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %25 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %24, i32 0, i32 0
  %26 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %25, align 8
  store %struct.sas_ha_struct* %26, %struct.sas_ha_struct** %7, align 8
  %27 = load %struct.asd_sas_phy.0*, %struct.asd_sas_phy.0** %6, align 8
  %28 = getelementptr inbounds %struct.asd_sas_phy.0, %struct.asd_sas_phy.0* %27, i32 0, i32 2
  %29 = load %struct.sas_phy*, %struct.sas_phy** %28, align 8
  %30 = icmp ne %struct.sas_phy* %29, null
  br i1 %30, label %31, label %58

31:                                               ; preds = %23
  %32 = load %struct.asd_sas_phy.0*, %struct.asd_sas_phy.0** %6, align 8
  %33 = getelementptr inbounds %struct.asd_sas_phy.0, %struct.asd_sas_phy.0* %32, i32 0, i32 2
  %34 = load %struct.sas_phy*, %struct.sas_phy** %33, align 8
  store %struct.sas_phy* %34, %struct.sas_phy** %8, align 8
  %35 = load %struct.asd_sas_phy.0*, %struct.asd_sas_phy.0** %6, align 8
  %36 = getelementptr inbounds %struct.asd_sas_phy.0, %struct.asd_sas_phy.0* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.sas_phy*, %struct.sas_phy** %8, align 8
  %39 = getelementptr inbounds %struct.sas_phy, %struct.sas_phy* %38, i32 0, i32 4
  store i32 %37, i32* %39, align 4
  %40 = load %struct.pm8001_phy*, %struct.pm8001_phy** %5, align 8
  %41 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.sas_phy*, %struct.sas_phy** %8, align 8
  %44 = getelementptr inbounds %struct.sas_phy, %struct.sas_phy* %43, i32 0, i32 3
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* @SAS_LINK_RATE_1_5_GBPS, align 4
  %46 = load %struct.sas_phy*, %struct.sas_phy** %8, align 8
  %47 = getelementptr inbounds %struct.sas_phy, %struct.sas_phy* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 4
  %48 = load %struct.pm8001_phy*, %struct.pm8001_phy** %5, align 8
  %49 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.sas_phy*, %struct.sas_phy** %8, align 8
  %52 = getelementptr inbounds %struct.sas_phy, %struct.sas_phy* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load %struct.pm8001_phy*, %struct.pm8001_phy** %5, align 8
  %54 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.sas_phy*, %struct.sas_phy** %8, align 8
  %57 = getelementptr inbounds %struct.sas_phy, %struct.sas_phy* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 4
  br label %58

58:                                               ; preds = %31, %23
  %59 = load %struct.pm8001_phy*, %struct.pm8001_phy** %5, align 8
  %60 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @PORT_TYPE_SAS, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %85

65:                                               ; preds = %58
  %66 = load %struct.pm8001_phy*, %struct.pm8001_phy** %5, align 8
  %67 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = inttoptr i64 %68 to %struct.sas_identify_frame*
  store %struct.sas_identify_frame* %69, %struct.sas_identify_frame** %9, align 8
  %70 = load %struct.pm8001_phy*, %struct.pm8001_phy** %5, align 8
  %71 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.sas_identify_frame*, %struct.sas_identify_frame** %9, align 8
  %75 = getelementptr inbounds %struct.sas_identify_frame, %struct.sas_identify_frame* %74, i32 0, i32 2
  store i32 %73, i32* %75, align 4
  %76 = load i32, i32* @SAS_PROTOCOL_ALL, align 4
  %77 = load %struct.sas_identify_frame*, %struct.sas_identify_frame** %9, align 8
  %78 = getelementptr inbounds %struct.sas_identify_frame, %struct.sas_identify_frame* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 4
  %79 = load %struct.pm8001_phy*, %struct.pm8001_phy** %5, align 8
  %80 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.sas_identify_frame*, %struct.sas_identify_frame** %9, align 8
  %84 = getelementptr inbounds %struct.sas_identify_frame, %struct.sas_identify_frame* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 4
  br label %94

85:                                               ; preds = %58
  %86 = load %struct.pm8001_phy*, %struct.pm8001_phy** %5, align 8
  %87 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @PORT_TYPE_SATA, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %85
  br label %93

93:                                               ; preds = %92, %85
  br label %94

94:                                               ; preds = %93, %65
  %95 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %96 = load i32, i32* %4, align 4
  %97 = call i32 @pm8001_printk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %96)
  %98 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %95, i32 %97)
  %99 = load %struct.pm8001_phy*, %struct.pm8001_phy** %5, align 8
  %100 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.asd_sas_phy.0*, %struct.asd_sas_phy.0** %6, align 8
  %103 = getelementptr inbounds %struct.asd_sas_phy.0, %struct.asd_sas_phy.0* %102, i32 0, i32 0
  store i32 %101, i32* %103, align 8
  %104 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %105 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %104, i32 0, i32 0
  %106 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %105, align 8
  %107 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %106, i32 0, i32 0
  %108 = load i32 (%struct.asd_sas_phy*, i32)*, i32 (%struct.asd_sas_phy*, i32)** %107, align 8
  %109 = load %struct.asd_sas_phy.0*, %struct.asd_sas_phy.0** %6, align 8
  %110 = bitcast %struct.asd_sas_phy.0* %109 to %struct.asd_sas_phy*
  %111 = load i32, i32* @PORTE_BYTES_DMAED, align 4
  %112 = call i32 %108(%struct.asd_sas_phy* %110, i32 %111)
  br label %113

113:                                              ; preds = %94, %22
  ret void
}

declare dso_local i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info*, i32) #1

declare dso_local i32 @pm8001_printk(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
