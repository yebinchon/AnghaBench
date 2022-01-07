; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_attr.c_lpfc_topology_store.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_attr.c_lpfc_topology_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.Scsi_Host = type { i64 }
%struct.lpfc_vport = type { %struct.lpfc_hba* }
%struct.lpfc_hba = type { i32, i64, i64, i32, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"nolip \00", align 1
@EINVAL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"%i\00", align 1
@LPFC_USER_LINK_SPEED_16G = common dso_local global i64 0, align 8
@KERN_ERR = common dso_local global i32 0, align 4
@LOG_INIT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"3113 Loop mode not supported at speed %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"3054 lpfc_topology changed from %d to %d\0A\00", align 1
@LPFC_SLI_REV4 = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [78 x i8] c"%d:0467 lpfc_topology attribute cannot be set to %d, allowed range is [0, 6]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @lpfc_topology_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @lpfc_topology_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.Scsi_Host*, align 8
  %11 = alloca %struct.lpfc_vport*, align 8
  %12 = alloca %struct.lpfc_hba*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %18 = load %struct.device*, %struct.device** %6, align 8
  %19 = call %struct.Scsi_Host* @class_to_shost(%struct.device* %18)
  store %struct.Scsi_Host* %19, %struct.Scsi_Host** %10, align 8
  %20 = load %struct.Scsi_Host*, %struct.Scsi_Host** %10, align 8
  %21 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.lpfc_vport*
  store %struct.lpfc_vport* %23, %struct.lpfc_vport** %11, align 8
  %24 = load %struct.lpfc_vport*, %struct.lpfc_vport** %11, align 8
  %25 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %24, i32 0, i32 0
  %26 = load %struct.lpfc_hba*, %struct.lpfc_hba** %25, align 8
  store %struct.lpfc_hba* %26, %struct.lpfc_hba** %12, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %27 = load i8*, i8** %8, align 8
  store i8* %27, i8** %15, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = call i32 @strncmp(i8* %28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i64 6)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %4
  store i32 1, i32* %14, align 4
  %32 = load i8*, i8** %8, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 6
  store i8* %33, i8** %15, align 8
  br label %34

34:                                               ; preds = %31, %4
  %35 = load i8*, i8** %15, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 0
  %37 = load i8, i8* %36, align 1
  %38 = call i32 @isdigit(i8 signext %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %34
  %41 = load i64, i64* @EINVAL, align 8
  %42 = sub i64 0, %41
  store i64 %42, i64* %5, align 8
  br label %138

43:                                               ; preds = %34
  %44 = load i8*, i8** %15, align 8
  %45 = call i32 @sscanf(i8* %44, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %13)
  %46 = icmp ne i32 %45, 1
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = load i64, i64* @EINVAL, align 8
  %49 = sub i64 0, %48
  store i64 %49, i64* %5, align 8
  br label %138

50:                                               ; preds = %43
  %51 = load i32, i32* %13, align 4
  %52 = icmp sge i32 %51, 0
  br i1 %52, label %53, label %127

53:                                               ; preds = %50
  %54 = load i32, i32* %13, align 4
  %55 = icmp sle i32 %54, 6
  br i1 %55, label %56, label %127

56:                                               ; preds = %53
  %57 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  %58 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  store i32 %59, i32* %17, align 4
  %60 = load i32, i32* %13, align 4
  %61 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  %62 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  %63 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  %64 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @LPFC_USER_LINK_SPEED_16G, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %85

68:                                               ; preds = %56
  %69 = load i32, i32* %13, align 4
  %70 = icmp eq i32 %69, 4
  br i1 %70, label %71, label %85

71:                                               ; preds = %68
  %72 = load %struct.lpfc_vport*, %struct.lpfc_vport** %11, align 8
  %73 = load i32, i32* @KERN_ERR, align 4
  %74 = load i32, i32* @LOG_INIT, align 4
  %75 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  %76 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = trunc i64 %77 to i32
  %79 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, i32, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %72, i32 %73, i32 %74, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %78)
  %80 = load i32, i32* %17, align 4
  %81 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  %82 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 8
  %83 = load i64, i64* @EINVAL, align 8
  %84 = sub i64 0, %83
  store i64 %84, i64* %5, align 8
  br label %138

85:                                               ; preds = %68, %56
  %86 = load i32, i32* %14, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %85
  %89 = load i8*, i8** %8, align 8
  %90 = call i64 @strlen(i8* %89)
  store i64 %90, i64* %5, align 8
  br label %138

91:                                               ; preds = %85
  %92 = load %struct.lpfc_vport*, %struct.lpfc_vport** %11, align 8
  %93 = load i32, i32* @KERN_ERR, align 4
  %94 = load i32, i32* @LOG_INIT, align 4
  %95 = load i32, i32* %17, align 4
  %96 = load i32, i32* %13, align 4
  %97 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, i32, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %92, i32 %93, i32 %94, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %95, i32 %96)
  %98 = load i32, i32* %17, align 4
  %99 = load i32, i32* %13, align 4
  %100 = icmp ne i32 %98, %99
  br i1 %100, label %101, label %110

101:                                              ; preds = %91
  %102 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  %103 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @LPFC_SLI_REV4, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %110

107:                                              ; preds = %101
  %108 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  %109 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %108, i32 0, i32 3
  store i32 1, i32* %109, align 8
  br label %110

110:                                              ; preds = %107, %101, %91
  %111 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  %112 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %111, i32 0, i32 5
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @lpfc_shost_from_vport(i32 %113)
  %115 = call i32 @lpfc_issue_lip(i32 %114)
  store i32 %115, i32* %16, align 4
  %116 = load i32, i32* %16, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %124

118:                                              ; preds = %110
  %119 = load i32, i32* %17, align 4
  %120 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  %121 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %120, i32 0, i32 0
  store i32 %119, i32* %121, align 8
  %122 = load i64, i64* @EINVAL, align 8
  %123 = sub i64 0, %122
  store i64 %123, i64* %5, align 8
  br label %138

124:                                              ; preds = %110
  %125 = load i8*, i8** %8, align 8
  %126 = call i64 @strlen(i8* %125)
  store i64 %126, i64* %5, align 8
  br label %138

127:                                              ; preds = %53, %50
  %128 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  %129 = load i32, i32* @KERN_ERR, align 4
  %130 = load i32, i32* @LOG_INIT, align 4
  %131 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  %132 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %131, i32 0, i32 4
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* %13, align 4
  %135 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %128, i32 %129, i32 %130, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.4, i64 0, i64 0), i32 %133, i32 %134)
  %136 = load i64, i64* @EINVAL, align 8
  %137 = sub i64 0, %136
  store i64 %137, i64* %5, align 8
  br label %138

138:                                              ; preds = %127, %124, %118, %88, %71, %47, %40
  %139 = load i64, i64* %5, align 8
  ret i64 %139
}

declare dso_local %struct.Scsi_Host* @class_to_shost(%struct.device*) #1

declare dso_local i32 @strncmp(i8*, i8*, i64) #1

declare dso_local i32 @isdigit(i8 signext) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

declare dso_local i32 @lpfc_printf_vlog(%struct.lpfc_vport*, i32, i32, i8*, i32, ...) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @lpfc_issue_lip(i32) #1

declare dso_local i32 @lpfc_shost_from_vport(i32) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
