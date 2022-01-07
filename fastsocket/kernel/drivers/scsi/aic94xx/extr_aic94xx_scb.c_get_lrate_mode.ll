; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic94xx/extr_aic94xx_scb.c_get_lrate_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic94xx/extr_aic94xx_scb.c_get_lrate_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asd_phy = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i8*, %struct.sas_phy* }
%struct.sas_phy = type { i32, i32, i8*, i8*, i8* }
%struct.TYPE_3__ = type { i32, i32 }

@SAS_LINK_RATE_6_0_GBPS = common dso_local global i8* null, align 8
@SAS_LINK_RATE_3_0_GBPS = common dso_local global i8* null, align 8
@SAS_LINK_RATE_1_5_GBPS = common dso_local global i8* null, align 8
@SAS_MODE = common dso_local global i32 0, align 4
@SAS_OOB_MODE = common dso_local global i32 0, align 4
@SATA_MODE = common dso_local global i32 0, align 4
@SATA_OOB_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.asd_phy*, i32)* @get_lrate_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_lrate_mode(%struct.asd_phy* %0, i32 %1) #0 {
  %3 = alloca %struct.asd_phy*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sas_phy*, align 8
  store %struct.asd_phy* %0, %struct.asd_phy** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.asd_phy*, %struct.asd_phy** %3, align 8
  %7 = getelementptr inbounds %struct.asd_phy, %struct.asd_phy* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 2
  %9 = load %struct.sas_phy*, %struct.sas_phy** %8, align 8
  store %struct.sas_phy* %9, %struct.sas_phy** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = and i32 %10, 7
  switch i32 %11, label %45 [
    i32 128, label %12
    i32 129, label %23
    i32 130, label %34
  ]

12:                                               ; preds = %2
  %13 = load i8*, i8** @SAS_LINK_RATE_6_0_GBPS, align 8
  %14 = load %struct.asd_phy*, %struct.asd_phy** %3, align 8
  %15 = getelementptr inbounds %struct.asd_phy, %struct.asd_phy* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  store i8* %13, i8** %16, align 8
  %17 = load i8*, i8** @SAS_LINK_RATE_6_0_GBPS, align 8
  %18 = load %struct.asd_phy*, %struct.asd_phy** %3, align 8
  %19 = getelementptr inbounds %struct.asd_phy, %struct.asd_phy* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 2
  %21 = load %struct.sas_phy*, %struct.sas_phy** %20, align 8
  %22 = getelementptr inbounds %struct.sas_phy, %struct.sas_phy* %21, i32 0, i32 4
  store i8* %17, i8** %22, align 8
  br label %45

23:                                               ; preds = %2
  %24 = load i8*, i8** @SAS_LINK_RATE_3_0_GBPS, align 8
  %25 = load %struct.asd_phy*, %struct.asd_phy** %3, align 8
  %26 = getelementptr inbounds %struct.asd_phy, %struct.asd_phy* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  store i8* %24, i8** %27, align 8
  %28 = load i8*, i8** @SAS_LINK_RATE_3_0_GBPS, align 8
  %29 = load %struct.asd_phy*, %struct.asd_phy** %3, align 8
  %30 = getelementptr inbounds %struct.asd_phy, %struct.asd_phy* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 2
  %32 = load %struct.sas_phy*, %struct.sas_phy** %31, align 8
  %33 = getelementptr inbounds %struct.sas_phy, %struct.sas_phy* %32, i32 0, i32 4
  store i8* %28, i8** %33, align 8
  br label %45

34:                                               ; preds = %2
  %35 = load i8*, i8** @SAS_LINK_RATE_1_5_GBPS, align 8
  %36 = load %struct.asd_phy*, %struct.asd_phy** %3, align 8
  %37 = getelementptr inbounds %struct.asd_phy, %struct.asd_phy* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  store i8* %35, i8** %38, align 8
  %39 = load i8*, i8** @SAS_LINK_RATE_1_5_GBPS, align 8
  %40 = load %struct.asd_phy*, %struct.asd_phy** %3, align 8
  %41 = getelementptr inbounds %struct.asd_phy, %struct.asd_phy* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 2
  %43 = load %struct.sas_phy*, %struct.sas_phy** %42, align 8
  %44 = getelementptr inbounds %struct.sas_phy, %struct.sas_phy* %43, i32 0, i32 4
  store i8* %39, i8** %44, align 8
  br label %45

45:                                               ; preds = %2, %34, %23, %12
  %46 = load %struct.asd_phy*, %struct.asd_phy** %3, align 8
  %47 = getelementptr inbounds %struct.asd_phy, %struct.asd_phy* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i8*, i8** %48, align 8
  %50 = load %struct.sas_phy*, %struct.sas_phy** %5, align 8
  %51 = getelementptr inbounds %struct.sas_phy, %struct.sas_phy* %50, i32 0, i32 4
  store i8* %49, i8** %51, align 8
  %52 = load i8*, i8** @SAS_LINK_RATE_3_0_GBPS, align 8
  %53 = load %struct.sas_phy*, %struct.sas_phy** %5, align 8
  %54 = getelementptr inbounds %struct.sas_phy, %struct.sas_phy* %53, i32 0, i32 3
  store i8* %52, i8** %54, align 8
  %55 = load i8*, i8** @SAS_LINK_RATE_1_5_GBPS, align 8
  %56 = load %struct.sas_phy*, %struct.sas_phy** %5, align 8
  %57 = getelementptr inbounds %struct.sas_phy, %struct.sas_phy* %56, i32 0, i32 2
  store i8* %55, i8** %57, align 8
  %58 = load %struct.asd_phy*, %struct.asd_phy** %3, align 8
  %59 = getelementptr inbounds %struct.asd_phy, %struct.asd_phy* %58, i32 0, i32 1
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.sas_phy*, %struct.sas_phy** %5, align 8
  %64 = getelementptr inbounds %struct.sas_phy, %struct.sas_phy* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  %65 = load %struct.asd_phy*, %struct.asd_phy** %3, align 8
  %66 = getelementptr inbounds %struct.asd_phy, %struct.asd_phy* %65, i32 0, i32 1
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.sas_phy*, %struct.sas_phy** %5, align 8
  %71 = getelementptr inbounds %struct.sas_phy, %struct.sas_phy* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  %72 = load i32, i32* %4, align 4
  %73 = load i32, i32* @SAS_MODE, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %45
  %77 = load i32, i32* @SAS_OOB_MODE, align 4
  %78 = load %struct.asd_phy*, %struct.asd_phy** %3, align 8
  %79 = getelementptr inbounds %struct.asd_phy, %struct.asd_phy* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  store i32 %77, i32* %80, align 8
  br label %92

81:                                               ; preds = %45
  %82 = load i32, i32* %4, align 4
  %83 = load i32, i32* @SATA_MODE, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %81
  %87 = load i32, i32* @SATA_OOB_MODE, align 4
  %88 = load %struct.asd_phy*, %struct.asd_phy** %3, align 8
  %89 = getelementptr inbounds %struct.asd_phy, %struct.asd_phy* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  store i32 %87, i32* %90, align 8
  br label %91

91:                                               ; preds = %86, %81
  br label %92

92:                                               ; preds = %91, %76
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
