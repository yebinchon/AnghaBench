; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_hpsa.c_hpsa_scsi_update_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_hpsa.c_hpsa_scsi_update_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctlr_info = type { %struct.TYPE_4__*, %struct.TYPE_3__** }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.hpsa_scsi_dev_t = type { i32, i32, i32, i32, i32 }

@HPSA_MAX_DEVICES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"%s device c%db%dt%dl%d updated.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ctlr_info*, i32, i32, %struct.hpsa_scsi_dev_t*)* @hpsa_scsi_update_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hpsa_scsi_update_entry(%struct.ctlr_info* %0, i32 %1, i32 %2, %struct.hpsa_scsi_dev_t* %3) #0 {
  %5 = alloca %struct.ctlr_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.hpsa_scsi_dev_t*, align 8
  store %struct.ctlr_info* %0, %struct.ctlr_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.hpsa_scsi_dev_t* %3, %struct.hpsa_scsi_dev_t** %8, align 8
  %9 = load i32, i32* %7, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %4
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @HPSA_MAX_DEVICES, align 4
  %14 = icmp sge i32 %12, %13
  br label %15

15:                                               ; preds = %11, %4
  %16 = phi i1 [ true, %4 ], [ %14, %11 ]
  %17 = zext i1 %16 to i32
  %18 = call i32 @BUG_ON(i32 %17)
  %19 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %8, align 8
  %20 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.ctlr_info*, %struct.ctlr_info** %5, align 8
  %23 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %22, i32 0, i32 1
  %24 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %23, align 8
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %24, i64 %26
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  store i32 %21, i32* %29, align 4
  %30 = load %struct.ctlr_info*, %struct.ctlr_info** %5, align 8
  %31 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %8, align 8
  %35 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @scsi_device_type(i32 %36)
  %38 = load i32, i32* %6, align 4
  %39 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %8, align 8
  %40 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %8, align 8
  %43 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %8, align 8
  %46 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @dev_info(i32* %33, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %38, i32 %41, i32 %44, i32 %47)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @scsi_device_type(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
