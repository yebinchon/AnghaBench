; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic79xx_proc.c_ahd_format_transinfo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic79xx_proc.c_ahd_format_transinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.info_str = type { i32 }
%struct.ahd_transinfo = type { i64, i64, i32, i32 }

@AHD_PERIOD_UNKNOWN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"Renegotiation Pending\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"%d.%03dMB/s transfers\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"%dKB/s transfers\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c" (%d.%03dMHz\00", align 1
@MSG_EXT_PPR_RD_STRM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c" RDSTRM\00", align 1
@MSG_EXT_PPR_DT_REQ = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"|DT\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c" DT\00", align 1
@MSG_EXT_PPR_IU_REQ = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [4 x i8] c"|IU\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c" IU\00", align 1
@MSG_EXT_PPR_RTI = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [5 x i8] c"|RTI\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c" RTI\00", align 1
@MSG_EXT_PPR_QAS_REQ = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [5 x i8] c"|QAS\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c" QAS\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c" (\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"%dbit)\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.info_str*, %struct.ahd_transinfo*)* @ahd_format_transinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahd_format_transinfo(%struct.info_str* %0, %struct.ahd_transinfo* %1) #0 {
  %3 = alloca %struct.info_str*, align 8
  %4 = alloca %struct.ahd_transinfo*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.info_str* %0, %struct.info_str** %3, align 8
  store %struct.ahd_transinfo* %1, %struct.ahd_transinfo** %4, align 8
  %9 = load %struct.ahd_transinfo*, %struct.ahd_transinfo** %4, align 8
  %10 = getelementptr inbounds %struct.ahd_transinfo, %struct.ahd_transinfo* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @AHD_PERIOD_UNKNOWN, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load %struct.info_str*, %struct.info_str** %3, align 8
  %16 = call i32 (%struct.info_str*, i8*, ...) @copy_info(%struct.info_str* %15, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %167

17:                                               ; preds = %2
  store i32 3300, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %18 = load %struct.ahd_transinfo*, %struct.ahd_transinfo** %4, align 8
  %19 = getelementptr inbounds %struct.ahd_transinfo, %struct.ahd_transinfo* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %17
  %23 = load %struct.ahd_transinfo*, %struct.ahd_transinfo** %4, align 8
  %24 = getelementptr inbounds %struct.ahd_transinfo, %struct.ahd_transinfo* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @ahd_calc_syncsrate(i64 %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %5, align 4
  br label %28

28:                                               ; preds = %22, %17
  %29 = load %struct.ahd_transinfo*, %struct.ahd_transinfo** %4, align 8
  %30 = getelementptr inbounds %struct.ahd_transinfo, %struct.ahd_transinfo* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = shl i32 1, %31
  %33 = load i32, i32* %5, align 4
  %34 = mul nsw i32 %33, %32
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = sdiv i32 %35, 1000
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %28
  %40 = load %struct.info_str*, %struct.info_str** %3, align 8
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %5, align 4
  %43 = srem i32 %42, 1000
  %44 = call i32 (%struct.info_str*, i8*, ...) @copy_info(%struct.info_str* %40, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %41, i32 %43)
  br label %49

45:                                               ; preds = %28
  %46 = load %struct.info_str*, %struct.info_str** %3, align 8
  %47 = load i32, i32* %5, align 4
  %48 = call i32 (%struct.info_str*, i8*, ...) @copy_info(%struct.info_str* %46, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %47)
  br label %49

49:                                               ; preds = %45, %39
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %135

52:                                               ; preds = %49
  store i32 0, i32* %8, align 4
  %53 = load %struct.info_str*, %struct.info_str** %3, align 8
  %54 = load i32, i32* %6, align 4
  %55 = sdiv i32 %54, 1000
  %56 = load i32, i32* %6, align 4
  %57 = srem i32 %56, 1000
  %58 = call i32 (%struct.info_str*, i8*, ...) @copy_info(%struct.info_str* %53, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %55, i32 %57)
  %59 = load %struct.ahd_transinfo*, %struct.ahd_transinfo** %4, align 8
  %60 = getelementptr inbounds %struct.ahd_transinfo, %struct.ahd_transinfo* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @MSG_EXT_PPR_RD_STRM, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %52
  %66 = load %struct.info_str*, %struct.info_str** %3, align 8
  %67 = call i32 (%struct.info_str*, i8*, ...) @copy_info(%struct.info_str* %66, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %68 = load i32, i32* %8, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %8, align 4
  br label %70

70:                                               ; preds = %65, %52
  %71 = load %struct.ahd_transinfo*, %struct.ahd_transinfo** %4, align 8
  %72 = getelementptr inbounds %struct.ahd_transinfo, %struct.ahd_transinfo* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @MSG_EXT_PPR_DT_REQ, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %86

77:                                               ; preds = %70
  %78 = load %struct.info_str*, %struct.info_str** %3, align 8
  %79 = load i32, i32* %8, align 4
  %80 = icmp ne i32 %79, 0
  %81 = zext i1 %80 to i64
  %82 = select i1 %80, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0)
  %83 = call i32 (%struct.info_str*, i8*, ...) @copy_info(%struct.info_str* %78, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* %82)
  %84 = load i32, i32* %8, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %8, align 4
  br label %86

86:                                               ; preds = %77, %70
  %87 = load %struct.ahd_transinfo*, %struct.ahd_transinfo** %4, align 8
  %88 = getelementptr inbounds %struct.ahd_transinfo, %struct.ahd_transinfo* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @MSG_EXT_PPR_IU_REQ, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %102

93:                                               ; preds = %86
  %94 = load %struct.info_str*, %struct.info_str** %3, align 8
  %95 = load i32, i32* %8, align 4
  %96 = icmp ne i32 %95, 0
  %97 = zext i1 %96 to i64
  %98 = select i1 %96, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0)
  %99 = call i32 (%struct.info_str*, i8*, ...) @copy_info(%struct.info_str* %94, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* %98)
  %100 = load i32, i32* %8, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %8, align 4
  br label %102

102:                                              ; preds = %93, %86
  %103 = load %struct.ahd_transinfo*, %struct.ahd_transinfo** %4, align 8
  %104 = getelementptr inbounds %struct.ahd_transinfo, %struct.ahd_transinfo* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @MSG_EXT_PPR_RTI, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %118

109:                                              ; preds = %102
  %110 = load %struct.info_str*, %struct.info_str** %3, align 8
  %111 = load i32, i32* %8, align 4
  %112 = icmp ne i32 %111, 0
  %113 = zext i1 %112 to i64
  %114 = select i1 %112, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0)
  %115 = call i32 (%struct.info_str*, i8*, ...) @copy_info(%struct.info_str* %110, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* %114)
  %116 = load i32, i32* %8, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %8, align 4
  br label %118

