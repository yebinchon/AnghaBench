; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2200.c_show_channels.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2200.c_show_channels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.ipw_priv = type { i32 }
%struct.libipw_geo = type { i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [51 x i8] c"Displaying %d channels in 2.4Ghz band (802.11bg):\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"%d: BSS%s%s, %s, Band %s.\0A\00", align 1
@LIBIPW_CH_RADAR_DETECT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c" (radar spectrum)\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@LIBIPW_CH_NO_IBSS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c", IBSS\00", align 1
@LIBIPW_CH_PASSIVE_ONLY = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [13 x i8] c"passive only\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"active/passive\00", align 1
@LIBIPW_CH_B_ONLY = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"B/G\00", align 1
@.str.9 = private unnamed_addr constant [50 x i8] c"Displaying %d channels in 5.2Ghz band (802.11a):\0A\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"%d: BSS%s%s, %s.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @show_channels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_channels(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ipw_priv*, align 8
  %8 = alloca %struct.libipw_geo*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = call %struct.ipw_priv* @dev_get_drvdata(%struct.device* %11)
  store %struct.ipw_priv* %12, %struct.ipw_priv** %7, align 8
  %13 = load %struct.ipw_priv*, %struct.ipw_priv** %7, align 8
  %14 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.libipw_geo* @libipw_get_geo(i32 %15)
  store %struct.libipw_geo* %16, %struct.libipw_geo** %8, align 8
  store i32 0, i32* %9, align 4
  %17 = load i8*, i8** %6, align 8
  %18 = load i32, i32* %9, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %17, i64 %19
  %21 = load %struct.libipw_geo*, %struct.libipw_geo** %8, align 8
  %22 = getelementptr inbounds %struct.libipw_geo, %struct.libipw_geo* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %20, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %23)
  store i32 %24, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %25

25:                                               ; preds = %113, %3
  %26 = load i32, i32* %10, align 4
  %27 = load %struct.libipw_geo*, %struct.libipw_geo** %8, align 8
  %28 = getelementptr inbounds %struct.libipw_geo, %struct.libipw_geo* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %116

31:                                               ; preds = %25
  %32 = load i8*, i8** %6, align 8
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %32, i64 %34
  %36 = load %struct.libipw_geo*, %struct.libipw_geo** %8, align 8
  %37 = getelementptr inbounds %struct.libipw_geo, %struct.libipw_geo* %36, i32 0, i32 3
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = load i32, i32* %10, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.libipw_geo*, %struct.libipw_geo** %8, align 8
  %45 = getelementptr inbounds %struct.libipw_geo, %struct.libipw_geo* %44, i32 0, i32 3
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = load i32, i32* %10, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @LIBIPW_CH_RADAR_DETECT, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  %55 = zext i1 %54 to i64
  %56 = select i1 %54, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %57 = load %struct.libipw_geo*, %struct.libipw_geo** %8, align 8
  %58 = getelementptr inbounds %struct.libipw_geo, %struct.libipw_geo* %57, i32 0, i32 3
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = load i32, i32* %10, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @LIBIPW_CH_NO_IBSS, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %80, label %68

68:                                               ; preds = %31
  %69 = load %struct.libipw_geo*, %struct.libipw_geo** %8, align 8
  %70 = getelementptr inbounds %struct.libipw_geo, %struct.libipw_geo* %69, i32 0, i32 3
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %70, align 8
  %72 = load i32, i32* %10, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @LIBIPW_CH_RADAR_DETECT, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br label %80

80:                                               ; preds = %68, %31
  %81 = phi i1 [ true, %31 ], [ %79, %68 ]
  %82 = zext i1 %81 to i64
  %83 = select i1 %81, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0)
  %84 = load %struct.libipw_geo*, %struct.libipw_geo** %8, align 8
  %85 = getelementptr inbounds %struct.libipw_geo, %struct.libipw_geo* %84, i32 0, i32 3
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %85, align 8
  %87 = load i32, i32* %10, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @LIBIPW_CH_PASSIVE_ONLY, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  %95 = zext i1 %94 to i64
  %96 = select i1 %94, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0)
  %97 = load %struct.libipw_geo*, %struct.libipw_geo** %8, align 8
  %98 = getelementptr inbounds %struct.libipw_geo, %struct.libipw_geo* %97, i32 0, i32 3
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %98, align 8
  %100 = load i32, i32* %10, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @LIBIPW_CH_B_ONLY, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  %108 = zext i1 %107 to i64
  %109 = select i1 %107, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0)
  %110 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %35, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %43, i8* %56, i8* %83, i8* %96, i8* %109)
  %111 = load i32, i32* %9, align 4
  %112 = add nsw i32 %111, %110
  store i32 %112, i32* %9, align 4
  br label %113

