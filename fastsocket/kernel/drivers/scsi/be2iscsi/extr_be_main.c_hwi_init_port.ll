; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_main.c_hwi_init_port.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_main.c_hwi_init_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.beiscsi_hba = type { %struct.be_ctrl_info, %struct.hwi_controller*, %struct.TYPE_2__ }
%struct.be_ctrl_info = type { i32 }
%struct.hwi_controller = type { %struct.hwi_context_memory* }
%struct.hwi_context_memory = type { i32, i64, i64 }
%struct.TYPE_2__ = type { i32 }

@KERN_ERR = common dso_local global i32 0, align 4
@BEISCSI_LOG_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"BM_%d : EQ not created\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"BM_%d : Unsupported fw version\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"BM_%d : CQ not created\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"BM_%d : Default Header not created\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"BM_%d : Default Data not created\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"BM_%d : Post SGL Pages Failed\0A\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"BM_%d : WRB Rings not created\0A\00", align 1
@KERN_INFO = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [31 x i8] c"BM_%d : hwi_init_port success\0A\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"BM_%d : hwi_init_port failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.beiscsi_hba*)* @hwi_init_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hwi_init_port(%struct.beiscsi_hba* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.beiscsi_hba*, align 8
  %4 = alloca %struct.hwi_controller*, align 8
  %5 = alloca %struct.hwi_context_memory*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.be_ctrl_info*, align 8
  %8 = alloca i32, align 4
  store %struct.beiscsi_hba* %0, %struct.beiscsi_hba** %3, align 8
  %9 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %10 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %9, i32 0, i32 0
  store %struct.be_ctrl_info* %10, %struct.be_ctrl_info** %7, align 8
  %11 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %12 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = sext i32 %14 to i64
  %16 = mul i64 %15, 4
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %6, align 4
  %18 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %19 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %18, i32 0, i32 1
  %20 = load %struct.hwi_controller*, %struct.hwi_controller** %19, align 8
  store %struct.hwi_controller* %20, %struct.hwi_controller** %4, align 8
  %21 = load %struct.hwi_controller*, %struct.hwi_controller** %4, align 8
  %22 = getelementptr inbounds %struct.hwi_controller, %struct.hwi_controller* %21, i32 0, i32 0
  %23 = load %struct.hwi_context_memory*, %struct.hwi_context_memory** %22, align 8
  store %struct.hwi_context_memory* %23, %struct.hwi_context_memory** %5, align 8
  %24 = load %struct.hwi_context_memory*, %struct.hwi_context_memory** %5, align 8
  %25 = getelementptr inbounds %struct.hwi_context_memory, %struct.hwi_context_memory* %24, i32 0, i32 2
  store i64 0, i64* %25, align 8
  %26 = load %struct.hwi_context_memory*, %struct.hwi_context_memory** %5, align 8
  %27 = getelementptr inbounds %struct.hwi_context_memory, %struct.hwi_context_memory* %26, i32 0, i32 1
  store i64 0, i64* %27, align 8
  %28 = load %struct.hwi_context_memory*, %struct.hwi_context_memory** %5, align 8
  %29 = getelementptr inbounds %struct.hwi_context_memory, %struct.hwi_context_memory* %28, i32 0, i32 0
  store i32 64, i32* %29, align 8
  %30 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %31 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %30, i32 0, i32 0
  %32 = call i32 @be_cmd_fw_initialize(%struct.be_ctrl_info* %31)
  %33 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %34 = load %struct.hwi_context_memory*, %struct.hwi_context_memory** %5, align 8
  %35 = call i32 @beiscsi_create_eqs(%struct.beiscsi_hba* %33, %struct.hwi_context_memory* %34)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %1
  %39 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %40 = load i32, i32* @KERN_ERR, align 4
  %41 = load i32, i32* @BEISCSI_LOG_INIT, align 4
  %42 = call i32 @beiscsi_log(%struct.beiscsi_hba* %39, i32 %40, i32 %41, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %125

43:                                               ; preds = %1
  %44 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %45 = load %struct.hwi_context_memory*, %struct.hwi_context_memory** %5, align 8
  %46 = call i32 @be_mcc_queues_create(%struct.beiscsi_hba* %44, %struct.hwi_context_memory* %45)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  br label %125

50:                                               ; preds = %43
  %51 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %7, align 8
  %52 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %53 = call i32 @mgmt_check_supported_fw(%struct.be_ctrl_info* %51, %struct.beiscsi_hba* %52)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %50
  %57 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %58 = load i32, i32* @KERN_ERR, align 4
  %59 = load i32, i32* @BEISCSI_LOG_INIT, align 4
  %60 = call i32 @beiscsi_log(%struct.beiscsi_hba* %57, i32 %58, i32 %59, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %125

61:                                               ; preds = %50
  %62 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %63 = load %struct.hwi_context_memory*, %struct.hwi_context_memory** %5, align 8
  %64 = call i32 @beiscsi_create_cqs(%struct.beiscsi_hba* %62, %struct.hwi_context_memory* %63)
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %8, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %61
  %68 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %69 = load i32, i32* @KERN_ERR, align 4
  %70 = load i32, i32* @BEISCSI_LOG_INIT, align 4
  %71 = call i32 @beiscsi_log(%struct.beiscsi_hba* %68, i32 %69, i32 %70, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %125

72:                                               ; preds = %61
  %73 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %74 = load %struct.hwi_context_memory*, %struct.hwi_context_memory** %5, align 8
  %75 = load %struct.hwi_controller*, %struct.hwi_controller** %4, align 8
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @beiscsi_create_def_hdr(%struct.beiscsi_hba* %73, %struct.hwi_context_memory* %74, %struct.hwi_controller* %75, i32 %76)
  store i32 %77, i32* %8, align 4
  %78 = load i32, i32* %8, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %72
  %81 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %82 = load i32, i32* @KERN_ERR, align 4
  %83 = load i32, i32* @BEISCSI_LOG_INIT, align 4
  %84 = call i32 @beiscsi_log(%struct.beiscsi_hba* %81, i32 %82, i32 %83, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  br label %125

85:                                               ; preds = %72
  %86 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %87 = load %struct.hwi_context_memory*, %struct.hwi_context_memory** %5, align 8
  %88 = load %struct.hwi_controller*, %struct.hwi_controller** %4, align 8
  %89 = load i32, i32* %6, align 4
  %90 = call i32 @beiscsi_create_def_data(%struct.beiscsi_hba* %86, %struct.hwi_context_memory* %87, %struct.hwi_controller* %88, i32 %89)
  store i32 %90, i32* %8, align 4
  %91 = load i32, i32* %8, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %85
  %94 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %95 = load i32, i32* @KERN_ERR, align 4
  %96 = load i32, i32* @BEISCSI_LOG_INIT, align 4
  %97 = call i32 @beiscsi_log(%struct.beiscsi_hba* %94, i32 %95, i32 %96, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  br label %125

98:                                               ; preds = %85
  %99 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %100 = call i32 @beiscsi_post_pages(%struct.beiscsi_hba* %99)
  store i32 %100, i32* %8, align 4
  %101 = load i32, i32* %8, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %98
  %104 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %105 = load i32, i32* @KERN_ERR, align 4
  %106 = load i32, i32* @BEISCSI_LOG_INIT, align 4
  %107 = call i32 @beiscsi_log(%struct.beiscsi_hba* %104, i32 %105, i32 %106, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  br label %125

108:                                              ; preds = %98
  %109 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %110 = load %struct.hwi_context_memory*, %struct.hwi_context_memory** %5, align 8
  %111 = load %struct.hwi_controller*, %struct.hwi_controller** %4, align 8
  %112 = call i32 @beiscsi_create_wrb_rings(%struct.beiscsi_hba* %109, %struct.hwi_context_memory* %110, %struct.hwi_controller* %111)
  store i32 %112, i32* %8, align 4
  %113 = load i32, i32* %8, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %120

115:                                              ; preds = %108
  %116 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %117 = load i32, i32* @KERN_ERR, align 4
  %118 = load i32, i32* @BEISCSI_LOG_INIT, align 4
  %119 = call i32 @beiscsi_log(%struct.beiscsi_hba* %116, i32 %117, i32 %118, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  br label %125

120:                                              ; preds = %108
  %121 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %122 = load i32, i32* @KERN_INFO, align 4
  %123 = load i32, i32* @BEISCSI_LOG_INIT, align 4
  %124 = call i32 @beiscsi_log(%struct.beiscsi_hba* %121, i32 %122, i32 %123, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %133

125:                                              ; preds = %115, %103, %93, %80, %67, %56, %49, %38
  %126 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %127 = load i32, i32* @KERN_ERR, align 4
  %128 = load i32, i32* @BEISCSI_LOG_INIT, align 4
  %129 = call i32 @beiscsi_log(%struct.beiscsi_hba* %126, i32 %127, i32 %128, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0))
  %130 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %131 = call i32 @hwi_cleanup(%struct.beiscsi_hba* %130)
  %132 = load i32, i32* %8, align 4
  store i32 %132, i32* %2, align 4
  br label %133

133:                                              ; preds = %125, %120
  %134 = load i32, i32* %2, align 4
  ret i32 %134
}

declare dso_local i32 @be_cmd_fw_initialize(%struct.be_ctrl_info*) #1

declare dso_local i32 @beiscsi_create_eqs(%struct.beiscsi_hba*, %struct.hwi_context_memory*) #1

declare dso_local i32 @beiscsi_log(%struct.beiscsi_hba*, i32, i32, i8*) #1

declare dso_local i32 @be_mcc_queues_create(%struct.beiscsi_hba*, %struct.hwi_context_memory*) #1

declare dso_local i32 @mgmt_check_supported_fw(%struct.be_ctrl_info*, %struct.beiscsi_hba*) #1

declare dso_local i32 @beiscsi_create_cqs(%struct.beiscsi_hba*, %struct.hwi_context_memory*) #1

declare dso_local i32 @beiscsi_create_def_hdr(%struct.beiscsi_hba*, %struct.hwi_context_memory*, %struct.hwi_controller*, i32) #1

declare dso_local i32 @beiscsi_create_def_data(%struct.beiscsi_hba*, %struct.hwi_context_memory*, %struct.hwi_controller*, i32) #1

declare dso_local i32 @beiscsi_post_pages(%struct.beiscsi_hba*) #1

declare dso_local i32 @beiscsi_create_wrb_rings(%struct.beiscsi_hba*, %struct.hwi_context_memory*, %struct.hwi_controller*) #1

declare dso_local i32 @hwi_cleanup(%struct.beiscsi_hba*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
