; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_ibmaem.c_aem_init_ipmi_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_ibmaem.c_aem_init_ipmi_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.aem_ipmi_data = type { i32, i32, %struct.TYPE_5__, i64, %struct.TYPE_4__, %struct.device*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64*, i32, i32 }
%struct.device = type { i32 }

@IPMI_SYSTEM_INTERFACE_ADDR_TYPE = common dso_local global i32 0, align 4
@IPMI_BMC_CHANNEL = common dso_local global i32 0, align 4
@AEM_NETFN = common dso_local global i32 0, align 4
@driver_data = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@.str = private unnamed_addr constant [48 x i8] c"Unable to register user with IPMI interface %d\0A\00", align 1
@EACCES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aem_ipmi_data*, i32, %struct.device*)* @aem_init_ipmi_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aem_init_ipmi_data(%struct.aem_ipmi_data* %0, i32 %1, %struct.device* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.aem_ipmi_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  store %struct.aem_ipmi_data* %0, %struct.aem_ipmi_data** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.device* %2, %struct.device** %7, align 8
  %9 = load %struct.aem_ipmi_data*, %struct.aem_ipmi_data** %5, align 8
  %10 = getelementptr inbounds %struct.aem_ipmi_data, %struct.aem_ipmi_data* %9, i32 0, i32 6
  %11 = call i32 @init_completion(i32* %10)
  %12 = load %struct.device*, %struct.device** %7, align 8
  %13 = load %struct.aem_ipmi_data*, %struct.aem_ipmi_data** %5, align 8
  %14 = getelementptr inbounds %struct.aem_ipmi_data, %struct.aem_ipmi_data* %13, i32 0, i32 5
  store %struct.device* %12, %struct.device** %14, align 8
  %15 = load i32, i32* @IPMI_SYSTEM_INTERFACE_ADDR_TYPE, align 4
  %16 = load %struct.aem_ipmi_data*, %struct.aem_ipmi_data** %5, align 8
  %17 = getelementptr inbounds %struct.aem_ipmi_data, %struct.aem_ipmi_data* %16, i32 0, i32 4
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 2
  store i32 %15, i32* %18, align 4
  %19 = load i32, i32* @IPMI_BMC_CHANNEL, align 4
  %20 = load %struct.aem_ipmi_data*, %struct.aem_ipmi_data** %5, align 8
  %21 = getelementptr inbounds %struct.aem_ipmi_data, %struct.aem_ipmi_data* %20, i32 0, i32 4
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  store i32 %19, i32* %22, align 8
  %23 = load %struct.aem_ipmi_data*, %struct.aem_ipmi_data** %5, align 8
  %24 = getelementptr inbounds %struct.aem_ipmi_data, %struct.aem_ipmi_data* %23, i32 0, i32 4
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64*, i64** %25, align 8
  %27 = getelementptr inbounds i64, i64* %26, i64 0
  store i64 0, i64* %27, align 8
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.aem_ipmi_data*, %struct.aem_ipmi_data** %5, align 8
  %30 = getelementptr inbounds %struct.aem_ipmi_data, %struct.aem_ipmi_data* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load %struct.aem_ipmi_data*, %struct.aem_ipmi_data** %5, align 8
  %32 = getelementptr inbounds %struct.aem_ipmi_data, %struct.aem_ipmi_data* %31, i32 0, i32 3
  store i64 0, i64* %32, align 8
  %33 = load i32, i32* @AEM_NETFN, align 4
  %34 = load %struct.aem_ipmi_data*, %struct.aem_ipmi_data** %5, align 8
  %35 = getelementptr inbounds %struct.aem_ipmi_data, %struct.aem_ipmi_data* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  store i32 %33, i32* %36, align 8
  %37 = load %struct.aem_ipmi_data*, %struct.aem_ipmi_data** %5, align 8
  %38 = getelementptr inbounds %struct.aem_ipmi_data, %struct.aem_ipmi_data* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.aem_ipmi_data*, %struct.aem_ipmi_data** %5, align 8
  %41 = load %struct.aem_ipmi_data*, %struct.aem_ipmi_data** %5, align 8
  %42 = getelementptr inbounds %struct.aem_ipmi_data, %struct.aem_ipmi_data* %41, i32 0, i32 1
  %43 = call i32 @ipmi_create_user(i32 %39, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @driver_data, i32 0, i32 0), %struct.aem_ipmi_data* %40, i32* %42)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %3
  %47 = load %struct.device*, %struct.device** %7, align 8
  %48 = load %struct.aem_ipmi_data*, %struct.aem_ipmi_data** %5, align 8
  %49 = getelementptr inbounds %struct.aem_ipmi_data, %struct.aem_ipmi_data* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @dev_err(%struct.device* %47, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* @EACCES, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %4, align 4
  br label %55

54:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %55

55:                                               ; preds = %54, %46
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @ipmi_create_user(i32, i32*, %struct.aem_ipmi_data*, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
