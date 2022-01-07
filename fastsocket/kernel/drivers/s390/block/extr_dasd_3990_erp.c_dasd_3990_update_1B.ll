; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_3990_erp.c_dasd_3990_update_1B.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_3990_erp.c_dasd_3990_update_1B.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_ccw_req = type { i8*, i8*, %struct.ccw1*, %struct.TYPE_6__, %struct.dasd_ccw_req*, %struct.dasd_device* }
%struct.ccw1 = type { i64 }
%struct.TYPE_6__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.dasd_device = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@DBF_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [63 x i8] c"Write not finished because of unexpected condition - follow on\00", align 1
@.str.2 = private unnamed_addr constant [64 x i8] c"32 bit sense, action 1B, update, in transport mode - just retry\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"Imprecise ending is set - just retry\00", align 1
@DASD_CQR_FILLED = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [56 x i8] c"An error occurred in the DASD device driver, reason=%s\0A\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"02\00", align 1
@DASD_CQR_FAILED = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dasd_ccw_req* (%struct.dasd_ccw_req*, i8*)* @dasd_3990_update_1B to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dasd_ccw_req* @dasd_3990_update_1B(%struct.dasd_ccw_req* %0, i8* %1) #0 {
  %3 = alloca %struct.dasd_ccw_req*, align 8
  %4 = alloca %struct.dasd_ccw_req*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.dasd_device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.dasd_ccw_req*, align 8
  %9 = alloca %struct.dasd_ccw_req*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.ccw1*, align 8
  store %struct.dasd_ccw_req* %0, %struct.dasd_ccw_req** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %4, align 8
  %13 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %12, i32 0, i32 5
  %14 = load %struct.dasd_device*, %struct.dasd_device** %13, align 8
  store %struct.dasd_device* %14, %struct.dasd_device** %6, align 8
  store i64 0, i64* %7, align 8
  %15 = load i32, i32* @DBF_WARNING, align 4
  %16 = load %struct.dasd_device*, %struct.dasd_device** %6, align 8
  %17 = call i32 @DBF_DEV_EVENT(i32 %15, %struct.dasd_device* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0))
  %18 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %4, align 8
  store %struct.dasd_ccw_req* %18, %struct.dasd_ccw_req** %8, align 8
  br label %19

19:                                               ; preds = %24, %2
  %20 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %8, align 8
  %21 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %20, i32 0, i32 4
  %22 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %21, align 8
  %23 = icmp ne %struct.dasd_ccw_req* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %8, align 8
  %26 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %25, i32 0, i32 4
  %27 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %26, align 8
  store %struct.dasd_ccw_req* %27, %struct.dasd_ccw_req** %8, align 8
  br label %19

28:                                               ; preds = %19
  %29 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %8, align 8
  %30 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = call i64 @scsw_is_tm(%struct.TYPE_8__* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %28
  %35 = load i32, i32* @DBF_WARNING, align 4
  %36 = load %struct.dasd_device*, %struct.dasd_device** %6, align 8
  %37 = call i32 @DBF_DEV_EVENT(i32 %35, %struct.dasd_device* %36, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2, i64 0, i64 0))
  %38 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %4, align 8
  store %struct.dasd_ccw_req* %38, %struct.dasd_ccw_req** %3, align 8
  br label %173

