; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/rio/extr_rioroute.c_RIOFindFreeID.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/rio/extr_rioroute.c_RIOFindFreeID.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rio_info = type { i32 }
%struct.Host = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@MAX_RUP = common dso_local global i32 0, align 4
@RIO_DEBUG_ROUTE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Scanning unit %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"      This slot is empty.\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"Make tentative entry for first unit %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"Make tentative entry for second unit %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"Starting to scan for tentative slots\0A\00", align 1
@SLOT_TENTATIVE = common dso_local global i32 0, align 4
@RTA16_SECOND_SLOT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [30 x i8] c"    Slot %d looks promising.\0A\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"    No it isn't, its the 1st half\0A\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"Grab tentative entry for first unit %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [48 x i8] c"Grab tentative/empty  entry for second unit %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"Swapping IDS %d %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @RIOFindFreeID(%struct.rio_info* %0, %struct.Host* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rio_info*, align 8
  %7 = alloca %struct.Host*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.rio_info* %0, %struct.rio_info** %6, align 8
  store %struct.Host* %1, %struct.Host** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load i32, i32* @MAX_RUP, align 4
  %13 = load i32*, i32** %8, align 8
  store i32 %12, i32* %13, align 4
  %14 = load i32*, i32** %9, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = load i32, i32* @MAX_RUP, align 4
  %18 = load i32*, i32** %9, align 8
  store i32 %17, i32* %18, align 4
  br label %19

19:                                               ; preds = %16, %4
  store i32 0, i32* %10, align 4
  br label %20

20:                                               ; preds = %62, %19
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* @MAX_RUP, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %65

