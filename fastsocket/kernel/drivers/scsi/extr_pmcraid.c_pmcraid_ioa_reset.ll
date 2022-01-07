; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_pmcraid.c_pmcraid_ioa_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_pmcraid.c_pmcraid_ioa_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmcraid_cmd = type { %struct.pmcraid_instance* }
%struct.pmcraid_instance = type { i32, i32, i8*, i32, i64, %struct.pmcraid_cmd*, i64, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [46 x i8] c"reset is called with different command block\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"reset_engine: state = %d, command = %p\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"IOA is offline no reset is possible\0A\00", align 1
@INTRS_TRANSITION_TO_OPERATIONAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"sticky bit set, bring-up\0A\00", align 1
@PMCRAID_RESET_ATTEMPTS = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [39 x i8] c"IOA didn't respond marking it as dead\0A\00", align 1
@PMC_DEVICE_EVENT_SHUTDOWN_FAILED = common dso_local global i32 0, align 4
@PMC_DEVICE_EVENT_RESET_FAILED = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [36 x i8] c"config-space error resetting again\0A\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"unit check is active\0A\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"bringing down the adapter\0A\00", align 1
@SHUTDOWN_NONE = common dso_local global i8* null, align 8
@PMC_DEVICE_EVENT_SHUTDOWN_SUCCESS = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [25 x i8] c"bringing up the adapter\0A\00", align 1
@.str.9 = private unnamed_addr constant [39 x i8] c"In softreset proceeding with bring-up\0A\00", align 1
@PMC_DEVICE_EVENT_RESET_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pmcraid_cmd*)* @pmcraid_ioa_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmcraid_ioa_reset(%struct.pmcraid_cmd* %0) #0 {
  %2 = alloca %struct.pmcraid_cmd*, align 8
  %3 = alloca %struct.pmcraid_instance*, align 8
  %4 = alloca i32, align 4
  store %struct.pmcraid_cmd* %0, %struct.pmcraid_cmd** %2, align 8
  %5 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %2, align 8
  %6 = getelementptr inbounds %struct.pmcraid_cmd, %struct.pmcraid_cmd* %5, i32 0, i32 0
  %7 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %6, align 8
  store %struct.pmcraid_instance* %7, %struct.pmcraid_instance** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %9 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %8, i32 0, i32 0
  store i32 1, i32* %9, align 8
  %10 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %11 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %10, i32 0, i32 5
  %12 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %11, align 8
  %13 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %2, align 8
  %14 = icmp ne %struct.pmcraid_cmd* %12, %13
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = call i32 @pmcraid_err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %2, align 8
  %18 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %19 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %18, i32 0, i32 5
  store %struct.pmcraid_cmd* %17, %struct.pmcraid_cmd** %19, align 8
  br label %20

20:                                               ; preds = %15, %1
  %21 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %22 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %2, align 8
  %25 = call i32 (i8*, ...) @pmcraid_info(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %23, %struct.pmcraid_cmd* %24)
  %26 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %27 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  switch i32 %28, label %188 [
    i32 135, label %29
    i32 134, label %31
    i32 128, label %38
    i32 131, label %75
    i32 132, label %80
    i32 130, label %178
    i32 133, label %184
    i32 129, label %187
  ]

29:                                               ; preds = %20
  %30 = call i32 @pmcraid_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  br label %218

31:                                               ; preds = %20
  %32 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %33 = call i32 @pmcraid_disable_interrupts(%struct.pmcraid_instance* %32, i32 -1)
  %34 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %35 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %34, i32 0, i32 1
  store i32 131, i32* %35, align 4
  %36 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %2, align 8
  %37 = call i32 @pmcraid_reset_alert(%struct.pmcraid_cmd* %36)
  br label %218

38:                                               ; preds = %20
  %39 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %40 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %39, i32 0, i32 12
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @scsi_block_requests(i32 %41)
  %43 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %44 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %43, i32 0, i32 11
  %45 = load i32, i32* %44, align 8
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %69

