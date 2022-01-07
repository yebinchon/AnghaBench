; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_stex.c_stex_check_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_stex.c_stex_check_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_hba = type { i32 }
%struct.st_ccb = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64* }
%struct.status_msg = type { i64, i32* }

@MGT_CMD = common dso_local global i64 0, align 8
@SAM_STAT_CHECK_CONDITION = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.st_hba*, %struct.st_ccb*, %struct.status_msg*)* @stex_check_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stex_check_cmd(%struct.st_hba* %0, %struct.st_ccb* %1, %struct.status_msg* %2) #0 {
  %4 = alloca %struct.st_hba*, align 8
  %5 = alloca %struct.st_ccb*, align 8
  %6 = alloca %struct.status_msg*, align 8
  store %struct.st_hba* %0, %struct.st_hba** %4, align 8
  store %struct.st_ccb* %1, %struct.st_ccb** %5, align 8
  store %struct.status_msg* %2, %struct.status_msg** %6, align 8
  %7 = load %struct.st_ccb*, %struct.st_ccb** %5, align 8
  %8 = getelementptr inbounds %struct.st_ccb, %struct.st_ccb* %7, i32 0, i32 0
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i64*, i64** %10, align 8
  %12 = getelementptr inbounds i64, i64* %11, i64 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @MGT_CMD, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %38

16:                                               ; preds = %3
  %17 = load %struct.status_msg*, %struct.status_msg** %6, align 8
  %18 = getelementptr inbounds %struct.status_msg, %struct.status_msg* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @SAM_STAT_CHECK_CONDITION, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %38

22:                                               ; preds = %16
  %23 = load %struct.st_ccb*, %struct.st_ccb** %5, align 8
  %24 = getelementptr inbounds %struct.st_ccb, %struct.st_ccb* %23, i32 0, i32 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = load %struct.st_ccb*, %struct.st_ccb** %5, align 8
  %27 = getelementptr inbounds %struct.st_ccb, %struct.st_ccb* %26, i32 0, i32 0
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = call i64 @scsi_bufflen(%struct.TYPE_3__* %28)
  %30 = load %struct.status_msg*, %struct.status_msg** %6, align 8
  %31 = getelementptr inbounds %struct.status_msg, %struct.status_msg* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @le32_to_cpu(i32 %34)
  %36 = sub nsw i64 %29, %35
  %37 = call i32 @scsi_set_resid(%struct.TYPE_3__* %25, i64 %36)
  br label %38

38:                                               ; preds = %22, %16, %3
  ret void
}

declare dso_local i32 @scsi_set_resid(%struct.TYPE_3__*, i64) #1

declare dso_local i64 @scsi_bufflen(%struct.TYPE_3__*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
