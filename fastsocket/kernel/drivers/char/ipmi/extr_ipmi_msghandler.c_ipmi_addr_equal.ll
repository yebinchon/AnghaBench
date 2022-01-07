; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/ipmi/extr_ipmi_msghandler.c_ipmi_addr_equal.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/ipmi/extr_ipmi_msghandler.c_ipmi_addr_equal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipmi_addr = type { i64, i64 }
%struct.ipmi_system_interface_addr = type { i64 }
%struct.ipmi_ipmb_addr = type { i64, i64 }
%struct.ipmi_lan_addr = type { i64, i64, i64, i64 }

@IPMI_SYSTEM_INTERFACE_ADDR_TYPE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipmi_addr*, %struct.ipmi_addr*)* @ipmi_addr_equal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipmi_addr_equal(%struct.ipmi_addr* %0, %struct.ipmi_addr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ipmi_addr*, align 8
  %5 = alloca %struct.ipmi_addr*, align 8
  %6 = alloca %struct.ipmi_system_interface_addr*, align 8
  %7 = alloca %struct.ipmi_system_interface_addr*, align 8
  %8 = alloca %struct.ipmi_ipmb_addr*, align 8
  %9 = alloca %struct.ipmi_ipmb_addr*, align 8
  %10 = alloca %struct.ipmi_lan_addr*, align 8
  %11 = alloca %struct.ipmi_lan_addr*, align 8
  store %struct.ipmi_addr* %0, %struct.ipmi_addr** %4, align 8
  store %struct.ipmi_addr* %1, %struct.ipmi_addr** %5, align 8
  %12 = load %struct.ipmi_addr*, %struct.ipmi_addr** %4, align 8
  %13 = getelementptr inbounds %struct.ipmi_addr, %struct.ipmi_addr* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.ipmi_addr*, %struct.ipmi_addr** %5, align 8
  %16 = getelementptr inbounds %struct.ipmi_addr, %struct.ipmi_addr* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %14, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %123

20:                                               ; preds = %2
  %21 = load %struct.ipmi_addr*, %struct.ipmi_addr** %4, align 8
  %22 = getelementptr inbounds %struct.ipmi_addr, %struct.ipmi_addr* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.ipmi_addr*, %struct.ipmi_addr** %5, align 8
  %25 = getelementptr inbounds %struct.ipmi_addr, %struct.ipmi_addr* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %23, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %123

29:                                               ; preds = %20
  %30 = load %struct.ipmi_addr*, %struct.ipmi_addr** %4, align 8
  %31 = getelementptr inbounds %struct.ipmi_addr, %struct.ipmi_addr* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @IPMI_SYSTEM_INTERFACE_ADDR_TYPE, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %48

35:                                               ; preds = %29
  %36 = load %struct.ipmi_addr*, %struct.ipmi_addr** %4, align 8
  %37 = bitcast %struct.ipmi_addr* %36 to %struct.ipmi_system_interface_addr*
  store %struct.ipmi_system_interface_addr* %37, %struct.ipmi_system_interface_addr** %6, align 8
  %38 = load %struct.ipmi_addr*, %struct.ipmi_addr** %5, align 8
  %39 = bitcast %struct.ipmi_addr* %38 to %struct.ipmi_system_interface_addr*
  store %struct.ipmi_system_interface_addr* %39, %struct.ipmi_system_interface_addr** %7, align 8
  %40 = load %struct.ipmi_system_interface_addr*, %struct.ipmi_system_interface_addr** %6, align 8
  %41 = getelementptr inbounds %struct.ipmi_system_interface_addr, %struct.ipmi_system_interface_addr* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.ipmi_system_interface_addr*, %struct.ipmi_system_interface_addr** %7, align 8
  %44 = getelementptr inbounds %struct.ipmi_system_interface_addr, %struct.ipmi_system_interface_addr* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %42, %45
  %47 = zext i1 %46 to i32
  store i32 %47, i32* %3, align 4
  br label %123

48:                                               ; preds = %29
  %49 = load %struct.ipmi_addr*, %struct.ipmi_addr** %4, align 8
  %50 = call i64 @is_ipmb_addr(%struct.ipmi_addr* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %48
  %53 = load %struct.ipmi_addr*, %struct.ipmi_addr** %4, align 8
  %54 = call i64 @is_ipmb_bcast_addr(%struct.ipmi_addr* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %79

56:                                               ; preds = %52, %48
  %57 = load %struct.ipmi_addr*, %struct.ipmi_addr** %4, align 8
  %58 = bitcast %struct.ipmi_addr* %57 to %struct.ipmi_ipmb_addr*
  store %struct.ipmi_ipmb_addr* %58, %struct.ipmi_ipmb_addr** %8, align 8
  %59 = load %struct.ipmi_addr*, %struct.ipmi_addr** %5, align 8
  %60 = bitcast %struct.ipmi_addr* %59 to %struct.ipmi_ipmb_addr*
  store %struct.ipmi_ipmb_addr* %60, %struct.ipmi_ipmb_addr** %9, align 8
  %61 = load %struct.ipmi_ipmb_addr*, %struct.ipmi_ipmb_addr** %8, align 8
  %62 = getelementptr inbounds %struct.ipmi_ipmb_addr, %struct.ipmi_ipmb_addr* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.ipmi_ipmb_addr*, %struct.ipmi_ipmb_addr** %9, align 8
  %65 = getelementptr inbounds %struct.ipmi_ipmb_addr, %struct.ipmi_ipmb_addr* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp eq i64 %63, %66
  br i1 %67, label %68, label %76

68:                                               ; preds = %56
  %69 = load %struct.ipmi_ipmb_addr*, %struct.ipmi_ipmb_addr** %8, align 8
  %70 = getelementptr inbounds %struct.ipmi_ipmb_addr, %struct.ipmi_ipmb_addr* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.ipmi_ipmb_addr*, %struct.ipmi_ipmb_addr** %9, align 8
  %73 = getelementptr inbounds %struct.ipmi_ipmb_addr, %struct.ipmi_ipmb_addr* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp eq i64 %71, %74
  br label %76

76:                                               ; preds = %68, %56
  %77 = phi i1 [ false, %56 ], [ %75, %68 ]
  %78 = zext i1 %77 to i32
  store i32 %78, i32* %3, align 4
  br label %123

79:                                               ; preds = %52
  %80 = load %struct.ipmi_addr*, %struct.ipmi_addr** %4, align 8
  %81 = call i64 @is_lan_addr(%struct.ipmi_addr* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %122

83:                                               ; preds = %79
  %84 = load %struct.ipmi_addr*, %struct.ipmi_addr** %4, align 8
  %85 = bitcast %struct.ipmi_addr* %84 to %struct.ipmi_lan_addr*
  store %struct.ipmi_lan_addr* %85, %struct.ipmi_lan_addr** %10, align 8
  %86 = load %struct.ipmi_addr*, %struct.ipmi_addr** %5, align 8
  %87 = bitcast %struct.ipmi_addr* %86 to %struct.ipmi_lan_addr*
  store %struct.ipmi_lan_addr* %87, %struct.ipmi_lan_addr** %11, align 8
  %88 = load %struct.ipmi_lan_addr*, %struct.ipmi_lan_addr** %10, align 8
  %89 = getelementptr inbounds %struct.ipmi_lan_addr, %struct.ipmi_lan_addr* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.ipmi_lan_addr*, %struct.ipmi_lan_addr** %11, align 8
  %92 = getelementptr inbounds %struct.ipmi_lan_addr, %struct.ipmi_lan_addr* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp eq i64 %90, %93
  br i1 %94, label %95, label %119

95:                                               ; preds = %83
  %96 = load %struct.ipmi_lan_addr*, %struct.ipmi_lan_addr** %10, align 8
  %97 = getelementptr inbounds %struct.ipmi_lan_addr, %struct.ipmi_lan_addr* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.ipmi_lan_addr*, %struct.ipmi_lan_addr** %11, align 8
  %100 = getelementptr inbounds %struct.ipmi_lan_addr, %struct.ipmi_lan_addr* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = icmp eq i64 %98, %101
  br i1 %102, label %103, label %119

103:                                              ; preds = %95
  %104 = load %struct.ipmi_lan_addr*, %struct.ipmi_lan_addr** %10, align 8
  %105 = getelementptr inbounds %struct.ipmi_lan_addr, %struct.ipmi_lan_addr* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.ipmi_lan_addr*, %struct.ipmi_lan_addr** %11, align 8
  %108 = getelementptr inbounds %struct.ipmi_lan_addr, %struct.ipmi_lan_addr* %107, i32 0, i32 2
  %109 = load i64, i64* %108, align 8
  %110 = icmp eq i64 %106, %109
  br i1 %110, label %111, label %119

111:                                              ; preds = %103
  %112 = load %struct.ipmi_lan_addr*, %struct.ipmi_lan_addr** %10, align 8
  %113 = getelementptr inbounds %struct.ipmi_lan_addr, %struct.ipmi_lan_addr* %112, i32 0, i32 3
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.ipmi_lan_addr*, %struct.ipmi_lan_addr** %11, align 8
  %116 = getelementptr inbounds %struct.ipmi_lan_addr, %struct.ipmi_lan_addr* %115, i32 0, i32 3
  %117 = load i64, i64* %116, align 8
  %118 = icmp eq i64 %114, %117
  br label %119

119:                                              ; preds = %111, %103, %95, %83
  %120 = phi i1 [ false, %103 ], [ false, %95 ], [ false, %83 ], [ %118, %111 ]
  %121 = zext i1 %120 to i32
  store i32 %121, i32* %3, align 4
  br label %123

122:                                              ; preds = %79
  store i32 1, i32* %3, align 4
  br label %123

123:                                              ; preds = %122, %119, %76, %35, %28, %19
  %124 = load i32, i32* %3, align 4
  ret i32 %124
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
