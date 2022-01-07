; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ipr.c_ipr_abort_timeout.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ipr.c_ipr_abort_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipr_cmnd = type { %struct.TYPE_7__, %struct.ipr_cmnd*, %struct.TYPE_6__, %struct.TYPE_5__, %struct.ipr_ioa_cfg* }
%struct.TYPE_7__ = type { %struct.ipr_cmd_pkt, i32 }
%struct.ipr_cmd_pkt = type { i32*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64 }
%struct.ipr_ioa_cfg = type { %struct.TYPE_8__*, i64 }
%struct.TYPE_8__ = type { i32 }

@ENTER = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Abort timed out. Resetting bus.\0A\00", align 1
@IPR_RQTYPE_IOACMD = common dso_local global i32 0, align 4
@IPR_RESET_DEVICE = common dso_local global i32 0, align 4
@IPR_RESET_TYPE_SELECT = common dso_local global i32 0, align 4
@IPR_BUS_RESET = common dso_local global i32 0, align 4
@ipr_bus_reset_done = common dso_local global i32 0, align 4
@ipr_timeout = common dso_local global i32 0, align 4
@IPR_DEVICE_RESET_TIMEOUT = common dso_local global i32 0, align 4
@LEAVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipr_cmnd*)* @ipr_abort_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipr_abort_timeout(%struct.ipr_cmnd* %0) #0 {
  %2 = alloca %struct.ipr_cmnd*, align 8
  %3 = alloca %struct.ipr_cmnd*, align 8
  %4 = alloca %struct.ipr_ioa_cfg*, align 8
  %5 = alloca %struct.ipr_cmd_pkt*, align 8
  %6 = alloca i64, align 8
  store %struct.ipr_cmnd* %0, %struct.ipr_cmnd** %2, align 8
  %7 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %2, align 8
  %8 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %7, i32 0, i32 4
  %9 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %8, align 8
  store %struct.ipr_ioa_cfg* %9, %struct.ipr_ioa_cfg** %4, align 8
  store i64 0, i64* %6, align 8
  %10 = load i32, i32* @ENTER, align 4
  %11 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %12 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %11, i32 0, i32 0
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i64, i64* %6, align 8
  %17 = call i32 @spin_lock_irqsave(i32 %15, i64 %16)
  %18 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %2, align 8
  %19 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %1
  %24 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %25 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %23, %1
  %29 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %30 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %29, i32 0, i32 0
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i64, i64* %6, align 8
  %35 = call i32 @spin_unlock_irqrestore(i32 %33, i64 %34)
  br label %89

36:                                               ; preds = %23
  %37 = load i32, i32* @KERN_ERR, align 4
  %38 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %2, align 8
  %39 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @sdev_printk(i32 %37, i32 %41, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %43 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %44 = call %struct.ipr_cmnd* @ipr_get_free_ipr_cmnd(%struct.ipr_ioa_cfg* %43)
  store %struct.ipr_cmnd* %44, %struct.ipr_cmnd** %3, align 8
  %45 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %3, align 8
  %46 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %2, align 8
  %47 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %46, i32 0, i32 1
  store %struct.ipr_cmnd* %45, %struct.ipr_cmnd** %47, align 8
  %48 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %2, align 8
  %49 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %3, align 8
  %50 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %49, i32 0, i32 1
  store %struct.ipr_cmnd* %48, %struct.ipr_cmnd** %50, align 8
  %51 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %2, align 8
  %52 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %3, align 8
  %56 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 1
  store i32 %54, i32* %57, align 8
  %58 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %3, align 8
  %59 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  store %struct.ipr_cmd_pkt* %60, %struct.ipr_cmd_pkt** %5, align 8
  %61 = load i32, i32* @IPR_RQTYPE_IOACMD, align 4
  %62 = load %struct.ipr_cmd_pkt*, %struct.ipr_cmd_pkt** %5, align 8
  %63 = getelementptr inbounds %struct.ipr_cmd_pkt, %struct.ipr_cmd_pkt* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 8
  %64 = load i32, i32* @IPR_RESET_DEVICE, align 4
  %65 = load %struct.ipr_cmd_pkt*, %struct.ipr_cmd_pkt** %5, align 8
  %66 = getelementptr inbounds %struct.ipr_cmd_pkt, %struct.ipr_cmd_pkt* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  store i32 %64, i32* %68, align 4
  %69 = load i32, i32* @IPR_RESET_TYPE_SELECT, align 4
  %70 = load i32, i32* @IPR_BUS_RESET, align 4
  %71 = or i32 %69, %70
  %72 = load %struct.ipr_cmd_pkt*, %struct.ipr_cmd_pkt** %5, align 8
  %73 = getelementptr inbounds %struct.ipr_cmd_pkt, %struct.ipr_cmd_pkt* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 2
  store i32 %71, i32* %75, align 4
  %76 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %3, align 8
  %77 = load i32, i32* @ipr_bus_reset_done, align 4
  %78 = load i32, i32* @ipr_timeout, align 4
  %79 = load i32, i32* @IPR_DEVICE_RESET_TIMEOUT, align 4
  %80 = call i32 @ipr_do_req(%struct.ipr_cmnd* %76, i32 %77, i32 %78, i32 %79)
  %81 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %82 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %81, i32 0, i32 0
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i64, i64* %6, align 8
  %87 = call i32 @spin_unlock_irqrestore(i32 %85, i64 %86)
  %88 = load i32, i32* @LEAVE, align 4
  br label %89

89:                                               ; preds = %36, %28
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

declare dso_local i32 @sdev_printk(i32, i32, i8*) #1

declare dso_local %struct.ipr_cmnd* @ipr_get_free_ipr_cmnd(%struct.ipr_ioa_cfg*) #1

declare dso_local i32 @ipr_do_req(%struct.ipr_cmnd*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
