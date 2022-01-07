; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_hpsa.c_hpsa_gather_lun_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_hpsa.c_hpsa_gather_lun_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctlr_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ReportLUNdata = type { i64 }

@.str = private unnamed_addr constant [30 x i8] c"report physical LUNs failed.\0A\00", align 1
@HPSA_MAX_PHYS_LUN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"maximum physical LUNs (%d) exceeded.  %d LUNs ignored.\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"report logical LUNs failed.\0A\00", align 1
@HPSA_MAX_LUN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [55 x i8] c"maximum logical LUNs (%d) exceeded.  %d LUNs ignored.\0A\00", align 1
@.str.4 = private unnamed_addr constant [65 x i8] c"maximum logical + physical LUNs (%d) exceeded. %d LUNs ignored.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ctlr_info*, i32, %struct.ReportLUNdata*, i32*, %struct.ReportLUNdata*, i32*)* @hpsa_gather_lun_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hpsa_gather_lun_info(%struct.ctlr_info* %0, i32 %1, %struct.ReportLUNdata* %2, i32* %3, %struct.ReportLUNdata* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ctlr_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ReportLUNdata*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.ReportLUNdata*, align 8
  %13 = alloca i32*, align 8
  store %struct.ctlr_info* %0, %struct.ctlr_info** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.ReportLUNdata* %2, %struct.ReportLUNdata** %10, align 8
  store i32* %3, i32** %11, align 8
  store %struct.ReportLUNdata* %4, %struct.ReportLUNdata** %12, align 8
  store i32* %5, i32** %13, align 8
  %14 = load %struct.ctlr_info*, %struct.ctlr_info** %8, align 8
  %15 = load %struct.ReportLUNdata*, %struct.ReportLUNdata** %10, align 8
  %16 = load i32, i32* %9, align 4
  %17 = call i64 @hpsa_scsi_do_report_phys_luns(%struct.ctlr_info* %14, %struct.ReportLUNdata* %15, i32 %16, i32 0)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %6
  %20 = load %struct.ctlr_info*, %struct.ctlr_info** %8, align 8
  %21 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = call i32 @dev_err(i32* %23, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  br label %117

25:                                               ; preds = %6
  %26 = load %struct.ReportLUNdata*, %struct.ReportLUNdata** %10, align 8
  %27 = getelementptr inbounds %struct.ReportLUNdata, %struct.ReportLUNdata* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to i32*
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @be32_to_cpu(i32 %30)
  %32 = sdiv i32 %31, 8
  %33 = load i32*, i32** %11, align 8
  store i32 %32, i32* %33, align 4
  %34 = load i32*, i32** %11, align 8
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @HPSA_MAX_PHYS_LUN, align 4
  %37 = icmp sgt i32 %35, %36
  br i1 %37, label %38, label %51

38:                                               ; preds = %25
  %39 = load %struct.ctlr_info*, %struct.ctlr_info** %8, align 8
  %40 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* @HPSA_MAX_PHYS_LUN, align 4
  %44 = load i32*, i32** %11, align 8
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @HPSA_MAX_PHYS_LUN, align 4
  %47 = sub nsw i32 %45, %46
  %48 = call i32 @dev_warn(i32* %42, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i32 %43, i32 %47)
  %49 = load i32, i32* @HPSA_MAX_PHYS_LUN, align 4
  %50 = load i32*, i32** %11, align 8
  store i32 %49, i32* %50, align 4
  br label %51

51:                                               ; preds = %38, %25
  %52 = load %struct.ctlr_info*, %struct.ctlr_info** %8, align 8
  %53 = load %struct.ReportLUNdata*, %struct.ReportLUNdata** %12, align 8
  %54 = load i32, i32* %9, align 4
  %55 = call i64 @hpsa_scsi_do_report_log_luns(%struct.ctlr_info* %52, %struct.ReportLUNdata* %53, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %51
  %58 = load %struct.ctlr_info*, %struct.ctlr_info** %8, align 8
  %59 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %58, i32 0, i32 0
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = call i32 @dev_err(i32* %61, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  br label %117

63:                                               ; preds = %51
  %64 = load %struct.ReportLUNdata*, %struct.ReportLUNdata** %12, align 8
  %65 = getelementptr inbounds %struct.ReportLUNdata, %struct.ReportLUNdata* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = inttoptr i64 %66 to i32*
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @be32_to_cpu(i32 %68)
  %70 = sdiv i32 %69, 8
  %71 = load i32*, i32** %13, align 8
  store i32 %70, i32* %71, align 4
  %72 = load i32*, i32** %13, align 8
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @HPSA_MAX_LUN, align 4
  %75 = icmp sgt i32 %73, %74
  br i1 %75, label %76, label %89

76:                                               ; preds = %63
  %77 = load %struct.ctlr_info*, %struct.ctlr_info** %8, align 8
  %78 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %77, i32 0, i32 0
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32, i32* @HPSA_MAX_LUN, align 4
  %82 = load i32*, i32** %13, align 8
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @HPSA_MAX_LUN, align 4
  %85 = sub nsw i32 %83, %84
  %86 = call i32 @dev_warn(i32* %80, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0), i32 %81, i32 %85)
  %87 = load i32, i32* @HPSA_MAX_LUN, align 4
  %88 = load i32*, i32** %13, align 8
  store i32 %87, i32* %88, align 4
  br label %89

89:                                               ; preds = %76, %63
  %90 = load i32*, i32** %13, align 8
  %91 = load i32, i32* %90, align 4
  %92 = load i32*, i32** %11, align 8
  %93 = load i32, i32* %92, align 4
  %94 = add nsw i32 %91, %93
  %95 = load i32, i32* @HPSA_MAX_PHYS_LUN, align 4
  %96 = icmp sgt i32 %94, %95
  br i1 %96, label %97, label %116

97:                                               ; preds = %89
  %98 = load %struct.ctlr_info*, %struct.ctlr_info** %8, align 8
  %99 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %98, i32 0, i32 0
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load i32, i32* @HPSA_MAX_PHYS_LUN, align 4
  %103 = load i32*, i32** %11, align 8
  %104 = load i32, i32* %103, align 4
  %105 = load i32*, i32** %13, align 8
  %106 = load i32, i32* %105, align 4
  %107 = add nsw i32 %104, %106
  %108 = load i32, i32* @HPSA_MAX_PHYS_LUN, align 4
  %109 = sub nsw i32 %107, %108
  %110 = call i32 @dev_warn(i32* %101, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.4, i64 0, i64 0), i32 %102, i32 %109)
  %111 = load i32, i32* @HPSA_MAX_PHYS_LUN, align 4
  %112 = load i32*, i32** %11, align 8
  %113 = load i32, i32* %112, align 4
  %114 = sub nsw i32 %111, %113
  %115 = load i32*, i32** %13, align 8
  store i32 %114, i32* %115, align 4
  br label %116

116:                                              ; preds = %97, %89
  store i32 0, i32* %7, align 4
  br label %117

117:                                              ; preds = %116, %57, %19
  %118 = load i32, i32* %7, align 4
  ret i32 %118
}

declare dso_local i64 @hpsa_scsi_do_report_phys_luns(%struct.ctlr_info*, %struct.ReportLUNdata*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32, i32) #1

declare dso_local i64 @hpsa_scsi_do_report_log_luns(%struct.ctlr_info*, %struct.ReportLUNdata*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
