; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_if_sdio.c_if_sdio_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_if_sdio.c_if_sdio_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdio_func = type { i32 }
%struct.if_sdio_card = type { i64, %struct.if_sdio_card*, %struct.if_sdio_card*, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.if_sdio_packet = type { i64, %struct.if_sdio_packet*, %struct.if_sdio_packet*, i32, %struct.TYPE_4__* }
%struct.cmd_header = type { i32 }

@LBS_DEB_SDIO = common dso_local global i32 0, align 4
@user_rmmod = common dso_local global i64 0, align 8
@IF_SDIO_MODEL_8688 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"send function SHUTDOWN command\0A\00", align 1
@CMD_FUNC_SHUTDOWN = common dso_local global i32 0, align 4
@lbs_cmd_copyback = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"CMD_FUNC_SHUTDOWN cmd failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"call remove card\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdio_func*)* @if_sdio_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @if_sdio_remove(%struct.sdio_func* %0) #0 {
  %2 = alloca %struct.sdio_func*, align 8
  %3 = alloca %struct.if_sdio_card*, align 8
  %4 = alloca %struct.if_sdio_packet*, align 8
  %5 = alloca %struct.cmd_header, align 4
  store %struct.sdio_func* %0, %struct.sdio_func** %2, align 8
  %6 = load i32, i32* @LBS_DEB_SDIO, align 4
  %7 = call i32 @lbs_deb_enter(i32 %6)
  %8 = load %struct.sdio_func*, %struct.sdio_func** %2, align 8
  %9 = call %struct.if_sdio_packet* @sdio_get_drvdata(%struct.sdio_func* %8)
  %10 = bitcast %struct.if_sdio_packet* %9 to %struct.if_sdio_card*
  store %struct.if_sdio_card* %10, %struct.if_sdio_card** %3, align 8
  %11 = load i64, i64* @user_rmmod, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %33

13:                                               ; preds = %1
  %14 = load %struct.if_sdio_card*, %struct.if_sdio_card** %3, align 8
  %15 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @IF_SDIO_MODEL_8688, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %33

