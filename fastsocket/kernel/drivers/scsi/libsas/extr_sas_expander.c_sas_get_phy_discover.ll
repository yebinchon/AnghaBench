; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libsas/extr_sas_expander.c_sas_get_phy_discover.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libsas/extr_sas_expander.c_sas_get_phy_discover.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.domain_device = type { i32 }
%struct.smp_resp = type { i32 }

@DISCOVER_REQ_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SMP_DISCOVER = common dso_local global i32 0, align 4
@DISCOVER_RESP_SIZE = common dso_local global i32 0, align 4
@SMP_RESP_FUNC_ACC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.domain_device*, i32, %struct.smp_resp*)* @sas_get_phy_discover to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sas_get_phy_discover(%struct.domain_device* %0, i32 %1, %struct.smp_resp* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.domain_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.smp_resp*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.domain_device* %0, %struct.domain_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.smp_resp* %2, %struct.smp_resp** %7, align 8
  %10 = load i32, i32* @DISCOVER_REQ_SIZE, align 4
  %11 = call i32* @alloc_smp_req(i32 %10)
  store i32* %11, i32** %9, align 8
  %12 = load i32*, i32** %9, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %49

17:                                               ; preds = %3
  %18 = load i32, i32* @SMP_DISCOVER, align 4
  %19 = load i32*, i32** %9, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 1
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load i32*, i32** %9, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 9
  store i32 %21, i32* %23, align 4
  %24 = load %struct.domain_device*, %struct.domain_device** %5, align 8
  %25 = load i32*, i32** %9, align 8
  %26 = load i32, i32* @DISCOVER_REQ_SIZE, align 4
  %27 = load %struct.smp_resp*, %struct.smp_resp** %7, align 8
  %28 = load i32, i32* @DISCOVER_RESP_SIZE, align 4
  %29 = call i32 @smp_execute_task(%struct.domain_device* %24, i32* %25, i32 %26, %struct.smp_resp* %27, i32 %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %17
  br label %45

33:                                               ; preds = %17
  %34 = load %struct.smp_resp*, %struct.smp_resp** %7, align 8
  %35 = getelementptr inbounds %struct.smp_resp, %struct.smp_resp* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @SMP_RESP_FUNC_ACC, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %33
  %40 = load %struct.smp_resp*, %struct.smp_resp** %7, align 8
  %41 = getelementptr inbounds %struct.smp_resp, %struct.smp_resp* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %8, align 4
  br label %45

43:                                               ; preds = %33
  br label %44

44:                                               ; preds = %43
  br label %45

45:                                               ; preds = %44, %39, %32
  %46 = load i32*, i32** %9, align 8
  %47 = call i32 @kfree(i32* %46)
  %48 = load i32, i32* %8, align 4
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %45, %14
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i32* @alloc_smp_req(i32) #1

declare dso_local i32 @smp_execute_task(%struct.domain_device*, i32*, i32, %struct.smp_resp*, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
