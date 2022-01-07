; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_scsi.c_lpfc_reset_flush_io_context.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_scsi.c_lpfc_reset_flush_io_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_vport = type { i32, %struct.lpfc_hba* }
%struct.lpfc_hba = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32* }

@jiffies = common dso_local global i64 0, align 8
@KERN_ERR = common dso_local global i32 0, align 4
@LOG_FCP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"0724 I/O flush failure for context %s : cnt x%x\0A\00", align 1
@LPFC_CTX_LUN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"LUN\00", align 1
@LPFC_CTX_TGT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"TGT\00", align 1
@LPFC_CTX_HOST = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"HOST\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@FAILED = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_vport*, i32, i32, i32)* @lpfc_reset_flush_io_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_reset_flush_io_context(%struct.lpfc_vport* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.lpfc_vport*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.lpfc_hba*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %14 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %13, i32 0, i32 1
  %15 = load %struct.lpfc_hba*, %struct.lpfc_hba** %14, align 8
  store %struct.lpfc_hba* %15, %struct.lpfc_hba** %10, align 8
  %16 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* %9, align 4
  %20 = call i32 @lpfc_sli_sum_iocb(%struct.lpfc_vport* %16, i32 %17, i32 %18, i32 %19)
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %12, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %38

23:                                               ; preds = %4
  %24 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %25 = load %struct.lpfc_hba*, %struct.lpfc_hba** %10, align 8
  %26 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = load %struct.lpfc_hba*, %struct.lpfc_hba** %10, align 8
  %30 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds i32, i32* %28, i64 %32
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @lpfc_sli_abort_iocb(%struct.lpfc_vport* %24, i32* %33, i32 %34, i32 %35, i32 %36)
  br label %38

38:                                               ; preds = %23, %4
  %39 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %40 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = mul nsw i32 2, %41
  %43 = mul nsw i32 %42, 1000
  %44 = call i64 @msecs_to_jiffies(i32 %43)
  %45 = load i64, i64* @jiffies, align 8
  %46 = add i64 %44, %45
  store i64 %46, i64* %11, align 8
  br label %47

47:                                               ; preds = %57, %38
  %48 = load i64, i64* %11, align 8
  %49 = load i64, i64* @jiffies, align 8
  %50 = call i64 @time_after(i64 %48, i64 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = load i32, i32* %12, align 4
  %54 = icmp ne i32 %53, 0
  br label %55

55:                                               ; preds = %52, %47
  %56 = phi i1 [ false, %47 ], [ %54, %52 ]
  br i1 %56, label %57, label %65

57:                                               ; preds = %55
  %58 = call i64 @msecs_to_jiffies(i32 20)
  %59 = call i32 @schedule_timeout_uninterruptible(i64 %58)
  %60 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @lpfc_sli_sum_iocb(%struct.lpfc_vport* %60, i32 %61, i32 %62, i32 %63)
  store i32 %64, i32* %12, align 4
  br label %47

65:                                               ; preds = %55
  %66 = load i32, i32* %12, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %94

68:                                               ; preds = %65
  %69 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %70 = load i32, i32* @KERN_ERR, align 4
  %71 = load i32, i32* @LOG_FCP, align 4
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* @LPFC_CTX_LUN, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %68
  br label %89

76:                                               ; preds = %68
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* @LPFC_CTX_TGT, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %76
  br label %87

81:                                               ; preds = %76
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* @LPFC_CTX_HOST, align 4
  %84 = icmp eq i32 %82, %83
  %85 = zext i1 %84 to i64
  %86 = select i1 %84, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0)
  br label %87

87:                                               ; preds = %81, %80
  %88 = phi i8* [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), %80 ], [ %86, %81 ]
  br label %89

89:                                               ; preds = %87, %75
  %90 = phi i8* [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), %75 ], [ %88, %87 ]
  %91 = load i32, i32* %12, align 4
  %92 = call i32 @lpfc_printf_vlog(%struct.lpfc_vport* %69, i32 %70, i32 %71, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i8* %90, i32 %91)
  %93 = load i32, i32* @FAILED, align 4
  store i32 %93, i32* %5, align 4
  br label %96

94:                                               ; preds = %65
  %95 = load i32, i32* @SUCCESS, align 4
  store i32 %95, i32* %5, align 4
  br label %96

96:                                               ; preds = %94, %89
  %97 = load i32, i32* %5, align 4
  ret i32 %97
}

declare dso_local i32 @lpfc_sli_sum_iocb(%struct.lpfc_vport*, i32, i32, i32) #1

declare dso_local i32 @lpfc_sli_abort_iocb(%struct.lpfc_vport*, i32*, i32, i32, i32) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @schedule_timeout_uninterruptible(i64) #1

declare dso_local i32 @lpfc_printf_vlog(%struct.lpfc_vport*, i32, i32, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
