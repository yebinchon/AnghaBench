; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_sata_nv.c_nv_adma_check_cpb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_sata_nv.c_nv_adma_check_cpb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { %struct.TYPE_4__, %struct.nv_adma_port_priv* }
%struct.TYPE_4__ = type { %struct.ata_eh_info }
%struct.ata_eh_info = type { i32, i32 }
%struct.nv_adma_port_priv = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.ata_queued_cmd = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"CPB %d, flags=0x%x\0A\00", align 1
@NV_CPB_RESP_ATA_ERR = common dso_local global i32 0, align 4
@NV_CPB_RESP_CMD_ERR = common dso_local global i32 0, align 4
@NV_CPB_RESP_CPB_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"CPB resp_flags 0x%x: \00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"ATA error\00", align 1
@AC_ERR_DEV = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"CMD error\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"CPB error\00", align 1
@AC_ERR_SYSTEM = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@AC_ERR_OTHER = common dso_local global i32 0, align 4
@NV_CPB_RESP_DONE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [28 x i8] c"CPB flags done, flags=0x%x\0A\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"Completing qc from tag %d\0A\00", align 1
@KERN_ERR = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [34 x i8] c"notifier for tag %d with no cmd?\0A\00", align 1
@AC_ERR_HSM = common dso_local global i32 0, align 4
@ATA_EH_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_port*, i32, i32)* @nv_adma_check_cpb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv_adma_check_cpb(%struct.ata_port* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ata_port*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.nv_adma_port_priv*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ata_eh_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ata_queued_cmd*, align 8
  %13 = alloca %struct.ata_eh_info*, align 8
  store %struct.ata_port* %0, %struct.ata_port** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %15 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %14, i32 0, i32 1
  %16 = load %struct.nv_adma_port_priv*, %struct.nv_adma_port_priv** %15, align 8
  store %struct.nv_adma_port_priv* %16, %struct.nv_adma_port_priv** %8, align 8
  %17 = load %struct.nv_adma_port_priv*, %struct.nv_adma_port_priv** %8, align 8
  %18 = getelementptr inbounds %struct.nv_adma_port_priv, %struct.nv_adma_port_priv* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %9, align 4
  %27 = call i32 (i8*, i32, ...) @VPRINTK(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %26)
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %39, label %30

30:                                               ; preds = %3
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* @NV_CPB_RESP_ATA_ERR, align 4
  %33 = load i32, i32* @NV_CPB_RESP_CMD_ERR, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @NV_CPB_RESP_CPB_ERR, align 4
  %36 = or i32 %34, %35
  %37 = and i32 %31, %36
  %38 = icmp ne i32 %37, 0
  br label %39

39:                                               ; preds = %30, %3
  %40 = phi i1 [ true, %3 ], [ %38, %30 ]
  %41 = zext i1 %40 to i32
  %42 = call i64 @unlikely(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %111

44:                                               ; preds = %39
  %45 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %46 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  store %struct.ata_eh_info* %47, %struct.ata_eh_info** %10, align 8
  store i32 0, i32* %11, align 4
  %48 = load %struct.ata_eh_info*, %struct.ata_eh_info** %10, align 8
  %49 = call i32 @ata_ehi_clear_desc(%struct.ata_eh_info* %48)
  %50 = load %struct.ata_eh_info*, %struct.ata_eh_info** %10, align 8
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @__ata_ehi_push_desc(%struct.ata_eh_info* %50, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* @NV_CPB_RESP_ATA_ERR, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %44
  %58 = load %struct.ata_eh_info*, %struct.ata_eh_info** %10, align 8
  %59 = call i32 @ata_ehi_push_desc(%struct.ata_eh_info* %58, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %60 = load i32, i32* @AC_ERR_DEV, align 4
  %61 = load %struct.ata_eh_info*, %struct.ata_eh_info** %10, align 8
  %62 = getelementptr inbounds %struct.ata_eh_info, %struct.ata_eh_info* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %63, %60
  store i32 %64, i32* %62, align 4
  br label %101

65:                                               ; preds = %44
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* @NV_CPB_RESP_CMD_ERR, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %65
  %71 = load %struct.ata_eh_info*, %struct.ata_eh_info** %10, align 8
  %72 = call i32 @ata_ehi_push_desc(%struct.ata_eh_info* %71, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %73 = load i32, i32* @AC_ERR_DEV, align 4
  %74 = load %struct.ata_eh_info*, %struct.ata_eh_info** %10, align 8
  %75 = getelementptr inbounds %struct.ata_eh_info, %struct.ata_eh_info* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = or i32 %76, %73
  store i32 %77, i32* %75, align 4
  br label %100

78:                                               ; preds = %65
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* @NV_CPB_RESP_CPB_ERR, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %91

83:                                               ; preds = %78
  %84 = load %struct.ata_eh_info*, %struct.ata_eh_info** %10, align 8
  %85 = call i32 @ata_ehi_push_desc(%struct.ata_eh_info* %84, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %86 = load i32, i32* @AC_ERR_SYSTEM, align 4
  %87 = load %struct.ata_eh_info*, %struct.ata_eh_info** %10, align 8
  %88 = getelementptr inbounds %struct.ata_eh_info, %struct.ata_eh_info* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = or i32 %89, %86
  store i32 %90, i32* %88, align 4
  store i32 1, i32* %11, align 4
  br label %99

91:                                               ; preds = %78
  %92 = load %struct.ata_eh_info*, %struct.ata_eh_info** %10, align 8
  %93 = call i32 @ata_ehi_push_desc(%struct.ata_eh_info* %92, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %94 = load i32, i32* @AC_ERR_OTHER, align 4
  %95 = load %struct.ata_eh_info*, %struct.ata_eh_info** %10, align 8
  %96 = getelementptr inbounds %struct.ata_eh_info, %struct.ata_eh_info* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = or i32 %97, %94
  store i32 %98, i32* %96, align 4
  store i32 1, i32* %11, align 4
  br label %99

99:                                               ; preds = %91, %83
  br label %100

100:                                              ; preds = %99, %70
  br label %101

101:                                              ; preds = %100, %57
  %102 = load i32, i32* %11, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %101
  %105 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %106 = call i32 @ata_port_freeze(%struct.ata_port* %105)
  br label %110

107:                                              ; preds = %101
  %108 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %109 = call i32 @ata_port_abort(%struct.ata_port* %108)
  br label %110

110:                                              ; preds = %107, %104
  store i32 1, i32* %4, align 4
  br label %154

111:                                              ; preds = %39
  %112 = load i32, i32* %9, align 4
  %113 = load i32, i32* @NV_CPB_RESP_DONE, align 4
  %114 = and i32 %112, %113
  %115 = call i64 @likely(i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %153

117:                                              ; preds = %111
  %118 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %119 = load i32, i32* %6, align 4
  %120 = call %struct.ata_queued_cmd* @ata_qc_from_tag(%struct.ata_port* %118, i32 %119)
  store %struct.ata_queued_cmd* %120, %struct.ata_queued_cmd** %12, align 8
  %121 = load i32, i32* %9, align 4
  %122 = call i32 (i8*, i32, ...) @VPRINTK(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i32 %121)
  %123 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %12, align 8
  %124 = ptrtoint %struct.ata_queued_cmd* %123 to i32
  %125 = call i64 @likely(i32 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %132

127:                                              ; preds = %117
  %128 = load i32, i32* %6, align 4
  %129 = call i32 @DPRINTK(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i32 %128)
  %130 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %12, align 8
  %131 = call i32 @ata_qc_complete(%struct.ata_queued_cmd* %130)
  br label %152

132:                                              ; preds = %117
  %133 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %134 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 0
  store %struct.ata_eh_info* %135, %struct.ata_eh_info** %13, align 8
  %136 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %137 = load i32, i32* @KERN_ERR, align 4
  %138 = load i32, i32* %6, align 4
  %139 = call i32 @ata_port_printk(%struct.ata_port* %136, i32 %137, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0), i32 %138)
  %140 = load i32, i32* @AC_ERR_HSM, align 4
  %141 = load %struct.ata_eh_info*, %struct.ata_eh_info** %13, align 8
  %142 = getelementptr inbounds %struct.ata_eh_info, %struct.ata_eh_info* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = or i32 %143, %140
  store i32 %144, i32* %142, align 4
  %145 = load i32, i32* @ATA_EH_RESET, align 4
  %146 = load %struct.ata_eh_info*, %struct.ata_eh_info** %13, align 8
  %147 = getelementptr inbounds %struct.ata_eh_info, %struct.ata_eh_info* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = or i32 %148, %145
  store i32 %149, i32* %147, align 4
  %150 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %151 = call i32 @ata_port_freeze(%struct.ata_port* %150)
  store i32 1, i32* %4, align 4
  br label %154

152:                                              ; preds = %127
  br label %153

153:                                              ; preds = %152, %111
  store i32 0, i32* %4, align 4
  br label %154

154:                                              ; preds = %153, %132, %110
  %155 = load i32, i32* %4, align 4
  ret i32 %155
}

declare dso_local i32 @VPRINTK(i8*, i32, ...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ata_ehi_clear_desc(%struct.ata_eh_info*) #1

declare dso_local i32 @__ata_ehi_push_desc(%struct.ata_eh_info*, i8*, i32) #1

declare dso_local i32 @ata_ehi_push_desc(%struct.ata_eh_info*, i8*) #1

declare dso_local i32 @ata_port_freeze(%struct.ata_port*) #1

declare dso_local i32 @ata_port_abort(%struct.ata_port*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local %struct.ata_queued_cmd* @ata_qc_from_tag(%struct.ata_port*, i32) #1

declare dso_local i32 @DPRINTK(i8*, i32) #1

declare dso_local i32 @ata_qc_complete(%struct.ata_queued_cmd*) #1

declare dso_local i32 @ata_port_printk(%struct.ata_port*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