113:                                              ; preds = %80
  %114 = load i32, i32* %10, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %10, align 4
  br label %25

116:                                              ; preds = %25
  %117 = load i8*, i8** %6, align 8
  %118 = load i32, i32* %9, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i8, i8* %117, i64 %119
  %121 = load %struct.libipw_geo*, %struct.libipw_geo** %8, align 8
  %122 = getelementptr inbounds %struct.libipw_geo, %struct.libipw_geo* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %120, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.9, i64 0, i64 0), i32 %123)
  %125 = load i32, i32* %9, align 4
  %126 = add nsw i32 %125, %124
  store i32 %126, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %127

127:                                              ; preds = %202, %116
  %128 = load i32, i32* %10, align 4
  %129 = load %struct.libipw_geo*, %struct.libipw_geo** %8, align 8
  %130 = getelementptr inbounds %struct.libipw_geo, %struct.libipw_geo* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = icmp slt i32 %128, %131
  br i1 %132, label %133, label %205

133:                                              ; preds = %127
  %134 = load i8*, i8** %6, align 8
  %135 = load i32, i32* %9, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i8, i8* %134, i64 %136
  %138 = load %struct.libipw_geo*, %struct.libipw_geo** %8, align 8
  %139 = getelementptr inbounds %struct.libipw_geo, %struct.libipw_geo* %138, i32 0, i32 2
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** %139, align 8
  %141 = load i32, i32* %10, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.libipw_geo*, %struct.libipw_geo** %8, align 8
  %147 = getelementptr inbounds %struct.libipw_geo, %struct.libipw_geo* %146, i32 0, i32 2
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** %147, align 8
  %149 = load i32, i32* %10, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* @LIBIPW_CH_RADAR_DETECT, align 4
  %155 = and i32 %153, %154
  %156 = icmp ne i32 %155, 0
  %157 = zext i1 %156 to i64
  %158 = select i1 %156, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %159 = load %struct.libipw_geo*, %struct.libipw_geo** %8, align 8
  %160 = getelementptr inbounds %struct.libipw_geo, %struct.libipw_geo* %159, i32 0, i32 2
  %161 = load %struct.TYPE_4__*, %struct.TYPE_4__** %160, align 8
  %162 = load i32, i32* %10, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* @LIBIPW_CH_NO_IBSS, align 4
  %168 = and i32 %166, %167
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %182, label %170

170:                                              ; preds = %133
  %171 = load %struct.libipw_geo*, %struct.libipw_geo** %8, align 8
  %172 = getelementptr inbounds %struct.libipw_geo, %struct.libipw_geo* %171, i32 0, i32 2
  %173 = load %struct.TYPE_4__*, %struct.TYPE_4__** %172, align 8
  %174 = load i32, i32* %10, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i64 %175
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* @LIBIPW_CH_RADAR_DETECT, align 4
  %180 = and i32 %178, %179
  %181 = icmp ne i32 %180, 0
  br label %182

182:                                              ; preds = %170, %133
  %183 = phi i1 [ true, %133 ], [ %181, %170 ]
  %184 = zext i1 %183 to i64
  %185 = select i1 %183, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0)
  %186 = load %struct.libipw_geo*, %struct.libipw_geo** %8, align 8
  %187 = getelementptr inbounds %struct.libipw_geo, %struct.libipw_geo* %186, i32 0, i32 2
  %188 = load %struct.TYPE_4__*, %struct.TYPE_4__** %187, align 8
  %189 = load i32, i32* %10, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %188, i64 %190
  %192 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = load i32, i32* @LIBIPW_CH_PASSIVE_ONLY, align 4
  %195 = and i32 %193, %194
  %196 = icmp ne i32 %195, 0
  %197 = zext i1 %196 to i64
  %198 = select i1 %196, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0)
  %199 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %137, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0), i32 %145, i8* %158, i8* %185, i8* %198)
  %200 = load i32, i32* %9, align 4
  %201 = add nsw i32 %200, %199
  store i32 %201, i32* %9, align 4
  br label %202

202:                                              ; preds = %182
  %203 = load i32, i32* %10, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %10, align 4
  br label %127

205:                                              ; preds = %127
  %206 = load i32, i32* %9, align 4
  ret i32 %206
}

declare dso_local %struct.ipw_priv* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.libipw_geo* @libipw_get_geo(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
