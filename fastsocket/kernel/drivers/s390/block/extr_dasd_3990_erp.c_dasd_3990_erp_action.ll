; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_3990_erp.c_dasd_3990_erp_action.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_3990_erp.c_dasd_3990_erp_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_ccw_req = type { i32, i32, %struct.dasd_ccw_req*, %struct.TYPE_3__, %struct.dasd_device* }
%struct.TYPE_3__ = type { i32 }
%struct.dasd_device = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@DASD_FEATURE_ERPLOG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"ERP chain at BEGINNING of ERP-ACTION\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"ERP %p (%02x) refers to %p\0A\00", align 1
@DEV_STAT_CHN_END = common dso_local global i32 0, align 4
@DEV_STAT_DEV_END = common dso_local global i32 0, align 4
@DBF_DEBUG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [56 x i8] c"ERP called for successful request %p - NO ERP necessary\00", align 1
@DASD_CQR_DONE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"ERP chain at END of ERP-ACTION\0A\00", align 1
@DASD_CQR_IN_ERP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dasd_ccw_req* @dasd_3990_erp_action(%struct.dasd_ccw_req* %0) #0 {
  %2 = alloca %struct.dasd_ccw_req*, align 8
  %3 = alloca %struct.dasd_ccw_req*, align 8
  %4 = alloca %struct.dasd_ccw_req*, align 8
  %5 = alloca %struct.dasd_device*, align 8
  %6 = alloca %struct.dasd_ccw_req*, align 8
  store %struct.dasd_ccw_req* %0, %struct.dasd_ccw_req** %3, align 8
  store %struct.dasd_ccw_req* null, %struct.dasd_ccw_req** %4, align 8
  %7 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %8 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %7, i32 0, i32 4
  %9 = load %struct.dasd_device*, %struct.dasd_device** %8, align 8
  store %struct.dasd_device* %9, %struct.dasd_device** %5, align 8
  store %struct.dasd_ccw_req* null, %struct.dasd_ccw_req** %6, align 8
  %10 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %11 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @DASD_FEATURE_ERPLOG, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %44

16:                                               ; preds = %1
  %17 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %18 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %17, i32 0, i32 1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = call i32 (i32*, i8*, ...) @dev_err(i32* %20, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  store %struct.dasd_ccw_req* %22, %struct.dasd_ccw_req** %6, align 8
  br label %23

23:                                               ; preds = %39, %16
  %24 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %6, align 8
  %25 = icmp ne %struct.dasd_ccw_req* %24, null
  br i1 %25, label %26, label %43

26:                                               ; preds = %23
  %27 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %28 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %27, i32 0, i32 1
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %6, align 8
  %32 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %6, align 8
  %33 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %6, align 8
  %36 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %35, i32 0, i32 2
  %37 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %36, align 8
  %38 = call i32 (i32*, i8*, ...) @dev_err(i32* %30, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), %struct.dasd_ccw_req* %31, i32 %34, %struct.dasd_ccw_req* %37)
  br label %39

39:                                               ; preds = %26
  %40 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %6, align 8
  %41 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %40, i32 0, i32 2
  %42 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %41, align 8
  store %struct.dasd_ccw_req* %42, %struct.dasd_ccw_req** %6, align 8
  br label %23

43:                                               ; preds = %23
  br label %44

44:                                               ; preds = %43, %1
  %45 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %46 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = call i32 @scsw_cstat(i32* %47)
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %68

50:                                               ; preds = %44
  %51 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %52 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = call i32 @scsw_dstat(i32* %53)
  %55 = load i32, i32* @DEV_STAT_CHN_END, align 4
  %56 = load i32, i32* @DEV_STAT_DEV_END, align 4
  %57 = or i32 %55, %56
  %58 = icmp eq i32 %54, %57
  br i1 %58, label %59, label %68

59:                                               ; preds = %50
  %60 = load i32, i32* @DBF_DEBUG, align 4
  %61 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %62 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %63 = call i32 @DBF_DEV_EVENT(i32 %60, %struct.dasd_device* %61, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0), %struct.dasd_ccw_req* %62)
  %64 = load i32, i32* @DASD_CQR_DONE, align 4
  %65 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %66 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  %67 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  store %struct.dasd_ccw_req* %67, %struct.dasd_ccw_req** %2, align 8
  br label %131

