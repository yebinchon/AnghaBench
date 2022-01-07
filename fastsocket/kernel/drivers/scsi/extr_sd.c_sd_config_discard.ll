; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_sd.c_sd_config_discard.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_sd.c_sd_config_discard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_disk = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { %struct.request_queue* }
%struct.request_queue = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }

@QUEUE_FLAG_DISCARD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_disk*, i32)* @sd_config_discard to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sd_config_discard(%struct.scsi_disk* %0, i32 %1) #0 {
  %3 = alloca %struct.scsi_disk*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.request_queue*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.scsi_disk* %0, %struct.scsi_disk** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %9 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %8, i32 0, i32 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.request_queue*, %struct.request_queue** %11, align 8
  store %struct.request_queue* %12, %struct.request_queue** %5, align 8
  %13 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %14 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %13, i32 0, i32 7
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %18 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %19 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %22 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  store i32 %20, i32* %23, align 4
  %24 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %25 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %6, align 4
  %28 = mul i32 %26, %27
  %29 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %30 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  store i32 %28, i32* %31, align 4
  %32 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %33 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %32, i32 0, i32 6
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %36 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = mul i32 %37, %38
  %40 = call i32 @max(i32 %34, i32 %39)
  %41 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %42 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 3
  store i32 %40, i32* %43, align 4
  %44 = load i32, i32* %4, align 4
  %45 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %46 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %45, i32 0, i32 3
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* %4, align 4
  switch i32 %47, label %78 [
    i32 132, label %48
    i32 131, label %55
    i32 129, label %60
    i32 130, label %65
    i32 128, label %70
  ]

48:                                               ; preds = %2
  %49 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %50 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 2
  store i32 0, i32* %51, align 4
  %52 = load i32, i32* @QUEUE_FLAG_DISCARD, align 4
  %53 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %54 = call i32 @queue_flag_clear_unlocked(i32 %52, %struct.request_queue* %53)
  br label %89

55:                                               ; preds = %2
  %56 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %57 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @min_not_zero(i32 %58, i32 -1)
  store i32 %59, i32* %7, align 4
  br label %78

60:                                               ; preds = %2
  %61 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %62 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @min_not_zero(i32 %63, i32 -1)
  store i32 %64, i32* %7, align 4
  br label %78

65:                                               ; preds = %2
  %66 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %67 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @min_not_zero(i32 %68, i32 65535)
  store i32 %69, i32* %7, align 4
  br label %78

70:                                               ; preds = %2
  %71 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %72 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @min_not_zero(i32 %73, i32 65535)
  store i32 %74, i32* %7, align 4
  %75 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %76 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  store i32 1, i32* %77, align 4
  br label %78

78:                                               ; preds = %2, %70, %65, %60, %55
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* %6, align 4
  %81 = lshr i32 %80, 9
  %82 = mul i32 %79, %81
  %83 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %84 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 2
  store i32 %82, i32* %85, align 4
  %86 = load i32, i32* @QUEUE_FLAG_DISCARD, align 4
  %87 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %88 = call i32 @queue_flag_set_unlocked(i32 %86, %struct.request_queue* %87)
  br label %89

89:                                               ; preds = %78, %48
  ret void
}

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @queue_flag_clear_unlocked(i32, %struct.request_queue*) #1

declare dso_local i32 @min_not_zero(i32, i32) #1

declare dso_local i32 @queue_flag_set_unlocked(i32, %struct.request_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
