; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/extr_proc.c_show_cpuinfo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/extr_proc.c_show_cpuinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.cpuinfo_x86 = type { i32, i8*, i8*, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [75 x i8] c"processor\09: %u\0Avendor_id\09: %s\0Acpu family\09: %d\0Amodel\09\09: %u\0Amodel name\09: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"stepping\09: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"stepping\09: unknown\0A\00", align 1
@X86_FEATURE_TSC = common dso_local global i32 0, align 4
@cpu_khz = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"cpu MHz\09\09: %u.%03u\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"cache size\09: %d KB\0A\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"flags\09\09:\00", align 1
@RHNCAPINTS = common dso_local global i32 0, align 4
@x86_cap_flags = common dso_local global i32** null, align 8
@.str.7 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"\0Abogomips\09: %lu.%02lu\0A\00", align 1
@HZ = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [19 x i8] c"clflush size\09: %u\0A\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"cache_alignment\09: %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [51 x i8] c"address sizes\09: %u bits physical, %u bits virtual\0A\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"power management:\00", align 1
@x86_power_flags = common dso_local global i64** null, align 8
@.str.13 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.15 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.16 = private unnamed_addr constant [6 x i8] c" [%d]\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @show_cpuinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_cpuinfo(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.cpuinfo_x86*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.cpuinfo_x86*
  store %struct.cpuinfo_x86* %10, %struct.cpuinfo_x86** %5, align 8
  store i32 0, i32* %6, align 4
  %11 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %5, align 8
  %14 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %13, i32 0, i32 1
  %15 = load i8*, i8** %14, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 0
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %5, align 8
  %22 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %21, i32 0, i32 1
  %23 = load i8*, i8** %22, align 8
  br label %25

24:                                               ; preds = %2
  br label %25

25:                                               ; preds = %24, %20
  %26 = phi i8* [ %23, %20 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), %24 ]
  %27 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %5, align 8
  %28 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %27, i32 0, i32 14
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %5, align 8
  %31 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %30, i32 0, i32 13
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %5, align 8
  %34 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %33, i32 0, i32 2
  %35 = load i8*, i8** %34, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 0
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %25
  %41 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %5, align 8
  %42 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %41, i32 0, i32 2
  %43 = load i8*, i8** %42, align 8
  br label %45

44:                                               ; preds = %25
  br label %45

45:                                               ; preds = %44, %40
  %46 = phi i8* [ %43, %40 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), %44 ]
  %47 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %11, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0), i32 %12, i8* %26, i32 %29, i32 %32, i8* %46)
  %48 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %5, align 8
  %49 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %48, i32 0, i32 12
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %45
  %53 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %5, align 8
  %54 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %53, i32 0, i32 3
  %55 = load i64, i64* %54, align 8
  %56 = icmp sge i64 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %52, %45
  %58 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %59 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %5, align 8
  %60 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %59, i32 0, i32 12
  %61 = load i32, i32* %60, align 8
  %62 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %58, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %61)
  br label %66

63:                                               ; preds = %52
  %64 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %65 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %64, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  br label %66

66:                                               ; preds = %63, %57
  %67 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %5, align 8
  %68 = load i32, i32* @X86_FEATURE_TSC, align 4
  %69 = call i64 @cpu_has(%struct.cpuinfo_x86* %67, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %85

71:                                               ; preds = %66
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @cpufreq_quick_get(i32 %72)
  store i32 %73, i32* %8, align 4
  %74 = load i32, i32* %8, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %78, label %76

76:                                               ; preds = %71
  %77 = load i32, i32* @cpu_khz, align 4
  store i32 %77, i32* %8, align 4
  br label %78

78:                                               ; preds = %76, %71
  %79 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %80 = load i32, i32* %8, align 4
  %81 = udiv i32 %80, 1000
  %82 = load i32, i32* %8, align 4
  %83 = urem i32 %82, 1000
  %84 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %79, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %81, i32 %83)
  br label %85

85:                                               ; preds = %78, %66
  %86 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %5, align 8
  %87 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %86, i32 0, i32 11
  %88 = load i32, i32* %87, align 4
  %89 = icmp sge i32 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %85
  %91 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %92 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %5, align 8
  %93 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %92, i32 0, i32 11
  %94 = load i32, i32* %93, align 4
  %95 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %91, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i32 %94)
  br label %96

96:                                               ; preds = %90, %85
  %97 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %98 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %5, align 8
  %99 = load i32, i32* %6, align 4
  %100 = call i32 @show_cpuinfo_core(%struct.seq_file* %97, %struct.cpuinfo_x86* %98, i32 %99)
  %101 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %102 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %5, align 8
  %103 = call i32 @show_cpuinfo_misc(%struct.seq_file* %101, %struct.cpuinfo_x86* %102)
  %104 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %105 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %104, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %106

106:                                              ; preds = %132, %96
  %107 = load i32, i32* %7, align 4
  %108 = load i32, i32* @RHNCAPINTS, align 4
  %109 = mul nsw i32 32, %108
  %110 = icmp slt i32 %107, %109
  br i1 %110, label %111, label %135

