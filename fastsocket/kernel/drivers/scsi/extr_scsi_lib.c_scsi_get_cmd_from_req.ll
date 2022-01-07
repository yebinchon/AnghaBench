; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_lib.c_scsi_get_cmd_from_req.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_lib.c_scsi_get_cmd_from_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32, i32, %struct.request*, i32 }
%struct.scsi_device = type { i32 }
%struct.request = type { i32, i32, %struct.scsi_cmnd* }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@SCSI_PROT_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.scsi_cmnd* (%struct.scsi_device*, %struct.request*)* @scsi_get_cmd_from_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.scsi_cmnd* @scsi_get_cmd_from_req(%struct.scsi_device* %0, %struct.request* %1) #0 {
  %3 = alloca %struct.scsi_cmnd*, align 8
  %4 = alloca %struct.scsi_device*, align 8
  %5 = alloca %struct.request*, align 8
  %6 = alloca %struct.scsi_cmnd*, align 8
  store %struct.scsi_device* %0, %struct.scsi_device** %4, align 8
  store %struct.request* %1, %struct.request** %5, align 8
  %7 = load %struct.request*, %struct.request** %5, align 8
  %8 = getelementptr inbounds %struct.request, %struct.request* %7, i32 0, i32 2
  %9 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %10 = icmp ne %struct.scsi_cmnd* %9, null
  br i1 %10, label %26, label %11

11:                                               ; preds = %2
  %12 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %13 = load i32, i32* @GFP_ATOMIC, align 4
  %14 = call %struct.scsi_cmnd* @scsi_get_command(%struct.scsi_device* %12, i32 %13)
  store %struct.scsi_cmnd* %14, %struct.scsi_cmnd** %6, align 8
  %15 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %16 = icmp ne %struct.scsi_cmnd* %15, null
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %11
  store %struct.scsi_cmnd* null, %struct.scsi_cmnd** %3, align 8
  br label %48

22:                                               ; preds = %11
  %23 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %24 = load %struct.request*, %struct.request** %5, align 8
  %25 = getelementptr inbounds %struct.request, %struct.request* %24, i32 0, i32 2
  store %struct.scsi_cmnd* %23, %struct.scsi_cmnd** %25, align 8
  br label %30

26:                                               ; preds = %2
  %27 = load %struct.request*, %struct.request** %5, align 8
  %28 = getelementptr inbounds %struct.request, %struct.request* %27, i32 0, i32 2
  %29 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %28, align 8
  store %struct.scsi_cmnd* %29, %struct.scsi_cmnd** %6, align 8
  br label %30

30:                                               ; preds = %26, %22
  %31 = load %struct.request*, %struct.request** %5, align 8
  %32 = getelementptr inbounds %struct.request, %struct.request* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %35 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %34, i32 0, i32 3
  store i32 %33, i32* %35, align 8
  %36 = load %struct.request*, %struct.request** %5, align 8
  %37 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %38 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %37, i32 0, i32 2
  store %struct.request* %36, %struct.request** %38, align 8
  %39 = load %struct.request*, %struct.request** %5, align 8
  %40 = getelementptr inbounds %struct.request, %struct.request* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %43 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* @SCSI_PROT_NORMAL, align 4
  %45 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %46 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  store %struct.scsi_cmnd* %47, %struct.scsi_cmnd** %3, align 8
  br label %48

48:                                               ; preds = %30, %21
  %49 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  ret %struct.scsi_cmnd* %49
}

declare dso_local %struct.scsi_cmnd* @scsi_get_command(%struct.scsi_device*, i32) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
