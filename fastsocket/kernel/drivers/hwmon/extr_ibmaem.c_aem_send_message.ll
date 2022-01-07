; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_ibmaem.c_aem_send_message.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_ibmaem.c_aem_send_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aem_ipmi_data = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"request_settime=%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"validate_addr=%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aem_ipmi_data*)* @aem_send_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aem_send_message(%struct.aem_ipmi_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.aem_ipmi_data*, align 8
  %4 = alloca i32, align 4
  store %struct.aem_ipmi_data* %0, %struct.aem_ipmi_data** %3, align 8
  %5 = load %struct.aem_ipmi_data*, %struct.aem_ipmi_data** %3, align 8
  %6 = getelementptr inbounds %struct.aem_ipmi_data, %struct.aem_ipmi_data* %5, i32 0, i32 3
  %7 = call i32 @ipmi_validate_addr(i32* %6, i32 4)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %39

11:                                               ; preds = %1
  %12 = load %struct.aem_ipmi_data*, %struct.aem_ipmi_data** %3, align 8
  %13 = getelementptr inbounds %struct.aem_ipmi_data, %struct.aem_ipmi_data* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %13, align 4
  %16 = load %struct.aem_ipmi_data*, %struct.aem_ipmi_data** %3, align 8
  %17 = getelementptr inbounds %struct.aem_ipmi_data, %struct.aem_ipmi_data* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.aem_ipmi_data*, %struct.aem_ipmi_data** %3, align 8
  %20 = getelementptr inbounds %struct.aem_ipmi_data, %struct.aem_ipmi_data* %19, i32 0, i32 3
  %21 = load %struct.aem_ipmi_data*, %struct.aem_ipmi_data** %3, align 8
  %22 = getelementptr inbounds %struct.aem_ipmi_data, %struct.aem_ipmi_data* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.aem_ipmi_data*, %struct.aem_ipmi_data** %3, align 8
  %25 = getelementptr inbounds %struct.aem_ipmi_data, %struct.aem_ipmi_data* %24, i32 0, i32 1
  %26 = load %struct.aem_ipmi_data*, %struct.aem_ipmi_data** %3, align 8
  %27 = call i32 @ipmi_request_settime(i32 %18, i32* %20, i32 %23, i32* %25, %struct.aem_ipmi_data* %26, i32 0, i32 0, i32 0)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %11
  br label %32

31:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %46

32:                                               ; preds = %30
  %33 = load %struct.aem_ipmi_data*, %struct.aem_ipmi_data** %3, align 8
  %34 = getelementptr inbounds %struct.aem_ipmi_data, %struct.aem_ipmi_data* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @dev_err(i32 %35, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* %4, align 4
  store i32 %38, i32* %2, align 4
  br label %46

39:                                               ; preds = %10
  %40 = load %struct.aem_ipmi_data*, %struct.aem_ipmi_data** %3, align 8
  %41 = getelementptr inbounds %struct.aem_ipmi_data, %struct.aem_ipmi_data* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @dev_err(i32 %42, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* %4, align 4
  store i32 %45, i32* %2, align 4
  br label %46

46:                                               ; preds = %39, %32, %31
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @ipmi_validate_addr(i32*, i32) #1

declare dso_local i32 @ipmi_request_settime(i32, i32*, i32, i32*, %struct.aem_ipmi_data*, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