111:                                              ; preds = %106
  %112 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %5, align 8
  %113 = load i32, i32* %7, align 4
  %114 = call i64 @cpu_has(%struct.cpuinfo_x86* %112, i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %131

116:                                              ; preds = %111
  %117 = load i32**, i32*** @x86_cap_flags, align 8
  %118 = load i32, i32* %7, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32*, i32** %117, i64 %119
  %121 = load i32*, i32** %120, align 8
  %122 = icmp ne i32* %121, null
  br i1 %122, label %123, label %131

123:                                              ; preds = %116
  %124 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %125 = load i32**, i32*** @x86_cap_flags, align 8
  %126 = load i32, i32* %7, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32*, i32** %125, i64 %127
  %129 = load i32*, i32** %128, align 8
  %130 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %124, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i32* %129)
  br label %131

131:                                              ; preds = %123, %116, %111
  br label %132

132:                                              ; preds = %131
  %133 = load i32, i32* %7, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %7, align 4
  br label %106

135:                                              ; preds = %106
  %136 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %137 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %5, align 8
  %138 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %137, i32 0, i32 4
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* @HZ, align 4
  %141 = sdiv i32 500000, %140
  %142 = sdiv i32 %139, %141
  %143 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %5, align 8
  %144 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %143, i32 0, i32 4
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* @HZ, align 4
  %147 = sdiv i32 5000, %146
  %148 = sdiv i32 %145, %147
  %149 = srem i32 %148, 100
  %150 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %136, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i32 %142, i32 %149)
  %151 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %152 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %5, align 8
  %153 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %152, i32 0, i32 9
  %154 = load i32, i32* %153, align 4
  %155 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %151, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0), i32 %154)
  %156 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %157 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %5, align 8
  %158 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %157, i32 0, i32 8
  %159 = load i32, i32* %158, align 8
  %160 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %156, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0), i32 %159)
  %161 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %162 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %5, align 8
  %163 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %162, i32 0, i32 7
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %5, align 8
  %166 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %165, i32 0, i32 6
  %167 = load i32, i32* %166, align 8
  %168 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %161, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.11, i64 0, i64 0), i32 %164, i32 %167)
  %169 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %170 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %169, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %171

171:                                              ; preds = %218, %135
  %172 = load i32, i32* %7, align 4
  %173 = icmp slt i32 %172, 32
  br i1 %173, label %174, label %221

174:                                              ; preds = %171
  %175 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %5, align 8
  %176 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %175, i32 0, i32 5
  %177 = load i32, i32* %176, align 4
  %178 = load i32, i32* %7, align 4
  %179 = shl i32 1, %178
  %180 = and i32 %177, %179
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %217

182:                                              ; preds = %174
  %183 = load i32, i32* %7, align 4
  %184 = load i64**, i64*** @x86_power_flags, align 8
  %185 = call i32 @ARRAY_SIZE(i64** %184)
  %186 = icmp slt i32 %183, %185
  br i1 %186, label %187, label %212

187:                                              ; preds = %182
  %188 = load i64**, i64*** @x86_power_flags, align 8
  %189 = load i32, i32* %7, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i64*, i64** %188, i64 %190
  %192 = load i64*, i64** %191, align 8
  %193 = icmp ne i64* %192, null
  br i1 %193, label %194, label %212

194:                                              ; preds = %187
  %195 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %196 = load i64**, i64*** @x86_power_flags, align 8
  %197 = load i32, i32* %7, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i64*, i64** %196, i64 %198
  %200 = load i64*, i64** %199, align 8
  %201 = getelementptr inbounds i64, i64* %200, i64 0
  %202 = load i64, i64* %201, align 8
  %203 = icmp ne i64 %202, 0
  %204 = zext i1 %203 to i64
  %205 = select i1 %203, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)
  %206 = load i64**, i64*** @x86_power_flags, align 8
  %207 = load i32, i32* %7, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i64*, i64** %206, i64 %208
  %210 = load i64*, i64** %209, align 8
  %211 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %195, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i8* %205, i64* %210)
  br label %216

212:                                              ; preds = %187, %182
  %213 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %214 = load i32, i32* %7, align 4
  %215 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %213, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0), i32 %214)
  br label %216

216:                                              ; preds = %212, %194
  br label %217

217:                                              ; preds = %216, %174
  br label %218

218:                                              ; preds = %217
  %219 = load i32, i32* %7, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %7, align 4
  br label %171

221:                                              ; preds = %171
  %222 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %223 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %222, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, ...) #1

declare dso_local i64 @cpu_has(%struct.cpuinfo_x86*, i32) #1

declare dso_local i32 @cpufreq_quick_get(i32) #1

declare dso_local i32 @show_cpuinfo_core(%struct.seq_file*, %struct.cpuinfo_x86*, i32) #1

declare dso_local i32 @show_cpuinfo_misc(%struct.seq_file*, %struct.cpuinfo_x86*) #1

declare dso_local i32 @ARRAY_SIZE(i64**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
