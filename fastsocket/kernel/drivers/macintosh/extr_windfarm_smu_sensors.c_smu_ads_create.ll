; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_windfarm_smu_sensors.c_smu_ads_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_windfarm_smu_sensors.c_smu_ads_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smu_ad_sensor = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i8*, i32* }
%struct.device_node = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"device_type\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"location\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"temp-sensor\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"CPU T-Diode\00", align 1
@smu_cputemp_ops = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"cpu-temp\00", align 1
@cpudiode = common dso_local global i32* null, align 8
@.str.5 = private unnamed_addr constant [41 x i8] c"wf: cpudiode partition (%02x) not found\0A\00", align 1
@SMU_SDB_CPUDIODE_ID = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [15 x i8] c"current-sensor\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"CPU Current\00", align 1
@smu_cpuamp_ops = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [12 x i8] c"cpu-current\00", align 1
@cpuvcp = common dso_local global i32* null, align 8
@.str.9 = private unnamed_addr constant [39 x i8] c"wf: cpuvcp partition (%02x) not found\0A\00", align 1
@SMU_SDB_CPUVCP_ID = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [15 x i8] c"voltage-sensor\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"CPU Voltage\00", align 1
@smu_cpuvolt_ops = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [12 x i8] c"cpu-voltage\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"power-sensor\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"Slots Power\00", align 1
@smu_slotspow_ops = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [12 x i8] c"slots-power\00", align 1
@slotspow = common dso_local global i32* null, align 8
@.str.16 = private unnamed_addr constant [41 x i8] c"wf: slotspow partition (%02x) not found\0A\00", align 1
@SMU_SDB_SLOTSPOW_ID = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.smu_ad_sensor* (%struct.device_node*)* @smu_ads_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.smu_ad_sensor* @smu_ads_create(%struct.device_node* %0) #0 {
  %2 = alloca %struct.smu_ad_sensor*, align 8
  %3 = alloca %struct.device_node*, align 8
  %4 = alloca %struct.smu_ad_sensor*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  store %struct.device_node* %0, %struct.device_node** %3, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.smu_ad_sensor* @kmalloc(i32 24, i32 %8)
  store %struct.smu_ad_sensor* %9, %struct.smu_ad_sensor** %4, align 8
  %10 = load %struct.smu_ad_sensor*, %struct.smu_ad_sensor** %4, align 8
  %11 = icmp eq %struct.smu_ad_sensor* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store %struct.smu_ad_sensor* null, %struct.smu_ad_sensor** %2, align 8
  br label %134

13:                                               ; preds = %1
  %14 = load %struct.device_node*, %struct.device_node** %3, align 8
  %15 = call i8* @of_get_property(%struct.device_node* %14, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32* null)
  store i8* %15, i8** %5, align 8
  %16 = load %struct.device_node*, %struct.device_node** %3, align 8
  %17 = call i8* @of_get_property(%struct.device_node* %16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32* null)
  store i8* %17, i8** %6, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %13
  %21 = load i8*, i8** %6, align 8
  %22 = icmp eq i8* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %20, %13
  br label %131

24:                                               ; preds = %20
  %25 = load i8*, i8** %5, align 8
  %26 = call i32 @strcmp(i8* %25, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %45, label %28

28:                                               ; preds = %24
  %29 = load i8*, i8** %6, align 8
  %30 = call i32 @strcmp(i8* %29, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %45, label %32

32:                                               ; preds = %28
  %33 = load %struct.smu_ad_sensor*, %struct.smu_ad_sensor** %4, align 8
  %34 = getelementptr inbounds %struct.smu_ad_sensor, %struct.smu_ad_sensor* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  store i32* @smu_cputemp_ops, i32** %35, align 8
  %36 = load %struct.smu_ad_sensor*, %struct.smu_ad_sensor** %4, align 8
  %37 = getelementptr inbounds %struct.smu_ad_sensor, %struct.smu_ad_sensor* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8** %38, align 8
  %39 = load i32*, i32** @cpudiode, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %32
  %42 = load i32, i32* @SMU_SDB_CPUDIODE_ID, align 4
  %43 = call i32 @DBG(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i32 %42)
  br label %131

44:                                               ; preds = %32
  br label %112

45:                                               ; preds = %28, %24
  %46 = load i8*, i8** %5, align 8
  %47 = call i32 @strcmp(i8* %46, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %66, label %49

49:                                               ; preds = %45
  %50 = load i8*, i8** %6, align 8
  %51 = call i32 @strcmp(i8* %50, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %66, label %53

53:                                               ; preds = %49
  %54 = load %struct.smu_ad_sensor*, %struct.smu_ad_sensor** %4, align 8
  %55 = getelementptr inbounds %struct.smu_ad_sensor, %struct.smu_ad_sensor* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  store i32* @smu_cpuamp_ops, i32** %56, align 8
  %57 = load %struct.smu_ad_sensor*, %struct.smu_ad_sensor** %4, align 8
  %58 = getelementptr inbounds %struct.smu_ad_sensor, %struct.smu_ad_sensor* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i8** %59, align 8
  %60 = load i32*, i32** @cpuvcp, align 8
  %61 = icmp eq i32* %60, null
  br i1 %61, label %62, label %65

62:                                               ; preds = %53
  %63 = load i32, i32* @SMU_SDB_CPUVCP_ID, align 4
  %64 = call i32 @DBG(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.9, i64 0, i64 0), i32 %63)
  br label %131

65:                                               ; preds = %53
  br label %111

66:                                               ; preds = %49, %45
  %67 = load i8*, i8** %5, align 8
  %68 = call i32 @strcmp(i8* %67, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0))
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %87, label %70

70:                                               ; preds = %66
  %71 = load i8*, i8** %6, align 8
  %72 = call i32 @strcmp(i8* %71, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0))
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %87, label %74

74:                                               ; preds = %70
  %75 = load %struct.smu_ad_sensor*, %struct.smu_ad_sensor** %4, align 8
  %76 = getelementptr inbounds %struct.smu_ad_sensor, %struct.smu_ad_sensor* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  store i32* @smu_cpuvolt_ops, i32** %77, align 8
  %78 = load %struct.smu_ad_sensor*, %struct.smu_ad_sensor** %4, align 8
  %79 = getelementptr inbounds %struct.smu_ad_sensor, %struct.smu_ad_sensor* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0), i8** %80, align 8
  %81 = load i32*, i32** @cpuvcp, align 8
  %82 = icmp eq i32* %81, null
  br i1 %82, label %83, label %86

