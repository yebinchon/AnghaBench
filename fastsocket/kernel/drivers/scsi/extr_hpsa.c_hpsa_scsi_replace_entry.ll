; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_hpsa.c_hpsa_scsi_replace_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_hpsa.c_hpsa_scsi_replace_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctlr_info = type { %struct.TYPE_2__*, %struct.hpsa_scsi_dev_t** }
%struct.TYPE_2__ = type { i32 }
%struct.hpsa_scsi_dev_t = type { i32, i32, i32, i32 }

@HPSA_MAX_DEVICES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"%s device c%db%dt%dl%d changed.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ctlr_info*, i32, i32, %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t**, i32*, %struct.hpsa_scsi_dev_t**, i32*)* @hpsa_scsi_replace_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hpsa_scsi_replace_entry(%struct.ctlr_info* %0, i32 %1, i32 %2, %struct.hpsa_scsi_dev_t* %3, %struct.hpsa_scsi_dev_t** %4, i32* %5, %struct.hpsa_scsi_dev_t** %6, i32* %7) #0 {
  %9 = alloca %struct.ctlr_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.hpsa_scsi_dev_t*, align 8
  %13 = alloca %struct.hpsa_scsi_dev_t**, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.hpsa_scsi_dev_t**, align 8
  %16 = alloca i32*, align 8
  store %struct.ctlr_info* %0, %struct.ctlr_info** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store %struct.hpsa_scsi_dev_t* %3, %struct.hpsa_scsi_dev_t** %12, align 8
  store %struct.hpsa_scsi_dev_t** %4, %struct.hpsa_scsi_dev_t*** %13, align 8
  store i32* %5, i32** %14, align 8
  store %struct.hpsa_scsi_dev_t** %6, %struct.hpsa_scsi_dev_t*** %15, align 8
  store i32* %7, i32** %16, align 8
  %17 = load i32, i32* %11, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %8
  %20 = load i32, i32* %11, align 4
  %21 = load i32, i32* @HPSA_MAX_DEVICES, align 4
  %22 = icmp sge i32 %20, %21
  br label %23

23:                                               ; preds = %19, %8
  %24 = phi i1 [ true, %8 ], [ %22, %19 ]
  %25 = zext i1 %24 to i32
  %26 = call i32 @BUG_ON(i32 %25)
  %27 = load %struct.ctlr_info*, %struct.ctlr_info** %9, align 8
  %28 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %27, i32 0, i32 1
  %29 = load %struct.hpsa_scsi_dev_t**, %struct.hpsa_scsi_dev_t*** %28, align 8
  %30 = load i32, i32* %11, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %29, i64 %31
  %33 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %32, align 8
  %34 = load %struct.hpsa_scsi_dev_t**, %struct.hpsa_scsi_dev_t*** %15, align 8
  %35 = load i32*, i32** %16, align 8
  %36 = load i32, i32* %35, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %34, i64 %37
  store %struct.hpsa_scsi_dev_t* %33, %struct.hpsa_scsi_dev_t** %38, align 8
  %39 = load i32*, i32** %16, align 8
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %39, align 4
  %42 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %12, align 8
  %43 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp eq i32 %44, -1
  br i1 %45, label %46, label %69

46:                                               ; preds = %23
  %47 = load %struct.ctlr_info*, %struct.ctlr_info** %9, align 8
  %48 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %47, i32 0, i32 1
  %49 = load %struct.hpsa_scsi_dev_t**, %struct.hpsa_scsi_dev_t*** %48, align 8
  %50 = load i32, i32* %11, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %49, i64 %51
  %53 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %52, align 8
  %54 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %12, align 8
  %57 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 4
  %58 = load %struct.ctlr_info*, %struct.ctlr_info** %9, align 8
  %59 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %58, i32 0, i32 1
  %60 = load %struct.hpsa_scsi_dev_t**, %struct.hpsa_scsi_dev_t*** %59, align 8
  %61 = load i32, i32* %11, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %60, i64 %62
  %64 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %63, align 8
  %65 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %12, align 8
  %68 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  br label %69

69:                                               ; preds = %46, %23
  %70 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %12, align 8
  %71 = load %struct.ctlr_info*, %struct.ctlr_info** %9, align 8
  %72 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %71, i32 0, i32 1
  %73 = load %struct.hpsa_scsi_dev_t**, %struct.hpsa_scsi_dev_t*** %72, align 8
  %74 = load i32, i32* %11, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %73, i64 %75
  store %struct.hpsa_scsi_dev_t* %70, %struct.hpsa_scsi_dev_t** %76, align 8
  %77 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %12, align 8
  %78 = load %struct.hpsa_scsi_dev_t**, %struct.hpsa_scsi_dev_t*** %13, align 8
  %79 = load i32*, i32** %14, align 8
  %80 = load i32, i32* %79, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %78, i64 %81
  store %struct.hpsa_scsi_dev_t* %77, %struct.hpsa_scsi_dev_t** %82, align 8
  %83 = load i32*, i32** %14, align 8
  %84 = load i32, i32* %83, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %83, align 4
  %86 = load %struct.ctlr_info*, %struct.ctlr_info** %9, align 8
  %87 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %86, i32 0, i32 0
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %12, align 8
  %91 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @scsi_device_type(i32 %92)
  %94 = load i32, i32* %10, align 4
  %95 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %12, align 8
  %96 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %12, align 8
  %99 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %12, align 8
  %102 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @dev_info(i32* %89, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %93, i32 %94, i32 %97, i32 %100, i32 %103)
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
