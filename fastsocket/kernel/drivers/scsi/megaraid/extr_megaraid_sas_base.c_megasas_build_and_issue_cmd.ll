; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/megaraid/extr_megaraid_sas_base.c_megasas_build_and_issue_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/megaraid/extr_megaraid_sas_base.c_megasas_build_and_issue_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.megasas_instance = type { i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 (%struct.megasas_instance*, i32, i64, i32)* }
%struct.scsi_cmnd = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8* }
%struct.megasas_cmd = type { i64, i32, %struct.scsi_cmnd* }

@SCSI_MLQUEUE_HOST_BUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @megasas_build_and_issue_cmd(%struct.megasas_instance* %0, %struct.scsi_cmnd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.megasas_instance*, align 8
  %5 = alloca %struct.scsi_cmnd*, align 8
  %6 = alloca %struct.megasas_cmd*, align 8
  %7 = alloca i32, align 4
  store %struct.megasas_instance* %0, %struct.megasas_instance** %4, align 8
  store %struct.scsi_cmnd* %1, %struct.scsi_cmnd** %5, align 8
  %8 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %9 = call %struct.megasas_cmd* @megasas_get_cmd(%struct.megasas_instance* %8)
  store %struct.megasas_cmd* %9, %struct.megasas_cmd** %6, align 8
  %10 = load %struct.megasas_cmd*, %struct.megasas_cmd** %6, align 8
  %11 = icmp ne %struct.megasas_cmd* %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @SCSI_MLQUEUE_HOST_BUSY, align 4
  store i32 %13, i32* %3, align 4
  br label %65

14:                                               ; preds = %2
  %15 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %16 = call i64 @megasas_is_ldio(%struct.scsi_cmnd* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %14
  %19 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %20 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %21 = load %struct.megasas_cmd*, %struct.megasas_cmd** %6, align 8
  %22 = call i32 @megasas_build_ldio(%struct.megasas_instance* %19, %struct.scsi_cmnd* %20, %struct.megasas_cmd* %21)
  store i32 %22, i32* %7, align 4
  br label %28

23:                                               ; preds = %14
  %24 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %25 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %26 = load %struct.megasas_cmd*, %struct.megasas_cmd** %6, align 8
  %27 = call i32 @megasas_build_dcdb(%struct.megasas_instance* %24, %struct.scsi_cmnd* %25, %struct.megasas_cmd* %26)
  store i32 %27, i32* %7, align 4
  br label %28

28:                                               ; preds = %23, %18
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %28
  br label %61

32:                                               ; preds = %28
  %33 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %34 = load %struct.megasas_cmd*, %struct.megasas_cmd** %6, align 8
  %35 = getelementptr inbounds %struct.megasas_cmd, %struct.megasas_cmd* %34, i32 0, i32 2
  store %struct.scsi_cmnd* %33, %struct.scsi_cmnd** %35, align 8
  %36 = load %struct.megasas_cmd*, %struct.megasas_cmd** %6, align 8
  %37 = bitcast %struct.megasas_cmd* %36 to i8*
  %38 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %39 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  store i8* %37, i8** %40, align 8
  %41 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %42 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %41, i32 0, i32 2
  %43 = call i32 @atomic_inc(i32* %42)
  %44 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %45 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %44, i32 0, i32 1
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32 (%struct.megasas_instance*, i32, i64, i32)*, i32 (%struct.megasas_instance*, i32, i64, i32)** %47, align 8
  %49 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %50 = load %struct.megasas_cmd*, %struct.megasas_cmd** %6, align 8
  %51 = getelementptr inbounds %struct.megasas_cmd, %struct.megasas_cmd* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.megasas_cmd*, %struct.megasas_cmd** %6, align 8
  %54 = getelementptr inbounds %struct.megasas_cmd, %struct.megasas_cmd* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = sub nsw i64 %55, 1
  %57 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %58 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 %48(%struct.megasas_instance* %49, i32 %52, i64 %56, i32 %59)
  store i32 0, i32* %3, align 4
  br label %65

61:                                               ; preds = %31
  %62 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %63 = load %struct.megasas_cmd*, %struct.megasas_cmd** %6, align 8
  %64 = call i32 @megasas_return_cmd(%struct.megasas_instance* %62, %struct.megasas_cmd* %63)
  store i32 1, i32* %3, align 4
  br label %65

65:                                               ; preds = %61, %32, %12
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local %struct.megasas_cmd* @megasas_get_cmd(%struct.megasas_instance*) #1

declare dso_local i64 @megasas_is_ldio(%struct.scsi_cmnd*) #1

declare dso_local i32 @megasas_build_ldio(%struct.megasas_instance*, %struct.scsi_cmnd*, %struct.megasas_cmd*) #1

declare dso_local i32 @megasas_build_dcdb(%struct.megasas_instance*, %struct.scsi_cmnd*, %struct.megasas_cmd*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @megasas_return_cmd(%struct.megasas_instance*, %struct.megasas_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