83:                                               ; preds = %74
  %84 = load i32, i32* @SMU_SDB_CPUVCP_ID, align 4
  %85 = call i32 @DBG(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.9, i64 0, i64 0), i32 %84)
  br label %131

86:                                               ; preds = %74
  br label %110

87:                                               ; preds = %70, %66
  %88 = load i8*, i8** %5, align 8
  %89 = call i32 @strcmp(i8* %88, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0))
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %108, label %91

91:                                               ; preds = %87
  %92 = load i8*, i8** %6, align 8
  %93 = call i32 @strcmp(i8* %92, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0))
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %108, label %95

95:                                               ; preds = %91
  %96 = load %struct.smu_ad_sensor*, %struct.smu_ad_sensor** %4, align 8
  %97 = getelementptr inbounds %struct.smu_ad_sensor, %struct.smu_ad_sensor* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 1
  store i32* @smu_slotspow_ops, i32** %98, align 8
  %99 = load %struct.smu_ad_sensor*, %struct.smu_ad_sensor** %4, align 8
  %100 = getelementptr inbounds %struct.smu_ad_sensor, %struct.smu_ad_sensor* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i64 0, i64 0), i8** %101, align 8
  %102 = load i32*, i32** @slotspow, align 8
  %103 = icmp eq i32* %102, null
  br i1 %103, label %104, label %107

104:                                              ; preds = %95
  %105 = load i32, i32* @SMU_SDB_SLOTSPOW_ID, align 4
  %106 = call i32 @DBG(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.16, i64 0, i64 0), i32 %105)
  br label %131

107:                                              ; preds = %95
  br label %109

108:                                              ; preds = %91, %87
  br label %131

109:                                              ; preds = %107
  br label %110

110:                                              ; preds = %109, %86
  br label %111

111:                                              ; preds = %110, %65
  br label %112

112:                                              ; preds = %111, %44
  %113 = load %struct.device_node*, %struct.device_node** %3, align 8
  %114 = call i8* @of_get_property(%struct.device_node* %113, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0), i32* null)
  %115 = bitcast i8* %114 to i32*
  store i32* %115, i32** %7, align 8
  %116 = load i32*, i32** %7, align 8
  %117 = icmp eq i32* %116, null
  br i1 %117, label %118, label %119

118:                                              ; preds = %112
  br label %131

119:                                              ; preds = %112
  %120 = load i32*, i32** %7, align 8
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.smu_ad_sensor*, %struct.smu_ad_sensor** %4, align 8
  %123 = getelementptr inbounds %struct.smu_ad_sensor, %struct.smu_ad_sensor* %122, i32 0, i32 1
  store i32 %121, i32* %123, align 8
  %124 = load %struct.smu_ad_sensor*, %struct.smu_ad_sensor** %4, align 8
  %125 = getelementptr inbounds %struct.smu_ad_sensor, %struct.smu_ad_sensor* %124, i32 0, i32 0
  %126 = call i64 @wf_register_sensor(%struct.TYPE_2__* %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %119
  br label %131

129:                                              ; preds = %119
  %130 = load %struct.smu_ad_sensor*, %struct.smu_ad_sensor** %4, align 8
  store %struct.smu_ad_sensor* %130, %struct.smu_ad_sensor** %2, align 8
  br label %134

131:                                              ; preds = %128, %118, %108, %104, %83, %62, %41, %23
  %132 = load %struct.smu_ad_sensor*, %struct.smu_ad_sensor** %4, align 8
  %133 = call i32 @kfree(%struct.smu_ad_sensor* %132)
  store %struct.smu_ad_sensor* null, %struct.smu_ad_sensor** %2, align 8
  br label %134

134:                                              ; preds = %131, %129, %12
  %135 = load %struct.smu_ad_sensor*, %struct.smu_ad_sensor** %2, align 8
  ret %struct.smu_ad_sensor* %135
}

declare dso_local %struct.smu_ad_sensor* @kmalloc(i32, i32) #1

declare dso_local i8* @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @DBG(i8*, i32) #1

declare dso_local i64 @wf_register_sensor(%struct.TYPE_2__*) #1

declare dso_local i32 @kfree(%struct.smu_ad_sensor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
