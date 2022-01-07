; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_sd.c_sd_completed_bytes.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_sd.c_sd_completed_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { %struct.TYPE_3__*, i32, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i64 }

@REQ_TYPE_FS = common dso_local global i64 0, align 8
@SCSI_SENSE_BUFFERSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*)* @sd_completed_bytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_completed_bytes(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_cmnd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %3, align 8
  %11 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %12 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %11, i32 0, i32 2
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = call i32 @blk_rq_pos(%struct.TYPE_4__* %13)
  store i32 %14, i32* %4, align 4
  %15 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %16 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %15, i32 0, i32 2
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = call i32 @blk_rq_pos(%struct.TYPE_4__* %17)
  %19 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %20 = call i32 @scsi_bufflen(%struct.scsi_cmnd* %19)
  %21 = sdiv i32 %20, 512
  %22 = add nsw i32 %18, %21
  store i32 %22, i32* %5, align 4
  %23 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %24 = call i32 @scsi_bufflen(%struct.scsi_cmnd* %23)
  %25 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %26 = call i32 @scsi_get_resid(%struct.scsi_cmnd* %25)
  %27 = sub nsw i32 %24, %26
  store i32 %27, i32* %8, align 4
  %28 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %29 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %28, i32 0, i32 2
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @REQ_TYPE_FS, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %102

36:                                               ; preds = %1
  %37 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %38 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @SCSI_SENSE_BUFFERSIZE, align 4
  %41 = call i32 @scsi_get_sense_info_fld(i32 %39, i32 %40, i32* %6)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %36
  store i32 0, i32* %2, align 4
  br label %102

45:                                               ; preds = %36
  %46 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %47 = call i32 @scsi_bufflen(%struct.scsi_cmnd* %46)
  %48 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %49 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %48, i32 0, i32 0
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp sle i32 %47, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %45
  store i32 0, i32* %2, align 4
  br label %102

55:                                               ; preds = %45
  %56 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %57 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %56, i32 0, i32 0
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp slt i32 %60, 512
  br i1 %61, label %62, label %67

62:                                               ; preds = %55
  %63 = load i32, i32* %4, align 4
  %64 = shl i32 %63, 1
  store i32 %64, i32* %4, align 4
  %65 = load i32, i32* %5, align 4
  %66 = shl i32 %65, 1
  store i32 %66, i32* %5, align 4
  br label %80

67:                                               ; preds = %55
  %68 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %69 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %68, i32 0, i32 0
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = sdiv i32 %72, 512
  store i32 %73, i32* %10, align 4
  %74 = load i32, i32* %4, align 4
  %75 = load i32, i32* %10, align 4
  %76 = call i32 @do_div(i32 %74, i32 %75)
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* %10, align 4
  %79 = call i32 @do_div(i32 %77, i32 %78)
  br label %80

80:                                               ; preds = %67, %62
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* %4, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %88, label %84

84:                                               ; preds = %80
  %85 = load i32, i32* %6, align 4
  %86 = load i32, i32* %5, align 4
  %87 = icmp sge i32 %85, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %84, %80
  store i32 0, i32* %2, align 4
  br label %102

89:                                               ; preds = %84
  %90 = load i32, i32* %6, align 4
  %91 = load i32, i32* %4, align 4
  %92 = sub nsw i32 %90, %91
  %93 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %94 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %93, i32 0, i32 0
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = mul nsw i32 %92, %97
  store i32 %98, i32* %9, align 4
  %99 = load i32, i32* %9, align 4
  %100 = load i32, i32* %8, align 4
  %101 = call i32 @min(i32 %99, i32 %100)
  store i32 %101, i32* %2, align 4
  br label %102

102:                                              ; preds = %89, %88, %54, %44, %35
  %103 = load i32, i32* %2, align 4
  ret i32 %103
}

declare dso_local i32 @blk_rq_pos(%struct.TYPE_4__*) #1

declare dso_local i32 @scsi_bufflen(%struct.scsi_cmnd*) #1

declare dso_local i32 @scsi_get_resid(%struct.scsi_cmnd*) #1

declare dso_local i32 @scsi_get_sense_info_fld(i32, i32, i32*) #1

declare dso_local i32 @do_div(i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
