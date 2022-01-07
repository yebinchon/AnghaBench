; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pvrusb2/extr_pvrusb2-hdw.c_pvr2_hdw_setup_std.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pvrusb2/extr_pvrusb2-hdw.c_pvr2_hdw_setup_std.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.pvr2_hdw = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }

@PVR2_TRACE_STD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"Supported video standard(s) reported available in hardware: %.*s\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"Expanding supported video standards to include: %.*s\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"Initial video standard forced to %.*s\00", align 1
@.str.3 = private unnamed_addr constant [57 x i8] c"Initial video standard (determined by device type): %.*s\00", align 1
@std_eeprom_maps = common dso_local global %struct.TYPE_7__* null, align 8
@.str.4 = private unnamed_addr constant [39 x i8] c"Initial video standard guessed as %.*s\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"Initial video standard auto-selected to %s\00", align 1
@PVR2_TRACE_ERROR_LEGS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [49 x i8] c"Unable to select a viable initial video standard\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pvr2_hdw*)* @pvr2_hdw_setup_std to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pvr2_hdw_setup_std(%struct.pvr2_hdw* %0) #0 {
  %2 = alloca %struct.pvr2_hdw*, align 8
  %3 = alloca [40 x i8], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.pvr2_hdw* %0, %struct.pvr2_hdw** %2, align 8
  %9 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %10 = call i32 @get_default_standard(%struct.pvr2_hdw* %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %20

14:                                               ; preds = %1
  %15 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %16 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %15, i32 0, i32 7
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  br label %20

20:                                               ; preds = %14, %13
  %21 = phi i32 [ 0, %13 ], [ %19, %14 ]
  store i32 %21, i32* %7, align 4
  %22 = getelementptr inbounds [40 x i8], [40 x i8]* %3, i64 0, i64 0
  %23 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %24 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @pvr2_std_id_to_str(i8* %22, i32 40, i32 %25)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* @PVR2_TRACE_STD, align 4
  %28 = load i32, i32* %4, align 4
  %29 = getelementptr inbounds [40 x i8], [40 x i8]* %3, i64 0, i64 0
  %30 = call i32 (i32, i8*, ...) @pvr2_trace(i32 %27, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), i32 %28, i8* %29)
  %31 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %32 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %35 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* %7, align 4
  %38 = or i32 %36, %37
  %39 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %40 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = xor i32 %41, -1
  %43 = and i32 %38, %42
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %59

46:                                               ; preds = %20
  %47 = getelementptr inbounds [40 x i8], [40 x i8]* %3, i64 0, i64 0
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @pvr2_std_id_to_str(i8* %47, i32 40, i32 %48)
  store i32 %49, i32* %4, align 4
  %50 = load i32, i32* @PVR2_TRACE_STD, align 4
  %51 = load i32, i32* %4, align 4
  %52 = getelementptr inbounds [40 x i8], [40 x i8]* %3, i64 0, i64 0
  %53 = call i32 (i32, i8*, ...) @pvr2_trace(i32 %50, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %51, i8* %52)
  %54 = load i32, i32* %6, align 4
  %55 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %56 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 4
  br label %59

59:                                               ; preds = %46, %20
  %60 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %61 = call i32 @pvr2_hdw_internal_set_std_avail(%struct.pvr2_hdw* %60)
  %62 = load i32, i32* %5, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %79

64:                                               ; preds = %59
  %65 = getelementptr inbounds [40 x i8], [40 x i8]* %3, i64 0, i64 0
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @pvr2_std_id_to_str(i8* %65, i32 40, i32 %66)
  store i32 %67, i32* %4, align 4
  %68 = load i32, i32* @PVR2_TRACE_STD, align 4
  %69 = load i32, i32* %4, align 4
  %70 = getelementptr inbounds [40 x i8], [40 x i8]* %3, i64 0, i64 0
  %71 = call i32 (i32, i8*, ...) @pvr2_trace(i32 %68, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %69, i8* %70)
  %72 = load i32, i32* %5, align 4
  %73 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %74 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 8
  %75 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %76 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %75, i32 0, i32 3
  store i32 1, i32* %76, align 4
  %77 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %78 = call i32 @pvr2_hdw_internal_find_stdenum(%struct.pvr2_hdw* %77)
  br label %209

79:                                               ; preds = %59
  %80 = load i32, i32* %7, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %97

82:                                               ; preds = %79
  %83 = getelementptr inbounds [40 x i8], [40 x i8]* %3, i64 0, i64 0
  %84 = load i32, i32* %7, align 4
  %85 = call i32 @pvr2_std_id_to_str(i8* %83, i32 40, i32 %84)
  store i32 %85, i32* %4, align 4
  %86 = load i32, i32* @PVR2_TRACE_STD, align 4
  %87 = load i32, i32* %4, align 4
  %88 = getelementptr inbounds [40 x i8], [40 x i8]* %3, i64 0, i64 0
  %89 = call i32 (i32, i8*, ...) @pvr2_trace(i32 %86, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i64 0, i64 0), i32 %87, i8* %88)
  %90 = load i32, i32* %7, align 4
  %91 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %92 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %91, i32 0, i32 2
  store i32 %90, i32* %92, align 8
  %93 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %94 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %93, i32 0, i32 3
  store i32 1, i32* %94, align 4
  %95 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %96 = call i32 @pvr2_hdw_internal_find_stdenum(%struct.pvr2_hdw* %95)
  br label %209

