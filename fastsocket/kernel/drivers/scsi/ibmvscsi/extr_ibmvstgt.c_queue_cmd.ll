; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/ibmvscsi/extr_ibmvstgt.c_queue_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/ibmvscsi/extr_ibmvstgt.c_queue_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iu_entry = type { i32, %struct.srp_target* }
%struct.srp_target = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iu_entry*)* @queue_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @queue_cmd(%struct.iu_entry* %0) #0 {
  %2 = alloca %struct.iu_entry*, align 8
  %3 = alloca %struct.srp_target*, align 8
  %4 = alloca i64, align 8
  store %struct.iu_entry* %0, %struct.iu_entry** %2, align 8
  %5 = load %struct.iu_entry*, %struct.iu_entry** %2, align 8
  %6 = getelementptr inbounds %struct.iu_entry, %struct.iu_entry* %5, i32 0, i32 1
  %7 = load %struct.srp_target*, %struct.srp_target** %6, align 8
  store %struct.srp_target* %7, %struct.srp_target** %3, align 8
  %8 = load %struct.srp_target*, %struct.srp_target** %3, align 8
  %9 = getelementptr inbounds %struct.srp_target, %struct.srp_target* %8, i32 0, i32 0
  %10 = load i64, i64* %4, align 8
  %11 = call i32 @spin_lock_irqsave(i32* %9, i64 %10)
  %12 = load %struct.iu_entry*, %struct.iu_entry** %2, align 8
  %13 = getelementptr inbounds %struct.iu_entry, %struct.iu_entry* %12, i32 0, i32 0
  %14 = load %struct.srp_target*, %struct.srp_target** %3, align 8
  %15 = getelementptr inbounds %struct.srp_target, %struct.srp_target* %14, i32 0, i32 1
  %16 = call i32 @list_add_tail(i32* %13, i32* %15)
  %17 = load %struct.srp_target*, %struct.srp_target** %3, align 8
  %18 = getelementptr inbounds %struct.srp_target, %struct.srp_target* %17, i32 0, i32 0
  %19 = load i64, i64* %4, align 8
  %20 = call i32 @spin_unlock_irqrestore(i32* %18, i64 %19)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
