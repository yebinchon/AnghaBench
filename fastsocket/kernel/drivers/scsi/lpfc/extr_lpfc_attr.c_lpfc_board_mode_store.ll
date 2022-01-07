; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_attr.c_lpfc_board_mode_store.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_attr.c_lpfc_board_mode_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.Scsi_Host = type { i64 }
%struct.lpfc_vport = type { %struct.lpfc_hba* }
%struct.lpfc_hba = type { i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.completion = type { i32 }

@EACCES = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@LOG_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"3050 lpfc_board_mode set to %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"online\00", align 1
@LPFC_EVT_ONLINE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"offline\00", align 1
@LPFC_EVT_OFFLINE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"warm\00", align 1
@LPFC_SLI_REV4 = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@LPFC_EVT_WARM_START = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@LPFC_EVT_KILL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"dump\00", align 1
@LPFC_FW_DUMP = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [9 x i8] c"fw_reset\00", align 1
@LPFC_FW_RESET = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [9 x i8] c"dv_reset\00", align 1
@LPFC_DV_RESET = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [44 x i8] c"3097 Failed \22%s\22, status(%d), fc_flag(x%x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @lpfc_board_mode_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_board_mode_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.Scsi_Host*, align 8
  %11 = alloca %struct.lpfc_vport*, align 8
  %12 = alloca %struct.lpfc_hba*, align 8
  %13 = alloca %struct.completion, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %17 = load %struct.device*, %struct.device** %6, align 8
  %18 = call %struct.Scsi_Host* @class_to_shost(%struct.device* %17)
  store %struct.Scsi_Host* %18, %struct.Scsi_Host** %10, align 8
  %19 = load %struct.Scsi_Host*, %struct.Scsi_Host** %10, align 8
  %20 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.lpfc_vport*
  store %struct.lpfc_vport* %22, %struct.lpfc_vport** %11, align 8
  %23 = load %struct.lpfc_vport*, %struct.lpfc_vport** %11, align 8
  %24 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %23, i32 0, i32 0
  %25 = load %struct.lpfc_hba*, %struct.lpfc_hba** %24, align 8
  store %struct.lpfc_hba* %25, %struct.lpfc_hba** %12, align 8
  store i8* null, i8** %14, align 8
  store i32 0, i32* %15, align 4
  %26 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  %27 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %4
  %31 = load i32, i32* @EACCES, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %15, align 4
  br label %132

33:                                               ; preds = %4
  %34 = load %struct.lpfc_vport*, %struct.lpfc_vport** %11, align 8
  %35 = load i32, i32* @KERN_ERR, align 4
  %36 = load i32, i32* @LOG_INIT, align 4
  %37 = load i8*, i8** %8, align 8
  %38 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, i8*, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %34, i32 %35, i32 %36, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %37)
  %39 = call i32 @init_completion(%struct.completion* %13)
  %40 = load i8*, i8** %8, align 8
  %41 = call i64 @strncmp(i8* %40, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 6)
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %54

43:                                               ; preds = %33
  %44 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  %45 = load i32, i32* @LPFC_EVT_ONLINE, align 4
  %46 = call i32 @lpfc_workq_post_event(%struct.lpfc_hba* %44, i32* %15, %struct.completion* %13, i32 %45)
  store i32 %46, i32* %16, align 4
  %47 = load i32, i32* %16, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %43
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %15, align 4
  br label %132

52:                                               ; preds = %43
  %53 = call i32 @wait_for_completion(%struct.completion* %13)
  br label %131

54:                                               ; preds = %33
  %55 = load i8*, i8** %8, align 8
  %56 = call i64 @strncmp(i8* %55, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 7)
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %54
  %59 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  %60 = load i32, i32* @LPFC_EVT_OFFLINE, align 4
  %61 = call i32 @lpfc_do_offline(%struct.lpfc_hba* %59, i32 %60)
  store i32 %61, i32* %15, align 4
  br label %130

62:                                               ; preds = %54
  %63 = load i8*, i8** %8, align 8
  %64 = call i64 @strncmp(i8* %63, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 4)
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %80

66:                                               ; preds = %62
  %67 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  %68 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @LPFC_SLI_REV4, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %66
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %15, align 4
  br label %79

75:                                               ; preds = %66
  %76 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  %77 = load i32, i32* @LPFC_EVT_WARM_START, align 4
  %78 = call i32 @lpfc_do_offline(%struct.lpfc_hba* %76, i32 %77)
  store i32 %78, i32* %15, align 4
  br label %79

79:                                               ; preds = %75, %72
  br label %129

80:                                               ; preds = %62
  %81 = load i8*, i8** %8, align 8
  %82 = call i64 @strncmp(i8* %81, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 5)
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %84, label %98