68:                                               ; preds = %50, %44
  %69 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %70 = call %struct.dasd_ccw_req* @dasd_3990_erp_in_erp(%struct.dasd_ccw_req* %69)
  store %struct.dasd_ccw_req* %70, %struct.dasd_ccw_req** %4, align 8
  %71 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %4, align 8
  %72 = icmp eq %struct.dasd_ccw_req* %71, null
  br i1 %72, label %73, label %76

73:                                               ; preds = %68
  %74 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %75 = call %struct.dasd_ccw_req* @dasd_3990_erp_additional_erp(%struct.dasd_ccw_req* %74)
  store %struct.dasd_ccw_req* %75, %struct.dasd_ccw_req** %4, align 8
  br label %80

76:                                               ; preds = %68
  %77 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %78 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %4, align 8
  %79 = call %struct.dasd_ccw_req* @dasd_3990_erp_handle_match_erp(%struct.dasd_ccw_req* %77, %struct.dasd_ccw_req* %78)
  store %struct.dasd_ccw_req* %79, %struct.dasd_ccw_req** %4, align 8
  br label %80

80:                                               ; preds = %76, %73
  %81 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %82 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @DASD_FEATURE_ERPLOG, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %115

87:                                               ; preds = %80
  %88 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %89 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %88, i32 0, i32 1
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = call i32 (i32*, i8*, ...) @dev_err(i32* %91, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %93 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %4, align 8
  store %struct.dasd_ccw_req* %93, %struct.dasd_ccw_req** %6, align 8
  br label %94

94:                                               ; preds = %110, %87
  %95 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %6, align 8
  %96 = icmp ne %struct.dasd_ccw_req* %95, null
  br i1 %96, label %97, label %114

97:                                               ; preds = %94
  %98 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %99 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %98, i32 0, i32 1
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %6, align 8
  %103 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %6, align 8
  %104 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %6, align 8
  %107 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %106, i32 0, i32 2
  %108 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %107, align 8
  %109 = call i32 (i32*, i8*, ...) @dev_err(i32* %101, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), %struct.dasd_ccw_req* %102, i32 %105, %struct.dasd_ccw_req* %108)
  br label %110

110:                                              ; preds = %97
  %111 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %6, align 8
  %112 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %111, i32 0, i32 2
  %113 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %112, align 8
  store %struct.dasd_ccw_req* %113, %struct.dasd_ccw_req** %6, align 8
  br label %94

114:                                              ; preds = %94
  br label %115

115:                                              ; preds = %114, %80
  %116 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %4, align 8
  %117 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %116, i32 0, i32 0
  %118 = call i64 @list_empty(i32* %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %129

120:                                              ; preds = %115
  %121 = load i32, i32* @DASD_CQR_IN_ERP, align 4
  %122 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %123 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %122, i32 0, i32 1
  store i32 %121, i32* %123, align 4
  %124 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %4, align 8
  %125 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %124, i32 0, i32 0
  %126 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %127 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %126, i32 0, i32 0
  %128 = call i32 @list_add_tail(i32* %125, i32* %127)
  br label %129

129:                                              ; preds = %120, %115
  %130 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %4, align 8
  store %struct.dasd_ccw_req* %130, %struct.dasd_ccw_req** %2, align 8
  br label %131

131:                                              ; preds = %129, %59
  %132 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %2, align 8
  ret %struct.dasd_ccw_req* %132
}

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @scsw_cstat(i32*) #1

declare dso_local i32 @scsw_dstat(i32*) #1

declare dso_local i32 @DBF_DEV_EVENT(i32, %struct.dasd_device*, i8*, %struct.dasd_ccw_req*) #1

declare dso_local %struct.dasd_ccw_req* @dasd_3990_erp_in_erp(%struct.dasd_ccw_req*) #1

declare dso_local %struct.dasd_ccw_req* @dasd_3990_erp_additional_erp(%struct.dasd_ccw_req*) #1

declare dso_local %struct.dasd_ccw_req* @dasd_3990_erp_handle_match_erp(%struct.dasd_ccw_req*, %struct.dasd_ccw_req*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
