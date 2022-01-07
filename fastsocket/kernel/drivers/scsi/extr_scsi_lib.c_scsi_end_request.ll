; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_lib.c_scsi_end_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_lib.c_scsi_end_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { %struct.request*, %struct.TYPE_2__* }
%struct.request = type { i32 }
%struct.TYPE_2__ = type { %struct.request_queue* }
%struct.request_queue = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.scsi_cmnd* (%struct.scsi_cmnd*, i32, i32, i32)* @scsi_end_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.scsi_cmnd* @scsi_end_request(%struct.scsi_cmnd* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.scsi_cmnd*, align 8
  %6 = alloca %struct.scsi_cmnd*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.request_queue*, align 8
  %11 = alloca %struct.request*, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %13 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.request_queue*, %struct.request_queue** %15, align 8
  store %struct.request_queue* %16, %struct.request_queue** %10, align 8
  %17 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %18 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %17, i32 0, i32 0
  %19 = load %struct.request*, %struct.request** %18, align 8
  store %struct.request* %19, %struct.request** %11, align 8
  %20 = load %struct.request*, %struct.request** %11, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %8, align 4
  %23 = call i64 @blk_end_request(%struct.request* %20, i32 %21, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %48

25:                                               ; preds = %4
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %25
  %29 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %30 = call i64 @scsi_noretry_cmd(%struct.scsi_cmnd* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = load %struct.request*, %struct.request** %11, align 8
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @blk_end_request_all(%struct.request* %33, i32 %34)
  br label %47

36:                                               ; preds = %28, %25
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %36
  %40 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %41 = call i32 @scsi_release_buffers(%struct.scsi_cmnd* %40)
  %42 = load %struct.request_queue*, %struct.request_queue** %10, align 8
  %43 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %44 = call i32 @scsi_requeue_command(%struct.request_queue* %42, %struct.scsi_cmnd* %43)
  store %struct.scsi_cmnd* null, %struct.scsi_cmnd** %6, align 8
  br label %45

45:                                               ; preds = %39, %36
  %46 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  store %struct.scsi_cmnd* %46, %struct.scsi_cmnd** %5, align 8
  br label %53

47:                                               ; preds = %32
  br label %48

48:                                               ; preds = %47, %4
  %49 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %50 = call i32 @__scsi_release_buffers(%struct.scsi_cmnd* %49, i32 0)
  %51 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %52 = call i32 @scsi_next_command(%struct.scsi_cmnd* %51)
  store %struct.scsi_cmnd* null, %struct.scsi_cmnd** %5, align 8
  br label %53

53:                                               ; preds = %48, %45
  %54 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  ret %struct.scsi_cmnd* %54
}

declare dso_local i64 @blk_end_request(%struct.request*, i32, i32) #1

declare dso_local i64 @scsi_noretry_cmd(%struct.scsi_cmnd*) #1

declare dso_local i32 @blk_end_request_all(%struct.request*, i32) #1

declare dso_local i32 @scsi_release_buffers(%struct.scsi_cmnd*) #1

declare dso_local i32 @scsi_requeue_command(%struct.request_queue*, %struct.scsi_cmnd*) #1

declare dso_local i32 @__scsi_release_buffers(%struct.scsi_cmnd*, i32) #1

declare dso_local i32 @scsi_next_command(%struct.scsi_cmnd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
