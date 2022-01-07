; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_53c700.c_NCR_700_data_residual.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_53c700.c_NCR_700_data_residual.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i64* }
%struct.NCR_700_Host_Parameters = type { i64, i64 }

@DFIFO_REG = common dso_local global i32 0, align 4
@DBC_REG = common dso_local global i32 0, align 4
@SXFER_REG = common dso_local global i32 0, align 4
@CTEST0_REG = common dso_local global i32 0, align 4
@SSTAT2_REG = common dso_local global i32 0, align 4
@SSTAT1_REG = common dso_local global i32 0, align 4
@SIDL_REG_FULL = common dso_local global i32 0, align 4
@SODL_REG_FULL = common dso_local global i32 0, align 4
@SODR_REG_FULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Scsi_Host*)* @NCR_700_data_residual to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @NCR_700_data_residual(%struct.Scsi_Host* %0) #0 {
  %2 = alloca %struct.Scsi_Host*, align 8
  %3 = alloca %struct.NCR_700_Host_Parameters*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %2, align 8
  %8 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %9 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %8, i32 0, i32 0
  %10 = load i64*, i64** %9, align 8
  %11 = getelementptr inbounds i64, i64* %10, i64 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.NCR_700_Host_Parameters*
  store %struct.NCR_700_Host_Parameters* %13, %struct.NCR_700_Host_Parameters** %3, align 8
  store i32 0, i32* %5, align 4
  %14 = load %struct.NCR_700_Host_Parameters*, %struct.NCR_700_Host_Parameters** %3, align 8
  %15 = getelementptr inbounds %struct.NCR_700_Host_Parameters, %struct.NCR_700_Host_Parameters* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %1
  %19 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %20 = load i32, i32* @DFIFO_REG, align 4
  %21 = call i32 @NCR_700_readb(%struct.Scsi_Host* %19, i32 %20)
  %22 = and i32 %21, 127
  %23 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %24 = load i32, i32* @DBC_REG, align 4
  %25 = call i32 @NCR_700_readl(%struct.Scsi_Host* %23, i32 %24)
  %26 = and i32 %25, 127
  %27 = sub nsw i32 %22, %26
  %28 = and i32 %27, 127
  store i32 %28, i32* %4, align 4
  br label %40

29:                                               ; preds = %1
  %30 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %31 = load i32, i32* @DFIFO_REG, align 4
  %32 = call i32 @NCR_700_readb(%struct.Scsi_Host* %30, i32 %31)
  %33 = and i32 %32, 63
  %34 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %35 = load i32, i32* @DBC_REG, align 4
  %36 = call i32 @NCR_700_readl(%struct.Scsi_Host* %34, i32 %35)
  %37 = and i32 %36, 63
  %38 = sub nsw i32 %33, %37
  %39 = and i32 %38, 63
  store i32 %39, i32* %4, align 4
  br label %40

40:                                               ; preds = %29, %18
  %41 = load %struct.NCR_700_Host_Parameters*, %struct.NCR_700_Host_Parameters** %3, align 8
  %42 = getelementptr inbounds %struct.NCR_700_Host_Parameters, %struct.NCR_700_Host_Parameters* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %40
  %46 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %47 = load i32, i32* @SXFER_REG, align 4
  %48 = call i32 @NCR_700_readb(%struct.Scsi_Host* %46, i32 %47)
  %49 = and i32 %48, 15
  store i32 %49, i32* %5, align 4
  br label %50

50:                                               ; preds = %45, %40
  %51 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %52 = load i32, i32* @CTEST0_REG, align 4
  %53 = call i32 @NCR_700_readb(%struct.Scsi_Host* %51, i32 %52)
  %54 = and i32 %53, 1
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %6, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %80

57:                                               ; preds = %50
  %58 = load i32, i32* %5, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %57
  %61 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %62 = load i32, i32* @SSTAT2_REG, align 4
  %63 = call i32 @NCR_700_readb(%struct.Scsi_Host* %61, i32 %62)
  %64 = and i32 %63, 240
  %65 = ashr i32 %64, 4
  %66 = load i32, i32* %4, align 4
  %67 = add nsw i32 %66, %65
  store i32 %67, i32* %4, align 4
  br label %79

68:                                               ; preds = %57
  %69 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %70 = load i32, i32* @SSTAT1_REG, align 4
  %71 = call i32 @NCR_700_readb(%struct.Scsi_Host* %69, i32 %70)
  %72 = load i32, i32* @SIDL_REG_FULL, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %68
  %76 = load i32, i32* %4, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %4, align 4
  br label %78

78:                                               ; preds = %75, %68
  br label %79

79:                                               ; preds = %78, %60
  br label %103

80:                                               ; preds = %50
  %81 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %82 = load i32, i32* @SSTAT1_REG, align 4
  %83 = call i32 @NCR_700_readb(%struct.Scsi_Host* %81, i32 %82)
  store i32 %83, i32* %7, align 4
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* @SODL_REG_FULL, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %80
  %89 = load i32, i32* %4, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %4, align 4
  br label %91

91:                                               ; preds = %88, %80
  %92 = load i32, i32* %5, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %102

94:                                               ; preds = %91
  %95 = load i32, i32* %7, align 4
  %96 = load i32, i32* @SODR_REG_FULL, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %94
  %100 = load i32, i32* %4, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %4, align 4
  br label %102

102:                                              ; preds = %99, %94, %91
  br label %103

103:                                              ; preds = %102, %79
  %104 = load i32, i32* %4, align 4
  ret i32 %104
}

declare dso_local i32 @NCR_700_readb(%struct.Scsi_Host*, i32) #1

declare dso_local i32 @NCR_700_readl(%struct.Scsi_Host*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
