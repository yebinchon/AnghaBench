; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/isdnloop/extr_isdnloop.c_isdnloop_parse_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/isdnloop/extr_isdnloop.c_isdnloop_parse_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i8*, i32, i8* }
%struct.TYPE_19__ = type { i32, %struct.TYPE_17__, i32 }
%struct.TYPE_17__ = type { i32 (%struct.TYPE_20__*)* }
%struct.TYPE_20__ = type { i32, i32, i8*, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, i32, i32, i32, i32, i32 }

@isdnloop_stat_table = common dso_local global %struct.TYPE_18__* null, align 8
@ISDNLOOP_FLAGS_B2ACTIVE = common dso_local global i32 0, align 4
@ISDNLOOP_FLAGS_B1ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"LEASED%d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%s%c%c\00", align 1
@ISDN_STAT_DHUP = common dso_local global i8* null, align 8
@ISDN_STAT_BHUP = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, %struct.TYPE_19__*)* @isdnloop_parse_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isdnloop_parse_status(i8* %0, i32 %1, %struct.TYPE_19__* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_20__, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_19__* %2, %struct.TYPE_19__** %6, align 8
  %10 = load %struct.TYPE_18__*, %struct.TYPE_18__** @isdnloop_stat_table, align 8
  store %struct.TYPE_18__* %10, %struct.TYPE_18__** %7, align 8
  store i32 -1, i32* %8, align 4
  br label %11

11:                                               ; preds = %35, %3
  %12 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %13 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %38

16:                                               ; preds = %11
  %17 = load i8*, i8** %4, align 8
  %18 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 @strlen(i8* %23)
  %25 = call i32 @strncmp(i8* %17, i8* %20, i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %35, label %27

27:                                               ; preds = %16
  %28 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %28, i32 0, i32 2
  %30 = load i8*, i8** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 2
  store i8* %30, i8** %31, align 8
  %32 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %8, align 4
  br label %38

35:                                               ; preds = %16
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %36, i32 1
  store %struct.TYPE_18__* %37, %struct.TYPE_18__** %7, align 8
  br label %11

38:                                               ; preds = %27, %11
  %39 = load i32, i32* %8, align 4
  %40 = icmp eq i32 %39, -1
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  br label %220

42:                                               ; preds = %38
  %43 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 0
  store i32 %45, i32* %46, align 8
  %47 = load i32, i32* %5, align 4
  %48 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 1
  store i32 %47, i32* %48, align 4
  %49 = load i32, i32* %8, align 4
  switch i32 %49, label %214 [
    i32 1, label %50
    i32 2, label %63
    i32 3, label %80
    i32 4, label %84
    i32 5, label %112
    i32 6, label %119
    i32 7, label %128
    i32 8, label %156
  ]

50:                                               ; preds = %42
  %51 = load i32, i32* %5, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  %54 = load i32, i32* @ISDNLOOP_FLAGS_B2ACTIVE, align 4
  br label %57

55:                                               ; preds = %50
  %56 = load i32, i32* @ISDNLOOP_FLAGS_B1ACTIVE, align 4
  br label %57

57:                                               ; preds = %55, %53
  %58 = phi i32 [ %54, %53 ], [ %56, %55 ]
  %59 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 8
  br label %214

63:                                               ; preds = %42
  %64 = load i32, i32* %5, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %63
  %67 = load i32, i32* @ISDNLOOP_FLAGS_B2ACTIVE, align 4
  br label %70

68:                                               ; preds = %63
  %69 = load i32, i32* @ISDNLOOP_FLAGS_B1ACTIVE, align 4
  br label %70

70:                                               ; preds = %68, %66
  %71 = phi i32 [ %67, %66 ], [ %69, %68 ]
  %72 = xor i32 %71, -1
  %73 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = and i32 %75, %72
  store i32 %76, i32* %74, align 8
  %77 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %78 = load i32, i32* %5, align 4
  %79 = call i32 @isdnloop_free_queue(%struct.TYPE_19__* %77, i32 %78)
  br label %214

80:                                               ; preds = %42
  %81 = load i8*, i8** %4, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 6
  %83 = call i32 @isdnloop_parse_setup(i8* %82, %struct.TYPE_20__* %9)
  br label %214

84:                                               ; preds = %42
  %85 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 3
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 5
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @sprintf(i32 %88, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %91)
  %93 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 3
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %5, align 4
  %98 = add nsw i32 %97, 1
  %99 = call i32 @sprintf(i32 %96, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %98)
  %100 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 3
  %101 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 0
  store i32 7, i32* %102, align 4
  %103 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 3
  %104 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 3
  store i32 0, i32* %105, align 4
  %106 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 3
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %107, i32 0, i32 2
  store i32 0, i32* %108, align 4
  %109 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 3
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i32 0, i32 1
  store i32 0, i32* %111, align 4
  br label %214

112:                                              ; preds = %42
  %113 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 3
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load i8*, i8** %4, align 8
  %117 = getelementptr inbounds i8, i8* %116, i64 3
  %118 = call i32 @strlcpy(i32 %115, i8* %117, i32 4)
  br label %214

119:                                              ; preds = %42
  %120 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 3
  %121 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load i8*, i8** %4, align 8
  %124 = getelementptr inbounds i8, i8* %123, i64 7
  %125 = call i64 @simple_strtoul(i8* %124, i32* null, i32 16)
  %126 = trunc i64 %125 to i32
  %127 = call i32 (i32, i32, i8*, ...) @snprintf(i32 %122, i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %126)
  br label %214

128:                                              ; preds = %42
  %129 = load i8*, i8** %4, align 8
  %130 = getelementptr inbounds i8, i8* %129, i64 3
  store i8* %130, i8** %4, align 8
  %131 = load i8*, i8** %4, align 8
  %132 = call i32 @strlen(i8* %131)
  %133 = icmp eq i32 %132, 4
  br i1 %133, label %134, label %148

134:                                              ; preds = %128
  %135 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 3
  %136 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load i8*, i8** %4, align 8
  %139 = getelementptr inbounds i8, i8* %138, i64 2
  %140 = load i8*, i8** %4, align 8
  %141 = load i8, i8* %140, align 1
  %142 = sext i8 %141 to i32
  %143 = load i8*, i8** %4, align 8
  %144 = getelementptr inbounds i8, i8* %143, i64 1
  %145 = load i8, i8* %144, align 1
  %146 = sext i8 %145 to i32
  %147 = call i32 (i32, i32, i8*, ...) @snprintf(i32 %137, i32 4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %139, i32 %142, i32 %146)
  br label %155

148:                                              ; preds = %128
  %149 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 3
  %150 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = load i8*, i8** %4, align 8
  %153 = getelementptr inbounds i8, i8* %152, i64 1
  %154 = call i32 @strlcpy(i32 %151, i8* %153, i32 4)
  br label %155

155:                                              ; preds = %148, %134
  br label %214

156:                                              ; preds = %42
  %157 = load i32, i32* @ISDNLOOP_FLAGS_B1ACTIVE, align 4
  %158 = xor i32 %157, -1
  %159 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 8
  %162 = and i32 %161, %158
  store i32 %162, i32* %160, align 8
  %163 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %164 = call i32 @isdnloop_free_queue(%struct.TYPE_19__* %163, i32 0)
  %165 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 1
  store i32 0, i32* %165, align 4
  %166 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %167 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 0
  store i32 %168, i32* %169, align 8
  %170 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %171 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %170, i32 0, i32 1
  %172 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %171, i32 0, i32 0
  %173 = load i32 (%struct.TYPE_20__*)*, i32 (%struct.TYPE_20__*)** %172, align 8
  %174 = call i32 %173(%struct.TYPE_20__* %9)
  %175 = load i8*, i8** @ISDN_STAT_DHUP, align 8
  %176 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 2
  store i8* %175, i8** %176, align 8
  %177 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 1
  store i32 0, i32* %177, align 4
  %178 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %179 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 0
  store i32 %180, i32* %181, align 8
  %182 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %183 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %182, i32 0, i32 1
  %184 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %183, i32 0, i32 0
  %185 = load i32 (%struct.TYPE_20__*)*, i32 (%struct.TYPE_20__*)** %184, align 8
  %186 = call i32 %185(%struct.TYPE_20__* %9)
  %187 = load i8*, i8** @ISDN_STAT_BHUP, align 8
  %188 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 2
  store i8* %187, i8** %188, align 8
  %189 = load i32, i32* @ISDNLOOP_FLAGS_B2ACTIVE, align 4
  %190 = xor i32 %189, -1
  %191 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %192 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 8
  %194 = and i32 %193, %190
  store i32 %194, i32* %192, align 8
  %195 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %196 = call i32 @isdnloop_free_queue(%struct.TYPE_19__* %195, i32 1)
  %197 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 1
  store i32 1, i32* %197, align 4
  %198 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %199 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 0
  store i32 %200, i32* %201, align 8
  %202 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %203 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %202, i32 0, i32 1
  %204 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %203, i32 0, i32 0
  %205 = load i32 (%struct.TYPE_20__*)*, i32 (%struct.TYPE_20__*)** %204, align 8
  %206 = call i32 %205(%struct.TYPE_20__* %9)
  %207 = load i8*, i8** @ISDN_STAT_DHUP, align 8
  %208 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 2
  store i8* %207, i8** %208, align 8
  %209 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 1
  store i32 1, i32* %209, align 4
  %210 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %211 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 0
  store i32 %212, i32* %213, align 8
  br label %214

214:                                              ; preds = %42, %156, %155, %119, %112, %84, %80, %70, %57
  %215 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %216 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %215, i32 0, i32 1
  %217 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %216, i32 0, i32 0
  %218 = load i32 (%struct.TYPE_20__*)*, i32 (%struct.TYPE_20__*)** %217, align 8
  %219 = call i32 %218(%struct.TYPE_20__* %9)
  br label %220

220:                                              ; preds = %214, %41
  ret void
}

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @isdnloop_free_queue(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @isdnloop_parse_setup(i8*, %struct.TYPE_20__*) #1

declare dso_local i32 @sprintf(i32, i8*, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, ...) #1

declare dso_local i64 @simple_strtoul(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
