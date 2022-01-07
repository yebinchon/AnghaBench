; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli_chipset_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli_chipset_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i64, i64, i8*, i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EIO = common dso_local global i32 0, align 4
@HS_FFRDY = common dso_local global i32 0, align 4
@HS_MBRDY = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@LOG_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [78 x i8] c"0436 Adapter failed to init, timeout, status reg x%x, FW Data: A8 x%x AC x%x\0A\00", align 1
@LPFC_HBA_ERROR = common dso_local global i8* null, align 8
@ETIMEDOUT = common dso_local global i32 0, align 4
@HS_FFERM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [78 x i8] c"0437 Adapter failed to init, chipset, status reg x%x, FW Data: A8 x%x AC x%x\0A\00", align 1
@LPFC_VPORT_UNKNOWN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [78 x i8] c"0438 Adapter failed to init, chipset, status reg x%x, FW Data: A8 x%x AC x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_hba*)* @lpfc_sli_chipset_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_sli_chipset_init(%struct.lpfc_hba* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lpfc_hba*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %3, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %7 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %6, i32 0, i32 4
  %8 = load i32, i32* %7, align 8
  %9 = call i64 @lpfc_readl(i32 %8, i32* %4)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i32, i32* @EIO, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %153

14:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %109, %14
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @HS_FFRDY, align 4
  %18 = load i32, i32* @HS_MBRDY, align 4
  %19 = or i32 %17, %18
  %20 = and i32 %16, %19
  %21 = load i32, i32* @HS_FFRDY, align 4
  %22 = load i32, i32* @HS_MBRDY, align 4
  %23 = or i32 %21, %22
  %24 = icmp ne i32 %20, %23
  br i1 %24, label %25, label %110

25:                                               ; preds = %15
  %26 = load i32, i32* %5, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %5, align 4
  %28 = icmp sge i32 %26, 200
  br i1 %28, label %29, label %50

29:                                               ; preds = %25
  %30 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %31 = load i32, i32* @KERN_ERR, align 4
  %32 = load i32, i32* @LOG_INIT, align 4
  %33 = load i32, i32* %4, align 4
  %34 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %35 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %36, 168
  %38 = call i32 @readl(i64 %37)
  %39 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %40 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %41, 172
  %43 = call i32 @readl(i64 %42)
  %44 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %30, i32 %31, i32 %32, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %38, i32 %43)
  %45 = load i8*, i8** @LPFC_HBA_ERROR, align 8
  %46 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %47 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %46, i32 0, i32 2
  store i8* %45, i8** %47, align 8
  %48 = load i32, i32* @ETIMEDOUT, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %2, align 4
  br label %153

50:                                               ; preds = %25
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* @HS_FFERM, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %76

55:                                               ; preds = %50
  %56 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %57 = load i32, i32* @KERN_ERR, align 4
  %58 = load i32, i32* @LOG_INIT, align 4
  %59 = load i32, i32* %4, align 4
  %60 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %61 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = add nsw i64 %62, 168
  %64 = call i32 @readl(i64 %63)
  %65 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %66 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %65, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  %68 = add nsw i64 %67, 172
  %69 = call i32 @readl(i64 %68)
  %70 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %56, i32 %57, i32 %58, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.1, i64 0, i64 0), i32 %59, i32 %64, i32 %69)
  %71 = load i8*, i8** @LPFC_HBA_ERROR, align 8
  %72 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %73 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %72, i32 0, i32 2
  store i8* %71, i8** %73, align 8
  %74 = load i32, i32* @EIO, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %2, align 4
  br label %153

76:                                               ; preds = %50
  %77 = load i32, i32* %5, align 4
  %78 = icmp sle i32 %77, 10
  br i1 %78, label %79, label %81

79:                                               ; preds = %76
  %80 = call i32 @msleep(i32 10)
  br label %89

81:                                               ; preds = %76
  %82 = load i32, i32* %5, align 4
  %83 = icmp sle i32 %82, 100
  br i1 %83, label %84, label %86

84:                                               ; preds = %81
  %85 = call i32 @msleep(i32 100)
  br label %88

86:                                               ; preds = %81
  %87 = call i32 @msleep(i32 1000)
  br label %88

88:                                               ; preds = %86, %84
  br label %89

89:                                               ; preds = %88, %79
  %90 = load i32, i32* %5, align 4
  %91 = icmp eq i32 %90, 150
  br i1 %91, label %92, label %100

92:                                               ; preds = %89
  %93 = load i32, i32* @LPFC_VPORT_UNKNOWN, align 4
  %94 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %95 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %94, i32 0, i32 5
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  store i32 %93, i32* %97, align 4
  %98 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %99 = call i32 @lpfc_sli_brdrestart(%struct.lpfc_hba* %98)
  br label %100

100:                                              ; preds = %92, %89
  %101 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %102 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 8
  %104 = call i64 @lpfc_readl(i32 %103, i32* %4)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %100
  %107 = load i32, i32* @EIO, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %2, align 4
  br label %153

109:                                              ; preds = %100
  br label %15

110:                                              ; preds = %15
  %111 = load i32, i32* %4, align 4
  %112 = load i32, i32* @HS_FFERM, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %136

115:                                              ; preds = %110
  %116 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %117 = load i32, i32* @KERN_ERR, align 4
  %118 = load i32, i32* @LOG_INIT, align 4
  %119 = load i32, i32* %4, align 4
  %120 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %121 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %120, i32 0, i32 3
  %122 = load i64, i64* %121, align 8
  %123 = add nsw i64 %122, 168
  %124 = call i32 @readl(i64 %123)
  %125 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %126 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %125, i32 0, i32 3
  %127 = load i64, i64* %126, align 8
  %128 = add nsw i64 %127, 172
  %129 = call i32 @readl(i64 %128)
  %130 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %116, i32 %117, i32 %118, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.2, i64 0, i64 0), i32 %119, i32 %124, i32 %129)
  %131 = load i8*, i8** @LPFC_HBA_ERROR, align 8
  %132 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %133 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %132, i32 0, i32 2
  store i8* %131, i8** %133, align 8
  %134 = load i32, i32* @EIO, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %2, align 4
  br label %153

136:                                              ; preds = %110
  %137 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %138 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = call i32 @writel(i32 0, i64 %139)
  %141 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %142 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = call i32 @readl(i64 %143)
  %145 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %146 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = call i32 @writel(i32 -1, i64 %147)
  %149 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %150 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = call i32 @readl(i64 %151)
  store i32 0, i32* %2, align 4
  br label %153

153:                                              ; preds = %136, %115, %106, %55, %29, %11
  %154 = load i32, i32* %2, align 4
  ret i32 %154
}

declare dso_local i64 @lpfc_readl(i32, i32*) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @lpfc_sli_brdrestart(%struct.lpfc_hba*) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
