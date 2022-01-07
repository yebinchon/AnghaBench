; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_hpsa.c_hpsa_scsi_do_report_luns.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_hpsa.c_hpsa_scsi_do_report_luns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctlr_info = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.ReportLUNdata = type { i32 }
%struct.CommandList = type { %struct.ErrorInfo*, %struct.TYPE_4__ }
%struct.ErrorInfo = type { i64 }
%struct.TYPE_4__ = type { i32* }

@IO_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"cmd_special_alloc returned NULL!\0A\00", align 1
@HPSA_REPORT_LOG = common dso_local global i32 0, align 4
@HPSA_REPORT_PHYS = common dso_local global i32 0, align 4
@TYPE_CMD = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@CMD_DATA_UNDERRUN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ctlr_info*, i32, %struct.ReportLUNdata*, i32, i32)* @hpsa_scsi_do_report_luns to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hpsa_scsi_do_report_luns(%struct.ctlr_info* %0, i32 %1, %struct.ReportLUNdata* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ctlr_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ReportLUNdata*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.CommandList*, align 8
  %14 = alloca [8 x i8], align 1
  %15 = alloca %struct.ErrorInfo*, align 8
  store %struct.ctlr_info* %0, %struct.ctlr_info** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.ReportLUNdata* %2, %struct.ReportLUNdata** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load i32, i32* @IO_OK, align 4
  store i32 %16, i32* %12, align 4
  %17 = load %struct.ctlr_info*, %struct.ctlr_info** %7, align 8
  %18 = call %struct.CommandList* @cmd_special_alloc(%struct.ctlr_info* %17)
  store %struct.CommandList* %18, %struct.CommandList** %13, align 8
  %19 = load %struct.CommandList*, %struct.CommandList** %13, align 8
  %20 = icmp eq %struct.CommandList* %19, null
  br i1 %20, label %21, label %27

21:                                               ; preds = %5
  %22 = load %struct.ctlr_info*, %struct.ctlr_info** %7, align 8
  %23 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %22, i32 0, i32 0
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = call i32 @dev_err(i32* %25, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %80

27:                                               ; preds = %5
  %28 = getelementptr inbounds [8 x i8], [8 x i8]* %14, i64 0, i64 0
  %29 = call i32 @memset(i8* %28, i32 0, i32 8)
  %30 = load %struct.CommandList*, %struct.CommandList** %13, align 8
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i32, i32* @HPSA_REPORT_LOG, align 4
  br label %37

35:                                               ; preds = %27
  %36 = load i32, i32* @HPSA_REPORT_PHYS, align 4
  br label %37

37:                                               ; preds = %35, %33
  %38 = phi i32 [ %34, %33 ], [ %36, %35 ]
  %39 = load %struct.ctlr_info*, %struct.ctlr_info** %7, align 8
  %40 = load %struct.ReportLUNdata*, %struct.ReportLUNdata** %9, align 8
  %41 = load i32, i32* %10, align 4
  %42 = getelementptr inbounds [8 x i8], [8 x i8]* %14, i64 0, i64 0
  %43 = load i32, i32* @TYPE_CMD, align 4
  %44 = call i32 @fill_cmd(%struct.CommandList* %30, i32 %38, %struct.ctlr_info* %39, %struct.ReportLUNdata* %40, i32 %41, i32 0, i8* %42, i32 %43)
  %45 = load i32, i32* %11, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %37
  %48 = load i32, i32* %11, align 4
  %49 = load %struct.CommandList*, %struct.CommandList** %13, align 8
  %50 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 1
  store i32 %48, i32* %53, align 4
  br label %54

54:                                               ; preds = %47, %37
  %55 = load %struct.ctlr_info*, %struct.ctlr_info** %7, align 8
  %56 = load %struct.CommandList*, %struct.CommandList** %13, align 8
  %57 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %58 = call i32 @hpsa_scsi_do_simple_cmd_with_retry(%struct.ctlr_info* %55, %struct.CommandList* %56, i32 %57)
  %59 = load %struct.CommandList*, %struct.CommandList** %13, align 8
  %60 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %59, i32 0, i32 0
  %61 = load %struct.ErrorInfo*, %struct.ErrorInfo** %60, align 8
  store %struct.ErrorInfo* %61, %struct.ErrorInfo** %15, align 8
  %62 = load %struct.ErrorInfo*, %struct.ErrorInfo** %15, align 8
  %63 = getelementptr inbounds %struct.ErrorInfo, %struct.ErrorInfo* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %75

66:                                               ; preds = %54
  %67 = load %struct.ErrorInfo*, %struct.ErrorInfo** %15, align 8
  %68 = getelementptr inbounds %struct.ErrorInfo, %struct.ErrorInfo* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @CMD_DATA_UNDERRUN, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %66
  %73 = load %struct.CommandList*, %struct.CommandList** %13, align 8
  %74 = call i32 @hpsa_scsi_interpret_error(%struct.CommandList* %73)
  store i32 -1, i32* %12, align 4
  br label %75

75:                                               ; preds = %72, %66, %54
  %76 = load %struct.ctlr_info*, %struct.ctlr_info** %7, align 8
  %77 = load %struct.CommandList*, %struct.CommandList** %13, align 8
  %78 = call i32 @cmd_special_free(%struct.ctlr_info* %76, %struct.CommandList* %77)
  %79 = load i32, i32* %12, align 4
  store i32 %79, i32* %6, align 4
  br label %80

80:                                               ; preds = %75, %21
  %81 = load i32, i32* %6, align 4
  ret i32 %81
}

declare dso_local %struct.CommandList* @cmd_special_alloc(%struct.ctlr_info*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @fill_cmd(%struct.CommandList*, i32, %struct.ctlr_info*, %struct.ReportLUNdata*, i32, i32, i8*, i32) #1

declare dso_local i32 @hpsa_scsi_do_simple_cmd_with_retry(%struct.ctlr_info*, %struct.CommandList*, i32) #1

declare dso_local i32 @hpsa_scsi_interpret_error(%struct.CommandList*) #1

declare dso_local i32 @cmd_special_free(%struct.ctlr_info*, %struct.CommandList*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
