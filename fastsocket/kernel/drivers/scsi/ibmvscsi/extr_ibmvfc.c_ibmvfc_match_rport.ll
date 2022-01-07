; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/ibmvscsi/extr_ibmvfc.c_ibmvfc_match_rport.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/ibmvscsi/extr_ibmvfc.c_ibmvfc_match_rport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibmvfc_event = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.fc_rport = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ibmvfc_event*, i8*)* @ibmvfc_match_rport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ibmvfc_match_rport(%struct.ibmvfc_event* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ibmvfc_event*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.fc_rport*, align 8
  store %struct.ibmvfc_event* %0, %struct.ibmvfc_event** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %4, align 8
  %8 = getelementptr inbounds %struct.ibmvfc_event, %struct.ibmvfc_event* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = icmp ne %struct.TYPE_2__* %9, null
  br i1 %10, label %11, label %26

11:                                               ; preds = %2
  %12 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %4, align 8
  %13 = getelementptr inbounds %struct.ibmvfc_event, %struct.ibmvfc_event* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @scsi_target(i32 %16)
  %18 = call i8* @starget_to_rport(i32 %17)
  %19 = bitcast i8* %18 to %struct.fc_rport*
  store %struct.fc_rport* %19, %struct.fc_rport** %6, align 8
  %20 = load %struct.fc_rport*, %struct.fc_rport** %6, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = bitcast i8* %21 to %struct.fc_rport*
  %23 = icmp eq %struct.fc_rport* %20, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %11
  store i32 1, i32* %3, align 4
  br label %27

25:                                               ; preds = %11
  br label %26

26:                                               ; preds = %25, %2
  store i32 0, i32* %3, align 4
  br label %27

27:                                               ; preds = %26, %24
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i8* @starget_to_rport(i32) #1

declare dso_local i32 @scsi_target(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
