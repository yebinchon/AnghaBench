; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libsas/extr_sas_expander.c_sas_ex_phy_discover_helper.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libsas/extr_sas_expander.c_sas_ex_phy_discover_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.domain_device = type { i32 }
%struct.discover_resp = type { i32 }
%struct.smp_resp = type { %struct.discover_resp }

@DISCOVER_REQ_SIZE = common dso_local global i32 0, align 4
@DISCOVER_RESP_SIZE = common dso_local global i32 0, align 4
@SAS_ADDR_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Found loopback topology, just ignore it!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.domain_device*, i32*, i32*, i32)* @sas_ex_phy_discover_helper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sas_ex_phy_discover_helper(%struct.domain_device* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.domain_device*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.discover_resp*, align 8
  %11 = alloca i32, align 4
  store %struct.domain_device* %0, %struct.domain_device** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %9, align 4
  %13 = load i32*, i32** %7, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 9
  store i32 %12, i32* %14, align 4
  %15 = load %struct.domain_device*, %struct.domain_device** %6, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = load i32, i32* @DISCOVER_REQ_SIZE, align 4
  %18 = load i32*, i32** %8, align 8
  %19 = load i32, i32* @DISCOVER_RESP_SIZE, align 4
  %20 = call i32 @smp_execute_task(%struct.domain_device* %15, i32* %16, i32 %17, i32* %18, i32 %19)
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %11, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load i32, i32* %11, align 4
  store i32 %24, i32* %5, align 4
  br label %45

25:                                               ; preds = %4
  %26 = load i32*, i32** %8, align 8
  %27 = bitcast i32* %26 to %struct.smp_resp*
  %28 = getelementptr inbounds %struct.smp_resp, %struct.smp_resp* %27, i32 0, i32 0
  store %struct.discover_resp* %28, %struct.discover_resp** %10, align 8
  %29 = load %struct.domain_device*, %struct.domain_device** %6, align 8
  %30 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.discover_resp*, %struct.discover_resp** %10, align 8
  %33 = getelementptr inbounds %struct.discover_resp, %struct.discover_resp* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @SAS_ADDR_SIZE, align 4
  %36 = call i64 @memcmp(i32 %31, i32 %34, i32 %35)
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %25
  %39 = call i32 @sas_printk(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %45

40:                                               ; preds = %25
  %41 = load %struct.domain_device*, %struct.domain_device** %6, align 8
  %42 = load i32, i32* %9, align 4
  %43 = load i32*, i32** %8, align 8
  %44 = call i32 @sas_set_ex_phy(%struct.domain_device* %41, i32 %42, i32* %43)
  store i32 0, i32* %5, align 4
  br label %45

45:                                               ; preds = %40, %38, %23
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

declare dso_local i32 @smp_execute_task(%struct.domain_device*, i32*, i32, i32*, i32) #1

declare dso_local i64 @memcmp(i32, i32, i32) #1

declare dso_local i32 @sas_printk(i8*) #1

declare dso_local i32 @sas_set_ex_phy(%struct.domain_device*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