39:                                               ; preds = %28
  %40 = load i8*, i8** %5, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 1
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = and i32 %43, 1
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %39
  %47 = load i32, i32* @DBF_WARNING, align 4
  %48 = load %struct.dasd_device*, %struct.dasd_device** %6, align 8
  %49 = call i32 @DBF_DEV_EVENT(i32 %47, %struct.dasd_device* %48, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  %50 = load i8*, i8** @DASD_CQR_FILLED, align 8
  %51 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %4, align 8
  %52 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %51, i32 0, i32 1
  store i8* %50, i8** %52, align 8
  %53 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %4, align 8
  store %struct.dasd_ccw_req* %53, %struct.dasd_ccw_req** %3, align 8
  br label %173

54:                                               ; preds = %39
  %55 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %4, align 8
  %56 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  store i64 %60, i64* %7, align 8
  %61 = load i64, i64* %7, align 8
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %73

63:                                               ; preds = %54
  %64 = load %struct.dasd_device*, %struct.dasd_device** %6, align 8
  %65 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %64, i32 0, i32 0
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = call i32 @dev_err(i32* %67, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %69 = load i8*, i8** @DASD_CQR_FAILED, align 8
  %70 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %4, align 8
  %71 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %70, i32 0, i32 1
  store i8* %69, i8** %71, align 8
  %72 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %4, align 8
  store %struct.dasd_ccw_req* %72, %struct.dasd_ccw_req** %3, align 8
  br label %173

73:                                               ; preds = %54
  %74 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %4, align 8
  store %struct.dasd_ccw_req* %74, %struct.dasd_ccw_req** %9, align 8
  %75 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %9, align 8
  %76 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 4
  store i8* %78, i8** %10, align 8
  %79 = load i8*, i8** %5, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 3
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp eq i32 %82, 1
  br i1 %83, label %84, label %96

84:                                               ; preds = %73
  %85 = load i8*, i8** %10, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 1
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  %89 = and i32 %88, 1
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %84
  %92 = load i8*, i8** @DASD_CQR_FAILED, align 8
  %93 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %4, align 8
  %94 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %93, i32 0, i32 1
  store i8* %92, i8** %94, align 8
  %95 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %4, align 8
  store %struct.dasd_ccw_req* %95, %struct.dasd_ccw_req** %3, align 8
  br label %173

96:                                               ; preds = %84, %73
  %97 = load i8*, i8** %5, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 7
  %99 = load i8, i8* %98, align 1
  %100 = sext i8 %99 to i32
  %101 = and i32 %100, 63
  %102 = icmp eq i32 %101, 1
  br i1 %102, label %103, label %106

103:                                              ; preds = %96
  %104 = load i8*, i8** %10, align 8
  %105 = getelementptr inbounds i8, i8* %104, i64 0
  store i8 -127, i8* %105, align 1
  br label %123

106:                                              ; preds = %96
  %107 = load i8*, i8** %5, align 8
  %108 = getelementptr inbounds i8, i8* %107, i64 7
  %109 = load i8, i8* %108, align 1
  %110 = sext i8 %109 to i32
  %111 = and i32 %110, 63
  %112 = icmp eq i32 %111, 3
  br i1 %112, label %113, label %116

113:                                              ; preds = %106
  %114 = load i8*, i8** %10, align 8
  %115 = getelementptr inbounds i8, i8* %114, i64 0
  store i8 -61, i8* %115, align 1
  br label %122

116:                                              ; preds = %106
  %117 = load i8*, i8** %5, align 8
  %118 = getelementptr inbounds i8, i8* %117, i64 7
  %119 = load i8, i8* %118, align 1
  %120 = load i8*, i8** %10, align 8
  %121 = getelementptr inbounds i8, i8* %120, i64 0
  store i8 %119, i8* %121, align 1
  br label %122

122:                                              ; preds = %116, %113
  br label %123

123:                                              ; preds = %122, %103
  %124 = load i8*, i8** %5, align 8
  %125 = getelementptr inbounds i8, i8* %124, i64 8
  %126 = load i8, i8* %125, align 1
  %127 = load i8*, i8** %10, align 8
  %128 = getelementptr inbounds i8, i8* %127, i64 1
  store i8 %126, i8* %128, align 1
  %129 = load i8*, i8** %5, align 8
  %130 = getelementptr inbounds i8, i8* %129, i64 9
  %131 = load i8, i8* %130, align 1
  %132 = load i8*, i8** %10, align 8
  %133 = getelementptr inbounds i8, i8* %132, i64 2
  store i8 %131, i8* %133, align 1
  %134 = load i8*, i8** %5, align 8
  %135 = getelementptr inbounds i8, i8* %134, i64 3
  %136 = load i8, i8* %135, align 1
  %137 = load i8*, i8** %10, align 8
  %138 = getelementptr inbounds i8, i8* %137, i64 3
  store i8 %136, i8* %138, align 1
  %139 = load i8*, i8** %5, align 8
  %140 = getelementptr inbounds i8, i8* %139, i64 29
  %141 = load i8, i8* %140, align 1
  %142 = load i8*, i8** %10, align 8
  %143 = getelementptr inbounds i8, i8* %142, i64 4
  store i8 %141, i8* %143, align 1
  %144 = load i8*, i8** %5, align 8
  %145 = getelementptr inbounds i8, i8* %144, i64 30
  %146 = load i8, i8* %145, align 1
  %147 = load i8*, i8** %10, align 8
  %148 = getelementptr inbounds i8, i8* %147, i64 5
  store i8 %146, i8* %148, align 1
  %149 = load i8*, i8** %5, align 8
  %150 = getelementptr inbounds i8, i8* %149, i64 31
  %151 = load i8, i8* %150, align 1
  %152 = load i8*, i8** %10, align 8
  %153 = getelementptr inbounds i8, i8* %152, i64 7
  store i8 %151, i8* %153, align 1
  %154 = load i8*, i8** %10, align 8
  %155 = getelementptr inbounds i8, i8* %154, i64 8
  %156 = load i8*, i8** %5, align 8
  %157 = getelementptr inbounds i8, i8* %156, i64 11
  %158 = call i32 @memcpy(i8* %155, i8* %157, i32 8)
  %159 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %9, align 8
  %160 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %159, i32 0, i32 2
  %161 = load %struct.ccw1*, %struct.ccw1** %160, align 8
  store %struct.ccw1* %161, %struct.ccw1** %11, align 8
  %162 = load %struct.ccw1*, %struct.ccw1** %11, align 8
  %163 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %162, i32 1
  store %struct.ccw1* %163, %struct.ccw1** %11, align 8
  %164 = load %struct.ccw1*, %struct.ccw1** %11, align 8
  %165 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %164, i32 1
  store %struct.ccw1* %165, %struct.ccw1** %11, align 8
  %166 = load i64, i64* %7, align 8
  %167 = load %struct.ccw1*, %struct.ccw1** %11, align 8
  %168 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %167, i32 0, i32 0
  store i64 %166, i64* %168, align 8
  %169 = load i8*, i8** @DASD_CQR_FILLED, align 8
  %170 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %9, align 8
  %171 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %170, i32 0, i32 1
  store i8* %169, i8** %171, align 8
  %172 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %9, align 8
  store %struct.dasd_ccw_req* %172, %struct.dasd_ccw_req** %3, align 8
  br label %173

173:                                              ; preds = %123, %91, %63, %46, %34
  %174 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  ret %struct.dasd_ccw_req* %174
}

declare dso_local i32 @DBF_DEV_EVENT(i32, %struct.dasd_device*, i8*, i8*) #1

declare dso_local i64 @scsw_is_tm(%struct.TYPE_8__*) #1

declare dso_local i32 @dev_err(i32*, i8*, i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
