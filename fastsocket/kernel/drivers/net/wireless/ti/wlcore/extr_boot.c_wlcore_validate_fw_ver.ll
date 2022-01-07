; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_boot.c_wlcore_validate_fw_ver.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_boot.c_wlcore_validate_fw_ver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i64, i32*, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@WL12XX_FW_TYPE_MULTI = common dso_local global i64 0, align 8
@FW_VER_CHIP = common dso_local global i64 0, align 8
@WLCORE_FW_VER_IGNORE = common dso_local global i32 0, align 4
@FW_VER_IF_TYPE = common dso_local global i64 0, align 8
@FW_VER_SUBTYPE = common dso_local global i64 0, align 8
@FW_VER_MAJOR = common dso_local global i64 0, align 8
@FW_VER_MINOR = common dso_local global i64 0, align 8
@NUM_FW_VER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%s*.\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%s%u.\00", align 1
@.str.2 = private unnamed_addr constant [156 x i8] c"Your WiFi FW version (%u.%u.%u.%u.%u) is invalid.\0APlease use at least FW %s\0AYou can get the latest firmwares at:\0Agit://github.com/TI-OpenLink/firmwares.git\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wl1271*)* @wlcore_validate_fw_ver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wlcore_validate_fw_ver(%struct.wl1271* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wl1271*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca [32 x i8], align 16
  %7 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %3, align 8
  %8 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %9 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %8, i32 0, i32 3
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  store i32* %11, i32** %4, align 8
  %12 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %13 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @WL12XX_FW_TYPE_MULTI, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %19 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  br label %25

21:                                               ; preds = %1
  %22 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %23 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %22, i32 0, i32 2
  %24 = load i32*, i32** %23, align 8
  br label %25

25:                                               ; preds = %21, %17
  %26 = phi i32* [ %20, %17 ], [ %24, %21 ]
  store i32* %26, i32** %5, align 8
  %27 = bitcast [32 x i8]* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %27, i8 0, i64 32, i1 false)
  %28 = load i32*, i32** %5, align 8
  %29 = load i64, i64* @FW_VER_CHIP, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @WLCORE_FW_VER_IGNORE, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %45

34:                                               ; preds = %25
  %35 = load i32*, i32** %5, align 8
  %36 = load i64, i64* @FW_VER_CHIP, align 8
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = load i32*, i32** %4, align 8
  %40 = load i64, i64* @FW_VER_CHIP, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %38, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %34
  br label %135

45:                                               ; preds = %34, %25
  %46 = load i32*, i32** %5, align 8
  %47 = load i64, i64* @FW_VER_IF_TYPE, align 8
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @WLCORE_FW_VER_IGNORE, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %63

52:                                               ; preds = %45
  %53 = load i32*, i32** %5, align 8
  %54 = load i64, i64* @FW_VER_IF_TYPE, align 8
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = load i32*, i32** %4, align 8
  %58 = load i64, i64* @FW_VER_IF_TYPE, align 8
  %59 = getelementptr inbounds i32, i32* %57, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %56, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %52
  br label %135

63:                                               ; preds = %52, %45
  %64 = load i32*, i32** %5, align 8
  %65 = load i64, i64* @FW_VER_SUBTYPE, align 8
  %66 = getelementptr inbounds i32, i32* %64, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @WLCORE_FW_VER_IGNORE, align 4
  %69 = icmp ne i32 %67, %68
  br i1 %69, label %70, label %81

70:                                               ; preds = %63
  %71 = load i32*, i32** %5, align 8
  %72 = load i64, i64* @FW_VER_SUBTYPE, align 8
  %73 = getelementptr inbounds i32, i32* %71, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = load i32*, i32** %4, align 8
  %76 = load i64, i64* @FW_VER_SUBTYPE, align 8
  %77 = getelementptr inbounds i32, i32* %75, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %74, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %70
  br label %135

81:                                               ; preds = %70, %63
  %82 = load i32*, i32** %5, align 8
  %83 = load i64, i64* @FW_VER_MAJOR, align 8
  %84 = getelementptr inbounds i32, i32* %82, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @WLCORE_FW_VER_IGNORE, align 4
  %87 = icmp ne i32 %85, %86
  br i1 %87, label %88, label %99

88:                                               ; preds = %81
  %89 = load i32*, i32** %5, align 8
  %90 = load i64, i64* @FW_VER_MAJOR, align 8
  %91 = getelementptr inbounds i32, i32* %89, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = load i32*, i32** %4, align 8
  %94 = load i64, i64* @FW_VER_MAJOR, align 8
  %95 = getelementptr inbounds i32, i32* %93, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = icmp ugt i32 %92, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %88
  br label %135

