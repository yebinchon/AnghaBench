; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic94xx/extr_aic94xx_scb.c_asd_control_phy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic94xx/extr_aic94xx_scb.c_asd_control_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asd_sas_phy = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.asd_ha_struct* }
%struct.asd_ha_struct = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.asd_phy_desc* }
%struct.asd_phy_desc = type { i32, i32, i32, i32 }
%struct.asd_ascb = type { i32 }
%struct.sas_phy_linkrates = type { i32, i32 }

@ENOSYS = common dso_local global i32 0, align 4
@PHY_FUNC_LINK_RESET = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@phy_func_table = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @asd_control_phy(%struct.asd_sas_phy* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.asd_sas_phy*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.asd_ha_struct*, align 8
  %9 = alloca %struct.asd_phy_desc*, align 8
  %10 = alloca %struct.asd_ascb*, align 8
  %11 = alloca %struct.sas_phy_linkrates*, align 8
  %12 = alloca i32, align 4
  store %struct.asd_sas_phy* %0, %struct.asd_sas_phy** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %13 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %5, align 8
  %14 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %13, i32 0, i32 1
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %16, align 8
  store %struct.asd_ha_struct* %17, %struct.asd_ha_struct** %8, align 8
  %18 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %8, align 8
  %19 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %5, align 8
  %22 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load %struct.asd_phy_desc*, %struct.asd_phy_desc** %25, align 8
  store %struct.asd_phy_desc* %26, %struct.asd_phy_desc** %9, align 8
  store i32 1, i32* %12, align 4
  %27 = load i32, i32* %6, align 4
  switch i32 %27, label %67 [
    i32 130, label %28
    i32 129, label %28
    i32 128, label %31
  ]

28:                                               ; preds = %3, %3
  %29 = load i32, i32* @ENOSYS, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %98

31:                                               ; preds = %3
  %32 = load i8*, i8** %7, align 8
  %33 = bitcast i8* %32 to %struct.sas_phy_linkrates*
  store %struct.sas_phy_linkrates* %33, %struct.sas_phy_linkrates** %11, align 8
  %34 = load %struct.sas_phy_linkrates*, %struct.sas_phy_linkrates** %11, align 8
  %35 = getelementptr inbounds %struct.sas_phy_linkrates, %struct.sas_phy_linkrates* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %49

38:                                               ; preds = %31
  %39 = load %struct.sas_phy_linkrates*, %struct.sas_phy_linkrates** %11, align 8
  %40 = getelementptr inbounds %struct.sas_phy_linkrates, %struct.sas_phy_linkrates* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.asd_phy_desc*, %struct.asd_phy_desc** %9, align 8
  %43 = getelementptr inbounds %struct.asd_phy_desc, %struct.asd_phy_desc* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 4
  %44 = load %struct.sas_phy_linkrates*, %struct.sas_phy_linkrates** %11, align 8
  %45 = getelementptr inbounds %struct.sas_phy_linkrates, %struct.sas_phy_linkrates* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.asd_phy_desc*, %struct.asd_phy_desc** %9, align 8
  %48 = getelementptr inbounds %struct.asd_phy_desc, %struct.asd_phy_desc* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 4
  br label %49

49:                                               ; preds = %38, %31
  %50 = load %struct.sas_phy_linkrates*, %struct.sas_phy_linkrates** %11, align 8
  %51 = getelementptr inbounds %struct.sas_phy_linkrates, %struct.sas_phy_linkrates* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %65

54:                                               ; preds = %49
  %55 = load %struct.sas_phy_linkrates*, %struct.sas_phy_linkrates** %11, align 8
  %56 = getelementptr inbounds %struct.sas_phy_linkrates, %struct.sas_phy_linkrates* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.asd_phy_desc*, %struct.asd_phy_desc** %9, align 8
  %59 = getelementptr inbounds %struct.asd_phy_desc, %struct.asd_phy_desc* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  %60 = load %struct.sas_phy_linkrates*, %struct.sas_phy_linkrates** %11, align 8
  %61 = getelementptr inbounds %struct.sas_phy_linkrates, %struct.sas_phy_linkrates* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.asd_phy_desc*, %struct.asd_phy_desc** %9, align 8
  %64 = getelementptr inbounds %struct.asd_phy_desc, %struct.asd_phy_desc* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 4
  br label %65

65:                                               ; preds = %54, %49
  %66 = load i32, i32* @PHY_FUNC_LINK_RESET, align 4
  store i32 %66, i32* %6, align 4
  br label %68

67:                                               ; preds = %3
  br label %68

68:                                               ; preds = %67, %65
  %69 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %8, align 8
  %70 = load i32, i32* @GFP_KERNEL, align 4
  %71 = call %struct.asd_ascb* @asd_ascb_alloc_list(%struct.asd_ha_struct* %69, i32* %12, i32 %70)
  store %struct.asd_ascb* %71, %struct.asd_ascb** %10, align 8
  %72 = load %struct.asd_ascb*, %struct.asd_ascb** %10, align 8
  %73 = icmp ne %struct.asd_ascb* %72, null
  br i1 %73, label %77, label %74

74:                                               ; preds = %68
  %75 = load i32, i32* @ENOMEM, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %4, align 4
  br label %98

77:                                               ; preds = %68
  %78 = load %struct.asd_ascb*, %struct.asd_ascb** %10, align 8
  %79 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %5, align 8
  %80 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i32*, i32** @phy_func_table, align 8
  %83 = load i32, i32* %6, align 4
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @asd_build_control_phy(%struct.asd_ascb* %78, i64 %81, i32 %86)
  %88 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %8, align 8
  %89 = load %struct.asd_ascb*, %struct.asd_ascb** %10, align 8
  %90 = call i32 @asd_post_ascb_list(%struct.asd_ha_struct* %88, %struct.asd_ascb* %89, i32 1)
  store i32 %90, i32* %12, align 4
  %91 = load i32, i32* %12, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %77
  %94 = load %struct.asd_ascb*, %struct.asd_ascb** %10, align 8
  %95 = call i32 @asd_ascb_free(%struct.asd_ascb* %94)
  br label %96

96:                                               ; preds = %93, %77
  %97 = load i32, i32* %12, align 4
  store i32 %97, i32* %4, align 4
  br label %98

98:                                               ; preds = %96, %74, %28
  %99 = load i32, i32* %4, align 4
  ret i32 %99
}

declare dso_local %struct.asd_ascb* @asd_ascb_alloc_list(%struct.asd_ha_struct*, i32*, i32) #1

declare dso_local i32 @asd_build_control_phy(%struct.asd_ascb*, i64, i32) #1

declare dso_local i32 @asd_post_ascb_list(%struct.asd_ha_struct*, %struct.asd_ascb*, i32) #1

declare dso_local i32 @asd_ascb_free(%struct.asd_ascb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
