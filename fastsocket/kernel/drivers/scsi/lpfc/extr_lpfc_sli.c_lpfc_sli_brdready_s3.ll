; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli_brdready_s3.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli_brdready_s3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32, i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@HS_FFERM = common dso_local global i32 0, align 4
@LPFC_VPORT_UNKNOWN = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@LOG_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [72 x i8] c"2751 Adapter failed to restart, status reg x%x, FW Data: A8 x%x AC x%x\0A\00", align 1
@LPFC_HBA_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_hba*, i32)* @lpfc_sli_brdready_s3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_sli_brdready_s3(%struct.lpfc_hba* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lpfc_hba*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %9 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %10 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = call i64 @lpfc_readl(i32 %11, i32* %6)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %94

15:                                               ; preds = %2
  br label %16

16:                                               ; preds = %64, %15
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %5, align 4
  %19 = and i32 %17, %18
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %31

22:                                               ; preds = %16
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @HS_FFERM, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %22
  %28 = load i32, i32* %7, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %7, align 4
  %30 = icmp slt i32 %28, 20
  br label %31

31:                                               ; preds = %27, %22, %16
  %32 = phi i1 [ false, %22 ], [ false, %16 ], [ %30, %27 ]
  br i1 %32, label %33, label %65

33:                                               ; preds = %31
  %34 = load i32, i32* %7, align 4
  %35 = icmp sle i32 %34, 5
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = call i32 @msleep(i32 10)
  br label %46

38:                                               ; preds = %33
  %39 = load i32, i32* %7, align 4
  %40 = icmp sle i32 %39, 10
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = call i32 @msleep(i32 500)
  br label %45

43:                                               ; preds = %38
  %44 = call i32 @msleep(i32 2500)
  br label %45

45:                                               ; preds = %43, %41
  br label %46

46:                                               ; preds = %45, %36
  %47 = load i32, i32* %7, align 4
  %48 = icmp eq i32 %47, 15
  br i1 %48, label %49, label %57

49:                                               ; preds = %46
  %50 = load i32, i32* @LPFC_VPORT_UNKNOWN, align 4
  %51 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %52 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %51, i32 0, i32 3
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  store i32 %50, i32* %54, align 4
  %55 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %56 = call i32 @lpfc_sli_brdrestart(%struct.lpfc_hba* %55)
  br label %57

57:                                               ; preds = %49, %46
  %58 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %59 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = call i64 @lpfc_readl(i32 %60, i32* %6)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %57
  store i32 1, i32* %8, align 4
  br label %65

64:                                               ; preds = %57
  br label %16

65:                                               ; preds = %63, %31
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* @HS_FFERM, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %65
  %71 = load i32, i32* %7, align 4
  %72 = icmp sge i32 %71, 20
  br i1 %72, label %73, label %92

73:                                               ; preds = %70, %65
  %74 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %75 = load i32, i32* @KERN_ERR, align 4
  %76 = load i32, i32* @LOG_INIT, align 4
  %77 = load i32, i32* %6, align 4
  %78 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %79 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = add nsw i64 %80, 168
  %82 = call i32 @readl(i64 %81)
  %83 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %84 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = add nsw i64 %85, 172
  %87 = call i32 @readl(i64 %86)
  %88 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %74, i32 %75, i32 %76, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0), i32 %77, i32 %82, i32 %87)
  %89 = load i32, i32* @LPFC_HBA_ERROR, align 4
  %90 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %91 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 8
  store i32 1, i32* %8, align 4
  br label %92

92:                                               ; preds = %73, %70
  %93 = load i32, i32* %8, align 4
  store i32 %93, i32* %3, align 4
  br label %94

94:                                               ; preds = %92, %14
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local i64 @lpfc_readl(i32, i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @lpfc_sli_brdrestart(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
