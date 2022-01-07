; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libsas/extr_sas_internal.h_sas_fail_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libsas/extr_sas_internal.h_sas_fail_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.domain_device = type { i32, i32, i64 }

@.str = private unnamed_addr constant [38 x i8] c"%s: for %s device %16llx returned %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"exp-attached\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"direct-attached\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.domain_device*, i8*, i32)* @sas_fail_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sas_fail_probe(%struct.domain_device* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.domain_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.domain_device* %0, %struct.domain_device** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i8*, i8** %5, align 8
  %8 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %9 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  %12 = zext i1 %11 to i64
  %13 = select i1 %11, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0)
  %14 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %15 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @SAS_ADDR(i32 %16)
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @SAS_DPRINTK(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i8* %7, i8* %13, i32 %17, i32 %18)
  %20 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %21 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %24 = call i32 @sas_unregister_dev(i32 %22, %struct.domain_device* %23)
  ret void
}

declare dso_local i32 @SAS_DPRINTK(i8*, i8*, i8*, i32, i32) #1

declare dso_local i32 @SAS_ADDR(i32) #1

declare dso_local i32 @sas_unregister_dev(i32, %struct.domain_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
