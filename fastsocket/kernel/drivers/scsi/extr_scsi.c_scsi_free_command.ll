; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi.c_scsi_free_command.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi.c_scsi_free_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32 }
%struct.scsi_host_cmd_pool = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scsi_free_command(i32 %0, %struct.scsi_cmnd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca %struct.scsi_host_cmd_pool*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.scsi_cmnd* %1, %struct.scsi_cmnd** %4, align 8
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.scsi_host_cmd_pool* @scsi_get_host_cmd_pool(i32 %6)
  store %struct.scsi_host_cmd_pool* %7, %struct.scsi_host_cmd_pool** %5, align 8
  %8 = load %struct.scsi_host_cmd_pool*, %struct.scsi_host_cmd_pool** %5, align 8
  %9 = icmp ne %struct.scsi_host_cmd_pool* %8, null
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i32 @BUG_ON(i32 %11)
  %13 = load %struct.scsi_host_cmd_pool*, %struct.scsi_host_cmd_pool** %5, align 8
  %14 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %15 = call i32 @scsi_pool_free_command(%struct.scsi_host_cmd_pool* %13, %struct.scsi_cmnd* %14)
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @scsi_put_host_cmd_pool(i32 %16)
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @scsi_put_host_cmd_pool(i32 %18)
  ret void
}

declare dso_local %struct.scsi_host_cmd_pool* @scsi_get_host_cmd_pool(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @scsi_pool_free_command(%struct.scsi_host_cmd_pool*, %struct.scsi_cmnd*) #1

declare dso_local i32 @scsi_put_host_cmd_pool(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
