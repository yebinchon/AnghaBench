; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_3990_erp.c_dasd_3990_erp_further_erp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_3990_erp.c_dasd_3990_erp_further_erp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_ccw_req = type { i64, i32, i32, %struct.dasd_device* }
%struct.dasd_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@dasd_3990_erp_bus_out = common dso_local global i64 0, align 8
@dasd_3990_erp_action_4 = common dso_local global i64 0, align 8
@dasd_3990_erp_action_5 = common dso_local global i64 0, align 8
@DASD_SENSE_BIT_0 = common dso_local global i8 0, align 1
@DBF_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"invalid subcommand modifier 0x%x for Diagnostic Control Command\00", align 1
@dasd_3990_erp_compound_retry = common dso_local global i64 0, align 8
@dasd_3990_erp_compound_path = common dso_local global i64 0, align 8
@dasd_3990_erp_compound_code = common dso_local global i64 0, align 8
@dasd_3990_erp_compound_config = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [42 x i8] c"ERP %p has run out of retries and failed\0A\00", align 1
@DASD_CQR_FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dasd_ccw_req* (%struct.dasd_ccw_req*)* @dasd_3990_erp_further_erp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dasd_ccw_req* @dasd_3990_erp_further_erp(%struct.dasd_ccw_req* %0) #0 {
  %2 = alloca %struct.dasd_ccw_req*, align 8
  %3 = alloca %struct.dasd_device*, align 8
  %4 = alloca i8*, align 8
  store %struct.dasd_ccw_req* %0, %struct.dasd_ccw_req** %2, align 8
  %5 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %2, align 8
  %6 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %5, i32 0, i32 3
  %7 = load %struct.dasd_device*, %struct.dasd_device** %6, align 8
  store %struct.dasd_device* %7, %struct.dasd_device** %3, align 8
  %8 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %2, align 8
  %9 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %8, i32 0, i32 2
  %10 = call i8* @dasd_get_sense(i32* %9)
  store i8* %10, i8** %4, align 8
  %11 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %2, align 8
  %12 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @dasd_3990_erp_bus_out, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %28, label %16

16:                                               ; preds = %1
  %17 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %2, align 8
  %18 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.dasd_ccw_req* (%struct.dasd_ccw_req*)*
  %21 = icmp eq %struct.dasd_ccw_req* (%struct.dasd_ccw_req*)* %20, @dasd_3990_erp_action_1
  br i1 %21, label %28, label %22

22:                                               ; preds = %16
  %23 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %2, align 8
  %24 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @dasd_3990_erp_action_4, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %22, %16, %1
  %29 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %2, align 8
  %30 = call %struct.dasd_ccw_req* @dasd_3990_erp_action_1(%struct.dasd_ccw_req* %29)
  store %struct.dasd_ccw_req* %30, %struct.dasd_ccw_req** %2, align 8
  br label %127

31:                                               ; preds = %22
  %32 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %2, align 8
  %33 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to %struct.dasd_ccw_req* (%struct.dasd_ccw_req*)*
  %36 = icmp eq %struct.dasd_ccw_req* (%struct.dasd_ccw_req*)* %35, @dasd_3990_erp_action_1_sec
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %2, align 8
  %39 = call %struct.dasd_ccw_req* @dasd_3990_erp_action_1_sec(%struct.dasd_ccw_req* %38)
  store %struct.dasd_ccw_req* %39, %struct.dasd_ccw_req** %2, align 8
  br label %126

40:                                               ; preds = %31
  %41 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %2, align 8
  %42 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @dasd_3990_erp_action_5, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %83

46:                                               ; preds = %40
  %47 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %2, align 8
  %48 = call %struct.dasd_ccw_req* @dasd_3990_erp_action_1(%struct.dasd_ccw_req* %47)
  store %struct.dasd_ccw_req* %48, %struct.dasd_ccw_req** %2, align 8
  %49 = load i8*, i8** %4, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %82

51:                                               ; preds = %46
  %52 = load i8*, i8** %4, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 2
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = load i8, i8* @DASD_SENSE_BIT_0, align 1
  %57 = sext i8 %56 to i32
  %58 = and i32 %55, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %82, label %60

60:                                               ; preds = %51
  %61 = load i8*, i8** %4, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 25
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  switch i32 %64, label %74 [
    i32 23, label %65
    i32 87, label %65
    i32 24, label %68
    i32 88, label %68
    i32 25, label %71
    i32 89, label %71
  ]