47:                                               ; preds = %38
  %48 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %49 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %48, i32 0, i32 10
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @ioread32(i32 %50)
  %52 = load i32, i32* @INTRS_TRANSITION_TO_OPERATIONAL, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %47
  %56 = call i32 (i8*, ...) @pmcraid_info(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %57 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %58 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %57, i32 0, i32 1
  store i32 133, i32* %58, align 4
  %59 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %2, align 8
  %60 = call i32 @pmcraid_reinit_cmdblk(%struct.pmcraid_cmd* %59)
  %61 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %2, align 8
  %62 = call i32 @pmcraid_identify_hrrq(%struct.pmcraid_cmd* %61)
  br label %68

63:                                               ; preds = %47
  %64 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %65 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %64, i32 0, i32 1
  store i32 130, i32* %65, align 4
  %66 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %2, align 8
  %67 = call i32 @pmcraid_soft_reset(%struct.pmcraid_cmd* %66)
  br label %68

68:                                               ; preds = %63, %55
  br label %74

69:                                               ; preds = %38
  %70 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %71 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %70, i32 0, i32 1
  store i32 131, i32* %71, align 4
  %72 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %2, align 8
  %73 = call i32 @pmcraid_reset_alert(%struct.pmcraid_cmd* %72)
  br label %74

74:                                               ; preds = %69, %68
  br label %218

75:                                               ; preds = %20
  %76 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %77 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %76, i32 0, i32 1
  store i32 132, i32* %77, align 4
  %78 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %2, align 8
  %79 = call i32 @pmcraid_start_bist(%struct.pmcraid_cmd* %78)
  br label %218

80:                                               ; preds = %20
  %81 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %82 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %81, i32 0, i32 6
  %83 = load i64, i64* %82, align 8
  %84 = add nsw i64 %83, 1
  store i64 %84, i64* %82, align 8
  %85 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %86 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %85, i32 0, i32 6
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @PMCRAID_RESET_ATTEMPTS, align 8
  %89 = icmp sgt i64 %87, %88
  br i1 %89, label %90, label %109

90:                                               ; preds = %80
  %91 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %92 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %91, i32 0, i32 6
  store i64 0, i64* %92, align 8
  %93 = call i32 @pmcraid_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  %94 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %95 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %94, i32 0, i32 1
  store i32 135, i32* %95, align 4
  %96 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %97 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %96, i32 0, i32 4
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %90
  %101 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %102 = load i32, i32* @PMC_DEVICE_EVENT_SHUTDOWN_FAILED, align 4
  %103 = call i32 @pmcraid_notify_ioastate(%struct.pmcraid_instance* %101, i32 %102)
  br label %108

104:                                              ; preds = %90
  %105 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %106 = load i32, i32* @PMC_DEVICE_EVENT_RESET_FAILED, align 4
  %107 = call i32 @pmcraid_notify_ioastate(%struct.pmcraid_instance* %105, i32 %106)
  br label %108

108:                                              ; preds = %104, %100
  store i32 1, i32* %4, align 4
  br label %218

109:                                              ; preds = %80
  %110 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %111 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %110, i32 0, i32 9
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @pci_restore_state(i32 %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %109
  %116 = call i32 (i8*, ...) @pmcraid_info(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  %117 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %118 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %117, i32 0, i32 1
  store i32 131, i32* %118, align 4
  %119 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %2, align 8
  %120 = call i32 @pmcraid_reset_alert(%struct.pmcraid_cmd* %119)
  br label %218

121:                                              ; preds = %109
  %122 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %123 = call i32 @pmcraid_fail_outstanding_cmds(%struct.pmcraid_instance* %122)
  %124 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %125 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %124, i32 0, i32 8
  %126 = load i32, i32* %125, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %142

128:                                              ; preds = %121
  %129 = call i32 (i8*, ...) @pmcraid_info(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  %130 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %131 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %130, i32 0, i32 8
  store i32 0, i32* %131, align 4
  %132 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %133 = call i32 @pmcraid_get_dump(%struct.pmcraid_instance* %132)
  %134 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %135 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %134, i32 0, i32 6
  %136 = load i64, i64* %135, align 8
  %137 = add nsw i64 %136, -1
  store i64 %137, i64* %135, align 8
  %138 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %139 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %138, i32 0, i32 1
  store i32 131, i32* %139, align 4
  %140 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %2, align 8
  %141 = call i32 @pmcraid_reset_alert(%struct.pmcraid_cmd* %140)
  br label %218

142:                                              ; preds = %121
  %143 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %144 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %143, i32 0, i32 4
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %159

147:                                              ; preds = %142
  %148 = call i32 (i8*, ...) @pmcraid_info(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0))
  %149 = load i8*, i8** @SHUTDOWN_NONE, align 8
  %150 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %151 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %150, i32 0, i32 2
  store i8* %149, i8** %151, align 8
  %152 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %153 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %152, i32 0, i32 4
  store i64 0, i64* %153, align 8
  %154 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %155 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %154, i32 0, i32 1
  store i32 128, i32* %155, align 4
  %156 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %157 = load i32, i32* @PMC_DEVICE_EVENT_SHUTDOWN_SUCCESS, align 4
  %158 = call i32 @pmcraid_notify_ioastate(%struct.pmcraid_instance* %156, i32 %157)
  store i32 1, i32* %4, align 4
  br label %177

159:                                              ; preds = %142
  %160 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %161 = call i32 @pmcraid_reset_enable_ioa(%struct.pmcraid_instance* %160)
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %171

163:                                              ; preds = %159
  %164 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %165 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %164, i32 0, i32 1
  store i32 133, i32* %165, align 4
  %166 = call i32 (i8*, ...) @pmcraid_info(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0))
  %167 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %2, align 8
  %168 = call i32 @pmcraid_reinit_cmdblk(%struct.pmcraid_cmd* %167)
  %169 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %2, align 8
  %170 = call i32 @pmcraid_identify_hrrq(%struct.pmcraid_cmd* %169)
  br label %176

171:                                              ; preds = %159
  %172 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %173 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %172, i32 0, i32 1
  store i32 130, i32* %173, align 4
  %174 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %2, align 8
  %175 = call i32 @pmcraid_soft_reset(%struct.pmcraid_cmd* %174)
  br label %176

176:                                              ; preds = %171, %163
  br label %177

177:                                              ; preds = %176, %147
  br label %218

178:                                              ; preds = %20
  %179 = call i32 (i8*, ...) @pmcraid_info(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.9, i64 0, i64 0))
  %180 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %181 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %180, i32 0, i32 1
  store i32 133, i32* %181, align 4
  %182 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %2, align 8
  %183 = call i32 @pmcraid_identify_hrrq(%struct.pmcraid_cmd* %182)
  br label %218

184:                                              ; preds = %20
  %185 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %186 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %185, i32 0, i32 1
  store i32 129, i32* %186, align 4
  store i32 1, i32* %4, align 4
  br label %218

187:                                              ; preds = %20
  br label %188

188:                                              ; preds = %20, %187
  %189 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %190 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %189, i32 0, i32 2
  %191 = load i8*, i8** %190, align 8
  %192 = load i8*, i8** @SHUTDOWN_NONE, align 8
  %193 = icmp eq i8* %191, %192
  br i1 %193, label %194, label %203

194:                                              ; preds = %188
  %195 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %196 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %195, i32 0, i32 7
  %197 = load i32, i32* %196, align 8
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %199, label %203

199:                                              ; preds = %194
  %200 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %201 = load i32, i32* @PMC_DEVICE_EVENT_RESET_SUCCESS, align 4
  %202 = call i32 @pmcraid_notify_ioastate(%struct.pmcraid_instance* %200, i32 %201)
  store i32 1, i32* %4, align 4
  br label %217

203:                                              ; preds = %194, %188
  %204 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %205 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %204, i32 0, i32 2
  %206 = load i8*, i8** %205, align 8
  %207 = load i8*, i8** @SHUTDOWN_NONE, align 8
  %208 = icmp ne i8* %206, %207
  br i1 %208, label %209, label %212

209:                                              ; preds = %203
  %210 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %211 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %210, i32 0, i32 1
  store i32 134, i32* %211, align 4
  br label %212

212:                                              ; preds = %209, %203
  %213 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %2, align 8
  %214 = call i32 @pmcraid_reinit_cmdblk(%struct.pmcraid_cmd* %213)
  %215 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %2, align 8
  %216 = call i32 @pmcraid_unregister_hcams(%struct.pmcraid_cmd* %215)
  br label %217

217:                                              ; preds = %212, %199
  br label %218

218:                                              ; preds = %217, %184, %178, %177, %128, %115, %108, %75, %74, %31, %29
  %219 = load i32, i32* %4, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %246

221:                                              ; preds = %218
  %222 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %223 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %222, i32 0, i32 0
  store i32 0, i32* %223, align 8
  %224 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %225 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %224, i32 0, i32 6
  store i64 0, i64* %225, align 8
  %226 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %227 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %226, i32 0, i32 5
  store %struct.pmcraid_cmd* null, %struct.pmcraid_cmd** %227, align 8
  %228 = load i8*, i8** @SHUTDOWN_NONE, align 8
  %229 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %230 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %229, i32 0, i32 2
  store i8* %228, i8** %230, align 8
  %231 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %232 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %231, i32 0, i32 4
  store i64 0, i64* %232, align 8
  %233 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %2, align 8
  %234 = call i32 @pmcraid_return_cmd(%struct.pmcraid_cmd* %233)
  %235 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %236 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %235, i32 0, i32 1
  %237 = load i32, i32* %236, align 4
  %238 = icmp eq i32 %237, 129
  br i1 %238, label %239, label %242

239:                                              ; preds = %221
  %240 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %241 = call i32 @pmcraid_register_hcams(%struct.pmcraid_instance* %240)
  br label %242

242:                                              ; preds = %239, %221
  %243 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %244 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %243, i32 0, i32 3
  %245 = call i32 @wake_up_all(i32* %244)
  br label %246

246:                                              ; preds = %242, %218
  ret void
}

