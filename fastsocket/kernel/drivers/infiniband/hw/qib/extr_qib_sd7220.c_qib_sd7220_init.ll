; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_sd7220.c_qib_sd7220_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_sd7220.c_qib_sd7220_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_devdata = type { %struct.TYPE_4__*, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.firmware = type { i32 }

@kr_ibserdesctrl = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"Driver-reload\00", align 1
@SD7220_FW_NAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Failed to load IB SERDES image\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"Failed to set IB SERDES early defaults\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Failed IB SERDES DAC trim\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"Failed to set IB SERDES presets\0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"Failed to set IB SERDES TRIMSELF\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"SERDES PRAM VFY failed\0A\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"Failed clearing START_EQ1\0A\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"No TRIMDONE seen\0A\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"First-reset\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qib_sd7220_init(%struct.qib_devdata* %0) #0 {
  %2 = alloca %struct.qib_devdata*, align 8
  %3 = alloca %struct.firmware*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.qib_devdata* %0, %struct.qib_devdata** %2, align 8
  store i32 1, i32* %4, align 4
  %9 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %10 = load i32, i32* @kr_ibserdesctrl, align 4
  %11 = call i32 @qib_read_kreg64(%struct.qib_devdata* %9, i32 %10)
  %12 = and i32 %11, 1
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %1
  %16 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %17 = call i32 @qib_ibsd_reset(%struct.qib_devdata* %16, i32 1)
  %18 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %19 = call i32 @qib_sd_trimdone_monitor(%struct.qib_devdata* %18, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %15, %1
  %21 = load i32, i32* @SD7220_FW_NAME, align 4
  %22 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %23 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %22, i32 0, i32 2
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = call i32 @request_firmware(%struct.firmware** %3, i32 %21, i32* %25)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %20
  %30 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %31 = call i32 @qib_dev_err(%struct.qib_devdata* %30, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %139

32:                                               ; preds = %20
  %33 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %34 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.firmware*, %struct.firmware** %3, align 8
  %37 = call i32 @qib_ibsd_ucode_loaded(i32 %35, %struct.firmware* %36)
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  br label %138

41:                                               ; preds = %32
  %42 = load i32, i32* %4, align 4
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  store i32 %45, i32* %5, align 4
  %46 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %47 = call i32 @qib_sd_early(%struct.qib_devdata* %46)
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* %4, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %41
  %51 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %52 = call i32 @qib_dev_err(%struct.qib_devdata* %51, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  br label %138

53:                                               ; preds = %41
  %54 = load i32, i32* %5, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %53
  %57 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %58 = call i32 @qib_sd_dactrim(%struct.qib_devdata* %57)
  store i32 %58, i32* %4, align 4
  %59 = load i32, i32* %4, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  %62 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %63 = call i32 @qib_dev_err(%struct.qib_devdata* %62, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  br label %138

64:                                               ; preds = %56
  br label %65

65:                                               ; preds = %64, %53
  %66 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %67 = call i32 @qib_internal_presets(%struct.qib_devdata* %66)
  store i32 %67, i32* %4, align 4
  %68 = load i32, i32* %4, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %65
  %71 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %72 = call i32 @qib_dev_err(%struct.qib_devdata* %71, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  br label %138

73:                                               ; preds = %65
  %74 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %75 = call i32 @qib_sd_trimself(%struct.qib_devdata* %74, i32 128)
  store i32 %75, i32* %4, align 4
  %76 = load i32, i32* %4, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %73
  %79 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %80 = call i32 @qib_dev_err(%struct.qib_devdata* %79, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  br label %138

81:                                               ; preds = %73
  store i32 0, i32* %4, align 4
  %82 = load i32, i32* %5, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %132

84:                                               ; preds = %81
  %85 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %86 = load %struct.firmware*, %struct.firmware** %3, align 8
  %87 = call i32 @qib_sd7220_ib_load(%struct.qib_devdata* %85, %struct.firmware* %86)
  store i32 %87, i32* %4, align 4
  %88 = load i32, i32* %4, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %84
  %91 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %92 = call i32 @qib_dev_err(%struct.qib_devdata* %91, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %138

93:                                               ; preds = %84
  %94 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %95 = load %struct.firmware*, %struct.firmware** %3, align 8
  %96 = call i32 @qib_sd7220_ib_vfy(%struct.qib_devdata* %94, %struct.firmware* %95)
  store i32 %96, i32* %7, align 4
  %97 = load i32, i32* %7, align 4
  %98 = load i32, i32* %4, align 4
  %99 = icmp ne i32 %97, %98
  br i1 %99, label %100, label %103

100:                                              ; preds = %93
  %101 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %102 = call i32 @qib_dev_err(%struct.qib_devdata* %101, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  br label %138

103:                                              ; preds = %93
  br label %104

104:                                              ; preds = %103
  store i32 0, i32* %4, align 4
  %105 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %106 = call i32 @START_EQ1(i32 0)
  %107 = call i32 @ibsd_mod_allchnls(%struct.qib_devdata* %105, i32 %106, i32 0, i32 56)
  store i32 %107, i32* %4, align 4
  %108 = load i32, i32* %4, align 4
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %104
  %111 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %112 = call i32 @qib_dev_err(%struct.qib_devdata* %111, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0))
  br label %138

113:                                              ; preds = %104
  %114 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %115 = call i32 @qib_ibsd_reset(%struct.qib_devdata* %114, i32 0)
  %116 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %117 = call i32 @qib_sd_trimdone_poll(%struct.qib_devdata* %116)
  store i32 %117, i32* %8, align 4
  %118 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %119 = call i32 @qib_ibsd_reset(%struct.qib_devdata* %118, i32 1)
  %120 = load i32, i32* %8, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %125, label %122

122:                                              ; preds = %113
  %123 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %124 = call i32 @qib_dev_err(%struct.qib_devdata* %123, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0))
  br label %138

125:                                              ; preds = %113
  %126 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %127 = call i32 @qib_sd_trimdone_monitor(%struct.qib_devdata* %126, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0))
  %128 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %129 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %128, i32 0, i32 0
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 0
  store i32 1, i32* %131, align 4
  br label %132

132:                                              ; preds = %125, %81
  store i32 0, i32* %4, align 4
  %133 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %134 = call i64 @qib_sd_setvals(%struct.qib_devdata* %133)
  %135 = icmp sge i64 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %132
  br label %139

137:                                              ; preds = %132
  br label %138

138:                                              ; preds = %137, %122, %110, %100, %90, %78, %70, %61, %50, %40
  store i32 1, i32* %4, align 4
  br label %139

139:                                              ; preds = %138, %136, %29
  %140 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %141 = call i32 @set_7220_relock_poll(%struct.qib_devdata* %140, i32 -1)
  %142 = load %struct.firmware*, %struct.firmware** %3, align 8
  %143 = call i32 @release_firmware(%struct.firmware* %142)
  %144 = load i32, i32* %4, align 4
  ret i32 %144
}

declare dso_local i32 @qib_read_kreg64(%struct.qib_devdata*, i32) #1

declare dso_local i32 @qib_ibsd_reset(%struct.qib_devdata*, i32) #1

declare dso_local i32 @qib_sd_trimdone_monitor(%struct.qib_devdata*, i8*) #1

declare dso_local i32 @request_firmware(%struct.firmware**, i32, i32*) #1

declare dso_local i32 @qib_dev_err(%struct.qib_devdata*, i8*) #1

declare dso_local i32 @qib_ibsd_ucode_loaded(i32, %struct.firmware*) #1

declare dso_local i32 @qib_sd_early(%struct.qib_devdata*) #1

declare dso_local i32 @qib_sd_dactrim(%struct.qib_devdata*) #1

declare dso_local i32 @qib_internal_presets(%struct.qib_devdata*) #1

declare dso_local i32 @qib_sd_trimself(%struct.qib_devdata*, i32) #1

declare dso_local i32 @qib_sd7220_ib_load(%struct.qib_devdata*, %struct.firmware*) #1

declare dso_local i32 @qib_sd7220_ib_vfy(%struct.qib_devdata*, %struct.firmware*) #1

declare dso_local i32 @ibsd_mod_allchnls(%struct.qib_devdata*, i32, i32, i32) #1

declare dso_local i32 @START_EQ1(i32) #1

declare dso_local i32 @qib_sd_trimdone_poll(%struct.qib_devdata*) #1

declare dso_local i64 @qib_sd_setvals(%struct.qib_devdata*) #1

declare dso_local i32 @set_7220_relock_poll(%struct.qib_devdata*, i32) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
