; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_fsf.c_zfcp_fsf_abort_fcp_command_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_fsf.c_zfcp_fsf_abort_fcp_command_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_fsf_req = type { i32, %struct.TYPE_7__*, %struct.zfcp_unit* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %union.fsf_status_qual }
%union.fsf_status_qual = type { i32* }
%struct.zfcp_unit = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }

@ZFCP_STATUS_FSFREQ_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"fsafch1\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"fsafch2\00", align 1
@ZFCP_STATUS_FSFREQ_ABORTNOTNEEDED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"fsafch3\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"fsafch4\00", align 1
@ZFCP_STATUS_FSFREQ_ABORTSUCCEEDED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zfcp_fsf_req*)* @zfcp_fsf_abort_fcp_command_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zfcp_fsf_abort_fcp_command_handler(%struct.zfcp_fsf_req* %0) #0 {
  %2 = alloca %struct.zfcp_fsf_req*, align 8
  %3 = alloca %struct.zfcp_unit*, align 8
  %4 = alloca %union.fsf_status_qual*, align 8
  store %struct.zfcp_fsf_req* %0, %struct.zfcp_fsf_req** %2, align 8
  %5 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %6 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %5, i32 0, i32 2
  %7 = load %struct.zfcp_unit*, %struct.zfcp_unit** %6, align 8
  store %struct.zfcp_unit* %7, %struct.zfcp_unit** %3, align 8
  %8 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %9 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %8, i32 0, i32 1
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  store %union.fsf_status_qual* %12, %union.fsf_status_qual** %4, align 8
  %13 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %14 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @ZFCP_STATUS_FSFREQ_ERROR, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  br label %127

20:                                               ; preds = %1
  %21 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %22 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %21, i32 0, i32 1
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  switch i32 %26, label %127 [
    i32 130, label %27
    i32 132, label %53
    i32 135, label %77
    i32 131, label %83
    i32 133, label %94
    i32 136, label %103
    i32 134, label %121
  ]

27:                                               ; preds = %20
  %28 = load %union.fsf_status_qual*, %union.fsf_status_qual** %4, align 8
  %29 = bitcast %union.fsf_status_qual* %28 to i32**
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = load %union.fsf_status_qual*, %union.fsf_status_qual** %4, align 8
  %34 = bitcast %union.fsf_status_qual* %33 to i32**
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp eq i32 %32, %37
  br i1 %38, label %39, label %52

39:                                               ; preds = %27
  %40 = load %struct.zfcp_unit*, %struct.zfcp_unit** %3, align 8
  %41 = getelementptr inbounds %struct.zfcp_unit, %struct.zfcp_unit* %40, i32 0, i32 0
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %46 = call i32 @zfcp_erp_adapter_reopen(i32 %44, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %struct.zfcp_fsf_req* %45)
  %47 = load i32, i32* @ZFCP_STATUS_FSFREQ_ERROR, align 4
  %48 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %49 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 8
  br label %52

52:                                               ; preds = %39, %27
  br label %127

53:                                               ; preds = %20
  %54 = load %union.fsf_status_qual*, %union.fsf_status_qual** %4, align 8
  %55 = bitcast %union.fsf_status_qual* %54 to i32**
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  %58 = load i32, i32* %57, align 4
  %59 = load %union.fsf_status_qual*, %union.fsf_status_qual** %4, align 8
  %60 = bitcast %union.fsf_status_qual* %59 to i32**
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp eq i32 %58, %63
  br i1 %64, label %65, label %76

65:                                               ; preds = %53
  %66 = load %struct.zfcp_unit*, %struct.zfcp_unit** %3, align 8
  %67 = getelementptr inbounds %struct.zfcp_unit, %struct.zfcp_unit* %66, i32 0, i32 0
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %67, align 8
  %69 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %70 = call i32 @zfcp_erp_port_reopen(%struct.TYPE_8__* %68, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), %struct.zfcp_fsf_req* %69)
  %71 = load i32, i32* @ZFCP_STATUS_FSFREQ_ERROR, align 4
  %72 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %73 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = or i32 %74, %71
  store i32 %75, i32* %73, align 8
  br label %76

76:                                               ; preds = %65, %53
  br label %127

77:                                               ; preds = %20
  %78 = load i32, i32* @ZFCP_STATUS_FSFREQ_ABORTNOTNEEDED, align 4
  %79 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %80 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = or i32 %81, %78
  store i32 %82, i32* %80, align 8
  br label %127

83:                                               ; preds = %20
  %84 = load %struct.zfcp_unit*, %struct.zfcp_unit** %3, align 8
  %85 = getelementptr inbounds %struct.zfcp_unit, %struct.zfcp_unit* %84, i32 0, i32 0
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %85, align 8
  %87 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %88 = call i32 @zfcp_erp_port_boxed(%struct.TYPE_8__* %86, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), %struct.zfcp_fsf_req* %87)
  %89 = load i32, i32* @ZFCP_STATUS_FSFREQ_ERROR, align 4
  %90 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %91 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = or i32 %92, %89
  store i32 %93, i32* %91, align 8
  br label %127

94:                                               ; preds = %20
  %95 = load %struct.zfcp_unit*, %struct.zfcp_unit** %3, align 8
  %96 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %97 = call i32 @zfcp_erp_unit_boxed(%struct.zfcp_unit* %95, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), %struct.zfcp_fsf_req* %96)
  %98 = load i32, i32* @ZFCP_STATUS_FSFREQ_ERROR, align 4
  %99 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %100 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = or i32 %101, %98
  store i32 %102, i32* %100, align 8
  br label %127

103:                                              ; preds = %20
  %104 = load %union.fsf_status_qual*, %union.fsf_status_qual** %4, align 8
  %105 = bitcast %union.fsf_status_qual* %104 to i32**
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 0
  %108 = load i32, i32* %107, align 4
  switch i32 %108, label %120 [
    i32 129, label %109
    i32 128, label %114
  ]

109:                                              ; preds = %103
  %110 = load %struct.zfcp_unit*, %struct.zfcp_unit** %3, align 8
  %111 = getelementptr inbounds %struct.zfcp_unit, %struct.zfcp_unit* %110, i32 0, i32 0
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %111, align 8
  %113 = call i32 @zfcp_fc_test_link(%struct.TYPE_8__* %112)
  br label %114

114:                                              ; preds = %103, %109
  %115 = load i32, i32* @ZFCP_STATUS_FSFREQ_ERROR, align 4
  %116 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %117 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = or i32 %118, %115
  store i32 %119, i32* %117, align 8
  br label %120

120:                                              ; preds = %103, %114
  br label %127

121:                                              ; preds = %20
  %122 = load i32, i32* @ZFCP_STATUS_FSFREQ_ABORTSUCCEEDED, align 4
  %123 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %124 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = or i32 %125, %122
  store i32 %126, i32* %124, align 8
  br label %127

127:                                              ; preds = %19, %20, %121, %120, %94, %83, %77, %76, %52
  ret void
}

declare dso_local i32 @zfcp_erp_adapter_reopen(i32, i32, i8*, %struct.zfcp_fsf_req*) #1

declare dso_local i32 @zfcp_erp_port_reopen(%struct.TYPE_8__*, i32, i8*, %struct.zfcp_fsf_req*) #1

declare dso_local i32 @zfcp_erp_port_boxed(%struct.TYPE_8__*, i8*, %struct.zfcp_fsf_req*) #1

declare dso_local i32 @zfcp_erp_unit_boxed(%struct.zfcp_unit*, i8*, %struct.zfcp_fsf_req*) #1

declare dso_local i32 @zfcp_fc_test_link(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
