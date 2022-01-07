; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/ipmi/extr_ipmi_msghandler.c_ipmi_validate_addr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/ipmi/extr_ipmi_msghandler.c_ipmi_validate_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipmi_addr = type { i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@IPMI_SYSTEM_INTERFACE_ADDR_TYPE = common dso_local global i64 0, align 8
@IPMI_BMC_CHANNEL = common dso_local global i64 0, align 8
@IPMI_MAX_CHANNELS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipmi_validate_addr(%struct.ipmi_addr* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ipmi_addr*, align 8
  %5 = alloca i32, align 4
  store %struct.ipmi_addr* %0, %struct.ipmi_addr** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = sext i32 %6 to i64
  %8 = icmp ult i64 %7, 4
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load i32, i32* @EINVAL, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %3, align 4
  br label %79

12:                                               ; preds = %2
  %13 = load %struct.ipmi_addr*, %struct.ipmi_addr** %4, align 8
  %14 = getelementptr inbounds %struct.ipmi_addr, %struct.ipmi_addr* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @IPMI_SYSTEM_INTERFACE_ADDR_TYPE, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %28

18:                                               ; preds = %12
  %19 = load %struct.ipmi_addr*, %struct.ipmi_addr** %4, align 8
  %20 = getelementptr inbounds %struct.ipmi_addr, %struct.ipmi_addr* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @IPMI_BMC_CHANNEL, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %79

27:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %79

28:                                               ; preds = %12
  %29 = load %struct.ipmi_addr*, %struct.ipmi_addr** %4, align 8
  %30 = getelementptr inbounds %struct.ipmi_addr, %struct.ipmi_addr* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @IPMI_BMC_CHANNEL, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %45, label %34

34:                                               ; preds = %28
  %35 = load %struct.ipmi_addr*, %struct.ipmi_addr** %4, align 8
  %36 = getelementptr inbounds %struct.ipmi_addr, %struct.ipmi_addr* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @IPMI_MAX_CHANNELS, align 8
  %39 = icmp sge i64 %37, %38
  br i1 %39, label %45, label %40

40:                                               ; preds = %34
  %41 = load %struct.ipmi_addr*, %struct.ipmi_addr** %4, align 8
  %42 = getelementptr inbounds %struct.ipmi_addr, %struct.ipmi_addr* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp slt i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %40, %34, %28
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %79

48:                                               ; preds = %40
  %49 = load %struct.ipmi_addr*, %struct.ipmi_addr** %4, align 8
  %50 = call i64 @is_ipmb_addr(%struct.ipmi_addr* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %48
  %53 = load %struct.ipmi_addr*, %struct.ipmi_addr** %4, align 8
  %54 = call i64 @is_ipmb_bcast_addr(%struct.ipmi_addr* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %52, %48
  %57 = load i32, i32* %5, align 4
  %58 = sext i32 %57 to i64
  %59 = icmp ult i64 %58, 4
  br i1 %59, label %60, label %63

60:                                               ; preds = %56
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %3, align 4
  br label %79

63:                                               ; preds = %56
  store i32 0, i32* %3, align 4
  br label %79

64:                                               ; preds = %52
  %65 = load %struct.ipmi_addr*, %struct.ipmi_addr** %4, align 8
  %66 = call i64 @is_lan_addr(%struct.ipmi_addr* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %64
  %69 = load i32, i32* %5, align 4
  %70 = sext i32 %69 to i64
  %71 = icmp ult i64 %70, 4
  br i1 %71, label %72, label %75

72:                                               ; preds = %68
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %3, align 4
  br label %79

75:                                               ; preds = %68
  store i32 0, i32* %3, align 4
  br label %79

76:                                               ; preds = %64
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %3, align 4
  br label %79

79:                                               ; preds = %76, %75, %72, %63, %60, %45, %27, %24, %9
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i64 @is_ipmb_addr(%struct.ipmi_addr*) #1

declare dso_local i64 @is_ipmb_bcast_addr(%struct.ipmi_addr*) #1

declare dso_local i64 @is_lan_addr(%struct.ipmi_addr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
