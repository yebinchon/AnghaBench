; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/ibmvscsi/extr_ibmvstgt.c_ibmvstgt_tsk_mgmt_response.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/ibmvscsi/extr_ibmvstgt.c_ibmvstgt_tsk_mgmt_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i32 }
%struct.iu_entry = type { i32 }
%union.viosrp_iu = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"%p %d\0A\00", align 1
@NO_SENSE = common dso_local global i8 0, align 1
@ABORTED_COMMAND = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Scsi_Host*, i64, i64, i32)* @ibmvstgt_tsk_mgmt_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ibmvstgt_tsk_mgmt_response(%struct.Scsi_Host* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.Scsi_Host*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.iu_entry*, align 8
  %10 = alloca %union.viosrp_iu*, align 8
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load i64, i64* %7, align 8
  %14 = inttoptr i64 %13 to i8*
  %15 = bitcast i8* %14 to %struct.iu_entry*
  store %struct.iu_entry* %15, %struct.iu_entry** %9, align 8
  %16 = load %struct.iu_entry*, %struct.iu_entry** %9, align 8
  %17 = call %union.viosrp_iu* @vio_iu(%struct.iu_entry* %16)
  store %union.viosrp_iu* %17, %union.viosrp_iu** %10, align 8
  %18 = load %struct.iu_entry*, %struct.iu_entry** %9, align 8
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @eprintk(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), %struct.iu_entry* %18, i32 %19)
  %21 = load i8, i8* @NO_SENSE, align 1
  store i8 %21, i8* %11, align 1
  store i8 0, i8* %12, align 1
  %22 = load %union.viosrp_iu*, %union.viosrp_iu** %10, align 8
  %23 = bitcast %union.viosrp_iu* %22 to %struct.TYPE_4__*
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %33 [
    i32 128, label %27
  ]

27:                                               ; preds = %4
  store i8 20, i8* %12, align 1
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = load i8, i8* @ABORTED_COMMAND, align 1
  store i8 %31, i8* %11, align 1
  br label %32

32:                                               ; preds = %30, %27
  br label %34

33:                                               ; preds = %4
  br label %34

34:                                               ; preds = %33, %32
  %35 = load %struct.iu_entry*, %struct.iu_entry** %9, align 8
  %36 = load i8, i8* %11, align 1
  %37 = load i8, i8* %12, align 1
  %38 = call i32 @send_rsp(%struct.iu_entry* %35, i32* null, i8 zeroext %36, i8 zeroext %37)
  %39 = load %struct.iu_entry*, %struct.iu_entry** %9, align 8
  %40 = call i32 @srp_iu_put(%struct.iu_entry* %39)
  ret i32 0
}

declare dso_local %union.viosrp_iu* @vio_iu(%struct.iu_entry*) #1

declare dso_local i32 @eprintk(i8*, %struct.iu_entry*, i32) #1

declare dso_local i32 @send_rsp(%struct.iu_entry*, i32*, i8 zeroext, i8 zeroext) #1

declare dso_local i32 @srp_iu_put(%struct.iu_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