declare dso_local i32 @pmcraid_err(i8*) #1

declare dso_local i32 @pmcraid_info(i8*, ...) #1

declare dso_local i32 @pmcraid_disable_interrupts(%struct.pmcraid_instance*, i32) #1

declare dso_local i32 @pmcraid_reset_alert(%struct.pmcraid_cmd*) #1

declare dso_local i32 @scsi_block_requests(i32) #1

declare dso_local i32 @ioread32(i32) #1

declare dso_local i32 @pmcraid_reinit_cmdblk(%struct.pmcraid_cmd*) #1

declare dso_local i32 @pmcraid_identify_hrrq(%struct.pmcraid_cmd*) #1

declare dso_local i32 @pmcraid_soft_reset(%struct.pmcraid_cmd*) #1

declare dso_local i32 @pmcraid_start_bist(%struct.pmcraid_cmd*) #1

declare dso_local i32 @pmcraid_notify_ioastate(%struct.pmcraid_instance*, i32) #1

declare dso_local i32 @pci_restore_state(i32) #1

declare dso_local i32 @pmcraid_fail_outstanding_cmds(%struct.pmcraid_instance*) #1

declare dso_local i32 @pmcraid_get_dump(%struct.pmcraid_instance*) #1

declare dso_local i32 @pmcraid_reset_enable_ioa(%struct.pmcraid_instance*) #1

declare dso_local i32 @pmcraid_unregister_hcams(%struct.pmcraid_cmd*) #1

declare dso_local i32 @pmcraid_return_cmd(%struct.pmcraid_cmd*) #1

declare dso_local i32 @pmcraid_register_hcams(%struct.pmcraid_instance*) #1

declare dso_local i32 @wake_up_all(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
