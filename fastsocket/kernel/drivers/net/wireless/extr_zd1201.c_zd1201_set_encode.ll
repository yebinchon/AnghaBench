; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_zd1201.c_zd1201_set_encode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_zd1201.c_zd1201_set_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%struct.iw_point = type { i32, i32 }
%struct.zd1201 = type { i32, i32, i32*, i32* }

@ZD1201_MAXKEYLEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IW_ENCODE_INDEX = common dso_local global i32 0, align 4
@ZD1201_RID_CNFDEFAULTKEYID = common dso_local global i32 0, align 4
@ZD1201_NUMKEYS = common dso_local global i16 0, align 2
@ZD1201_RID_CNFDEFAULTKEY0 = common dso_local global i16 0, align 2
@IW_ENCODE_DISABLED = common dso_local global i32 0, align 4
@IW_ENCODE_MODE = common dso_local global i32 0, align 4
@IW_ENCODE_RESTRICTED = common dso_local global i32 0, align 4
@ZD1201_RID_CNFWEBFLAGS = common dso_local global i32 0, align 4
@ZD1201_CNFAUTHENTICATION_SHAREDKEY = common dso_local global i16 0, align 2
@ZD1201_CNFAUTHENTICATION_OPENSYSTEM = common dso_local global i16 0, align 2
@ZD1201_RID_CNFAUTHENTICATION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %struct.iw_point*, i8*)* @zd1201_set_encode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zd1201_set_encode(%struct.net_device* %0, %struct.iw_request_info* %1, %struct.iw_point* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %struct.iw_point*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.zd1201*, align 8
  %11 = alloca i16, align 2
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %struct.iw_point* %2, %struct.iw_point** %8, align 8
  store i8* %3, i8** %9, align 8
  %14 = load %struct.net_device*, %struct.net_device** %6, align 8
  %15 = call %struct.zd1201* @netdev_priv(%struct.net_device* %14)
  store %struct.zd1201* %15, %struct.zd1201** %10, align 8
  %16 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %17 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @ZD1201_MAXKEYLEN, align 4
  %20 = icmp sgt i32 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %4
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %173

24:                                               ; preds = %4
  %25 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %26 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @IW_ENCODE_INDEX, align 4
  %29 = and i32 %27, %28
  %30 = sub nsw i32 %29, 1
  %31 = trunc i32 %30 to i16
  store i16 %31, i16* %11, align 2
  %32 = load i16, i16* %11, align 2
  %33 = sext i16 %32 to i32
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %35, label %44

35:                                               ; preds = %24
  %36 = load %struct.zd1201*, %struct.zd1201** %10, align 8
  %37 = load i32, i32* @ZD1201_RID_CNFDEFAULTKEYID, align 4
  %38 = call i32 @zd1201_getconfig16(%struct.zd1201* %36, i32 %37, i16* %11)
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %12, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load i32, i32* %12, align 4
  store i32 %42, i32* %5, align 4
  br label %173

43:                                               ; preds = %35
  br label %54

44:                                               ; preds = %24
  %45 = load %struct.zd1201*, %struct.zd1201** %10, align 8
  %46 = load i32, i32* @ZD1201_RID_CNFDEFAULTKEYID, align 4
  %47 = load i16, i16* %11, align 2
  %48 = call i32 @zd1201_setconfig16(%struct.zd1201* %45, i32 %46, i16 signext %47)
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* %12, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %44
  %52 = load i32, i32* %12, align 4
  store i32 %52, i32* %5, align 4
  br label %173

53:                                               ; preds = %44
  br label %54

54:                                               ; preds = %53, %43
  %55 = load i16, i16* %11, align 2
  %56 = sext i16 %55 to i32
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %64, label %58

58:                                               ; preds = %54
  %59 = load i16, i16* %11, align 2
  %60 = sext i16 %59 to i32
  %61 = load i16, i16* @ZD1201_NUMKEYS, align 2
  %62 = sext i16 %61 to i32
  %63 = icmp sge i32 %60, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %58, %54
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %5, align 4
  br label %173

67:                                               ; preds = %58
  %68 = load i16, i16* @ZD1201_RID_CNFDEFAULTKEY0, align 2
  %69 = sext i16 %68 to i32
  %70 = load i16, i16* %11, align 2
  %71 = sext i16 %70 to i32
  %72 = add nsw i32 %69, %71
  store i32 %72, i32* %13, align 4
  %73 = load %struct.zd1201*, %struct.zd1201** %10, align 8
  %74 = load i32, i32* %13, align 4
  %75 = load i8*, i8** %9, align 8
  %76 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %77 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @zd1201_setconfig(%struct.zd1201* %73, i32 %74, i8* %75, i32 %78, i32 1)
  store i32 %79, i32* %12, align 4
  %80 = load i32, i32* %12, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %67
  %83 = load i32, i32* %12, align 4
  store i32 %83, i32* %5, align 4
  br label %173

84:                                               ; preds = %67
  %85 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %86 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.zd1201*, %struct.zd1201** %10, align 8
  %89 = getelementptr inbounds %struct.zd1201, %struct.zd1201* %88, i32 0, i32 3
  %90 = load i32*, i32** %89, align 8
  %91 = load i16, i16* %11, align 2
  %92 = sext i16 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  store i32 %87, i32* %93, align 4
  %94 = load %struct.zd1201*, %struct.zd1201** %10, align 8
  %95 = getelementptr inbounds %struct.zd1201, %struct.zd1201* %94, i32 0, i32 2
  %96 = load i32*, i32** %95, align 8
  %97 = load i16, i16* %11, align 2
  %98 = sext i16 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = load i8*, i8** %9, align 8
  %102 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %103 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @memcpy(i32 %100, i8* %101, i32 %104)
  store i16 0, i16* %11, align 2
  %106 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %107 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @IW_ENCODE_DISABLED, align 4
  %110 = and i32 %108, %109
  %111 = load i32, i32* @IW_ENCODE_MODE, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %121, label %114

114:                                              ; preds = %84
  %115 = load i16, i16* %11, align 2
  %116 = sext i16 %115 to i32
  %117 = or i32 %116, 1
  %118 = trunc i32 %117 to i16
  store i16 %118, i16* %11, align 2
  %119 = load %struct.zd1201*, %struct.zd1201** %10, align 8
  %120 = getelementptr inbounds %struct.zd1201, %struct.zd1201* %119, i32 0, i32 0
  store i32 1, i32* %120, align 8
  br label %124

121:                                              ; preds = %84
  %122 = load %struct.zd1201*, %struct.zd1201** %10, align 8
  %123 = getelementptr inbounds %struct.zd1201, %struct.zd1201* %122, i32 0, i32 0
  store i32 0, i32* %123, align 8
  br label %124

124:                                              ; preds = %121, %114
  %125 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %126 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @IW_ENCODE_RESTRICTED, align 4
  %129 = and i32 %127, %128
  %130 = load i32, i32* @IW_ENCODE_MODE, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %140

133:                                              ; preds = %124
  %134 = load i16, i16* %11, align 2
  %135 = sext i16 %134 to i32
  %136 = or i32 %135, 2
  %137 = trunc i32 %136 to i16
  store i16 %137, i16* %11, align 2
  %138 = load %struct.zd1201*, %struct.zd1201** %10, align 8
  %139 = getelementptr inbounds %struct.zd1201, %struct.zd1201* %138, i32 0, i32 1
  store i32 1, i32* %139, align 4
  br label %143

140:                                              ; preds = %124
  %141 = load %struct.zd1201*, %struct.zd1201** %10, align 8
  %142 = getelementptr inbounds %struct.zd1201, %struct.zd1201* %141, i32 0, i32 1
  store i32 0, i32* %142, align 4
  br label %143

143:                                              ; preds = %140, %133
  %144 = load %struct.zd1201*, %struct.zd1201** %10, align 8
  %145 = load i32, i32* @ZD1201_RID_CNFWEBFLAGS, align 4
  %146 = load i16, i16* %11, align 2
  %147 = call i32 @zd1201_setconfig16(%struct.zd1201* %144, i32 %145, i16 signext %146)
  store i32 %147, i32* %12, align 4
  %148 = load i32, i32* %12, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %152

150:                                              ; preds = %143
  %151 = load i32, i32* %12, align 4
  store i32 %151, i32* %5, align 4
  br label %173

152:                                              ; preds = %143
  %153 = load %struct.zd1201*, %struct.zd1201** %10, align 8
  %154 = getelementptr inbounds %struct.zd1201, %struct.zd1201* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %159

157:                                              ; preds = %152
  %158 = load i16, i16* @ZD1201_CNFAUTHENTICATION_SHAREDKEY, align 2
  store i16 %158, i16* %11, align 2
  br label %161

159:                                              ; preds = %152
  %160 = load i16, i16* @ZD1201_CNFAUTHENTICATION_OPENSYSTEM, align 2
  store i16 %160, i16* %11, align 2
  br label %161

161:                                              ; preds = %159, %157
  %162 = load %struct.zd1201*, %struct.zd1201** %10, align 8
  %163 = load i32, i32* @ZD1201_RID_CNFAUTHENTICATION, align 4
  %164 = load i16, i16* %11, align 2
  %165 = call i32 @zd1201_setconfig16(%struct.zd1201* %162, i32 %163, i16 signext %164)
  store i32 %165, i32* %12, align 4
  %166 = load i32, i32* %12, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %170

168:                                              ; preds = %161
  %169 = load i32, i32* %12, align 4
  store i32 %169, i32* %5, align 4
  br label %173

170:                                              ; preds = %161
  %171 = load %struct.zd1201*, %struct.zd1201** %10, align 8
  %172 = call i32 @zd1201_mac_reset(%struct.zd1201* %171)
  store i32 %172, i32* %5, align 4
  br label %173

173:                                              ; preds = %170, %168, %150, %82, %64, %51, %41, %21
  %174 = load i32, i32* %5, align 4
  ret i32 %174
}

declare dso_local %struct.zd1201* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @zd1201_getconfig16(%struct.zd1201*, i32, i16*) #1

declare dso_local i32 @zd1201_setconfig16(%struct.zd1201*, i32, i16 signext) #1

declare dso_local i32 @zd1201_setconfig(%struct.zd1201*, i32, i8*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @zd1201_mac_reset(%struct.zd1201*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
