; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic94xx/extr_aic94xx_sds.c_asd_process_ctrl_a_user.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic94xx/extr_aic94xx_sds.c_asd_process_ctrl_a_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asd_ha_struct = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.asd_flash_dir = type { i32 }
%struct.asd_ll_el = type { i32 }
%struct.asd_ctrla_phy_settings = type { i8, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@FLASH_DE_CTRL_A_USER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"couldn't find CTRL-A user settings section\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"Creating default CTRL-A user settings section\0A\00", align 1
@ASD_MAX_PHYS = common dso_local global i32 0, align 4
@SAS_ADDR_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"no mem for ctrla user settings section\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"couldn't read ctrla phy settings section\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [41 x i8] c"couldn't find ctrla phy settings struct\0A\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"couldn't process ctrla phy settings\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.asd_ha_struct*, %struct.asd_flash_dir*)* @asd_process_ctrl_a_user to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asd_process_ctrl_a_user(%struct.asd_ha_struct* %0, %struct.asd_flash_dir* %1) #0 {
  %3 = alloca %struct.asd_ha_struct*, align 8
  %4 = alloca %struct.asd_flash_dir*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.asd_ll_el*, align 8
  %10 = alloca %struct.asd_ctrla_phy_settings*, align 8
  %11 = alloca %struct.asd_ctrla_phy_settings, align 8
  store %struct.asd_ha_struct* %0, %struct.asd_ha_struct** %3, align 8
  store %struct.asd_flash_dir* %1, %struct.asd_flash_dir** %4, align 8
  %12 = load %struct.asd_flash_dir*, %struct.asd_flash_dir** %4, align 8
  %13 = load i32, i32* @FLASH_DE_CTRL_A_USER, align 4
  %14 = call i32 @asd_find_flash_de(%struct.asd_flash_dir* %12, i32 %13, i32* %7, i32* %8)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %62

17:                                               ; preds = %2
  %18 = call i32 @ASD_DPRINTK(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %19 = call i32 @ASD_DPRINTK(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %20 = getelementptr inbounds %struct.asd_ctrla_phy_settings, %struct.asd_ctrla_phy_settings* %11, i32 0, i32 0
  store i8 104, i8* %20, align 8
  %21 = getelementptr inbounds %struct.asd_ctrla_phy_settings, %struct.asd_ctrla_phy_settings* %11, i32 0, i32 1
  store i32 8, i32* %21, align 4
  store i32 0, i32* %6, align 4
  br label %22

22:                                               ; preds = %58, %17
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @ASD_MAX_PHYS, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %61

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.asd_ctrla_phy_settings, %struct.asd_ctrla_phy_settings* %11, i32 0, i32 2
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %35 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @SAS_ADDR_SIZE, align 4
  %39 = call i32 @memcpy(i32 %33, i32 %37, i32 %38)
  %40 = getelementptr inbounds %struct.asd_ctrla_phy_settings, %struct.asd_ctrla_phy_settings* %11, i32 0, i32 2
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  store i32 152, i32* %45, align 4
  %46 = getelementptr inbounds %struct.asd_ctrla_phy_settings, %struct.asd_ctrla_phy_settings* %11, i32 0, i32 2
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  store i32 0, i32* %51, align 4
  %52 = getelementptr inbounds %struct.asd_ctrla_phy_settings, %struct.asd_ctrla_phy_settings* %11, i32 0, i32 2
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 2
  store i32 0, i32* %57, align 4
  br label %58

58:                                               ; preds = %26
  %59 = load i32, i32* %6, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %6, align 4
  br label %22

61:                                               ; preds = %22
  store i32 16, i32* %8, align 4
  store %struct.asd_ctrla_phy_settings* %11, %struct.asd_ctrla_phy_settings** %10, align 8
  br label %62

62:                                               ; preds = %61, %2
  %63 = load i32, i32* %8, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  br label %108

66:                                               ; preds = %62
  %67 = load i32, i32* @ENOMEM, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %5, align 4
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* @GFP_KERNEL, align 4
  %71 = call %struct.asd_ll_el* @kmalloc(i32 %69, i32 %70)
  store %struct.asd_ll_el* %71, %struct.asd_ll_el** %9, align 8
  %72 = load %struct.asd_ll_el*, %struct.asd_ll_el** %9, align 8
  %73 = icmp ne %struct.asd_ll_el* %72, null
  br i1 %73, label %76, label %74

74:                                               ; preds = %66
  %75 = call i32 @ASD_DPRINTK(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  br label %108

76:                                               ; preds = %66
  %77 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %78 = load %struct.asd_ll_el*, %struct.asd_ll_el** %9, align 8
  %79 = bitcast %struct.asd_ll_el* %78 to i8*
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* %8, align 4
  %82 = call i32 @asd_read_flash_seg(%struct.asd_ha_struct* %77, i8* %79, i32 %80, i32 %81)
  store i32 %82, i32* %5, align 4
  %83 = load i32, i32* %5, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %76
  %86 = call i32 @ASD_DPRINTK(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  br label %105

87:                                               ; preds = %76
  %88 = load i32, i32* @ENOENT, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %5, align 4
  %90 = load %struct.asd_ll_el*, %struct.asd_ll_el** %9, align 8
  %91 = call %struct.asd_ctrla_phy_settings* @asd_find_ll_by_id(%struct.asd_ll_el* %90, i8 signext 104, i32 255)
  store %struct.asd_ctrla_phy_settings* %91, %struct.asd_ctrla_phy_settings** %10, align 8
  %92 = load %struct.asd_ctrla_phy_settings*, %struct.asd_ctrla_phy_settings** %10, align 8
  %93 = icmp ne %struct.asd_ctrla_phy_settings* %92, null
  br i1 %93, label %96, label %94

94:                                               ; preds = %87
  %95 = call i32 @ASD_DPRINTK(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  br label %105

96:                                               ; preds = %87
  %97 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %98 = load %struct.asd_ctrla_phy_settings*, %struct.asd_ctrla_phy_settings** %10, align 8
  %99 = call i32 @asd_process_ctrla_phy_settings(%struct.asd_ha_struct* %97, %struct.asd_ctrla_phy_settings* %98)
  store i32 %99, i32* %5, align 4
  %100 = load i32, i32* %5, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %96
  %103 = call i32 @ASD_DPRINTK(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0))
  br label %105

104:                                              ; preds = %96
  br label %105

105:                                              ; preds = %104, %102, %94, %85
  %106 = load %struct.asd_ll_el*, %struct.asd_ll_el** %9, align 8
  %107 = call i32 @kfree(%struct.asd_ll_el* %106)
  br label %108

108:                                              ; preds = %105, %74, %65
  %109 = load i32, i32* %5, align 4
  ret i32 %109
}

declare dso_local i32 @asd_find_flash_de(%struct.asd_flash_dir*, i32, i32*, i32*) #1

declare dso_local i32 @ASD_DPRINTK(i8*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local %struct.asd_ll_el* @kmalloc(i32, i32) #1

declare dso_local i32 @asd_read_flash_seg(%struct.asd_ha_struct*, i8*, i32, i32) #1

declare dso_local %struct.asd_ctrla_phy_settings* @asd_find_ll_by_id(%struct.asd_ll_el*, i8 signext, i32) #1

declare dso_local i32 @asd_process_ctrla_phy_settings(%struct.asd_ha_struct*, %struct.asd_ctrla_phy_settings*) #1

declare dso_local i32 @kfree(%struct.asd_ll_el*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
