; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_setup_bg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_setup_bg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32 }
%struct.Scsi_Host = type { i32 }

@lpfc_prot_mask = common dso_local global i32 0, align 4
@lpfc_prot_guard = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@LOG_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"1478 Registering BlockGuard with the SCSI layer\0A\00", align 1
@SHOST_DIF_TYPE1_PROTECTION = common dso_local global i32 0, align 4
@SHOST_DIX_TYPE0_PROTECTION = common dso_local global i32 0, align 4
@SHOST_DIX_TYPE1_PROTECTION = common dso_local global i32 0, align 4
@SHOST_DIX_GUARD_IP = common dso_local global i32 0, align 4
@SHOST_DIX_GUARD_CRC = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [68 x i8] c"1475 Registering BlockGuard with the SCSI layer: mask %d  guard %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [87 x i8] c"1479 Not Registering BlockGuard with the SCSI layer, Bad protection parameters: %d %d\0A\00", align 1
@_dump_buf_data = common dso_local global i8* null, align 8
@_dump_buf_lock = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@LOG_BG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [60 x i8] c"9043 BLKGRD: allocated %d pages for _dump_buf_data at 0x%p\0A\00", align 1
@_dump_buf_data_order = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [58 x i8] c"9044 BLKGRD: ERROR unable to allocate memory for hexdump\0A\00", align 1
@.str.5 = private unnamed_addr constant [52 x i8] c"9045 BLKGRD: already allocated _dump_buf_data=0x%p\0A\00", align 1
@_dump_buf_dif = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [59 x i8] c"9046 BLKGRD: allocated %d pages for _dump_buf_dif at 0x%p\0A\00", align 1
@_dump_buf_dif_order = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [58 x i8] c"9047 BLKGRD: ERROR unable to allocate memory for hexdump\0A\00", align 1
@.str.8 = private unnamed_addr constant [51 x i8] c"9048 BLKGRD: already allocated _dump_buf_dif=0x%p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpfc_hba*, %struct.Scsi_Host*)* @lpfc_setup_bg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpfc_setup_bg(%struct.lpfc_hba* %0, %struct.Scsi_Host* %1) #0 {
  %3 = alloca %struct.lpfc_hba*, align 8
  %4 = alloca %struct.Scsi_Host*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %3, align 8
  store %struct.Scsi_Host* %1, %struct.Scsi_Host** %4, align 8
  store i32 10, i32* %7, align 4
  %8 = load i32, i32* @lpfc_prot_mask, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %75

10:                                               ; preds = %2
  %11 = load i32, i32* @lpfc_prot_guard, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %75

13:                                               ; preds = %10
  %14 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %15 = load i32, i32* @KERN_INFO, align 4
  %16 = load i32, i32* @LOG_INIT, align 4
  %17 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %14, i32 %15, i32 %16, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @lpfc_prot_mask, align 4
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* @lpfc_prot_guard, align 4
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* @SHOST_DIF_TYPE1_PROTECTION, align 4
  %21 = load i32, i32* @SHOST_DIX_TYPE0_PROTECTION, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @SHOST_DIX_TYPE1_PROTECTION, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @lpfc_prot_mask, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* @lpfc_prot_mask, align 4
  %27 = load i32, i32* @SHOST_DIX_GUARD_IP, align 4
  %28 = load i32, i32* @SHOST_DIX_GUARD_CRC, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @lpfc_prot_guard, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* @lpfc_prot_guard, align 4
  %32 = load i32, i32* @lpfc_prot_mask, align 4
  %33 = load i32, i32* @SHOST_DIX_TYPE1_PROTECTION, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %13
  %36 = load i32, i32* @SHOST_DIF_TYPE1_PROTECTION, align 4
  %37 = load i32, i32* @lpfc_prot_mask, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* @lpfc_prot_mask, align 4
  br label %39

39:                                               ; preds = %35, %13
  %40 = load i32, i32* @lpfc_prot_mask, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %67

42:                                               ; preds = %39
  %43 = load i32, i32* @lpfc_prot_guard, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %67

45:                                               ; preds = %42
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @lpfc_prot_mask, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %53, label %49

49:                                               ; preds = %45
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @lpfc_prot_guard, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %60

53:                                               ; preds = %49, %45
  %54 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %55 = load i32, i32* @KERN_ERR, align 4
  %56 = load i32, i32* @LOG_INIT, align 4
  %57 = load i32, i32* @lpfc_prot_mask, align 4
  %58 = load i32, i32* @lpfc_prot_guard, align 4
  %59 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %54, i32 %55, i32 %56, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.1, i64 0, i64 0), i32 %57, i32 %58)
  br label %60

60:                                               ; preds = %53, %49
  %61 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %62 = load i32, i32* @lpfc_prot_mask, align 4
  %63 = call i32 @scsi_host_set_prot(%struct.Scsi_Host* %61, i32 %62)
  %64 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %65 = load i32, i32* @lpfc_prot_guard, align 4
  %66 = call i32 @scsi_host_set_guard(%struct.Scsi_Host* %64, i32 %65)
  br label %74

67:                                               ; preds = %42, %39
  %68 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %69 = load i32, i32* @KERN_ERR, align 4
  %70 = load i32, i32* @LOG_INIT, align 4
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* %6, align 4
  %73 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %68, i32 %69, i32 %70, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.2, i64 0, i64 0), i32 %71, i32 %72)
  br label %74

74:                                               ; preds = %67, %60
  br label %75

75:                                               ; preds = %74, %10, %2
  %76 = load i8*, i8** @_dump_buf_data, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %118, label %78

78:                                               ; preds = %75
  br label %79

