; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_ibmaem.c_aem_init_aem2.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_ibmaem.c_aem_init_aem2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aem_ipmi_data = type { i32 }
%struct.aem_find_instance_resp = type { i32, i32 }

@.str = private unnamed_addr constant [56 x i8] c"Unknown AEM v%d; please report this to the maintainer.\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Error %d initializing AEM2 0x%X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aem_ipmi_data*)* @aem_init_aem2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aem_init_aem2(%struct.aem_ipmi_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.aem_ipmi_data*, align 8
  %4 = alloca %struct.aem_find_instance_resp, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.aem_ipmi_data* %0, %struct.aem_ipmi_data** %3, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %40, %17, %1
  %8 = load %struct.aem_ipmi_data*, %struct.aem_ipmi_data** %3, align 8
  %9 = load i32, i32* %6, align 4
  %10 = call i32 @aem_find_aem2(%struct.aem_ipmi_data* %8, %struct.aem_find_instance_resp* %4, i32 %9)
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  br i1 %12, label %13, label %43

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.aem_find_instance_resp, %struct.aem_find_instance_resp* %4, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 2
  br i1 %16, label %17, label %26

17:                                               ; preds = %13
  %18 = load %struct.aem_ipmi_data*, %struct.aem_ipmi_data** %3, align 8
  %19 = getelementptr inbounds %struct.aem_ipmi_data, %struct.aem_ipmi_data* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds %struct.aem_find_instance_resp, %struct.aem_find_instance_resp* %4, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %20, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* %6, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %6, align 4
  br label %7

26:                                               ; preds = %13
  %27 = load %struct.aem_ipmi_data*, %struct.aem_ipmi_data** %3, align 8
  %28 = call i32 @aem_init_aem2_inst(%struct.aem_ipmi_data* %27, %struct.aem_find_instance_resp* %4)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %26
  %32 = load %struct.aem_ipmi_data*, %struct.aem_ipmi_data** %3, align 8
  %33 = getelementptr inbounds %struct.aem_ipmi_data, %struct.aem_ipmi_data* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %5, align 4
  %36 = getelementptr inbounds %struct.aem_find_instance_resp, %struct.aem_find_instance_resp* %4, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %34, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %35, i32 %37)
  %39 = load i32, i32* %5, align 4
  store i32 %39, i32* %2, align 4
  br label %44

40:                                               ; preds = %26
  %41 = load i32, i32* %6, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %6, align 4
  br label %7

43:                                               ; preds = %7
  store i32 0, i32* %2, align 4
  br label %44

44:                                               ; preds = %43, %31
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @aem_find_aem2(%struct.aem_ipmi_data*, %struct.aem_find_instance_resp*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, ...) #1

declare dso_local i32 @aem_init_aem2_inst(%struct.aem_ipmi_data*, %struct.aem_find_instance_resp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
