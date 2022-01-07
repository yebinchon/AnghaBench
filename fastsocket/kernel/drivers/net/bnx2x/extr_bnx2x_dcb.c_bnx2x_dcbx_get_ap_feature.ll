; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_dcb.c_bnx2x_dcbx_get_ap_feature.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_dcb.c_bnx2x_dcbx_get_ap_feature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64*, i32 }
%struct.dcbx_app_priority_feature = type { i64, %struct.dcbx_app_priority_entry*, i64 }
%struct.dcbx_app_priority_entry = type { i64, i64, i32 }

@DCBX_LOCAL_APP_ERROR = common dso_local global i32 0, align 4
@BNX2X_MSG_DCB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"DCBX_LOCAL_APP_ERROR\0A\00", align 1
@DCBX_LOCAL_APP_MISMATCH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"DCBX_LOCAL_APP_MISMATCH\0A\00", align 1
@DCBX_REMOTE_APP_TLV_NOT_FOUND = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"DCBX_REMOTE_APP_TLV_NOT_FOUND\0A\00", align 1
@LLFC_DRIVER_TRAFFIC_TYPE_MAX = common dso_local global i64 0, align 8
@MAX_PFC_PRIORITIES = common dso_local global i64 0, align 8
@LLFC_TRAFFIC_TYPE_NW = common dso_local global i64 0, align 8
@DCBX_MAX_APP_PROTOCOL = common dso_local global i64 0, align 8
@DCBX_APP_SF_ETH_TYPE = common dso_local global i32 0, align 4
@ETH_TYPE_FCOE = common dso_local global i64 0, align 8
@LLFC_TRAFFIC_TYPE_FCOE = common dso_local global i32 0, align 4
@DCBX_APP_SF_PORT = common dso_local global i32 0, align 4
@TCP_PORT_ISCSI = common dso_local global i64 0, align 8
@LLFC_TRAFFIC_TYPE_ISCSI = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"DCBX_LOCAL_APP_DISABLED\0A\00", align 1
@INVALID_TRAFFIC_TYPE_PRIORITY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*, %struct.dcbx_app_priority_feature*, i64)* @bnx2x_dcbx_get_ap_feature to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_dcbx_get_ap_feature(%struct.bnx2x* %0, %struct.dcbx_app_priority_feature* %1, i64 %2) #0 {
  %4 = alloca %struct.bnx2x*, align 8
  %5 = alloca %struct.dcbx_app_priority_feature*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %struct.dcbx_app_priority_entry*, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %4, align 8
  store %struct.dcbx_app_priority_feature* %1, %struct.dcbx_app_priority_feature** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %11 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i64*, i64** %13, align 8
  store i64* %14, i64** %8, align 8
  %15 = load i64, i64* %6, align 8
  %16 = load i32, i32* @DCBX_LOCAL_APP_ERROR, align 4
  %17 = call i64 @GET_FLAGS(i64 %15, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* @BNX2X_MSG_DCB, align 4
  %21 = call i32 @DP(i32 %20, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %19, %3
  %23 = load i64, i64* %6, align 8
  %24 = load i32, i32* @DCBX_LOCAL_APP_MISMATCH, align 4
  %25 = call i64 @GET_FLAGS(i64 %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load i32, i32* @BNX2X_MSG_DCB, align 4
  %29 = call i32 @DP(i32 %28, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %30

30:                                               ; preds = %27, %22
  %31 = load i64, i64* %6, align 8
  %32 = load i32, i32* @DCBX_REMOTE_APP_TLV_NOT_FOUND, align 4
  %33 = call i64 @GET_FLAGS(i64 %31, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i32, i32* @BNX2X_MSG_DCB, align 4
  %37 = call i32 @DP(i32 %36, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %38

38:                                               ; preds = %35, %30
  %39 = load %struct.dcbx_app_priority_feature*, %struct.dcbx_app_priority_feature** %5, align 8
  %40 = getelementptr inbounds %struct.dcbx_app_priority_feature, %struct.dcbx_app_priority_feature* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %146

43:                                               ; preds = %38
  %44 = load i64, i64* %6, align 8
  %45 = load i32, i32* @DCBX_LOCAL_APP_ERROR, align 4
  %46 = load i32, i32* @DCBX_LOCAL_APP_MISMATCH, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @DCBX_REMOTE_APP_TLV_NOT_FOUND, align 4
  %49 = or i32 %47, %48
  %50 = call i64 @GET_FLAGS(i64 %44, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %146, label %52

52:                                               ; preds = %43
  %53 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %54 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  store i32 1, i32* %56, align 8
  store i64 0, i64* %7, align 8
  br label %57

57:                                               ; preds = %65, %52
  %58 = load i64, i64* %7, align 8
  %59 = load i64, i64* @LLFC_DRIVER_TRAFFIC_TYPE_MAX, align 8
  %60 = icmp ult i64 %58, %59
  br i1 %60, label %61, label %68

61:                                               ; preds = %57
  %62 = load i64*, i64** %8, align 8
  %63 = load i64, i64* %7, align 8
  %64 = getelementptr inbounds i64, i64* %62, i64 %63
  store i64 0, i64* %64, align 8
  br label %65

65:                                               ; preds = %61
  %66 = load i64, i64* %7, align 8
  %67 = add i64 %66, 1
  store i64 %67, i64* %7, align 8
  br label %57

68:                                               ; preds = %57
  %69 = load %struct.dcbx_app_priority_feature*, %struct.dcbx_app_priority_feature** %5, align 8
  %70 = getelementptr inbounds %struct.dcbx_app_priority_feature, %struct.dcbx_app_priority_feature* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @MAX_PFC_PRIORITIES, align 8
  %73 = icmp slt i64 %71, %72
  br i1 %73, label %74, label %81

74:                                               ; preds = %68
  %75 = load %struct.dcbx_app_priority_feature*, %struct.dcbx_app_priority_feature** %5, align 8
  %76 = getelementptr inbounds %struct.dcbx_app_priority_feature, %struct.dcbx_app_priority_feature* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64*, i64** %8, align 8
  %79 = load i64, i64* @LLFC_TRAFFIC_TYPE_NW, align 8
  %80 = getelementptr inbounds i64, i64* %78, i64 %79
  store i64 %77, i64* %80, align 8
  br label %81

81:                                               ; preds = %74, %68
  store i64 0, i64* %7, align 8
  br label %82

82:                                               ; preds = %142, %81
  %83 = load i64, i64* %7, align 8
  %84 = load i64, i64* @DCBX_MAX_APP_PROTOCOL, align 8
  %85 = icmp ult i64 %83, %84
  br i1 %85, label %86, label %145

86:                                               ; preds = %82
  %87 = load %struct.dcbx_app_priority_feature*, %struct.dcbx_app_priority_feature** %5, align 8
  %88 = getelementptr inbounds %struct.dcbx_app_priority_feature, %struct.dcbx_app_priority_feature* %87, i32 0, i32 1
  %89 = load %struct.dcbx_app_priority_entry*, %struct.dcbx_app_priority_entry** %88, align 8
  store %struct.dcbx_app_priority_entry* %89, %struct.dcbx_app_priority_entry** %9, align 8
  %90 = load %struct.dcbx_app_priority_entry*, %struct.dcbx_app_priority_entry** %9, align 8
  %91 = load i64, i64* %7, align 8
  %92 = getelementptr inbounds %struct.dcbx_app_priority_entry, %struct.dcbx_app_priority_entry* %90, i64 %91
  %93 = getelementptr inbounds %struct.dcbx_app_priority_entry, %struct.dcbx_app_priority_entry* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i32, i32* @DCBX_APP_SF_ETH_TYPE, align 4
  %96 = call i64 @GET_FLAGS(i64 %94, i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %115

98:                                               ; preds = %86
  %99 = load i64, i64* @ETH_TYPE_FCOE, align 8
  %100 = load %struct.dcbx_app_priority_entry*, %struct.dcbx_app_priority_entry** %9, align 8
  %101 = load i64, i64* %7, align 8
  %102 = getelementptr inbounds %struct.dcbx_app_priority_entry, %struct.dcbx_app_priority_entry* %100, i64 %101
  %103 = getelementptr inbounds %struct.dcbx_app_priority_entry, %struct.dcbx_app_priority_entry* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = icmp eq i64 %99, %104
  br i1 %105, label %106, label %115

106:                                              ; preds = %98
  %107 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %108 = load %struct.dcbx_app_priority_entry*, %struct.dcbx_app_priority_entry** %9, align 8
  %109 = load i64, i64* %7, align 8
  %110 = getelementptr inbounds %struct.dcbx_app_priority_entry, %struct.dcbx_app_priority_entry* %108, i64 %109
  %111 = getelementptr inbounds %struct.dcbx_app_priority_entry, %struct.dcbx_app_priority_entry* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @LLFC_TRAFFIC_TYPE_FCOE, align 4
  %114 = call i32 @bnx2x_dcbx_get_ap_priority(%struct.bnx2x* %107, i32 %112, i32 %113)
  br label %115

115:                                              ; preds = %106, %98, %86
  %116 = load %struct.dcbx_app_priority_entry*, %struct.dcbx_app_priority_entry** %9, align 8
  %117 = load i64, i64* %7, align 8
  %118 = getelementptr inbounds %struct.dcbx_app_priority_entry, %struct.dcbx_app_priority_entry* %116, i64 %117
  %119 = getelementptr inbounds %struct.dcbx_app_priority_entry, %struct.dcbx_app_priority_entry* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i32, i32* @DCBX_APP_SF_PORT, align 4
  %122 = call i64 @GET_FLAGS(i64 %120, i32 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %141

124:                                              ; preds = %115
  %125 = load i64, i64* @TCP_PORT_ISCSI, align 8
  %126 = load %struct.dcbx_app_priority_entry*, %struct.dcbx_app_priority_entry** %9, align 8
  %127 = load i64, i64* %7, align 8
  %128 = getelementptr inbounds %struct.dcbx_app_priority_entry, %struct.dcbx_app_priority_entry* %126, i64 %127
  %129 = getelementptr inbounds %struct.dcbx_app_priority_entry, %struct.dcbx_app_priority_entry* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = icmp eq i64 %125, %130
  br i1 %131, label %132, label %141

132:                                              ; preds = %124
  %133 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %134 = load %struct.dcbx_app_priority_entry*, %struct.dcbx_app_priority_entry** %9, align 8
  %135 = load i64, i64* %7, align 8
  %136 = getelementptr inbounds %struct.dcbx_app_priority_entry, %struct.dcbx_app_priority_entry* %134, i64 %135
  %137 = getelementptr inbounds %struct.dcbx_app_priority_entry, %struct.dcbx_app_priority_entry* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @LLFC_TRAFFIC_TYPE_ISCSI, align 4
  %140 = call i32 @bnx2x_dcbx_get_ap_priority(%struct.bnx2x* %133, i32 %138, i32 %139)
  br label %141

141:                                              ; preds = %132, %124, %115
  br label %142

142:                                              ; preds = %141
  %143 = load i64, i64* %7, align 8
  %144 = add i64 %143, 1
  store i64 %144, i64* %7, align 8
  br label %82

145:                                              ; preds = %82
  br label %166

146:                                              ; preds = %43, %38
  %147 = load i32, i32* @BNX2X_MSG_DCB, align 4
  %148 = call i32 @DP(i32 %147, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %149 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %150 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i32 0, i32 1
  store i32 0, i32* %152, align 8
  store i64 0, i64* %7, align 8
  br label %153

153:                                              ; preds = %162, %146
  %154 = load i64, i64* %7, align 8
  %155 = load i64, i64* @LLFC_DRIVER_TRAFFIC_TYPE_MAX, align 8
  %156 = icmp ult i64 %154, %155
  br i1 %156, label %157, label %165

157:                                              ; preds = %153
  %158 = load i64, i64* @INVALID_TRAFFIC_TYPE_PRIORITY, align 8
  %159 = load i64*, i64** %8, align 8
  %160 = load i64, i64* %7, align 8
  %161 = getelementptr inbounds i64, i64* %159, i64 %160
  store i64 %158, i64* %161, align 8
  br label %162

162:                                              ; preds = %157
  %163 = load i64, i64* %7, align 8
  %164 = add i64 %163, 1
  store i64 %164, i64* %7, align 8
  br label %153

165:                                              ; preds = %153
  br label %166

166:                                              ; preds = %165, %145
  ret void
}

declare dso_local i64 @GET_FLAGS(i64, i32) #1

declare dso_local i32 @DP(i32, i8*) #1

declare dso_local i32 @bnx2x_dcbx_get_ap_priority(%struct.bnx2x*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
