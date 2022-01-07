; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/ibmvscsi/extr_ibmvfc.c_ibmvfc_get_err_result.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/ibmvscsi/extr_ibmvfc.c_ibmvfc_get_err_result.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.ibmvfc_cmd = type { i32, i32, %struct.ibmvfc_fcp_rsp }
%struct.ibmvfc_fcp_rsp = type { i32, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@FCP_RSP_LEN_VALID = common dso_local global i32 0, align 4
@DID_ERROR = common dso_local global i32 0, align 4
@cmd_status = common dso_local global %struct.TYPE_6__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ibmvfc_cmd*)* @ibmvfc_get_err_result to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ibmvfc_get_err_result(%struct.ibmvfc_cmd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ibmvfc_cmd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ibmvfc_fcp_rsp*, align 8
  %6 = alloca i32, align 4
  store %struct.ibmvfc_cmd* %0, %struct.ibmvfc_cmd** %3, align 8
  %7 = load %struct.ibmvfc_cmd*, %struct.ibmvfc_cmd** %3, align 8
  %8 = getelementptr inbounds %struct.ibmvfc_cmd, %struct.ibmvfc_cmd* %7, i32 0, i32 2
  store %struct.ibmvfc_fcp_rsp* %8, %struct.ibmvfc_fcp_rsp** %5, align 8
  %9 = load %struct.ibmvfc_fcp_rsp*, %struct.ibmvfc_fcp_rsp** %5, align 8
  %10 = getelementptr inbounds %struct.ibmvfc_fcp_rsp, %struct.ibmvfc_fcp_rsp* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %6, align 4
  %12 = load %struct.ibmvfc_fcp_rsp*, %struct.ibmvfc_fcp_rsp** %5, align 8
  %13 = getelementptr inbounds %struct.ibmvfc_fcp_rsp, %struct.ibmvfc_fcp_rsp* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @FCP_RSP_LEN_VALID, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %37

18:                                               ; preds = %1
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %18
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 4
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 8
  br i1 %26, label %34, label %27

27:                                               ; preds = %24, %21, %18
  %28 = load %struct.ibmvfc_fcp_rsp*, %struct.ibmvfc_fcp_rsp** %5, align 8
  %29 = getelementptr inbounds %struct.ibmvfc_fcp_rsp, %struct.ibmvfc_fcp_rsp* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %27, %24
  %35 = load i32, i32* @DID_ERROR, align 4
  %36 = shl i32 %35, 16
  store i32 %36, i32* %2, align 4
  br label %66

37:                                               ; preds = %27, %1
  %38 = load %struct.ibmvfc_cmd*, %struct.ibmvfc_cmd** %3, align 8
  %39 = getelementptr inbounds %struct.ibmvfc_cmd, %struct.ibmvfc_cmd* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.ibmvfc_cmd*, %struct.ibmvfc_cmd** %3, align 8
  %42 = getelementptr inbounds %struct.ibmvfc_cmd, %struct.ibmvfc_cmd* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @ibmvfc_get_err_index(i32 %40, i32 %43)
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* %4, align 4
  %46 = icmp sge i32 %45, 0
  br i1 %46, label %47, label %59

47:                                               ; preds = %37
  %48 = load %struct.ibmvfc_fcp_rsp*, %struct.ibmvfc_fcp_rsp** %5, align 8
  %49 = getelementptr inbounds %struct.ibmvfc_fcp_rsp, %struct.ibmvfc_fcp_rsp* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cmd_status, align 8
  %52 = load i32, i32* %4, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = shl i32 %56, 16
  %58 = or i32 %50, %57
  store i32 %58, i32* %2, align 4
  br label %66

59:                                               ; preds = %37
  %60 = load %struct.ibmvfc_fcp_rsp*, %struct.ibmvfc_fcp_rsp** %5, align 8
  %61 = getelementptr inbounds %struct.ibmvfc_fcp_rsp, %struct.ibmvfc_fcp_rsp* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @DID_ERROR, align 4
  %64 = shl i32 %63, 16
  %65 = or i32 %62, %64
  store i32 %65, i32* %2, align 4
  br label %66

66:                                               ; preds = %59, %47, %34
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i32 @ibmvfc_get_err_index(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
