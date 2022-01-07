; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/bt8xx/extr_dst.c_dst_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/bt8xx/extr_dst.c_dst_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dst_state = type { i32, i32 }

@dst_addons = common dso_local global i32 0, align 4
@DST_TYPE_HAS_CA = common dso_local global i32 0, align 4
@verbose = common dso_local global i32 0, align 4
@DST_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"RDC 8820 RESET Failed.\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"DST Initialization Failed.\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"unknown device.\00", align 1
@DST_INFO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"MAC: Unsupported command\00", align 1
@DST_TYPE_HAS_MULTI_FE = common dso_local global i32 0, align 4
@DST_TYPE_HAS_FW_BUILD = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"Tuner: Unsupported command\00", align 1
@DST_TYPE_HAS_TS204 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [24 x i8] c"FW: Unsupported command\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"Card: Unsupported command\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"Vendor: Unsupported command\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dst_state*)* @dst_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dst_probe(%struct.dst_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dst_state*, align 8
  store %struct.dst_state* %0, %struct.dst_state** %3, align 8
  %4 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %5 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %4, i32 0, i32 1
  %6 = call i32 @mutex_init(i32* %5)
  %7 = load i32, i32* @dst_addons, align 4
  %8 = load i32, i32* @DST_TYPE_HAS_CA, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %21

11:                                               ; preds = %1
  %12 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %13 = call i64 @rdc_8820_reset(%struct.dst_state* %12)
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = load i32, i32* @verbose, align 4
  %17 = load i32, i32* @DST_ERROR, align 4
  %18 = call i32 @dprintk(i32 %16, i32 %17, i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %114

19:                                               ; preds = %11
  %20 = call i32 @msleep(i32 4000)
  br label %23

21:                                               ; preds = %1
  %22 = call i32 @msleep(i32 100)
  br label %23

23:                                               ; preds = %21, %19
  %24 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %25 = call i64 @dst_comm_init(%struct.dst_state* %24)
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = load i32, i32* @verbose, align 4
  %29 = load i32, i32* @DST_ERROR, align 4
  %30 = call i32 @dprintk(i32 %28, i32 %29, i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %114

31:                                               ; preds = %23
  %32 = call i32 @msleep(i32 100)
  %33 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %34 = call i64 @dst_get_device_id(%struct.dst_state* %33)
  %35 = icmp slt i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = load i32, i32* @verbose, align 4
  %38 = load i32, i32* @DST_ERROR, align 4
  %39 = call i32 @dprintk(i32 %37, i32 %38, i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %114

40:                                               ; preds = %31
  %41 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %42 = call i64 @dst_get_mac(%struct.dst_state* %41)
  %43 = icmp slt i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = load i32, i32* @verbose, align 4
  %46 = load i32, i32* @DST_INFO, align 4
  %47 = call i32 @dprintk(i32 %45, i32 %46, i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %48

48:                                               ; preds = %44, %40
  %49 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %50 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @DST_TYPE_HAS_MULTI_FE, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %62, label %55

55:                                               ; preds = %48
  %56 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %57 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @DST_TYPE_HAS_FW_BUILD, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %71

62:                                               ; preds = %55, %48
  %63 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %64 = call i64 @dst_get_tuner_info(%struct.dst_state* %63)
  %65 = icmp slt i64 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %62
  %67 = load i32, i32* @verbose, align 4
  %68 = load i32, i32* @DST_INFO, align 4
  %69 = call i32 @dprintk(i32 %67, i32 %68, i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  br label %70

70:                                               ; preds = %66, %62
  br label %71

71:                                               ; preds = %70, %55
  %72 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %73 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @DST_TYPE_HAS_TS204, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %71
  %79 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %80 = call i32 @dst_packsize(%struct.dst_state* %79, i32 204)
  br label %81

81:                                               ; preds = %78, %71
  %82 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %83 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @DST_TYPE_HAS_FW_BUILD, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %113

88:                                               ; preds = %81
  %89 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %90 = call i64 @dst_fw_ver(%struct.dst_state* %89)
  %91 = icmp slt i64 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %88
  %93 = load i32, i32* @verbose, align 4
  %94 = load i32, i32* @DST_INFO, align 4
  %95 = call i32 @dprintk(i32 %93, i32 %94, i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %114

96:                                               ; preds = %88
  %97 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %98 = call i64 @dst_card_type(%struct.dst_state* %97)
  %99 = icmp slt i64 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %96
  %101 = load i32, i32* @verbose, align 4
  %102 = load i32, i32* @DST_INFO, align 4
  %103 = call i32 @dprintk(i32 %101, i32 %102, i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %114

104:                                              ; preds = %96
  %105 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %106 = call i64 @dst_get_vendor(%struct.dst_state* %105)
  %107 = icmp slt i64 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %104
  %109 = load i32, i32* @verbose, align 4
  %110 = load i32, i32* @DST_INFO, align 4
  %111 = call i32 @dprintk(i32 %109, i32 %110, i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %114

112:                                              ; preds = %104
  br label %113

113:                                              ; preds = %112, %81
  store i32 0, i32* %2, align 4
  br label %114

114:                                              ; preds = %113, %108, %100, %92, %36, %27, %15
  %115 = load i32, i32* %2, align 4
  ret i32 %115
}

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i64 @rdc_8820_reset(%struct.dst_state*) #1

declare dso_local i32 @dprintk(i32, i32, i32, i8*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @dst_comm_init(%struct.dst_state*) #1

declare dso_local i64 @dst_get_device_id(%struct.dst_state*) #1

declare dso_local i64 @dst_get_mac(%struct.dst_state*) #1

declare dso_local i64 @dst_get_tuner_info(%struct.dst_state*) #1

declare dso_local i32 @dst_packsize(%struct.dst_state*, i32) #1

declare dso_local i64 @dst_fw_ver(%struct.dst_state*) #1

declare dso_local i64 @dst_card_type(%struct.dst_state*) #1

declare dso_local i64 @dst_get_vendor(%struct.dst_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
