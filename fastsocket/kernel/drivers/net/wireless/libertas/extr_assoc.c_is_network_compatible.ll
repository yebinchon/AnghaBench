; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_assoc.c_is_network_compatible.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_assoc.c_is_network_compatible.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lbs_private = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64, i64 }
%struct.bss_descriptor = type { i64, i32, i32*, i32* }

@LBS_DEB_SCAN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [90 x i8] c"is_network_compatible() WPA: wpa_ie 0x%x wpa2_ie 0x%x WEP %s WPA %s WPA2 %s privacy 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"e\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@WLAN_CAPABILITY_PRIVACY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [91 x i8] c"is_network_compatible() WPA2: wpa_ie 0x%x wpa2_ie 0x%x WEP %s WPA %s WPA2 %s privacy 0x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [76 x i8] c"is_network_compatible() dynamic WEP: wpa_ie 0x%x wpa2_ie 0x%x privacy 0x%x\0A\00", align 1
@.str.5 = private unnamed_addr constant [93 x i8] c"is_network_compatible() FAILED: wpa_ie 0x%x wpa2_ie 0x%x WEP %s WPA %s WPA2 %s privacy 0x%x\0A\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"matched: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lbs_private*, %struct.bss_descriptor*, i64)* @is_network_compatible to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_network_compatible(%struct.lbs_private* %0, %struct.bss_descriptor* %1, i64 %2) #0 {
  %4 = alloca %struct.lbs_private*, align 8
  %5 = alloca %struct.bss_descriptor*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.lbs_private* %0, %struct.lbs_private** %4, align 8
  store %struct.bss_descriptor* %1, %struct.bss_descriptor** %5, align 8
  store i64 %2, i64* %6, align 8
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* @LBS_DEB_SCAN, align 4
  %9 = call i32 @lbs_deb_enter(i32 %8)
  %10 = load %struct.bss_descriptor*, %struct.bss_descriptor** %5, align 8
  %11 = getelementptr inbounds %struct.bss_descriptor, %struct.bss_descriptor* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* %6, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  br label %184

16:                                               ; preds = %3
  %17 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %18 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %17, i32 0, i32 0
  %19 = load %struct.bss_descriptor*, %struct.bss_descriptor** %5, align 8
  %20 = call i32 @match_bss_no_security(%struct.TYPE_6__* %18, %struct.bss_descriptor* %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  br label %184

24:                                               ; preds = %16
  %25 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %26 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %25, i32 0, i32 0
  %27 = load %struct.bss_descriptor*, %struct.bss_descriptor** %5, align 8
  %28 = call i32 @match_bss_static_wep(%struct.TYPE_6__* %26, %struct.bss_descriptor* %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  br label %184

32:                                               ; preds = %24
  %33 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %34 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %33, i32 0, i32 0
  %35 = load %struct.bss_descriptor*, %struct.bss_descriptor** %5, align 8
  %36 = call i32 @match_bss_wpa(%struct.TYPE_6__* %34, %struct.bss_descriptor* %35)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %77

39:                                               ; preds = %32
  %40 = load %struct.bss_descriptor*, %struct.bss_descriptor** %5, align 8
  %41 = getelementptr inbounds %struct.bss_descriptor, %struct.bss_descriptor* %40, i32 0, i32 3
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.bss_descriptor*, %struct.bss_descriptor** %5, align 8
  %46 = getelementptr inbounds %struct.bss_descriptor, %struct.bss_descriptor* %45, i32 0, i32 2
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %51 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  %55 = zext i1 %54 to i64
  %56 = select i1 %54, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)
  %57 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %58 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  %62 = zext i1 %61 to i64
  %63 = select i1 %61, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)
  %64 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %65 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  %69 = zext i1 %68 to i64
  %70 = select i1 %68, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)
  %71 = load %struct.bss_descriptor*, %struct.bss_descriptor** %5, align 8
  %72 = getelementptr inbounds %struct.bss_descriptor, %struct.bss_descriptor* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @WLAN_CAPABILITY_PRIVACY, align 4
  %75 = and i32 %73, %74
  %76 = call i32 (i8*, i32, i32, ...) @lbs_deb_scan(i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str, i64 0, i64 0), i32 %44, i32 %49, i8* %56, i8* %63, i8* %70, i32 %75)
  br label %184

77:                                               ; preds = %32
  %78 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %79 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %78, i32 0, i32 0
  %80 = load %struct.bss_descriptor*, %struct.bss_descriptor** %5, align 8
  %81 = call i32 @match_bss_wpa2(%struct.TYPE_6__* %79, %struct.bss_descriptor* %80)
  store i32 %81, i32* %7, align 4
  %82 = load i32, i32* %7, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %122

