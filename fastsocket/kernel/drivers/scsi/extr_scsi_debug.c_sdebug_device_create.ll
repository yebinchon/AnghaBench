; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_debug.c_sdebug_device_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_debug.c_sdebug_device_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdebug_dev_info = type { i32, %struct.sdebug_host_info* }
%struct.sdebug_host_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sdebug_dev_info* (%struct.sdebug_host_info*, i32)* @sdebug_device_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sdebug_dev_info* @sdebug_device_create(%struct.sdebug_host_info* %0, i32 %1) #0 {
  %3 = alloca %struct.sdebug_host_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sdebug_dev_info*, align 8
  store %struct.sdebug_host_info* %0, %struct.sdebug_host_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = call %struct.sdebug_dev_info* @kzalloc(i32 16, i32 %6)
  store %struct.sdebug_dev_info* %7, %struct.sdebug_dev_info** %5, align 8
  %8 = load %struct.sdebug_dev_info*, %struct.sdebug_dev_info** %5, align 8
  %9 = icmp ne %struct.sdebug_dev_info* %8, null
  br i1 %9, label %10, label %19

10:                                               ; preds = %2
  %11 = load %struct.sdebug_host_info*, %struct.sdebug_host_info** %3, align 8
  %12 = load %struct.sdebug_dev_info*, %struct.sdebug_dev_info** %5, align 8
  %13 = getelementptr inbounds %struct.sdebug_dev_info, %struct.sdebug_dev_info* %12, i32 0, i32 1
  store %struct.sdebug_host_info* %11, %struct.sdebug_host_info** %13, align 8
  %14 = load %struct.sdebug_dev_info*, %struct.sdebug_dev_info** %5, align 8
  %15 = getelementptr inbounds %struct.sdebug_dev_info, %struct.sdebug_dev_info* %14, i32 0, i32 0
  %16 = load %struct.sdebug_host_info*, %struct.sdebug_host_info** %3, align 8
  %17 = getelementptr inbounds %struct.sdebug_host_info, %struct.sdebug_host_info* %16, i32 0, i32 0
  %18 = call i32 @list_add_tail(i32* %15, i32* %17)
  br label %19

19:                                               ; preds = %10, %2
  %20 = load %struct.sdebug_dev_info*, %struct.sdebug_dev_info** %5, align 8
  ret %struct.sdebug_dev_info* %20
}

declare dso_local %struct.sdebug_dev_info* @kzalloc(i32, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
