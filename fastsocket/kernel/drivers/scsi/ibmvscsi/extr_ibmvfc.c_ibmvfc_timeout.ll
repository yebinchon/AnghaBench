; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/ibmvscsi/extr_ibmvfc.c_ibmvfc_timeout.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/ibmvscsi/extr_ibmvfc.c_ibmvfc_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibmvfc_event = type { %struct.ibmvfc_host* }
%struct.ibmvfc_host = type { i32 }

@.str = private unnamed_addr constant [46 x i8] c"Command timed out (%p). Resetting connection\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ibmvfc_event*)* @ibmvfc_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ibmvfc_timeout(%struct.ibmvfc_event* %0) #0 {
  %2 = alloca %struct.ibmvfc_event*, align 8
  %3 = alloca %struct.ibmvfc_host*, align 8
  store %struct.ibmvfc_event* %0, %struct.ibmvfc_event** %2, align 8
  %4 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %2, align 8
  %5 = getelementptr inbounds %struct.ibmvfc_event, %struct.ibmvfc_event* %4, i32 0, i32 0
  %6 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %5, align 8
  store %struct.ibmvfc_host* %6, %struct.ibmvfc_host** %3, align 8
  %7 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %3, align 8
  %8 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %2, align 8
  %11 = call i32 @dev_err(i32 %9, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), %struct.ibmvfc_event* %10)
  %12 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %3, align 8
  %13 = call i32 @ibmvfc_reset_host(%struct.ibmvfc_host* %12)
  ret void
}

declare dso_local i32 @dev_err(i32, i8*, %struct.ibmvfc_event*) #1

declare dso_local i32 @ibmvfc_reset_host(%struct.ibmvfc_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
