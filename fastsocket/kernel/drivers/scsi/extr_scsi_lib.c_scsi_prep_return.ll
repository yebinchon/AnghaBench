; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_lib.c_scsi_prep_return.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_lib.c_scsi_prep_return.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { %struct.scsi_device* }
%struct.scsi_device = type { i32 }
%struct.request = type { i32, i32, %struct.scsi_cmnd* }
%struct.scsi_cmnd = type { i32 }

@DID_NO_CONNECT = common dso_local global i32 0, align 4
@REQ_DONTPREP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scsi_prep_return(%struct.request_queue* %0, %struct.request* %1, i32 %2) #0 {
  %4 = alloca %struct.request_queue*, align 8
  %5 = alloca %struct.request*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.scsi_device*, align 8
  %8 = alloca %struct.scsi_cmnd*, align 8
  store %struct.request_queue* %0, %struct.request_queue** %4, align 8
  store %struct.request* %1, %struct.request** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %10 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %9, i32 0, i32 0
  %11 = load %struct.scsi_device*, %struct.scsi_device** %10, align 8
  store %struct.scsi_device* %11, %struct.scsi_device** %7, align 8
  %12 = load i32, i32* %6, align 4
  switch i32 %12, label %42 [
    i32 128, label %13
    i32 129, label %33
  ]

13:                                               ; preds = %3
  %14 = load i32, i32* @DID_NO_CONNECT, align 4
  %15 = shl i32 %14, 16
  %16 = load %struct.request*, %struct.request** %5, align 8
  %17 = getelementptr inbounds %struct.request, %struct.request* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load %struct.request*, %struct.request** %5, align 8
  %19 = getelementptr inbounds %struct.request, %struct.request* %18, i32 0, i32 2
  %20 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %19, align 8
  %21 = icmp ne %struct.scsi_cmnd* %20, null
  br i1 %21, label %22, label %32

22:                                               ; preds = %13
  %23 = load %struct.request*, %struct.request** %5, align 8
  %24 = getelementptr inbounds %struct.request, %struct.request* %23, i32 0, i32 2
  %25 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %24, align 8
  store %struct.scsi_cmnd* %25, %struct.scsi_cmnd** %8, align 8
  %26 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %27 = call i32 @scsi_release_buffers(%struct.scsi_cmnd* %26)
  %28 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %29 = call i32 @scsi_put_command(%struct.scsi_cmnd* %28)
  %30 = load %struct.request*, %struct.request** %5, align 8
  %31 = getelementptr inbounds %struct.request, %struct.request* %30, i32 0, i32 2
  store %struct.scsi_cmnd* null, %struct.scsi_cmnd** %31, align 8
  br label %32

32:                                               ; preds = %22, %13
  br label %48

33:                                               ; preds = %3
  %34 = load %struct.scsi_device*, %struct.scsi_device** %7, align 8
  %35 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %40 = call i32 @blk_plug_device(%struct.request_queue* %39)
  br label %41

41:                                               ; preds = %38, %33
  br label %48

42:                                               ; preds = %3
  %43 = load i32, i32* @REQ_DONTPREP, align 4
  %44 = load %struct.request*, %struct.request** %5, align 8
  %45 = getelementptr inbounds %struct.request, %struct.request* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 4
  br label %48

48:                                               ; preds = %42, %41, %32
  %49 = load i32, i32* %6, align 4
  ret i32 %49
}

declare dso_local i32 @scsi_release_buffers(%struct.scsi_cmnd*) #1

declare dso_local i32 @scsi_put_command(%struct.scsi_cmnd*) #1

declare dso_local i32 @blk_plug_device(%struct.request_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