19:                                               ; preds = %13
  %20 = call i32 @memset(%struct.cmd_header* %5, i32 0, i32 4)
  %21 = call i32 @lbs_deb_sdio(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.if_sdio_card*, %struct.if_sdio_card** %3, align 8
  %23 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %22, i32 0, i32 4
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = load i32, i32* @CMD_FUNC_SHUTDOWN, align 4
  %26 = load i32, i32* @lbs_cmd_copyback, align 4
  %27 = ptrtoint %struct.cmd_header* %5 to i64
  %28 = call i64 @__lbs_cmd(%struct.TYPE_4__* %24, i32 %25, %struct.cmd_header* %5, i32 4, i32 %26, i64 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %19
  %31 = call i32 @lbs_pr_alert(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %32

32:                                               ; preds = %30, %19
  br label %33

33:                                               ; preds = %32, %13, %1
  %34 = call i32 @lbs_deb_sdio(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %35 = load %struct.if_sdio_card*, %struct.if_sdio_card** %3, align 8
  %36 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %35, i32 0, i32 4
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = call i32 @lbs_stop_card(%struct.TYPE_4__* %37)
  %39 = load %struct.if_sdio_card*, %struct.if_sdio_card** %3, align 8
  %40 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %39, i32 0, i32 4
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = call i32 @lbs_remove_card(%struct.TYPE_4__* %41)
  %43 = load %struct.if_sdio_card*, %struct.if_sdio_card** %3, align 8
  %44 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %43, i32 0, i32 4
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  store i32 1, i32* %46, align 4
  %47 = load %struct.if_sdio_card*, %struct.if_sdio_card** %3, align 8
  %48 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @flush_workqueue(i32 %49)
  %51 = load %struct.if_sdio_card*, %struct.if_sdio_card** %3, align 8
  %52 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @destroy_workqueue(i32 %53)
  %55 = load %struct.sdio_func*, %struct.sdio_func** %2, align 8
  %56 = call i32 @sdio_claim_host(%struct.sdio_func* %55)
  %57 = load %struct.sdio_func*, %struct.sdio_func** %2, align 8
  %58 = call i32 @sdio_release_irq(%struct.sdio_func* %57)
  %59 = load %struct.sdio_func*, %struct.sdio_func** %2, align 8
  %60 = call i32 @sdio_disable_func(%struct.sdio_func* %59)
  %61 = load %struct.sdio_func*, %struct.sdio_func** %2, align 8
  %62 = call i32 @sdio_release_host(%struct.sdio_func* %61)
  br label %63

63:                                               ; preds = %68, %33
  %64 = load %struct.if_sdio_card*, %struct.if_sdio_card** %3, align 8
  %65 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %64, i32 0, i32 2
  %66 = load %struct.if_sdio_card*, %struct.if_sdio_card** %65, align 8
  %67 = icmp ne %struct.if_sdio_card* %66, null
  br i1 %67, label %68, label %82

68:                                               ; preds = %63
  %69 = load %struct.if_sdio_card*, %struct.if_sdio_card** %3, align 8
  %70 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %69, i32 0, i32 2
  %71 = load %struct.if_sdio_card*, %struct.if_sdio_card** %70, align 8
  %72 = bitcast %struct.if_sdio_card* %71 to %struct.if_sdio_packet*
  store %struct.if_sdio_packet* %72, %struct.if_sdio_packet** %4, align 8
  %73 = load %struct.if_sdio_card*, %struct.if_sdio_card** %3, align 8
  %74 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %73, i32 0, i32 2
  %75 = load %struct.if_sdio_card*, %struct.if_sdio_card** %74, align 8
  %76 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %75, i32 0, i32 1
  %77 = load %struct.if_sdio_card*, %struct.if_sdio_card** %76, align 8
  %78 = load %struct.if_sdio_card*, %struct.if_sdio_card** %3, align 8
  %79 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %78, i32 0, i32 2
  store %struct.if_sdio_card* %77, %struct.if_sdio_card** %79, align 8
  %80 = load %struct.if_sdio_packet*, %struct.if_sdio_packet** %4, align 8
  %81 = call i32 @kfree(%struct.if_sdio_packet* %80)
  br label %63

82:                                               ; preds = %63
  %83 = load %struct.if_sdio_card*, %struct.if_sdio_card** %3, align 8
  %84 = bitcast %struct.if_sdio_card* %83 to %struct.if_sdio_packet*
  %85 = call i32 @kfree(%struct.if_sdio_packet* %84)
  %86 = load i32, i32* @LBS_DEB_SDIO, align 4
  %87 = call i32 @lbs_deb_leave(i32 %86)
  ret void
}

declare dso_local i32 @lbs_deb_enter(i32) #1

declare dso_local %struct.if_sdio_packet* @sdio_get_drvdata(%struct.sdio_func*) #1

declare dso_local i32 @memset(%struct.cmd_header*, i32, i32) #1

declare dso_local i32 @lbs_deb_sdio(i8*) #1

declare dso_local i64 @__lbs_cmd(%struct.TYPE_4__*, i32, %struct.cmd_header*, i32, i32, i64) #1

declare dso_local i32 @lbs_pr_alert(i8*) #1

declare dso_local i32 @lbs_stop_card(%struct.TYPE_4__*) #1

declare dso_local i32 @lbs_remove_card(%struct.TYPE_4__*) #1

declare dso_local i32 @flush_workqueue(i32) #1

declare dso_local i32 @destroy_workqueue(i32) #1

declare dso_local i32 @sdio_claim_host(%struct.sdio_func*) #1

declare dso_local i32 @sdio_release_irq(%struct.sdio_func*) #1

declare dso_local i32 @sdio_disable_func(%struct.sdio_func*) #1

declare dso_local i32 @sdio_release_host(%struct.sdio_func*) #1

declare dso_local i32 @kfree(%struct.if_sdio_packet*) #1

declare dso_local i32 @lbs_deb_leave(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
