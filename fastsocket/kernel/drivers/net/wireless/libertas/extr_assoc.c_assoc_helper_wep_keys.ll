; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_assoc.c_assoc_helper_wep_keys.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_assoc.c_assoc_helper_wep_keys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lbs_private = type { i32, i32, i32*, i32 }
%struct.assoc_request = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }

@LBS_DEB_ASSOC = common dso_local global i32 0, align 4
@CMD_ACT_ADD = common dso_local global i32 0, align 4
@CMD_ACT_REMOVE = common dso_local global i32 0, align 4
@CMD_ACT_MAC_WEP_ENABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"ret %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lbs_private*, %struct.assoc_request*)* @assoc_helper_wep_keys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @assoc_helper_wep_keys(%struct.lbs_private* %0, %struct.assoc_request* %1) #0 {
  %3 = alloca %struct.lbs_private*, align 8
  %4 = alloca %struct.assoc_request*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.lbs_private* %0, %struct.lbs_private** %3, align 8
  store %struct.assoc_request* %1, %struct.assoc_request** %4, align 8
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* @LBS_DEB_ASSOC, align 4
  %8 = call i32 @lbs_deb_enter(i32 %7)
  %9 = load %struct.assoc_request*, %struct.assoc_request** %4, align 8
  %10 = getelementptr inbounds %struct.assoc_request, %struct.assoc_request* %9, i32 0, i32 1
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i64 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %40, label %16

16:                                               ; preds = %2
  %17 = load %struct.assoc_request*, %struct.assoc_request** %4, align 8
  %18 = getelementptr inbounds %struct.assoc_request, %struct.assoc_request* %17, i32 0, i32 1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i64 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %40, label %24

24:                                               ; preds = %16
  %25 = load %struct.assoc_request*, %struct.assoc_request** %4, align 8
  %26 = getelementptr inbounds %struct.assoc_request, %struct.assoc_request* %25, i32 0, i32 1
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i64 2
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %40, label %32

32:                                               ; preds = %24
  %33 = load %struct.assoc_request*, %struct.assoc_request** %4, align 8
  %34 = getelementptr inbounds %struct.assoc_request, %struct.assoc_request* %33, i32 0, i32 1
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i64 3
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %32, %24, %16, %2
  %41 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %42 = load i32, i32* @CMD_ACT_ADD, align 4
  %43 = load %struct.assoc_request*, %struct.assoc_request** %4, align 8
  %44 = call i32 @lbs_cmd_802_11_set_wep(%struct.lbs_private* %41, i32 %42, %struct.assoc_request* %43)
  store i32 %44, i32* %6, align 4
  br label %50

45:                                               ; preds = %32
  %46 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %47 = load i32, i32* @CMD_ACT_REMOVE, align 4
  %48 = load %struct.assoc_request*, %struct.assoc_request** %4, align 8
  %49 = call i32 @lbs_cmd_802_11_set_wep(%struct.lbs_private* %46, i32 %47, %struct.assoc_request* %48)
  store i32 %49, i32* %6, align 4
  br label %50

50:                                               ; preds = %45, %40
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  br label %108

54:                                               ; preds = %50
  %55 = load %struct.assoc_request*, %struct.assoc_request** %4, align 8
  %56 = getelementptr inbounds %struct.assoc_request, %struct.assoc_request* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %54
  %61 = load i32, i32* @CMD_ACT_MAC_WEP_ENABLE, align 4
  %62 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %63 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = or i32 %64, %61
  store i32 %65, i32* %63, align 8
  br label %73

66:                                               ; preds = %54
  %67 = load i32, i32* @CMD_ACT_MAC_WEP_ENABLE, align 4
  %68 = xor i32 %67, -1
  %69 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %70 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = and i32 %71, %68
  store i32 %72, i32* %70, align 8
  br label %73

73:                                               ; preds = %66, %60
  %74 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %75 = call i32 @lbs_set_mac_control(%struct.lbs_private* %74)
  %76 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %77 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %76, i32 0, i32 0
  %78 = call i32 @mutex_lock(i32* %77)
  store i32 0, i32* %5, align 4
  br label %79

79:                                               ; preds = %96, %73
  %80 = load i32, i32* %5, align 4
  %81 = icmp slt i32 %80, 4
  br i1 %81, label %82, label %99

82:                                               ; preds = %79
  %83 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %84 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %83, i32 0, i32 2
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %5, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load %struct.assoc_request*, %struct.assoc_request** %4, align 8
  %90 = getelementptr inbounds %struct.assoc_request, %struct.assoc_request* %89, i32 0, i32 1
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %90, align 8
  %92 = load i32, i32* %5, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i64 %93
  %95 = call i32 @memcpy(i32* %88, %struct.TYPE_4__* %94, i32 4)
  br label %96

96:                                               ; preds = %82
  %97 = load i32, i32* %5, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %5, align 4
  br label %79

99:                                               ; preds = %79
  %100 = load %struct.assoc_request*, %struct.assoc_request** %4, align 8
  %101 = getelementptr inbounds %struct.assoc_request, %struct.assoc_request* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %104 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %103, i32 0, i32 1
  store i32 %102, i32* %104, align 4
  %105 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %106 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %105, i32 0, i32 0
  %107 = call i32 @mutex_unlock(i32* %106)
  br label %108

108:                                              ; preds = %99, %53
  %109 = load i32, i32* @LBS_DEB_ASSOC, align 4
  %110 = load i32, i32* %6, align 4
  %111 = call i32 @lbs_deb_leave_args(i32 %109, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %110)
  %112 = load i32, i32* %6, align 4
  ret i32 %112
}

declare dso_local i32 @lbs_deb_enter(i32) #1

declare dso_local i32 @lbs_cmd_802_11_set_wep(%struct.lbs_private*, i32, %struct.assoc_request*) #1

declare dso_local i32 @lbs_set_mac_control(%struct.lbs_private*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @memcpy(i32*, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @lbs_deb_leave_args(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