84:                                               ; preds = %77
  %85 = load %struct.bss_descriptor*, %struct.bss_descriptor** %5, align 8
  %86 = getelementptr inbounds %struct.bss_descriptor, %struct.bss_descriptor* %85, i32 0, i32 3
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.bss_descriptor*, %struct.bss_descriptor** %5, align 8
  %91 = getelementptr inbounds %struct.bss_descriptor, %struct.bss_descriptor* %90, i32 0, i32 2
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 0
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %96 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  %100 = zext i1 %99 to i64
  %101 = select i1 %99, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)
  %102 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %103 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  %107 = zext i1 %106 to i64
  %108 = select i1 %106, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)
  %109 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %110 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  %114 = zext i1 %113 to i64
  %115 = select i1 %113, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)
  %116 = load %struct.bss_descriptor*, %struct.bss_descriptor** %5, align 8
  %117 = getelementptr inbounds %struct.bss_descriptor, %struct.bss_descriptor* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* @WLAN_CAPABILITY_PRIVACY, align 4
  %120 = and i32 %118, %119
  %121 = call i32 (i8*, i32, i32, ...) @lbs_deb_scan(i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.3, i64 0, i64 0), i32 %89, i32 %94, i8* %101, i8* %108, i8* %115, i32 %120)
  br label %184

122:                                              ; preds = %77
  %123 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %124 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %123, i32 0, i32 0
  %125 = load %struct.bss_descriptor*, %struct.bss_descriptor** %5, align 8
  %126 = call i32 @match_bss_dynamic_wep(%struct.TYPE_6__* %124, %struct.bss_descriptor* %125)
  store i32 %126, i32* %7, align 4
  %127 = load i32, i32* %7, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %146

129:                                              ; preds = %122
  %130 = load %struct.bss_descriptor*, %struct.bss_descriptor** %5, align 8
  %131 = getelementptr inbounds %struct.bss_descriptor, %struct.bss_descriptor* %130, i32 0, i32 3
  %132 = load i32*, i32** %131, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 0
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.bss_descriptor*, %struct.bss_descriptor** %5, align 8
  %136 = getelementptr inbounds %struct.bss_descriptor, %struct.bss_descriptor* %135, i32 0, i32 2
  %137 = load i32*, i32** %136, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 0
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.bss_descriptor*, %struct.bss_descriptor** %5, align 8
  %141 = getelementptr inbounds %struct.bss_descriptor, %struct.bss_descriptor* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* @WLAN_CAPABILITY_PRIVACY, align 4
  %144 = and i32 %142, %143
  %145 = call i32 (i8*, i32, i32, ...) @lbs_deb_scan(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.4, i64 0, i64 0), i32 %134, i32 %139, i32 %144)
  br label %184

146:                                              ; preds = %122
  %147 = load %struct.bss_descriptor*, %struct.bss_descriptor** %5, align 8
  %148 = getelementptr inbounds %struct.bss_descriptor, %struct.bss_descriptor* %147, i32 0, i32 3
  %149 = load i32*, i32** %148, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 0
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.bss_descriptor*, %struct.bss_descriptor** %5, align 8
  %153 = getelementptr inbounds %struct.bss_descriptor, %struct.bss_descriptor* %152, i32 0, i32 2
  %154 = load i32*, i32** %153, align 8
  %155 = getelementptr inbounds i32, i32* %154, i64 0
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %158 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 2
  %160 = load i64, i64* %159, align 8
  %161 = icmp ne i64 %160, 0
  %162 = zext i1 %161 to i64
  %163 = select i1 %161, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)
  %164 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %165 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 1
  %167 = load i64, i64* %166, align 8
  %168 = icmp ne i64 %167, 0
  %169 = zext i1 %168 to i64
  %170 = select i1 %168, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)
  %171 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %172 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = icmp ne i64 %174, 0
  %176 = zext i1 %175 to i64
  %177 = select i1 %175, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)
  %178 = load %struct.bss_descriptor*, %struct.bss_descriptor** %5, align 8
  %179 = getelementptr inbounds %struct.bss_descriptor, %struct.bss_descriptor* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 8
  %181 = load i32, i32* @WLAN_CAPABILITY_PRIVACY, align 4
  %182 = and i32 %180, %181
  %183 = call i32 (i8*, i32, i32, ...) @lbs_deb_scan(i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.5, i64 0, i64 0), i32 %151, i32 %156, i8* %163, i8* %170, i8* %177, i32 %182)
  br label %184

184:                                              ; preds = %146, %129, %84, %39, %31, %23, %15
  %185 = load i32, i32* @LBS_DEB_SCAN, align 4
  %186 = load i32, i32* %7, align 4
  %187 = call i32 @lbs_deb_leave_args(i32 %185, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32 %186)
  %188 = load i32, i32* %7, align 4
  ret i32 %188
}

declare dso_local i32 @lbs_deb_enter(i32) #1

declare dso_local i32 @match_bss_no_security(%struct.TYPE_6__*, %struct.bss_descriptor*) #1

declare dso_local i32 @match_bss_static_wep(%struct.TYPE_6__*, %struct.bss_descriptor*) #1

declare dso_local i32 @match_bss_wpa(%struct.TYPE_6__*, %struct.bss_descriptor*) #1

declare dso_local i32 @lbs_deb_scan(i8*, i32, i32, ...) #1

declare dso_local i32 @match_bss_wpa2(%struct.TYPE_6__*, %struct.bss_descriptor*) #1

declare dso_local i32 @match_bss_dynamic_wep(%struct.TYPE_6__*, %struct.bss_descriptor*) #1

declare dso_local i32 @lbs_deb_leave_args(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
