; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_dbf.h_zfcp_dbf_hba_fsf_response.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_dbf.h_zfcp_dbf_hba_fsf_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_fsf_req = type { i64, %struct.fsf_qtcb*, %struct.TYPE_6__* }
%struct.fsf_qtcb = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64, i64 }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_6__ = type { %struct.zfcp_dbf* }
%struct.zfcp_dbf = type { i32 }

@FSF_PROT_GOOD = common dso_local global i64 0, align 8
@FSF_PROT_FSF_STATUS_PRESENTED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"perr\00", align 1
@FSF_GOOD = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"ferr\00", align 1
@FSF_QTCB_OPEN_PORT_WITH_DID = common dso_local global i64 0, align 8
@FSF_QTCB_OPEN_LUN = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"open\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"qtcb\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"norm\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zfcp_fsf_req*)* @zfcp_dbf_hba_fsf_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zfcp_dbf_hba_fsf_response(%struct.zfcp_fsf_req* %0) #0 {
  %2 = alloca %struct.zfcp_fsf_req*, align 8
  %3 = alloca %struct.zfcp_dbf*, align 8
  %4 = alloca %struct.fsf_qtcb*, align 8
  store %struct.zfcp_fsf_req* %0, %struct.zfcp_fsf_req** %2, align 8
  %5 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %6 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %5, i32 0, i32 2
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = load %struct.zfcp_dbf*, %struct.zfcp_dbf** %8, align 8
  store %struct.zfcp_dbf* %9, %struct.zfcp_dbf** %3, align 8
  %10 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %11 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %10, i32 0, i32 1
  %12 = load %struct.fsf_qtcb*, %struct.fsf_qtcb** %11, align 8
  store %struct.fsf_qtcb* %12, %struct.fsf_qtcb** %4, align 8
  %13 = load %struct.fsf_qtcb*, %struct.fsf_qtcb** %4, align 8
  %14 = getelementptr inbounds %struct.fsf_qtcb, %struct.fsf_qtcb* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @FSF_PROT_GOOD, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %30

19:                                               ; preds = %1
  %20 = load %struct.fsf_qtcb*, %struct.fsf_qtcb** %4, align 8
  %21 = getelementptr inbounds %struct.fsf_qtcb, %struct.fsf_qtcb* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @FSF_PROT_FSF_STATUS_PRESENTED, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %19
  %27 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %28 = load %struct.zfcp_dbf*, %struct.zfcp_dbf** %3, align 8
  %29 = call i32 @zfcp_dbf_hba_fsf_resp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 1, %struct.zfcp_fsf_req* %27, %struct.zfcp_dbf* %28)
  br label %74

30:                                               ; preds = %19, %1
  %31 = load %struct.fsf_qtcb*, %struct.fsf_qtcb** %4, align 8
  %32 = getelementptr inbounds %struct.fsf_qtcb, %struct.fsf_qtcb* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @FSF_GOOD, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %30
  %38 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %39 = load %struct.zfcp_dbf*, %struct.zfcp_dbf** %3, align 8
  %40 = call i32 @zfcp_dbf_hba_fsf_resp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 1, %struct.zfcp_fsf_req* %38, %struct.zfcp_dbf* %39)
  br label %73

41:                                               ; preds = %30
  %42 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %43 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @FSF_QTCB_OPEN_PORT_WITH_DID, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %53, label %47

47:                                               ; preds = %41
  %48 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %49 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @FSF_QTCB_OPEN_LUN, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %47, %41
  %54 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %55 = load %struct.zfcp_dbf*, %struct.zfcp_dbf** %3, align 8
  %56 = call i32 @zfcp_dbf_hba_fsf_resp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 4, %struct.zfcp_fsf_req* %54, %struct.zfcp_dbf* %55)
  br label %72

57:                                               ; preds = %47
  %58 = load %struct.fsf_qtcb*, %struct.fsf_qtcb** %4, align 8
  %59 = getelementptr inbounds %struct.fsf_qtcb, %struct.fsf_qtcb* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %57
  %64 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %65 = load %struct.zfcp_dbf*, %struct.zfcp_dbf** %3, align 8
  %66 = call i32 @zfcp_dbf_hba_fsf_resp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 5, %struct.zfcp_fsf_req* %64, %struct.zfcp_dbf* %65)
  br label %71

67:                                               ; preds = %57
  %68 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %69 = load %struct.zfcp_dbf*, %struct.zfcp_dbf** %3, align 8
  %70 = call i32 @zfcp_dbf_hba_fsf_resp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 6, %struct.zfcp_fsf_req* %68, %struct.zfcp_dbf* %69)
  br label %71

71:                                               ; preds = %67, %63
  br label %72

72:                                               ; preds = %71, %53
  br label %73

73:                                               ; preds = %72, %37
  br label %74

74:                                               ; preds = %73, %26
  ret void
}

declare dso_local i32 @zfcp_dbf_hba_fsf_resp(i8*, i32, %struct.zfcp_fsf_req*, %struct.zfcp_dbf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
