; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ipr.c_ipr_reset_restore_cfg_space.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ipr.c_ipr_reset_restore_cfg_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipr_cmnd = type { i32, %struct.TYPE_8__, %struct.ipr_ioa_cfg* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i8* }
%struct.ipr_ioa_cfg = type { i64, i32, i64, i64, i64, i64, %struct.TYPE_9__, %struct.TYPE_10__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i32 }

@ENTER = common dso_local global i32 0, align 4
@PCIBIOS_SUCCESSFUL = common dso_local global i32 0, align 4
@IPR_IOASC_PCI_ACCESS_ERROR = common dso_local global i32 0, align 4
@IPR_RC_JOB_CONTINUE = common dso_local global i32 0, align 4
@IPR_ENDIAN_SWAP_KEY = common dso_local global i32 0, align 4
@ipr_reset_get_unit_check_job = common dso_local global i32 0, align 4
@IPR_DUMP_DELAY_TIMEOUT = common dso_local global i32 0, align 4
@ipr_reset_alert = common dso_local global i32 0, align 4
@IPR_RC_JOB_RETURN = common dso_local global i32 0, align 4
@ipr_ioa_bringdown_done = common dso_local global i32 0, align 4
@ipr_reset_enable_ioa = common dso_local global i32 0, align 4
@GET_DUMP = common dso_local global i64 0, align 8
@READ_DUMP = common dso_local global i64 0, align 8
@IPR_SIS64_DUMP_TIMEOUT = common dso_local global i32 0, align 4
@IPR_SIS32_DUMP_TIMEOUT = common dso_local global i32 0, align 4
@ipr_reset_wait_for_dump = common dso_local global i32 0, align 4
@LEAVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipr_cmnd*)* @ipr_reset_restore_cfg_space to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipr_reset_restore_cfg_space(%struct.ipr_cmnd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ipr_cmnd*, align 8
  %4 = alloca %struct.ipr_ioa_cfg*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ipr_cmnd* %0, %struct.ipr_cmnd** %3, align 8
  %7 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %3, align 8
  %8 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %7, i32 0, i32 2
  %9 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %8, align 8
  store %struct.ipr_ioa_cfg* %9, %struct.ipr_ioa_cfg** %4, align 8
  %10 = load i32, i32* @ENTER, align 4
  %11 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %12 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %11, i32 0, i32 7
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  store i32 1, i32* %14, align 4
  %15 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %16 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %15, i32 0, i32 7
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %18 = call i32 @pci_restore_state(%struct.TYPE_10__* %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @PCIBIOS_SUCCESSFUL, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %31

22:                                               ; preds = %1
  %23 = load i32, i32* @IPR_IOASC_PCI_ACCESS_ERROR, align 4
  %24 = call i8* @cpu_to_be32(i32 %23)
  %25 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %3, align 8
  %26 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  store i8* %24, i8** %29, align 8
  %30 = load i32, i32* @IPR_RC_JOB_CONTINUE, align 4
  store i32 %30, i32* %2, align 4
  br label %140

31:                                               ; preds = %1
  %32 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %33 = call i64 @ipr_set_pcix_cmd_reg(%struct.ipr_ioa_cfg* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %31
  %36 = load i32, i32* @IPR_IOASC_PCI_ACCESS_ERROR, align 4
  %37 = call i8* @cpu_to_be32(i32 %36)
  %38 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %3, align 8
  %39 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  store i8* %37, i8** %42, align 8
  %43 = load i32, i32* @IPR_RC_JOB_CONTINUE, align 4
  store i32 %43, i32* %2, align 4
  br label %140

44:                                               ; preds = %31
  %45 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %46 = call i32 @ipr_fail_all_ops(%struct.ipr_ioa_cfg* %45)
  %47 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %48 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %63

51:                                               ; preds = %44
  %52 = load i32, i32* @IPR_ENDIAN_SWAP_KEY, align 4
  %53 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %54 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %53, i32 0, i32 6
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @writel(i32 %52, i32 %56)
  %58 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %59 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %58, i32 0, i32 6
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @readl(i32 %61)
  store i32 %62, i32* %5, align 4
  br label %63

63:                                               ; preds = %51, %44
  %64 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %65 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %64, i32 0, i32 5
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %92

68:                                               ; preds = %63
  %69 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %70 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %68
  %74 = load i32, i32* @ipr_reset_get_unit_check_job, align 4
  %75 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %3, align 8
  %76 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  %77 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %3, align 8
  %78 = load i32, i32* @IPR_DUMP_DELAY_TIMEOUT, align 4
  %79 = call i32 @ipr_reset_start_timer(%struct.ipr_cmnd* %77, i32 %78)
  br label %90

80:                                               ; preds = %68
  %81 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %82 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %81, i32 0, i32 5
  store i64 0, i64* %82, align 8
  %83 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %84 = call i32 @ipr_get_unit_check_buffer(%struct.ipr_ioa_cfg* %83)
  %85 = load i32, i32* @ipr_reset_alert, align 4
  %86 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %3, align 8
  %87 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 8
  %88 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %3, align 8
  %89 = call i32 @ipr_reset_start_timer(%struct.ipr_cmnd* %88, i32 0)
  br label %90

90:                                               ; preds = %80, %73
  %91 = load i32, i32* @IPR_RC_JOB_RETURN, align 4
  store i32 %91, i32* %2, align 4
  br label %140

92:                                               ; preds = %63
  %93 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %94 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %93, i32 0, i32 4
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %92
  %98 = load i32, i32* @ipr_ioa_bringdown_done, align 4
  %99 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %3, align 8
  %100 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 8
  br label %137

101:                                              ; preds = %92
  %102 = load i32, i32* @ipr_reset_enable_ioa, align 4
  %103 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %3, align 8
  %104 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %103, i32 0, i32 0
  store i32 %102, i32* %104, align 8
  %105 = load i64, i64* @GET_DUMP, align 8
  %106 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %107 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = icmp eq i64 %105, %108
  br i1 %109, label %110, label %136

110:                                              ; preds = %101
  %111 = load i64, i64* @READ_DUMP, align 8
  %112 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %113 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %112, i32 0, i32 0
  store i64 %111, i64* %113, align 8
  %114 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %115 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %114, i32 0, i32 3
  store i64 0, i64* %115, align 8
  %116 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %117 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %110
  %121 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %3, align 8
  %122 = load i32, i32* @IPR_SIS64_DUMP_TIMEOUT, align 4
  %123 = call i32 @ipr_reset_start_timer(%struct.ipr_cmnd* %121, i32 %122)
  br label %128

124:                                              ; preds = %110
  %125 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %3, align 8
  %126 = load i32, i32* @IPR_SIS32_DUMP_TIMEOUT, align 4
  %127 = call i32 @ipr_reset_start_timer(%struct.ipr_cmnd* %125, i32 %126)
  br label %128

128:                                              ; preds = %124, %120
  %129 = load i32, i32* @ipr_reset_wait_for_dump, align 4
  %130 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %3, align 8
  %131 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %130, i32 0, i32 0
  store i32 %129, i32* %131, align 8
  %132 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %133 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %132, i32 0, i32 1
  %134 = call i32 @schedule_work(i32* %133)
  %135 = load i32, i32* @IPR_RC_JOB_RETURN, align 4
  store i32 %135, i32* %2, align 4
  br label %140

136:                                              ; preds = %101
  br label %137

137:                                              ; preds = %136, %97
  %138 = load i32, i32* @LEAVE, align 4
  %139 = load i32, i32* @IPR_RC_JOB_CONTINUE, align 4
  store i32 %139, i32* %2, align 4
  br label %140

140:                                              ; preds = %137, %128, %90, %35, %22
  %141 = load i32, i32* %2, align 4
  ret i32 %141
}

declare dso_local i32 @pci_restore_state(%struct.TYPE_10__*) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i64 @ipr_set_pcix_cmd_reg(%struct.ipr_ioa_cfg*) #1

declare dso_local i32 @ipr_fail_all_ops(%struct.ipr_ioa_cfg*) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @ipr_reset_start_timer(%struct.ipr_cmnd*, i32) #1

declare dso_local i32 @ipr_get_unit_check_buffer(%struct.ipr_ioa_cfg*) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