65:                                               ; preds = %60, %60
  %66 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %2, align 8
  %67 = call %struct.dasd_ccw_req* @dasd_3990_erp_DCTL(%struct.dasd_ccw_req* %66, i32 32)
  store %struct.dasd_ccw_req* %67, %struct.dasd_ccw_req** %2, align 8
  br label %81

68:                                               ; preds = %60, %60
  %69 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %2, align 8
  %70 = call %struct.dasd_ccw_req* @dasd_3990_erp_DCTL(%struct.dasd_ccw_req* %69, i32 64)
  store %struct.dasd_ccw_req* %70, %struct.dasd_ccw_req** %2, align 8
  br label %81

71:                                               ; preds = %60, %60
  %72 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %2, align 8
  %73 = call %struct.dasd_ccw_req* @dasd_3990_erp_DCTL(%struct.dasd_ccw_req* %72, i32 128)
  store %struct.dasd_ccw_req* %73, %struct.dasd_ccw_req** %2, align 8
  br label %81

74:                                               ; preds = %60
  %75 = load i32, i32* @DBF_WARNING, align 4
  %76 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %77 = load i8*, i8** %4, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 25
  %79 = load i8, i8* %78, align 1
  %80 = call i32 @DBF_DEV_EVENT(i32 %75, %struct.dasd_device* %76, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i8 signext %79)
  br label %81

81:                                               ; preds = %74, %71, %68, %65
  br label %82

82:                                               ; preds = %81, %51, %46
  br label %125

83:                                               ; preds = %40
  %84 = load i8*, i8** %4, align 8
  %85 = icmp ne i8* %84, null
  br i1 %85, label %86, label %114

86:                                               ; preds = %83
  %87 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %2, align 8
  %88 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @dasd_3990_erp_compound_retry, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %110, label %92

92:                                               ; preds = %86
  %93 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %2, align 8
  %94 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @dasd_3990_erp_compound_path, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %110, label %98

98:                                               ; preds = %92
  %99 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %2, align 8
  %100 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @dasd_3990_erp_compound_code, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %110, label %104

104:                                              ; preds = %98
  %105 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %2, align 8
  %106 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @dasd_3990_erp_compound_config, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %114

110:                                              ; preds = %104, %98, %92, %86
  %111 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %2, align 8
  %112 = load i8*, i8** %4, align 8
  %113 = call %struct.dasd_ccw_req* @dasd_3990_erp_compound(%struct.dasd_ccw_req* %111, i8* %112)
  store %struct.dasd_ccw_req* %113, %struct.dasd_ccw_req** %2, align 8
  br label %124

114:                                              ; preds = %104, %83
  %115 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %116 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %115, i32 0, i32 0
  %117 = load %struct.TYPE_2__*, %struct.TYPE_2__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 0
  %119 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %2, align 8
  %120 = call i32 @dev_err(i32* %118, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), %struct.dasd_ccw_req* %119)
  %121 = load i32, i32* @DASD_CQR_FAILED, align 4
  %122 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %2, align 8
  %123 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %122, i32 0, i32 1
  store i32 %121, i32* %123, align 8
  br label %124

124:                                              ; preds = %114, %110
  br label %125

125:                                              ; preds = %124, %82
  br label %126

126:                                              ; preds = %125, %37
  br label %127

127:                                              ; preds = %126, %28
  %128 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %2, align 8
  ret %struct.dasd_ccw_req* %128
}

declare dso_local i8* @dasd_get_sense(i32*) #1

declare dso_local %struct.dasd_ccw_req* @dasd_3990_erp_action_1(%struct.dasd_ccw_req*) #1

declare dso_local %struct.dasd_ccw_req* @dasd_3990_erp_action_1_sec(%struct.dasd_ccw_req*) #1

declare dso_local %struct.dasd_ccw_req* @dasd_3990_erp_DCTL(%struct.dasd_ccw_req*, i32) #1

declare dso_local i32 @DBF_DEV_EVENT(i32, %struct.dasd_device*, i8*, i8 signext) #1

declare dso_local %struct.dasd_ccw_req* @dasd_3990_erp_compound(%struct.dasd_ccw_req*, i8*) #1

declare dso_local i32 @dev_err(i32*, i8*, %struct.dasd_ccw_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
