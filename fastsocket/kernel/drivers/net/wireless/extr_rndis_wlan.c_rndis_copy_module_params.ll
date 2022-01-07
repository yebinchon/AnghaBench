; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_rndis_wlan.c_rndis_copy_module_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_rndis_wlan.c_rndis_copy_module_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { i32 }
%struct.rndis_wlan_private = type { i32, i32, i32, i32, i32, i32, i8**, i32, i32 }

@modparam_country = common dso_local global i8** null, align 8
@modparam_frameburst = common dso_local global i32 0, align 4
@modparam_afterburner = common dso_local global i32 0, align 4
@modparam_power_save = common dso_local global i32 0, align 4
@modparam_power_output = common dso_local global i32 0, align 4
@modparam_roamtrigger = common dso_local global i32 0, align 4
@modparam_roamdelta = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"EU\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"FI\00", align 1
@modparam_workaround_interval = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usbnet*, i32)* @rndis_copy_module_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rndis_copy_module_params(%struct.usbnet* %0, i32 %1) #0 {
  %3 = alloca %struct.usbnet*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rndis_wlan_private*, align 8
  store %struct.usbnet* %0, %struct.usbnet** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %7 = call %struct.rndis_wlan_private* @get_rndis_wlan_priv(%struct.usbnet* %6)
  store %struct.rndis_wlan_private* %7, %struct.rndis_wlan_private** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.rndis_wlan_private*, %struct.rndis_wlan_private** %5, align 8
  %10 = getelementptr inbounds %struct.rndis_wlan_private, %struct.rndis_wlan_private* %9, i32 0, i32 0
  store i32 %8, i32* %10, align 8
  %11 = load i8**, i8*** @modparam_country, align 8
  %12 = getelementptr inbounds i8*, i8** %11, i64 0
  %13 = load i8*, i8** %12, align 8
  %14 = load %struct.rndis_wlan_private*, %struct.rndis_wlan_private** %5, align 8
  %15 = getelementptr inbounds %struct.rndis_wlan_private, %struct.rndis_wlan_private* %14, i32 0, i32 6
  %16 = load i8**, i8*** %15, align 8
  %17 = getelementptr inbounds i8*, i8** %16, i64 0
  store i8* %13, i8** %17, align 8
  %18 = load i8**, i8*** @modparam_country, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i64 1
  %20 = load i8*, i8** %19, align 8
  %21 = load %struct.rndis_wlan_private*, %struct.rndis_wlan_private** %5, align 8
  %22 = getelementptr inbounds %struct.rndis_wlan_private, %struct.rndis_wlan_private* %21, i32 0, i32 6
  %23 = load i8**, i8*** %22, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i64 1
  store i8* %20, i8** %24, align 8
  %25 = load %struct.rndis_wlan_private*, %struct.rndis_wlan_private** %5, align 8
  %26 = getelementptr inbounds %struct.rndis_wlan_private, %struct.rndis_wlan_private* %25, i32 0, i32 6
  %27 = load i8**, i8*** %26, align 8
  %28 = getelementptr inbounds i8*, i8** %27, i64 2
  store i8* null, i8** %28, align 8
  %29 = load i32, i32* @modparam_frameburst, align 4
  %30 = load %struct.rndis_wlan_private*, %struct.rndis_wlan_private** %5, align 8
  %31 = getelementptr inbounds %struct.rndis_wlan_private, %struct.rndis_wlan_private* %30, i32 0, i32 8
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* @modparam_afterburner, align 4
  %33 = load %struct.rndis_wlan_private*, %struct.rndis_wlan_private** %5, align 8
  %34 = getelementptr inbounds %struct.rndis_wlan_private, %struct.rndis_wlan_private* %33, i32 0, i32 7
  store i32 %32, i32* %34, align 8
  %35 = load i32, i32* @modparam_power_save, align 4
  %36 = load %struct.rndis_wlan_private*, %struct.rndis_wlan_private** %5, align 8
  %37 = getelementptr inbounds %struct.rndis_wlan_private, %struct.rndis_wlan_private* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* @modparam_power_output, align 4
  %39 = load %struct.rndis_wlan_private*, %struct.rndis_wlan_private** %5, align 8
  %40 = getelementptr inbounds %struct.rndis_wlan_private, %struct.rndis_wlan_private* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 8
  %41 = load i32, i32* @modparam_roamtrigger, align 4
  %42 = load %struct.rndis_wlan_private*, %struct.rndis_wlan_private** %5, align 8
  %43 = getelementptr inbounds %struct.rndis_wlan_private, %struct.rndis_wlan_private* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* @modparam_roamdelta, align 4
  %45 = load %struct.rndis_wlan_private*, %struct.rndis_wlan_private** %5, align 8
  %46 = getelementptr inbounds %struct.rndis_wlan_private, %struct.rndis_wlan_private* %45, i32 0, i32 4
  store i32 %44, i32* %46, align 8
  %47 = load %struct.rndis_wlan_private*, %struct.rndis_wlan_private** %5, align 8
  %48 = getelementptr inbounds %struct.rndis_wlan_private, %struct.rndis_wlan_private* %47, i32 0, i32 6
  %49 = load i8**, i8*** %48, align 8
  %50 = getelementptr inbounds i8*, i8** %49, i64 0
  %51 = load i8*, i8** %50, align 8
  %52 = call i8* @toupper(i8* %51)
  %53 = load %struct.rndis_wlan_private*, %struct.rndis_wlan_private** %5, align 8
  %54 = getelementptr inbounds %struct.rndis_wlan_private, %struct.rndis_wlan_private* %53, i32 0, i32 6
  %55 = load i8**, i8*** %54, align 8
  %56 = getelementptr inbounds i8*, i8** %55, i64 0
  store i8* %52, i8** %56, align 8
  %57 = load %struct.rndis_wlan_private*, %struct.rndis_wlan_private** %5, align 8
  %58 = getelementptr inbounds %struct.rndis_wlan_private, %struct.rndis_wlan_private* %57, i32 0, i32 6
  %59 = load i8**, i8*** %58, align 8
  %60 = getelementptr inbounds i8*, i8** %59, i64 1
  %61 = load i8*, i8** %60, align 8
  %62 = call i8* @toupper(i8* %61)
  %63 = load %struct.rndis_wlan_private*, %struct.rndis_wlan_private** %5, align 8
  %64 = getelementptr inbounds %struct.rndis_wlan_private, %struct.rndis_wlan_private* %63, i32 0, i32 6
  %65 = load i8**, i8*** %64, align 8
  %66 = getelementptr inbounds i8*, i8** %65, i64 1
  store i8* %62, i8** %66, align 8
  %67 = load %struct.rndis_wlan_private*, %struct.rndis_wlan_private** %5, align 8
  %68 = getelementptr inbounds %struct.rndis_wlan_private, %struct.rndis_wlan_private* %67, i32 0, i32 6
  %69 = load i8**, i8*** %68, align 8
  %70 = call i32 @strcmp(i8** %69, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %77, label %72

72:                                               ; preds = %2
  %73 = load %struct.rndis_wlan_private*, %struct.rndis_wlan_private** %5, align 8
  %74 = getelementptr inbounds %struct.rndis_wlan_private, %struct.rndis_wlan_private* %73, i32 0, i32 6
  %75 = load i8**, i8*** %74, align 8
  %76 = call i32 @strcpy(i8** %75, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %77

77:                                               ; preds = %72, %2
  %78 = load %struct.rndis_wlan_private*, %struct.rndis_wlan_private** %5, align 8
  %79 = getelementptr inbounds %struct.rndis_wlan_private, %struct.rndis_wlan_private* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %77
  %83 = load %struct.rndis_wlan_private*, %struct.rndis_wlan_private** %5, align 8
  %84 = getelementptr inbounds %struct.rndis_wlan_private, %struct.rndis_wlan_private* %83, i32 0, i32 1
  store i32 0, i32* %84, align 4
  br label %94

85:                                               ; preds = %77
  %86 = load %struct.rndis_wlan_private*, %struct.rndis_wlan_private** %5, align 8
  %87 = getelementptr inbounds %struct.rndis_wlan_private, %struct.rndis_wlan_private* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = icmp sgt i32 %88, 2
  br i1 %89, label %90, label %93

90:                                               ; preds = %85
  %91 = load %struct.rndis_wlan_private*, %struct.rndis_wlan_private** %5, align 8
  %92 = getelementptr inbounds %struct.rndis_wlan_private, %struct.rndis_wlan_private* %91, i32 0, i32 1
  store i32 2, i32* %92, align 4
  br label %93

93:                                               ; preds = %90, %85
  br label %94

94:                                               ; preds = %93, %82
  %95 = load %struct.rndis_wlan_private*, %struct.rndis_wlan_private** %5, align 8
  %96 = getelementptr inbounds %struct.rndis_wlan_private, %struct.rndis_wlan_private* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %94
  %100 = load %struct.rndis_wlan_private*, %struct.rndis_wlan_private** %5, align 8
  %101 = getelementptr inbounds %struct.rndis_wlan_private, %struct.rndis_wlan_private* %100, i32 0, i32 2
  store i32 0, i32* %101, align 8
  br label %111

102:                                              ; preds = %94
  %103 = load %struct.rndis_wlan_private*, %struct.rndis_wlan_private** %5, align 8
  %104 = getelementptr inbounds %struct.rndis_wlan_private, %struct.rndis_wlan_private* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = icmp sgt i32 %105, 3
  br i1 %106, label %107, label %110

107:                                              ; preds = %102
  %108 = load %struct.rndis_wlan_private*, %struct.rndis_wlan_private** %5, align 8
  %109 = getelementptr inbounds %struct.rndis_wlan_private, %struct.rndis_wlan_private* %108, i32 0, i32 2
  store i32 3, i32* %109, align 8
  br label %110

110:                                              ; preds = %107, %102
  br label %111

111:                                              ; preds = %110, %99
  %112 = load %struct.rndis_wlan_private*, %struct.rndis_wlan_private** %5, align 8
  %113 = getelementptr inbounds %struct.rndis_wlan_private, %struct.rndis_wlan_private* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 4
  %115 = icmp slt i32 %114, -80
  br i1 %115, label %116, label %119

116:                                              ; preds = %111
  %117 = load %struct.rndis_wlan_private*, %struct.rndis_wlan_private** %5, align 8
  %118 = getelementptr inbounds %struct.rndis_wlan_private, %struct.rndis_wlan_private* %117, i32 0, i32 3
  store i32 -80, i32* %118, align 4
  br label %128

119:                                              ; preds = %111
  %120 = load %struct.rndis_wlan_private*, %struct.rndis_wlan_private** %5, align 8
  %121 = getelementptr inbounds %struct.rndis_wlan_private, %struct.rndis_wlan_private* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 4
  %123 = icmp sgt i32 %122, -60
  br i1 %123, label %124, label %127

124:                                              ; preds = %119
  %125 = load %struct.rndis_wlan_private*, %struct.rndis_wlan_private** %5, align 8
  %126 = getelementptr inbounds %struct.rndis_wlan_private, %struct.rndis_wlan_private* %125, i32 0, i32 3
  store i32 -60, i32* %126, align 4
  br label %127

127:                                              ; preds = %124, %119
  br label %128

128:                                              ; preds = %127, %116
  %129 = load %struct.rndis_wlan_private*, %struct.rndis_wlan_private** %5, align 8
  %130 = getelementptr inbounds %struct.rndis_wlan_private, %struct.rndis_wlan_private* %129, i32 0, i32 4
  %131 = load i32, i32* %130, align 8
  %132 = icmp slt i32 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %128
  %134 = load %struct.rndis_wlan_private*, %struct.rndis_wlan_private** %5, align 8
  %135 = getelementptr inbounds %struct.rndis_wlan_private, %struct.rndis_wlan_private* %134, i32 0, i32 4
  store i32 0, i32* %135, align 8
  br label %145

136:                                              ; preds = %128
  %137 = load %struct.rndis_wlan_private*, %struct.rndis_wlan_private** %5, align 8
  %138 = getelementptr inbounds %struct.rndis_wlan_private, %struct.rndis_wlan_private* %137, i32 0, i32 4
  %139 = load i32, i32* %138, align 8
  %140 = icmp sgt i32 %139, 2
  br i1 %140, label %141, label %144

141:                                              ; preds = %136
  %142 = load %struct.rndis_wlan_private*, %struct.rndis_wlan_private** %5, align 8
  %143 = getelementptr inbounds %struct.rndis_wlan_private, %struct.rndis_wlan_private* %142, i32 0, i32 4
  store i32 2, i32* %143, align 8
  br label %144

144:                                              ; preds = %141, %136
  br label %145

145:                                              ; preds = %144, %133
  %146 = load i32, i32* @modparam_workaround_interval, align 4
  %147 = icmp slt i32 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %145
  %149 = load %struct.rndis_wlan_private*, %struct.rndis_wlan_private** %5, align 8
  %150 = getelementptr inbounds %struct.rndis_wlan_private, %struct.rndis_wlan_private* %149, i32 0, i32 5
  store i32 500, i32* %150, align 4
  br label %155

151:                                              ; preds = %145
  %152 = load i32, i32* @modparam_workaround_interval, align 4
  %153 = load %struct.rndis_wlan_private*, %struct.rndis_wlan_private** %5, align 8
  %154 = getelementptr inbounds %struct.rndis_wlan_private, %struct.rndis_wlan_private* %153, i32 0, i32 5
  store i32 %152, i32* %154, align 4
  br label %155

155:                                              ; preds = %151, %148
  ret void
}

declare dso_local %struct.rndis_wlan_private* @get_rndis_wlan_priv(%struct.usbnet*) #1

declare dso_local i8* @toupper(i8*) #1

declare dso_local i32 @strcmp(i8**, i8*) #1

declare dso_local i32 @strcpy(i8**, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