97:                                               ; preds = %79
  store i32 0, i32* %8, align 4
  br label %98

98:                                               ; preds = %167, %97
  %99 = load i32, i32* %8, align 4
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** @std_eeprom_maps, align 8
  %101 = call i32 @ARRAY_SIZE(%struct.TYPE_7__* %100)
  %102 = icmp ult i32 %99, %101
  br i1 %102, label %103, label %170

103:                                              ; preds = %98
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** @std_eeprom_maps, align 8
  %105 = load i32, i32* %8, align 4
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %130

111:                                              ; preds = %103
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** @std_eeprom_maps, align 8
  %113 = load i32, i32* %8, align 4
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %119 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = xor i32 %117, %120
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** @std_eeprom_maps, align 8
  %123 = load i32, i32* %8, align 4
  %124 = zext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = and i32 %121, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %141, label %142

130:                                              ; preds = %103
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** @std_eeprom_maps, align 8
  %132 = load i32, i32* %8, align 4
  %133 = zext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %138 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = icmp ne i32 %136, %139
  br i1 %140, label %141, label %142

141:                                              ; preds = %130, %111
  br label %167

142:                                              ; preds = %130, %111
  %143 = getelementptr inbounds [40 x i8], [40 x i8]* %3, i64 0, i64 0
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** @std_eeprom_maps, align 8
  %145 = load i32, i32* %8, align 4
  %146 = zext i32 %145 to i64
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @pvr2_std_id_to_str(i8* %143, i32 40, i32 %149)
  store i32 %150, i32* %4, align 4
  %151 = load i32, i32* @PVR2_TRACE_STD, align 4
  %152 = load i32, i32* %4, align 4
  %153 = getelementptr inbounds [40 x i8], [40 x i8]* %3, i64 0, i64 0
  %154 = call i32 (i32, i8*, ...) @pvr2_trace(i32 %151, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i32 %152, i8* %153)
  %155 = load %struct.TYPE_7__*, %struct.TYPE_7__** @std_eeprom_maps, align 8
  %156 = load i32, i32* %8, align 4
  %157 = zext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %162 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %161, i32 0, i32 2
  store i32 %160, i32* %162, align 8
  %163 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %164 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %163, i32 0, i32 3
  store i32 1, i32* %164, align 4
  %165 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %166 = call i32 @pvr2_hdw_internal_find_stdenum(%struct.pvr2_hdw* %165)
  br label %209

167:                                              ; preds = %141
  %168 = load i32, i32* %8, align 4
  %169 = add i32 %168, 1
  store i32 %169, i32* %8, align 4
  br label %98

170:                                              ; preds = %98
  %171 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %172 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %171, i32 0, i32 4
  %173 = load i32, i32* %172, align 8
  %174 = icmp sgt i32 %173, 1
  br i1 %174, label %175, label %206

175:                                              ; preds = %170
  %176 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %177 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %176, i32 0, i32 5
  store i32 1, i32* %177, align 4
  %178 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %179 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %178, i32 0, i32 6
  %180 = load %struct.TYPE_6__*, %struct.TYPE_6__** %179, align 8
  %181 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %182 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %181, i32 0, i32 5
  %183 = load i32, i32* %182, align 4
  %184 = sub nsw i32 %183, 1
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i64 %185
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %190 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %189, i32 0, i32 2
  store i32 %188, i32* %190, align 8
  %191 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %192 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %191, i32 0, i32 3
  store i32 1, i32* %192, align 4
  %193 = load i32, i32* @PVR2_TRACE_STD, align 4
  %194 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %195 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %194, i32 0, i32 6
  %196 = load %struct.TYPE_6__*, %struct.TYPE_6__** %195, align 8
  %197 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %198 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %197, i32 0, i32 5
  %199 = load i32, i32* %198, align 4
  %200 = sub nsw i32 %199, 1
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %196, i64 %201
  %203 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = call i32 (i32, i8*, ...) @pvr2_trace(i32 %193, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0), i32 %204)
  br label %209

206:                                              ; preds = %170
  %207 = load i32, i32* @PVR2_TRACE_ERROR_LEGS, align 4
  %208 = call i32 (i32, i8*, ...) @pvr2_trace(i32 %207, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i64 0, i64 0))
  br label %209

209:                                              ; preds = %206, %175, %142, %82, %64
  ret void
}

declare dso_local i32 @get_default_standard(%struct.pvr2_hdw*) #1

declare dso_local i32 @pvr2_std_id_to_str(i8*, i32, i32) #1

declare dso_local i32 @pvr2_trace(i32, i8*, ...) #1

declare dso_local i32 @pvr2_hdw_internal_set_std_avail(%struct.pvr2_hdw*) #1

declare dso_local i32 @pvr2_hdw_internal_find_stdenum(%struct.pvr2_hdw*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
