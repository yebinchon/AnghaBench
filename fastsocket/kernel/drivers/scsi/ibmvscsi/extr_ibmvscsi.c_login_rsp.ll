; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/ibmvscsi/extr_ibmvscsi.c_login_rsp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/ibmvscsi/extr_ibmvscsi.c_login_rsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.srp_event_struct = type { %struct.TYPE_8__*, %struct.ibmvscsi_host_data* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.ibmvscsi_host_data = type { i32, i32, i64, i32 }

@.str = private unnamed_addr constant [25 x i8] c"SRP_LOGIN_REJ reason %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"Invalid login response typecode 0x%02x!\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"SRP_LOGIN succeeded\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.srp_event_struct*)* @login_rsp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @login_rsp(%struct.srp_event_struct* %0) #0 {
  %2 = alloca %struct.srp_event_struct*, align 8
  %3 = alloca %struct.ibmvscsi_host_data*, align 8
  store %struct.srp_event_struct* %0, %struct.srp_event_struct** %2, align 8
  %4 = load %struct.srp_event_struct*, %struct.srp_event_struct** %2, align 8
  %5 = getelementptr inbounds %struct.srp_event_struct, %struct.srp_event_struct* %4, i32 0, i32 1
  %6 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %5, align 8
  store %struct.ibmvscsi_host_data* %6, %struct.ibmvscsi_host_data** %3, align 8
  %7 = load %struct.srp_event_struct*, %struct.srp_event_struct** %2, align 8
  %8 = getelementptr inbounds %struct.srp_event_struct, %struct.srp_event_struct* %7, i32 0, i32 0
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %30 [
    i32 128, label %14
    i32 129, label %15
  ]

14:                                               ; preds = %1
  br label %45

15:                                               ; preds = %1
  %16 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %3, align 8
  %17 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.srp_event_struct*, %struct.srp_event_struct** %2, align 8
  %20 = getelementptr inbounds %struct.srp_event_struct, %struct.srp_event_struct* %19, i32 0, i32 0
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 (i32, i8*, ...) @dev_info(i32 %18, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %3, align 8
  %28 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %27, i32 0, i32 1
  %29 = call i32 @atomic_set(i32* %28, i32 -1)
  br label %66

30:                                               ; preds = %1
  %31 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %3, align 8
  %32 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.srp_event_struct*, %struct.srp_event_struct** %2, align 8
  %35 = getelementptr inbounds %struct.srp_event_struct, %struct.srp_event_struct* %34, i32 0, i32 0
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @dev_err(i32 %33, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  %42 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %3, align 8
  %43 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %42, i32 0, i32 1
  %44 = call i32 @atomic_set(i32* %43, i32 -1)
  br label %66

45:                                               ; preds = %14
  %46 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %3, align 8
  %47 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = call i32 (i32, i8*, ...) @dev_info(i32 %48, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %50 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %3, align 8
  %51 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %50, i32 0, i32 2
  store i64 0, i64* %51, align 8
  %52 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %3, align 8
  %53 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %52, i32 0, i32 1
  %54 = load %struct.srp_event_struct*, %struct.srp_event_struct** %2, align 8
  %55 = getelementptr inbounds %struct.srp_event_struct, %struct.srp_event_struct* %54, i32 0, i32 0
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @atomic_set(i32* %53, i32 %60)
  %62 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %3, align 8
  %63 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @scsi_unblock_requests(i32 %64)
  br label %66

66:                                               ; preds = %45, %30, %15
  ret void
}

declare dso_local i32 @dev_info(i32, i8*, ...) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @scsi_unblock_requests(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