79:                                               ; preds = %108, %78
  %80 = load i32, i32* %7, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %109

82:                                               ; preds = %79
  %83 = call i32 @spin_lock_init(i32* @_dump_buf_lock)
  %84 = load i32, i32* @GFP_KERNEL, align 4
  %85 = load i32, i32* %7, align 4
  %86 = call i64 @__get_free_pages(i32 %84, i32 %85)
  %87 = inttoptr i64 %86 to i8*
  store i8* %87, i8** @_dump_buf_data, align 8
  %88 = load i8*, i8** @_dump_buf_data, align 8
  %89 = icmp ne i8* %88, null
  br i1 %89, label %90, label %105

90:                                               ; preds = %82
  %91 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %92 = load i32, i32* @KERN_ERR, align 4
  %93 = load i32, i32* @LOG_BG, align 4
  %94 = load i32, i32* %7, align 4
  %95 = shl i32 1, %94
  %96 = load i8*, i8** @_dump_buf_data, align 8
  %97 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %91, i32 %92, i32 %93, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.3, i64 0, i64 0), i32 %95, i8* %96)
  %98 = load i32, i32* %7, align 4
  store i32 %98, i32* @_dump_buf_data_order, align 4
  %99 = load i8*, i8** @_dump_buf_data, align 8
  %100 = load i32, i32* @PAGE_SHIFT, align 4
  %101 = shl i32 1, %100
  %102 = load i32, i32* %7, align 4
  %103 = shl i32 %101, %102
  %104 = call i32 @memset(i8* %99, i32 0, i32 %103)
  br label %109

105:                                              ; preds = %82
  %106 = load i32, i32* %7, align 4
  %107 = add nsw i32 %106, -1
  store i32 %107, i32* %7, align 4
  br label %108

108:                                              ; preds = %105
  br label %79

109:                                              ; preds = %90, %79
  %110 = load i32, i32* @_dump_buf_data_order, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %117, label %112

112:                                              ; preds = %109
  %113 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %114 = load i32, i32* @KERN_ERR, align 4
  %115 = load i32, i32* @LOG_BG, align 4
  %116 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %113, i32 %114, i32 %115, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.4, i64 0, i64 0))
  br label %117

117:                                              ; preds = %112, %109
  br label %124

118:                                              ; preds = %75
  %119 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %120 = load i32, i32* @KERN_ERR, align 4
  %121 = load i32, i32* @LOG_BG, align 4
  %122 = load i8*, i8** @_dump_buf_data, align 8
  %123 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %119, i32 %120, i32 %121, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.5, i64 0, i64 0), i8* %122)
  br label %124

124:                                              ; preds = %118, %117
  %125 = load i8*, i8** @_dump_buf_dif, align 8
  %126 = icmp ne i8* %125, null
  br i1 %126, label %166, label %127

127:                                              ; preds = %124
  br label %128

128:                                              ; preds = %156, %127
  %129 = load i32, i32* %7, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %157

131:                                              ; preds = %128
  %132 = load i32, i32* @GFP_KERNEL, align 4
  %133 = load i32, i32* %7, align 4
  %134 = call i64 @__get_free_pages(i32 %132, i32 %133)
  %135 = inttoptr i64 %134 to i8*
  store i8* %135, i8** @_dump_buf_dif, align 8
  %136 = load i8*, i8** @_dump_buf_dif, align 8
  %137 = icmp ne i8* %136, null
  br i1 %137, label %138, label %153

138:                                              ; preds = %131
  %139 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %140 = load i32, i32* @KERN_ERR, align 4
  %141 = load i32, i32* @LOG_BG, align 4
  %142 = load i32, i32* %7, align 4
  %143 = shl i32 1, %142
  %144 = load i8*, i8** @_dump_buf_dif, align 8
  %145 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %139, i32 %140, i32 %141, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.6, i64 0, i64 0), i32 %143, i8* %144)
  %146 = load i32, i32* %7, align 4
  store i32 %146, i32* @_dump_buf_dif_order, align 4
  %147 = load i8*, i8** @_dump_buf_dif, align 8
  %148 = load i32, i32* @PAGE_SHIFT, align 4
  %149 = shl i32 1, %148
  %150 = load i32, i32* %7, align 4
  %151 = shl i32 %149, %150
  %152 = call i32 @memset(i8* %147, i32 0, i32 %151)
  br label %157

153:                                              ; preds = %131
  %154 = load i32, i32* %7, align 4
  %155 = add nsw i32 %154, -1
  store i32 %155, i32* %7, align 4
  br label %156

156:                                              ; preds = %153
  br label %128

157:                                              ; preds = %138, %128
  %158 = load i32, i32* @_dump_buf_dif_order, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %165, label %160

160:                                              ; preds = %157
  %161 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %162 = load i32, i32* @KERN_ERR, align 4
  %163 = load i32, i32* @LOG_BG, align 4
  %164 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %161, i32 %162, i32 %163, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.7, i64 0, i64 0))
  br label %165

165:                                              ; preds = %160, %157
  br label %172

166:                                              ; preds = %124
  %167 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %168 = load i32, i32* @KERN_ERR, align 4
  %169 = load i32, i32* @LOG_BG, align 4
  %170 = load i8*, i8** @_dump_buf_dif, align 8
  %171 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %167, i32 %168, i32 %169, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.8, i64 0, i64 0), i8* %170)
  br label %172

172:                                              ; preds = %166, %165
  ret void
}

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, ...) #1

declare dso_local i32 @scsi_host_set_prot(%struct.Scsi_Host*, i32) #1

declare dso_local i32 @scsi_host_set_guard(%struct.Scsi_Host*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i64 @__get_free_pages(i32, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