118:                                              ; preds = %109, %102
  %119 = load %struct.ahd_transinfo*, %struct.ahd_transinfo** %4, align 8
  %120 = getelementptr inbounds %struct.ahd_transinfo, %struct.ahd_transinfo* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @MSG_EXT_PPR_QAS_REQ, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %134

125:                                              ; preds = %118
  %126 = load %struct.info_str*, %struct.info_str** %3, align 8
  %127 = load i32, i32* %8, align 4
  %128 = icmp ne i32 %127, 0
  %129 = zext i1 %128 to i64
  %130 = select i1 %128, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0)
  %131 = call i32 (%struct.info_str*, i8*, ...) @copy_info(%struct.info_str* %126, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* %130)
  %132 = load i32, i32* %8, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %8, align 4
  br label %134

134:                                              ; preds = %125, %118
  br label %135

135:                                              ; preds = %134, %49
  %136 = load %struct.ahd_transinfo*, %struct.ahd_transinfo** %4, align 8
  %137 = getelementptr inbounds %struct.ahd_transinfo, %struct.ahd_transinfo* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = icmp sgt i32 %138, 0
  br i1 %139, label %140, label %157

140:                                              ; preds = %135
  %141 = load i32, i32* %6, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %140
  %144 = load %struct.info_str*, %struct.info_str** %3, align 8
  %145 = call i32 (%struct.info_str*, i8*, ...) @copy_info(%struct.info_str* %144, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0))
  br label %149

146:                                              ; preds = %140
  %147 = load %struct.info_str*, %struct.info_str** %3, align 8
  %148 = call i32 (%struct.info_str*, i8*, ...) @copy_info(%struct.info_str* %147, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0))
  br label %149

149:                                              ; preds = %146, %143
  %150 = load %struct.info_str*, %struct.info_str** %3, align 8
  %151 = load %struct.ahd_transinfo*, %struct.ahd_transinfo** %4, align 8
  %152 = getelementptr inbounds %struct.ahd_transinfo, %struct.ahd_transinfo* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = shl i32 1, %153
  %155 = mul nsw i32 8, %154
  %156 = call i32 (%struct.info_str*, i8*, ...) @copy_info(%struct.info_str* %150, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0), i32 %155)
  br label %164

157:                                              ; preds = %135
  %158 = load i32, i32* %6, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %163

160:                                              ; preds = %157
  %161 = load %struct.info_str*, %struct.info_str** %3, align 8
  %162 = call i32 (%struct.info_str*, i8*, ...) @copy_info(%struct.info_str* %161, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0))
  br label %163

163:                                              ; preds = %160, %157
  br label %164

164:                                              ; preds = %163, %149
  %165 = load %struct.info_str*, %struct.info_str** %3, align 8
  %166 = call i32 (%struct.info_str*, i8*, ...) @copy_info(%struct.info_str* %165, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0))
  br label %167

167:                                              ; preds = %164, %14
  ret void
}

declare dso_local i32 @copy_info(%struct.info_str*, i8*, ...) #1

declare dso_local i32 @ahd_calc_syncsrate(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
