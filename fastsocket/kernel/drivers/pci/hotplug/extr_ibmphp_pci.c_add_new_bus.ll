; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_ibmphp_pci.c_add_new_bus.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_ibmphp_pci.c_add_new_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bus_node = type { i32, i32, i32, %struct.range_node*, %struct.range_node*, %struct.range_node*, i32 }
%struct.range_node = type { i32, i32, i32 }
%struct.resource_node = type { i32, i32 }

@.str = private unnamed_addr constant [98 x i8] c"strange, cannot find bus which is supposed to be at the system... something is terribly wrong...\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"out of system memory\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bus_node*, %struct.resource_node*, %struct.resource_node*, %struct.resource_node*, i32)* @add_new_bus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_new_bus(%struct.bus_node* %0, %struct.resource_node* %1, %struct.resource_node* %2, %struct.resource_node* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.bus_node*, align 8
  %8 = alloca %struct.resource_node*, align 8
  %9 = alloca %struct.resource_node*, align 8
  %10 = alloca %struct.resource_node*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.range_node*, align 8
  %13 = alloca %struct.range_node*, align 8
  %14 = alloca %struct.range_node*, align 8
  %15 = alloca %struct.bus_node*, align 8
  store %struct.bus_node* %0, %struct.bus_node** %7, align 8
  store %struct.resource_node* %1, %struct.resource_node** %8, align 8
  store %struct.resource_node* %2, %struct.resource_node** %9, align 8
  store %struct.resource_node* %3, %struct.resource_node** %10, align 8
  store i32 %4, i32* %11, align 4
  store %struct.range_node* null, %struct.range_node** %12, align 8
  store %struct.range_node* null, %struct.range_node** %13, align 8
  store %struct.range_node* null, %struct.range_node** %14, align 8
  store %struct.bus_node* null, %struct.bus_node** %15, align 8
  %16 = load i32, i32* %11, align 4
  %17 = icmp ne i32 %16, 255
  br i1 %17, label %18, label %33

18:                                               ; preds = %5
  %19 = load i32, i32* %11, align 4
  %20 = call %struct.bus_node* @ibmphp_find_res_bus(i32 %19)
  store %struct.bus_node* %20, %struct.bus_node** %15, align 8
  %21 = load %struct.bus_node*, %struct.bus_node** %15, align 8
  %22 = icmp ne %struct.bus_node* %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %18
  %24 = call i32 @err(i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @ENODEV, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %6, align 4
  br label %124

27:                                               ; preds = %18
  %28 = load %struct.bus_node*, %struct.bus_node** %7, align 8
  %29 = getelementptr inbounds %struct.bus_node, %struct.bus_node* %28, i32 0, i32 6
  %30 = load %struct.bus_node*, %struct.bus_node** %15, align 8
  %31 = getelementptr inbounds %struct.bus_node, %struct.bus_node* %30, i32 0, i32 6
  %32 = call i32 @list_add(i32* %29, i32* %31)
  br label %33

33:                                               ; preds = %27, %5
  %34 = load %struct.resource_node*, %struct.resource_node** %8, align 8
  %35 = icmp ne %struct.resource_node* %34, null
  br i1 %35, label %36, label %63

36:                                               ; preds = %33
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call %struct.range_node* @kzalloc(i32 12, i32 %37)
  store %struct.range_node* %38, %struct.range_node** %12, align 8
  %39 = load %struct.range_node*, %struct.range_node** %12, align 8
  %40 = icmp ne %struct.range_node* %39, null
  br i1 %40, label %45, label %41

41:                                               ; preds = %36
  %42 = call i32 @err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %6, align 4
  br label %124

45:                                               ; preds = %36
  %46 = load %struct.resource_node*, %struct.resource_node** %8, align 8
  %47 = getelementptr inbounds %struct.resource_node, %struct.resource_node* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.range_node*, %struct.range_node** %12, align 8
  %50 = getelementptr inbounds %struct.range_node, %struct.range_node* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 4
  %51 = load %struct.resource_node*, %struct.resource_node** %8, align 8
  %52 = getelementptr inbounds %struct.resource_node, %struct.resource_node* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.range_node*, %struct.range_node** %12, align 8
  %55 = getelementptr inbounds %struct.range_node, %struct.range_node* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load %struct.range_node*, %struct.range_node** %12, align 8
  %57 = getelementptr inbounds %struct.range_node, %struct.range_node* %56, i32 0, i32 0
  store i32 1, i32* %57, align 4
  %58 = load %struct.bus_node*, %struct.bus_node** %7, align 8
  %59 = getelementptr inbounds %struct.bus_node, %struct.bus_node* %58, i32 0, i32 0
  store i32 1, i32* %59, align 8
  %60 = load %struct.range_node*, %struct.range_node** %12, align 8
  %61 = load %struct.bus_node*, %struct.bus_node** %7, align 8
  %62 = getelementptr inbounds %struct.bus_node, %struct.bus_node* %61, i32 0, i32 5
  store %struct.range_node* %60, %struct.range_node** %62, align 8
  br label %63

63:                                               ; preds = %45, %33
  %64 = load %struct.resource_node*, %struct.resource_node** %9, align 8
  %65 = icmp ne %struct.resource_node* %64, null
  br i1 %65, label %66, label %93

66:                                               ; preds = %63
  %67 = load i32, i32* @GFP_KERNEL, align 4
  %68 = call %struct.range_node* @kzalloc(i32 12, i32 %67)
  store %struct.range_node* %68, %struct.range_node** %13, align 8
  %69 = load %struct.range_node*, %struct.range_node** %13, align 8
  %70 = icmp ne %struct.range_node* %69, null
  br i1 %70, label %75, label %71

71:                                               ; preds = %66
  %72 = call i32 @err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %73 = load i32, i32* @ENOMEM, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %6, align 4
  br label %124

75:                                               ; preds = %66
  %76 = load %struct.resource_node*, %struct.resource_node** %9, align 8
  %77 = getelementptr inbounds %struct.resource_node, %struct.resource_node* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.range_node*, %struct.range_node** %13, align 8
  %80 = getelementptr inbounds %struct.range_node, %struct.range_node* %79, i32 0, i32 2
  store i32 %78, i32* %80, align 4
  %81 = load %struct.resource_node*, %struct.resource_node** %9, align 8
  %82 = getelementptr inbounds %struct.resource_node, %struct.resource_node* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.range_node*, %struct.range_node** %13, align 8
  %85 = getelementptr inbounds %struct.range_node, %struct.range_node* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 4
  %86 = load %struct.range_node*, %struct.range_node** %13, align 8
  %87 = getelementptr inbounds %struct.range_node, %struct.range_node* %86, i32 0, i32 0
  store i32 1, i32* %87, align 4
  %88 = load %struct.bus_node*, %struct.bus_node** %7, align 8
  %89 = getelementptr inbounds %struct.bus_node, %struct.bus_node* %88, i32 0, i32 1
  store i32 1, i32* %89, align 4
  %90 = load %struct.range_node*, %struct.range_node** %13, align 8
  %91 = load %struct.bus_node*, %struct.bus_node** %7, align 8
  %92 = getelementptr inbounds %struct.bus_node, %struct.bus_node* %91, i32 0, i32 4
  store %struct.range_node* %90, %struct.range_node** %92, align 8
  br label %93

93:                                               ; preds = %75, %63
  %94 = load %struct.resource_node*, %struct.resource_node** %10, align 8
  %95 = icmp ne %struct.resource_node* %94, null
  br i1 %95, label %96, label %123

96:                                               ; preds = %93
  %97 = load i32, i32* @GFP_KERNEL, align 4
  %98 = call %struct.range_node* @kzalloc(i32 12, i32 %97)
  store %struct.range_node* %98, %struct.range_node** %14, align 8
  %99 = load %struct.range_node*, %struct.range_node** %14, align 8
  %100 = icmp ne %struct.range_node* %99, null
  br i1 %100, label %105, label %101

101:                                              ; preds = %96
  %102 = call i32 @err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %103 = load i32, i32* @ENOMEM, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %6, align 4
  br label %124

105:                                              ; preds = %96
  %106 = load %struct.resource_node*, %struct.resource_node** %10, align 8
  %107 = getelementptr inbounds %struct.resource_node, %struct.resource_node* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.range_node*, %struct.range_node** %14, align 8
  %110 = getelementptr inbounds %struct.range_node, %struct.range_node* %109, i32 0, i32 2
  store i32 %108, i32* %110, align 4
  %111 = load %struct.resource_node*, %struct.resource_node** %10, align 8
  %112 = getelementptr inbounds %struct.resource_node, %struct.resource_node* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.range_node*, %struct.range_node** %14, align 8
  %115 = getelementptr inbounds %struct.range_node, %struct.range_node* %114, i32 0, i32 1
  store i32 %113, i32* %115, align 4
  %116 = load %struct.range_node*, %struct.range_node** %14, align 8
  %117 = getelementptr inbounds %struct.range_node, %struct.range_node* %116, i32 0, i32 0
  store i32 1, i32* %117, align 4
  %118 = load %struct.bus_node*, %struct.bus_node** %7, align 8
  %119 = getelementptr inbounds %struct.bus_node, %struct.bus_node* %118, i32 0, i32 2
  store i32 1, i32* %119, align 8
  %120 = load %struct.range_node*, %struct.range_node** %14, align 8
  %121 = load %struct.bus_node*, %struct.bus_node** %7, align 8
  %122 = getelementptr inbounds %struct.bus_node, %struct.bus_node* %121, i32 0, i32 3
  store %struct.range_node* %120, %struct.range_node** %122, align 8
  br label %123

123:                                              ; preds = %105, %93
  store i32 0, i32* %6, align 4
  br label %124

124:                                              ; preds = %123, %101, %71, %41, %23
  %125 = load i32, i32* %6, align 4
  ret i32 %125
}

declare dso_local %struct.bus_node* @ibmphp_find_res_bus(i32) #1

declare dso_local i32 @err(i8*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local %struct.range_node* @kzalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
