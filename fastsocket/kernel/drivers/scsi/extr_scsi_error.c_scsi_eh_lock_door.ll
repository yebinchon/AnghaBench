; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_error.c_scsi_eh_lock_door.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_error.c_scsi_eh_lock_door.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i32 }
%struct.request = type { i32, i32, i32, i32, i32, i64*, i32 }

@READ = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ALLOW_MEDIUM_REMOVAL = common dso_local global i64 0, align 8
@SCSI_REMOVAL_PREVENT = common dso_local global i64 0, align 8
@REQ_TYPE_BLOCK_PC = common dso_local global i32 0, align 4
@REQ_QUIET = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@eh_lock_door_done = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_device*)* @scsi_eh_lock_door to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scsi_eh_lock_door(%struct.scsi_device* %0) #0 {
  %2 = alloca %struct.scsi_device*, align 8
  %3 = alloca %struct.request*, align 8
  store %struct.scsi_device* %0, %struct.scsi_device** %2, align 8
  %4 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %5 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @READ, align 4
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.request* @blk_get_request(i32 %6, i32 %7, i32 %8)
  store %struct.request* %9, %struct.request** %3, align 8
  %10 = load i64, i64* @ALLOW_MEDIUM_REMOVAL, align 8
  %11 = load %struct.request*, %struct.request** %3, align 8
  %12 = getelementptr inbounds %struct.request, %struct.request* %11, i32 0, i32 5
  %13 = load i64*, i64** %12, align 8
  %14 = getelementptr inbounds i64, i64* %13, i64 0
  store i64 %10, i64* %14, align 8
  %15 = load %struct.request*, %struct.request** %3, align 8
  %16 = getelementptr inbounds %struct.request, %struct.request* %15, i32 0, i32 5
  %17 = load i64*, i64** %16, align 8
  %18 = getelementptr inbounds i64, i64* %17, i64 1
  store i64 0, i64* %18, align 8
  %19 = load %struct.request*, %struct.request** %3, align 8
  %20 = getelementptr inbounds %struct.request, %struct.request* %19, i32 0, i32 5
  %21 = load i64*, i64** %20, align 8
  %22 = getelementptr inbounds i64, i64* %21, i64 2
  store i64 0, i64* %22, align 8
  %23 = load %struct.request*, %struct.request** %3, align 8
  %24 = getelementptr inbounds %struct.request, %struct.request* %23, i32 0, i32 5
  %25 = load i64*, i64** %24, align 8
  %26 = getelementptr inbounds i64, i64* %25, i64 3
  store i64 0, i64* %26, align 8
  %27 = load i64, i64* @SCSI_REMOVAL_PREVENT, align 8
  %28 = load %struct.request*, %struct.request** %3, align 8
  %29 = getelementptr inbounds %struct.request, %struct.request* %28, i32 0, i32 5
  %30 = load i64*, i64** %29, align 8
  %31 = getelementptr inbounds i64, i64* %30, i64 4
  store i64 %27, i64* %31, align 8
  %32 = load %struct.request*, %struct.request** %3, align 8
  %33 = getelementptr inbounds %struct.request, %struct.request* %32, i32 0, i32 5
  %34 = load i64*, i64** %33, align 8
  %35 = getelementptr inbounds i64, i64* %34, i64 5
  store i64 0, i64* %35, align 8
  %36 = load %struct.request*, %struct.request** %3, align 8
  %37 = getelementptr inbounds %struct.request, %struct.request* %36, i32 0, i32 5
  %38 = load i64*, i64** %37, align 8
  %39 = getelementptr inbounds i64, i64* %38, i64 0
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @COMMAND_SIZE(i64 %40)
  %42 = load %struct.request*, %struct.request** %3, align 8
  %43 = getelementptr inbounds %struct.request, %struct.request* %42, i32 0, i32 6
  store i32 %41, i32* %43, align 8
  %44 = load i32, i32* @REQ_TYPE_BLOCK_PC, align 4
  %45 = load %struct.request*, %struct.request** %3, align 8
  %46 = getelementptr inbounds %struct.request, %struct.request* %45, i32 0, i32 4
  store i32 %44, i32* %46, align 8
  %47 = load i32, i32* @REQ_QUIET, align 4
  %48 = load %struct.request*, %struct.request** %3, align 8
  %49 = getelementptr inbounds %struct.request, %struct.request* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 4
  %52 = load i32, i32* @HZ, align 4
  %53 = mul nsw i32 10, %52
  %54 = load %struct.request*, %struct.request** %3, align 8
  %55 = getelementptr inbounds %struct.request, %struct.request* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  %56 = load %struct.request*, %struct.request** %3, align 8
  %57 = getelementptr inbounds %struct.request, %struct.request* %56, i32 0, i32 1
  store i32 5, i32* %57, align 4
  %58 = load %struct.request*, %struct.request** %3, align 8
  %59 = getelementptr inbounds %struct.request, %struct.request* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.request*, %struct.request** %3, align 8
  %62 = load i32, i32* @eh_lock_door_done, align 4
  %63 = call i32 @blk_execute_rq_nowait(i32 %60, i32* null, %struct.request* %61, i32 1, i32 %62)
  ret void
}

declare dso_local %struct.request* @blk_get_request(i32, i32, i32) #1

declare dso_local i32 @COMMAND_SIZE(i64) #1

declare dso_local i32 @blk_execute_rq_nowait(i32, i32*, %struct.request*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