99:                                               ; preds = %88, %81
  %100 = load i32*, i32** %5, align 8
  %101 = load i64, i64* @FW_VER_MAJOR, align 8
  %102 = getelementptr inbounds i32, i32* %100, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @WLCORE_FW_VER_IGNORE, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %116, label %106

106:                                              ; preds = %99
  %107 = load i32*, i32** %5, align 8
  %108 = load i64, i64* @FW_VER_MAJOR, align 8
  %109 = getelementptr inbounds i32, i32* %107, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = load i32*, i32** %4, align 8
  %112 = load i64, i64* @FW_VER_MAJOR, align 8
  %113 = getelementptr inbounds i32, i32* %111, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = icmp eq i32 %110, %114
  br i1 %115, label %116, label %134

116:                                              ; preds = %106, %99
  %117 = load i32*, i32** %5, align 8
  %118 = load i64, i64* @FW_VER_MINOR, align 8
  %119 = getelementptr inbounds i32, i32* %117, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @WLCORE_FW_VER_IGNORE, align 4
  %122 = icmp ne i32 %120, %121
  br i1 %122, label %123, label %134

123:                                              ; preds = %116
  %124 = load i32*, i32** %5, align 8
  %125 = load i64, i64* @FW_VER_MINOR, align 8
  %126 = getelementptr inbounds i32, i32* %124, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = load i32*, i32** %4, align 8
  %129 = load i64, i64* @FW_VER_MINOR, align 8
  %130 = getelementptr inbounds i32, i32* %128, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = icmp ugt i32 %127, %131
  br i1 %132, label %133, label %134

133:                                              ; preds = %123
  br label %135

134:                                              ; preds = %123, %116, %106
  store i32 0, i32* %2, align 4
  br label %190

135:                                              ; preds = %133, %98, %80, %62, %44
  store i32 0, i32* %7, align 4
  br label %136

136:                                              ; preds = %162, %135
  %137 = load i32, i32* %7, align 4
  %138 = load i32, i32* @NUM_FW_VER, align 4
  %139 = icmp slt i32 %137, %138
  br i1 %139, label %140, label %165

140:                                              ; preds = %136
  %141 = load i32*, i32** %5, align 8
  %142 = load i32, i32* %7, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @WLCORE_FW_VER_IGNORE, align 4
  %147 = icmp eq i32 %145, %146
  br i1 %147, label %148, label %152

148:                                              ; preds = %140
  %149 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %150 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %151 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %149, i32 32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %150)
  br label %161

152:                                              ; preds = %140
  %153 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %154 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %155 = load i32*, i32** %5, align 8
  %156 = load i32, i32* %7, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %155, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %153, i32 32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %154, i32 %159)
  br label %161

161:                                              ; preds = %152, %148
  br label %162

162:                                              ; preds = %161
  %163 = load i32, i32* %7, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %7, align 4
  br label %136

165:                                              ; preds = %136
  %166 = load i32*, i32** %4, align 8
  %167 = load i64, i64* @FW_VER_CHIP, align 8
  %168 = getelementptr inbounds i32, i32* %166, i64 %167
  %169 = load i32, i32* %168, align 4
  %170 = load i32*, i32** %4, align 8
  %171 = load i64, i64* @FW_VER_IF_TYPE, align 8
  %172 = getelementptr inbounds i32, i32* %170, i64 %171
  %173 = load i32, i32* %172, align 4
  %174 = load i32*, i32** %4, align 8
  %175 = load i64, i64* @FW_VER_MAJOR, align 8
  %176 = getelementptr inbounds i32, i32* %174, i64 %175
  %177 = load i32, i32* %176, align 4
  %178 = load i32*, i32** %4, align 8
  %179 = load i64, i64* @FW_VER_SUBTYPE, align 8
  %180 = getelementptr inbounds i32, i32* %178, i64 %179
  %181 = load i32, i32* %180, align 4
  %182 = load i32*, i32** %4, align 8
  %183 = load i64, i64* @FW_VER_MINOR, align 8
  %184 = getelementptr inbounds i32, i32* %182, i64 %183
  %185 = load i32, i32* %184, align 4
  %186 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %187 = call i32 @wl1271_error(i8* getelementptr inbounds ([156 x i8], [156 x i8]* @.str.2, i64 0, i64 0), i32 %169, i32 %173, i32 %177, i32 %181, i32 %185, i8* %186)
  %188 = load i32, i32* @EINVAL, align 4
  %189 = sub nsw i32 0, %188
  store i32 %189, i32* %2, align 4
  br label %190

190:                                              ; preds = %165, %134
  %191 = load i32, i32* %2, align 4
  ret i32 %191
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, ...) #2

declare dso_local i32 @wl1271_error(i8*, i32, i32, i32, i32, i32, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
