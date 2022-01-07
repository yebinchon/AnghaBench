; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/ibmvscsi/extr_ibmvstgt.c_process_srp_iu.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/ibmvscsi/extr_ibmvstgt.c_process_srp_iu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iu_entry = type { i32 }
%union.viosrp_iu = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"Unsupported type %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Unknown type %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iu_entry*)* @process_srp_iu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_srp_iu(%struct.iu_entry* %0) #0 {
  %2 = alloca %struct.iu_entry*, align 8
  %3 = alloca %union.viosrp_iu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.iu_entry* %0, %struct.iu_entry** %2, align 8
  %6 = load %struct.iu_entry*, %struct.iu_entry** %2, align 8
  %7 = call %union.viosrp_iu* @vio_iu(%struct.iu_entry* %6)
  store %union.viosrp_iu* %7, %union.viosrp_iu** %3, align 8
  store i32 1, i32* %4, align 4
  %8 = load %union.viosrp_iu*, %union.viosrp_iu** %3, align 8
  %9 = bitcast %union.viosrp_iu* %8 to %struct.TYPE_4__*
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  switch i32 %13, label %26 [
    i32 132, label %14
    i32 129, label %17
    i32 136, label %20
    i32 131, label %23
    i32 133, label %23
    i32 128, label %23
    i32 130, label %23
    i32 135, label %23
    i32 134, label %23
    i32 138, label %23
    i32 137, label %23
  ]

14:                                               ; preds = %1
  %15 = load %struct.iu_entry*, %struct.iu_entry** %2, align 8
  %16 = call i32 @process_login(%struct.iu_entry* %15)
  br label %29

17:                                               ; preds = %1
  %18 = load %struct.iu_entry*, %struct.iu_entry** %2, align 8
  %19 = call i32 @process_tsk_mgmt(%struct.iu_entry* %18)
  store i32 %19, i32* %4, align 4
  br label %29

20:                                               ; preds = %1
  %21 = load %struct.iu_entry*, %struct.iu_entry** %2, align 8
  %22 = call i32 @queue_cmd(%struct.iu_entry* %21)
  store i32 0, i32* %4, align 4
  br label %29

23:                                               ; preds = %1, %1, %1, %1, %1, %1, %1, %1
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @eprintk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %24)
  br label %29

26:                                               ; preds = %1
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @eprintk(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  br label %29

29:                                               ; preds = %26, %23, %20, %17, %14
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

declare dso_local %union.viosrp_iu* @vio_iu(%struct.iu_entry*) #1

declare dso_local i32 @process_login(%struct.iu_entry*) #1

declare dso_local i32 @process_tsk_mgmt(%struct.iu_entry*) #1

declare dso_local i32 @queue_cmd(%struct.iu_entry*) #1

declare dso_local i32 @eprintk(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