84:                                               ; preds = %80
  %85 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  %86 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @LPFC_SLI_REV4, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %93

90:                                               ; preds = %84
  %91 = load i32, i32* @EINVAL, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %15, align 4
  br label %97

93:                                               ; preds = %84
  %94 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  %95 = load i32, i32* @LPFC_EVT_KILL, align 4
  %96 = call i32 @lpfc_do_offline(%struct.lpfc_hba* %94, i32 %95)
  store i32 %96, i32* %15, align 4
  br label %97

97:                                               ; preds = %93, %90
  br label %128

98:                                               ; preds = %80
  %99 = load i8*, i8** %8, align 8
  %100 = call i64 @strncmp(i8* %99, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 4)
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %98
  %103 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  %104 = load i32, i32* @LPFC_FW_DUMP, align 4
  %105 = call i32 @lpfc_sli4_pdev_reg_request(%struct.lpfc_hba* %103, i32 %104)
  store i32 %105, i32* %15, align 4
  br label %127

106:                                              ; preds = %98
  %107 = load i8*, i8** %8, align 8
  %108 = call i64 @strncmp(i8* %107, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32 8)
  %109 = icmp eq i64 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %106
  %111 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  %112 = load i32, i32* @LPFC_FW_RESET, align 4
  %113 = call i32 @lpfc_sli4_pdev_reg_request(%struct.lpfc_hba* %111, i32 %112)
  store i32 %113, i32* %15, align 4
  br label %126

114:                                              ; preds = %106
  %115 = load i8*, i8** %8, align 8
  %116 = call i64 @strncmp(i8* %115, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32 8)
  %117 = icmp eq i64 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %114
  %119 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  %120 = load i32, i32* @LPFC_DV_RESET, align 4
  %121 = call i32 @lpfc_sli4_pdev_reg_request(%struct.lpfc_hba* %119, i32 %120)
  store i32 %121, i32* %15, align 4
  br label %125

122:                                              ; preds = %114
  %123 = load i32, i32* @EINVAL, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %15, align 4
  br label %125

125:                                              ; preds = %122, %118
  br label %126

126:                                              ; preds = %125, %110
  br label %127

127:                                              ; preds = %126, %102
  br label %128

128:                                              ; preds = %127, %97
  br label %129

129:                                              ; preds = %128, %79
  br label %130

130:                                              ; preds = %129, %58
  br label %131

131:                                              ; preds = %130, %52
  br label %132

132:                                              ; preds = %131, %49, %30
  %133 = load i32, i32* %15, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %138, label %135

135:                                              ; preds = %132
  %136 = load i8*, i8** %8, align 8
  %137 = call i32 @strlen(i8* %136)
  store i32 %137, i32* %5, align 4
  br label %158

138:                                              ; preds = %132
  %139 = load i8*, i8** %8, align 8
  %140 = call i8* @strchr(i8* %139, i8 signext 10)
  store i8* %140, i8** %14, align 8
  %141 = load i8*, i8** %14, align 8
  %142 = icmp ne i8* %141, null
  br i1 %142, label %143, label %145

143:                                              ; preds = %138
  %144 = load i8*, i8** %14, align 8
  store i8 0, i8* %144, align 1
  br label %145

145:                                              ; preds = %143, %138
  %146 = load %struct.lpfc_vport*, %struct.lpfc_vport** %11, align 8
  %147 = load i32, i32* @KERN_ERR, align 4
  %148 = load i32, i32* @LOG_INIT, align 4
  %149 = load i8*, i8** %8, align 8
  %150 = load i32, i32* %15, align 4
  %151 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  %152 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %151, i32 0, i32 1
  %153 = load %struct.TYPE_2__*, %struct.TYPE_2__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, i8*, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %146, i32 %147, i32 %148, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.8, i64 0, i64 0), i8* %149, i32 %150, i32 %155)
  %157 = load i32, i32* %15, align 4
  store i32 %157, i32* %5, align 4
  br label %158

158:                                              ; preds = %145, %135
  %159 = load i32, i32* %5, align 4
  ret i32 %159
}

declare dso_local %struct.Scsi_Host* @class_to_shost(%struct.device*) #1

declare dso_local i32 @lpfc_printf_vlog(%struct.lpfc_vport*, i32, i32, i8*, i8*, ...) #1

declare dso_local i32 @init_completion(%struct.completion*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @lpfc_workq_post_event(%struct.lpfc_hba*, i32*, %struct.completion*, i32) #1

declare dso_local i32 @wait_for_completion(%struct.completion*) #1

declare dso_local i32 @lpfc_do_offline(%struct.lpfc_hba*, i32) #1

declare dso_local i32 @lpfc_sli4_pdev_reg_request(%struct.lpfc_hba*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