24:                                               ; preds = %20
  %25 = load i32, i32* @RIO_DEBUG_ROUTE, align 4
  %26 = load i32, i32* %10, align 4
  %27 = call i32 (i32, i8*, ...) @rio_dprintk(i32 %25, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load %struct.Host*, %struct.Host** %7, align 8
  %29 = getelementptr inbounds %struct.Host, %struct.Host* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = load i32, i32* %10, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %61

37:                                               ; preds = %24
  %38 = load i32, i32* @RIO_DEBUG_ROUTE, align 4
  %39 = call i32 (i32, i8*, ...) @rio_dprintk(i32 %38, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %40 = load i32*, i32** %8, align 8
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @MAX_RUP, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %54

44:                                               ; preds = %37
  %45 = load i32, i32* @RIO_DEBUG_ROUTE, align 4
  %46 = load i32, i32* %10, align 4
  %47 = call i32 (i32, i8*, ...) @rio_dprintk(i32 %45, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* %10, align 4
  %49 = load i32*, i32** %8, align 8
  store i32 %48, i32* %49, align 4
  %50 = load i32*, i32** %9, align 8
  %51 = icmp eq i32* %50, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %44
  store i32 0, i32* %5, align 4
  br label %196

53:                                               ; preds = %44
  br label %60

54:                                               ; preds = %37
  %55 = load i32, i32* @RIO_DEBUG_ROUTE, align 4
  %56 = load i32, i32* %10, align 4
  %57 = call i32 (i32, i8*, ...) @rio_dprintk(i32 %55, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* %10, align 4
  %59 = load i32*, i32** %9, align 8
  store i32 %58, i32* %59, align 4
  store i32 0, i32* %5, align 4
  br label %196

60:                                               ; preds = %53
  br label %61

61:                                               ; preds = %60, %24
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %10, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %10, align 4
  br label %20

65:                                               ; preds = %20
  %66 = load i32, i32* @RIO_DEBUG_ROUTE, align 4
  %67 = call i32 (i32, i8*, ...) @rio_dprintk(i32 %66, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %10, align 4
  br label %68

68:                                               ; preds = %192, %65
  %69 = load i32, i32* %10, align 4
  %70 = load i32, i32* @MAX_RUP, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %195

72:                                               ; preds = %68
  %73 = load %struct.Host*, %struct.Host** %7, align 8
  %74 = getelementptr inbounds %struct.Host, %struct.Host* %73, i32 0, i32 0
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = load i32, i32* %10, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @SLOT_TENTATIVE, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %94, label %84

84:                                               ; preds = %72
  %85 = load %struct.Host*, %struct.Host** %7, align 8
  %86 = getelementptr inbounds %struct.Host, %struct.Host* %85, i32 0, i32 0
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = load i32, i32* %10, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %191

94:                                               ; preds = %84, %72
  %95 = load %struct.Host*, %struct.Host** %7, align 8
  %96 = getelementptr inbounds %struct.Host, %struct.Host* %95, i32 0, i32 0
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = load i32, i32* %10, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @RTA16_SECOND_SLOT, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %191, label %106

106:                                              ; preds = %94
  %107 = load i32, i32* @RIO_DEBUG_ROUTE, align 4
  %108 = load i32, i32* %10, align 4
  %109 = call i32 (i32, i8*, ...) @rio_dprintk(i32 %107, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i32 %108)
  %110 = load i32, i32* %10, align 4
  %111 = load i32*, i32** %8, align 8
  %112 = load i32, i32* %111, align 4
  %113 = icmp eq i32 %110, %112
  br i1 %113, label %114, label %117

114:                                              ; preds = %106
  %115 = load i32, i32* @RIO_DEBUG_ROUTE, align 4
  %116 = call i32 (i32, i8*, ...) @rio_dprintk(i32 %115, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0))
  br label %192

117:                                              ; preds = %106
  %118 = load %struct.Host*, %struct.Host** %7, align 8
  %119 = getelementptr inbounds %struct.Host, %struct.Host* %118, i32 0, i32 0
  %120 = load %struct.TYPE_2__*, %struct.TYPE_2__** %119, align 8
  %121 = load i32, i32* %10, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %135

127:                                              ; preds = %117
  %128 = load %struct.rio_info*, %struct.rio_info** %6, align 8
  %129 = load %struct.Host*, %struct.Host** %7, align 8
  %130 = load i32, i32* %10, align 4
  %131 = call i64 @RIOFreeDisconnected(%struct.rio_info* %128, %struct.Host* %129, i32 %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %127
  br label %192

134:                                              ; preds = %127
  br label %135

135:                                              ; preds = %134, %117
  %136 = load i32*, i32** %8, align 8
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @MAX_RUP, align 4
  %139 = icmp eq i32 %137, %138
  br i1 %139, label %140, label %157

140:                                              ; preds = %135
  %141 = load i32, i32* @RIO_DEBUG_ROUTE, align 4
  %142 = load i32, i32* %10, align 4
  %143 = call i32 (i32, i8*, ...) @rio_dprintk(i32 %141, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0), i32 %142)
  %144 = load i32, i32* %10, align 4
  %145 = load i32*, i32** %8, align 8
  store i32 %144, i32* %145, align 4
  %146 = load %struct.Host*, %struct.Host** %7, align 8
  %147 = getelementptr inbounds %struct.Host, %struct.Host* %146, i32 0, i32 0
  %148 = load %struct.TYPE_2__*, %struct.TYPE_2__** %147, align 8
  %149 = load i32, i32* %10, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i64 %150
  %152 = call i32 @memset(%struct.TYPE_2__* %151, i32 0, i32 4)
  %153 = load i32*, i32** %9, align 8
  %154 = icmp eq i32* %153, null
  br i1 %154, label %155, label %156

155:                                              ; preds = %140
  store i32 0, i32* %5, align 4
  br label %196

156:                                              ; preds = %140
  br label %190

157:                                              ; preds = %135
  %158 = load i32, i32* @RIO_DEBUG_ROUTE, align 4
  %159 = load i32, i32* %10, align 4
  %160 = call i32 (i32, i8*, ...) @rio_dprintk(i32 %158, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.8, i64 0, i64 0), i32 %159)
  %161 = load i32, i32* %10, align 4
  %162 = load i32*, i32** %9, align 8
  store i32 %161, i32* %162, align 4
  %163 = load %struct.Host*, %struct.Host** %7, align 8
  %164 = getelementptr inbounds %struct.Host, %struct.Host* %163, i32 0, i32 0
  %165 = load %struct.TYPE_2__*, %struct.TYPE_2__** %164, align 8
  %166 = load i32, i32* %10, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %165, i64 %167
  %169 = call i32 @memset(%struct.TYPE_2__* %168, i32 0, i32 4)
  %170 = load i32*, i32** %8, align 8
  %171 = load i32, i32* %170, align 4
  %172 = load i32*, i32** %9, align 8
  %173 = load i32, i32* %172, align 4
  %174 = icmp ugt i32 %171, %173
  br i1 %174, label %175, label %189

175:                                              ; preds = %157
  %176 = load i32, i32* @RIO_DEBUG_ROUTE, align 4
  %177 = load i32*, i32** %8, align 8
  %178 = load i32, i32* %177, align 4
  %179 = load i32*, i32** %9, align 8
  %180 = load i32, i32* %179, align 4
  %181 = call i32 (i32, i8*, ...) @rio_dprintk(i32 %176, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), i32 %178, i32 %180)
  %182 = load i32*, i32** %8, align 8
  %183 = load i32, i32* %182, align 4
  store i32 %183, i32* %11, align 4
  %184 = load i32*, i32** %9, align 8
  %185 = load i32, i32* %184, align 4
  %186 = load i32*, i32** %8, align 8
  store i32 %185, i32* %186, align 4
  %187 = load i32, i32* %11, align 4
  %188 = load i32*, i32** %9, align 8
  store i32 %187, i32* %188, align 4
  br label %189

189:                                              ; preds = %175, %157
  store i32 0, i32* %5, align 4
  br label %196

190:                                              ; preds = %156
  br label %191

191:                                              ; preds = %190, %94, %84
  br label %192

192:                                              ; preds = %191, %133, %114
  %193 = load i32, i32* %10, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %10, align 4
  br label %68

195:                                              ; preds = %68
  store i32 1, i32* %5, align 4
  br label %196

196:                                              ; preds = %195, %189, %155, %54, %52
  %197 = load i32, i32* %5, align 4
  ret i32 %197
}

declare dso_local i32 @rio_dprintk(i32, i8*, ...) #1

declare dso_local i64 @RIOFreeDisconnected(%struct.rio_info*, %struct.Host*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_2__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
