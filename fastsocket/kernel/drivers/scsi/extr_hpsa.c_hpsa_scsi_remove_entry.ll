; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_hpsa.c_hpsa_scsi_remove_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_hpsa.c_hpsa_scsi_remove_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctlr_info = type { i32, %struct.TYPE_2__*, %struct.hpsa_scsi_dev_t** }
%struct.TYPE_2__ = type { i32 }
%struct.hpsa_scsi_dev_t = type { i32, i32, i32, i32 }

@HPSA_MAX_DEVICES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"%s device c%db%dt%dl%d removed.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ctlr_info*, i32, i32, %struct.hpsa_scsi_dev_t**, i32*)* @hpsa_scsi_remove_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hpsa_scsi_remove_entry(%struct.ctlr_info* %0, i32 %1, i32 %2, %struct.hpsa_scsi_dev_t** %3, i32* %4) #0 {
  %6 = alloca %struct.ctlr_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.hpsa_scsi_dev_t**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.hpsa_scsi_dev_t*, align 8
  store %struct.ctlr_info* %0, %struct.ctlr_info** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.hpsa_scsi_dev_t** %3, %struct.hpsa_scsi_dev_t*** %9, align 8
  store i32* %4, i32** %10, align 8
  %13 = load i32, i32* %8, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %5
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @HPSA_MAX_DEVICES, align 4
  %18 = icmp sge i32 %16, %17
  br label %19

19:                                               ; preds = %15, %5
  %20 = phi i1 [ true, %5 ], [ %18, %15 ]
  %21 = zext i1 %20 to i32
  %22 = call i32 @BUG_ON(i32 %21)
  %23 = load %struct.ctlr_info*, %struct.ctlr_info** %6, align 8
  %24 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %23, i32 0, i32 2
  %25 = load %struct.hpsa_scsi_dev_t**, %struct.hpsa_scsi_dev_t*** %24, align 8
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %25, i64 %27
  %29 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %28, align 8
  store %struct.hpsa_scsi_dev_t* %29, %struct.hpsa_scsi_dev_t** %12, align 8
  %30 = load %struct.ctlr_info*, %struct.ctlr_info** %6, align 8
  %31 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %30, i32 0, i32 2
  %32 = load %struct.hpsa_scsi_dev_t**, %struct.hpsa_scsi_dev_t*** %31, align 8
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %32, i64 %34
  %36 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %35, align 8
  %37 = load %struct.hpsa_scsi_dev_t**, %struct.hpsa_scsi_dev_t*** %9, align 8
  %38 = load i32*, i32** %10, align 8
  %39 = load i32, i32* %38, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %37, i64 %40
  store %struct.hpsa_scsi_dev_t* %36, %struct.hpsa_scsi_dev_t** %41, align 8
  %42 = load i32*, i32** %10, align 8
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %42, align 4
  %45 = load i32, i32* %8, align 4
  store i32 %45, i32* %11, align 4
  br label %46

46:                                               ; preds = %68, %19
  %47 = load i32, i32* %11, align 4
  %48 = load %struct.ctlr_info*, %struct.ctlr_info** %6, align 8
  %49 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = sub nsw i32 %50, 1
  %52 = icmp slt i32 %47, %51
  br i1 %52, label %53, label %71

53:                                               ; preds = %46
  %54 = load %struct.ctlr_info*, %struct.ctlr_info** %6, align 8
  %55 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %54, i32 0, i32 2
  %56 = load %struct.hpsa_scsi_dev_t**, %struct.hpsa_scsi_dev_t*** %55, align 8
  %57 = load i32, i32* %11, align 4
  %58 = add nsw i32 %57, 1
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %56, i64 %59
  %61 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %60, align 8
  %62 = load %struct.ctlr_info*, %struct.ctlr_info** %6, align 8
  %63 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %62, i32 0, i32 2
  %64 = load %struct.hpsa_scsi_dev_t**, %struct.hpsa_scsi_dev_t*** %63, align 8
  %65 = load i32, i32* %11, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %64, i64 %66
  store %struct.hpsa_scsi_dev_t* %61, %struct.hpsa_scsi_dev_t** %67, align 8
  br label %68

68:                                               ; preds = %53
  %69 = load i32, i32* %11, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %11, align 4
  br label %46

71:                                               ; preds = %46
  %72 = load %struct.ctlr_info*, %struct.ctlr_info** %6, align 8
  %73 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = add nsw i32 %74, -1
  store i32 %75, i32* %73, align 8
  %76 = load %struct.ctlr_info*, %struct.ctlr_info** %6, align 8
  %77 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %76, i32 0, i32 1
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %12, align 8
  %81 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @scsi_device_type(i32 %82)
  %84 = load i32, i32* %7, align 4
  %85 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %12, align 8
  %86 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %12, align 8
  %89 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %12, align 8
  %92 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @dev_info(i32* %79, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %83, i32 %84, i32 %87, i32 %90, i32 %93)
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
