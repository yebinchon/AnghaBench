; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_assoc.c_assoc_helper_channel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_assoc.c_assoc_helper_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lbs_private = type { %struct.TYPE_6__, i64 }
%struct.TYPE_6__ = type { i64 }
%struct.assoc_request = type { i64, i32, %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64 }

@LBS_DEB_ASSOC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"ASSOC: channel: error getting channel.\0A\00", align 1
@CMD_ACT_MESH_CONFIG_STOP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"ASSOC: channel: %d -> %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"ASSOC: channel: error setting channel.\0A\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"ASSOC: channel: failed to update channel to %d\0A\00", align 1
@ASSOC_FLAG_WEP_KEYS = common dso_local global i32 0, align 4
@ASSOC_FLAG_SSID = common dso_local global i32 0, align 4
@CMD_ACT_MESH_CONFIG_START = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"ret %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lbs_private*, %struct.assoc_request*)* @assoc_helper_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @assoc_helper_channel(%struct.lbs_private* %0, %struct.assoc_request* %1) #0 {
  %3 = alloca %struct.lbs_private*, align 8
  %4 = alloca %struct.assoc_request*, align 8
  %5 = alloca i32, align 4
  store %struct.lbs_private* %0, %struct.lbs_private** %3, align 8
  store %struct.assoc_request* %1, %struct.assoc_request** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* @LBS_DEB_ASSOC, align 4
  %7 = call i32 @lbs_deb_enter(i32 %6)
  %8 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %9 = call i32 @lbs_update_channel(%struct.lbs_private* %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = call i32 (i8*, ...) @lbs_deb_assoc(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %137

14:                                               ; preds = %2
  %15 = load %struct.assoc_request*, %struct.assoc_request** %4, align 8
  %16 = getelementptr inbounds %struct.assoc_request, %struct.assoc_request* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %19 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %17, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %14
  br label %137

24:                                               ; preds = %14
  %25 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %26 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %24
  %30 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %31 = load i32, i32* @CMD_ACT_MESH_CONFIG_STOP, align 4
  %32 = load %struct.assoc_request*, %struct.assoc_request** %4, align 8
  %33 = getelementptr inbounds %struct.assoc_request, %struct.assoc_request* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @lbs_mesh_config(%struct.lbs_private* %30, i32 %31, i64 %34)
  br label %36

36:                                               ; preds = %29, %24
  %37 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %38 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.assoc_request*, %struct.assoc_request** %4, align 8
  %42 = getelementptr inbounds %struct.assoc_request, %struct.assoc_request* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call i32 (i8*, ...) @lbs_deb_assoc(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i64 %40, i64 %43)
  %45 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %46 = load %struct.assoc_request*, %struct.assoc_request** %4, align 8
  %47 = getelementptr inbounds %struct.assoc_request, %struct.assoc_request* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @lbs_set_channel(%struct.lbs_private* %45, i64 %48)
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %5, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %36
  %53 = call i32 (i8*, ...) @lbs_deb_assoc(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  br label %54

54:                                               ; preds = %52, %36
  %55 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %56 = call i32 @lbs_update_channel(%struct.lbs_private* %55)
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* %5, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %54
  %60 = call i32 (i8*, ...) @lbs_deb_assoc(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %137

61:                                               ; preds = %54
  %62 = load %struct.assoc_request*, %struct.assoc_request** %4, align 8
  %63 = getelementptr inbounds %struct.assoc_request, %struct.assoc_request* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %66 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %64, %68
  br i1 %69, label %70, label %75

70:                                               ; preds = %61
  %71 = load %struct.assoc_request*, %struct.assoc_request** %4, align 8
  %72 = getelementptr inbounds %struct.assoc_request, %struct.assoc_request* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = call i32 (i8*, ...) @lbs_deb_assoc(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i64 %73)
  br label %123

75:                                               ; preds = %61
  %76 = load %struct.assoc_request*, %struct.assoc_request** %4, align 8
  %77 = getelementptr inbounds %struct.assoc_request, %struct.assoc_request* %76, i32 0, i32 3
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %118

81:                                               ; preds = %75
  %82 = load %struct.assoc_request*, %struct.assoc_request** %4, align 8
  %83 = getelementptr inbounds %struct.assoc_request, %struct.assoc_request* %82, i32 0, i32 2
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i64 0
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %113, label %89

89:                                               ; preds = %81
  %90 = load %struct.assoc_request*, %struct.assoc_request** %4, align 8
  %91 = getelementptr inbounds %struct.assoc_request, %struct.assoc_request* %90, i32 0, i32 2
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i64 1
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %113, label %97

97:                                               ; preds = %89
  %98 = load %struct.assoc_request*, %struct.assoc_request** %4, align 8
  %99 = getelementptr inbounds %struct.assoc_request, %struct.assoc_request* %98, i32 0, i32 2
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i64 2
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %113, label %105

105:                                              ; preds = %97
  %106 = load %struct.assoc_request*, %struct.assoc_request** %4, align 8
  %107 = getelementptr inbounds %struct.assoc_request, %struct.assoc_request* %106, i32 0, i32 2
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i64 3
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %105, %97, %89, %81
  %114 = load i32, i32* @ASSOC_FLAG_WEP_KEYS, align 4
  %115 = load %struct.assoc_request*, %struct.assoc_request** %4, align 8
  %116 = getelementptr inbounds %struct.assoc_request, %struct.assoc_request* %115, i32 0, i32 1
  %117 = call i32 @set_bit(i32 %114, i32* %116)
  br label %118

118:                                              ; preds = %113, %105, %75
  %119 = load i32, i32* @ASSOC_FLAG_SSID, align 4
  %120 = load %struct.assoc_request*, %struct.assoc_request** %4, align 8
  %121 = getelementptr inbounds %struct.assoc_request, %struct.assoc_request* %120, i32 0, i32 1
  %122 = call i32 @set_bit(i32 %119, i32* %121)
  br label %123

123:                                              ; preds = %118, %70
  %124 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %125 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %136

128:                                              ; preds = %123
  %129 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %130 = load i32, i32* @CMD_ACT_MESH_CONFIG_START, align 4
  %131 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %132 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = call i32 @lbs_mesh_config(%struct.lbs_private* %129, i32 %130, i64 %134)
  br label %136

136:                                              ; preds = %128, %123
  br label %137

137:                                              ; preds = %136, %59, %23, %12
  %138 = load i32, i32* @LBS_DEB_ASSOC, align 4
  %139 = load i32, i32* %5, align 4
  %140 = call i32 @lbs_deb_leave_args(i32 %138, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %139)
  %141 = load i32, i32* %5, align 4
  ret i32 %141
}

declare dso_local i32 @lbs_deb_enter(i32) #1

declare dso_local i32 @lbs_update_channel(%struct.lbs_private*) #1

declare dso_local i32 @lbs_deb_assoc(i8*, ...) #1

declare dso_local i32 @lbs_mesh_config(%struct.lbs_private*, i32, i64) #1

declare dso_local i32 @lbs_set_channel(%struct.lbs_private*, i64) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @lbs_deb_leave_args(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
