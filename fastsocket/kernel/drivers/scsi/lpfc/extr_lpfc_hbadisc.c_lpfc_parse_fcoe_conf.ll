; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_parse_fcoe_conf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_parse_fcoe_conf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32 }

@LPFC_REGION23_SIGNATURE = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@LOG_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"2567 Config region 23 has bad signature\0A\00", align 1
@LPFC_REGION23_VERSION = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"2568 Config region 23 has bad version\0A\00", align 1
@FCOE_PARAM_TYPE = common dso_local global i32 0, align 4
@FCOE_CONN_TBL_TYPE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lpfc_parse_fcoe_conf(%struct.lpfc_hba* %0, i64* %1, i32 %2) #0 {
  %4 = alloca %struct.lpfc_hba*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %4, align 8
  store i64* %1, i64** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %10 = load i32, i32* %6, align 4
  %11 = sext i32 %10 to i64
  %12 = icmp ult i64 %11, 8
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  br label %80

14:                                               ; preds = %3
  %15 = load i64*, i64** %5, align 8
  %16 = load i32, i32* @LPFC_REGION23_SIGNATURE, align 4
  %17 = call i64 @memcmp(i64* %15, i32 %16, i32 4)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %14
  %20 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %21 = load i32, i32* @KERN_ERR, align 4
  %22 = load i32, i32* @LOG_INIT, align 4
  %23 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %20, i32 %21, i32 %22, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %80

24:                                               ; preds = %14
  %25 = load i32, i32* %7, align 4
  %26 = add nsw i32 %25, 4
  store i32 %26, i32* %7, align 4
  %27 = load i64*, i64** %5, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i64, i64* %27, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @LPFC_REGION23_VERSION, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %24
  %35 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %36 = load i32, i32* @KERN_ERR, align 4
  %37 = load i32, i32* @LOG_INIT, align 4
  %38 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %35, i32 %36, i32 %37, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %80

39:                                               ; preds = %24
  %40 = load i32, i32* %7, align 4
  %41 = add nsw i32 %40, 4
  store i32 %41, i32* %7, align 4
  %42 = load i64*, i64** %5, align 8
  %43 = load i32, i32* %7, align 4
  %44 = add nsw i32 %43, 1
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i64, i64* %42, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %8, align 4
  %49 = load i64*, i64** %5, align 8
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i64, i64* %49, i64 %51
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* %7, align 4
  %55 = sub nsw i32 %53, %54
  %56 = load i32, i32* @FCOE_PARAM_TYPE, align 4
  %57 = call i64* @lpfc_get_rec_conf23(i64* %52, i32 %55, i32 %56)
  store i64* %57, i64** %9, align 8
  %58 = load i64*, i64** %9, align 8
  %59 = icmp ne i64* %58, null
  br i1 %59, label %60, label %64

60:                                               ; preds = %39
  %61 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %62 = load i64*, i64** %9, align 8
  %63 = call i32 @lpfc_read_fcoe_param(%struct.lpfc_hba* %61, i64* %62)
  br label %64

64:                                               ; preds = %60, %39
  %65 = load i64*, i64** %5, align 8
  %66 = load i32, i32* %7, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i64, i64* %65, i64 %67
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* %7, align 4
  %71 = sub nsw i32 %69, %70
  %72 = load i32, i32* @FCOE_CONN_TBL_TYPE, align 4
  %73 = call i64* @lpfc_get_rec_conf23(i64* %68, i32 %71, i32 %72)
  store i64* %73, i64** %9, align 8
  %74 = load i64*, i64** %9, align 8
  %75 = icmp ne i64* %74, null
  br i1 %75, label %76, label %80

76:                                               ; preds = %64
  %77 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %78 = load i64*, i64** %9, align 8
  %79 = call i32 @lpfc_read_fcf_conn_tbl(%struct.lpfc_hba* %77, i64* %78)
  br label %80

80:                                               ; preds = %13, %19, %34, %76, %64
  ret void
}

declare dso_local i64 @memcmp(i64*, i32, i32) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*) #1

declare dso_local i64* @lpfc_get_rec_conf23(i64*, i32, i32) #1

declare dso_local i32 @lpfc_read_fcoe_param(%struct.lpfc_hba*, i64*) #1

declare dso_local i32 @lpfc_read_fcf_conn_tbl(%struct.lpfc_hba*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
