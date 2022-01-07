; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/megaraid/extr_megaraid_sas_base.c_megasas_issue_polled.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/megaraid/extr_megaraid_sas_base.c_megasas_issue_polled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.megasas_instance = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { {}* }
%struct.megasas_cmd = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.megasas_header }
%struct.megasas_header = type { i32, i32 }

@MFI_FRAME_DONT_POST_IN_REPLY_QUEUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @megasas_issue_polled(%struct.megasas_instance* %0, %struct.megasas_cmd* %1) #0 {
  %3 = alloca %struct.megasas_instance*, align 8
  %4 = alloca %struct.megasas_cmd*, align 8
  %5 = alloca %struct.megasas_header*, align 8
  store %struct.megasas_instance* %0, %struct.megasas_instance** %3, align 8
  store %struct.megasas_cmd* %1, %struct.megasas_cmd** %4, align 8
  %6 = load %struct.megasas_cmd*, %struct.megasas_cmd** %4, align 8
  %7 = getelementptr inbounds %struct.megasas_cmd, %struct.megasas_cmd* %6, i32 0, i32 0
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  store %struct.megasas_header* %9, %struct.megasas_header** %5, align 8
  %10 = load %struct.megasas_header*, %struct.megasas_header** %5, align 8
  %11 = getelementptr inbounds %struct.megasas_header, %struct.megasas_header* %10, i32 0, i32 0
  store i32 255, i32* %11, align 4
  %12 = load i32, i32* @MFI_FRAME_DONT_POST_IN_REPLY_QUEUE, align 4
  %13 = load %struct.megasas_header*, %struct.megasas_header** %5, align 8
  %14 = getelementptr inbounds %struct.megasas_header, %struct.megasas_header* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = or i32 %15, %12
  store i32 %16, i32* %14, align 4
  %17 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %18 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = bitcast {}** %20 to i32 (%struct.megasas_instance*, %struct.megasas_cmd*)**
  %22 = load i32 (%struct.megasas_instance*, %struct.megasas_cmd*)*, i32 (%struct.megasas_instance*, %struct.megasas_cmd*)** %21, align 8
  %23 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %24 = load %struct.megasas_cmd*, %struct.megasas_cmd** %4, align 8
  %25 = call i32 %22(%struct.megasas_instance* %23, %struct.megasas_cmd* %24)
  %26 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %27 = load %struct.megasas_cmd*, %struct.megasas_cmd** %4, align 8
  %28 = call i32 @wait_and_poll(%struct.megasas_instance* %26, %struct.megasas_cmd* %27)
  ret i32 %28
}

declare dso_local i32 @wait_and_poll(%struct.megasas_instance*, %struct.megasas_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
