; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/megaraid/extr_megaraid_sas_base.c_megasas_issue_blocked_abort_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/megaraid/extr_megaraid_sas_base.c_megasas_issue_blocked_abort_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.megasas_instance = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { {}* }
%struct.megasas_cmd = type { i32, i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.megasas_abort_frame }
%struct.megasas_abort_frame = type { i32, i64, i32, i32, i64, i32 }

@MFI_CMD_ABORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.megasas_instance*, %struct.megasas_cmd*)* @megasas_issue_blocked_abort_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @megasas_issue_blocked_abort_cmd(%struct.megasas_instance* %0, %struct.megasas_cmd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.megasas_instance*, align 8
  %5 = alloca %struct.megasas_cmd*, align 8
  %6 = alloca %struct.megasas_cmd*, align 8
  %7 = alloca %struct.megasas_abort_frame*, align 8
  store %struct.megasas_instance* %0, %struct.megasas_instance** %4, align 8
  store %struct.megasas_cmd* %1, %struct.megasas_cmd** %5, align 8
  %8 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %9 = call %struct.megasas_cmd* @megasas_get_cmd(%struct.megasas_instance* %8)
  store %struct.megasas_cmd* %9, %struct.megasas_cmd** %6, align 8
  %10 = load %struct.megasas_cmd*, %struct.megasas_cmd** %6, align 8
  %11 = icmp ne %struct.megasas_cmd* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %64

13:                                               ; preds = %2
  %14 = load %struct.megasas_cmd*, %struct.megasas_cmd** %6, align 8
  %15 = getelementptr inbounds %struct.megasas_cmd, %struct.megasas_cmd* %14, i32 0, i32 4
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  store %struct.megasas_abort_frame* %17, %struct.megasas_abort_frame** %7, align 8
  %18 = load i32, i32* @MFI_CMD_ABORT, align 4
  %19 = load %struct.megasas_abort_frame*, %struct.megasas_abort_frame** %7, align 8
  %20 = getelementptr inbounds %struct.megasas_abort_frame, %struct.megasas_abort_frame* %19, i32 0, i32 5
  store i32 %18, i32* %20, align 8
  %21 = load %struct.megasas_abort_frame*, %struct.megasas_abort_frame** %7, align 8
  %22 = getelementptr inbounds %struct.megasas_abort_frame, %struct.megasas_abort_frame* %21, i32 0, i32 0
  store i32 255, i32* %22, align 8
  %23 = load %struct.megasas_abort_frame*, %struct.megasas_abort_frame** %7, align 8
  %24 = getelementptr inbounds %struct.megasas_abort_frame, %struct.megasas_abort_frame* %23, i32 0, i32 4
  store i64 0, i64* %24, align 8
  %25 = load %struct.megasas_cmd*, %struct.megasas_cmd** %5, align 8
  %26 = getelementptr inbounds %struct.megasas_cmd, %struct.megasas_cmd* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.megasas_abort_frame*, %struct.megasas_abort_frame** %7, align 8
  %29 = getelementptr inbounds %struct.megasas_abort_frame, %struct.megasas_abort_frame* %28, i32 0, i32 3
  store i32 %27, i32* %29, align 4
  %30 = load %struct.megasas_cmd*, %struct.megasas_cmd** %5, align 8
  %31 = getelementptr inbounds %struct.megasas_cmd, %struct.megasas_cmd* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.megasas_abort_frame*, %struct.megasas_abort_frame** %7, align 8
  %34 = getelementptr inbounds %struct.megasas_abort_frame, %struct.megasas_abort_frame* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 8
  %35 = load %struct.megasas_abort_frame*, %struct.megasas_abort_frame** %7, align 8
  %36 = getelementptr inbounds %struct.megasas_abort_frame, %struct.megasas_abort_frame* %35, i32 0, i32 1
  store i64 0, i64* %36, align 8
  %37 = load %struct.megasas_cmd*, %struct.megasas_cmd** %6, align 8
  %38 = getelementptr inbounds %struct.megasas_cmd, %struct.megasas_cmd* %37, i32 0, i32 0
  store i32 1, i32* %38, align 8
  %39 = load %struct.megasas_cmd*, %struct.megasas_cmd** %6, align 8
  %40 = getelementptr inbounds %struct.megasas_cmd, %struct.megasas_cmd* %39, i32 0, i32 1
  store i32 255, i32* %40, align 4
  %41 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %42 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %41, i32 0, i32 1
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = bitcast {}** %44 to i32 (%struct.megasas_instance*, %struct.megasas_cmd*)**
  %46 = load i32 (%struct.megasas_instance*, %struct.megasas_cmd*)*, i32 (%struct.megasas_instance*, %struct.megasas_cmd*)** %45, align 8
  %47 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %48 = load %struct.megasas_cmd*, %struct.megasas_cmd** %6, align 8
  %49 = call i32 %46(%struct.megasas_instance* %47, %struct.megasas_cmd* %48)
  %50 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %51 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.megasas_cmd*, %struct.megasas_cmd** %6, align 8
  %54 = getelementptr inbounds %struct.megasas_cmd, %struct.megasas_cmd* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 255
  %57 = zext i1 %56 to i32
  %58 = call i32 @wait_event(i32 %52, i32 %57)
  %59 = load %struct.megasas_cmd*, %struct.megasas_cmd** %6, align 8
  %60 = getelementptr inbounds %struct.megasas_cmd, %struct.megasas_cmd* %59, i32 0, i32 0
  store i32 0, i32* %60, align 8
  %61 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %62 = load %struct.megasas_cmd*, %struct.megasas_cmd** %6, align 8
  %63 = call i32 @megasas_return_cmd(%struct.megasas_instance* %61, %struct.megasas_cmd* %62)
  store i32 0, i32* %3, align 4
  br label %64

64:                                               ; preds = %13, %12
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local %struct.megasas_cmd* @megasas_get_cmd(%struct.megasas_instance*) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i32 @megasas_return_cmd(%struct.megasas_instance*, %struct.megasas_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
