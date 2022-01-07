; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_ibmphp_pci.c_find_sec_number.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_ibmphp_pci.c_find_sec_number.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bus_info = type { i32, i32 }
%struct.bus_node = type { i32, i32, i32 }

@.str = private unnamed_addr constant [48 x i8] c"cannot get slot range of the bus from the BIOS\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"got the wrong range\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @find_sec_number to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_sec_number(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.bus_info*, align 8
  %10 = alloca %struct.bus_node*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call %struct.bus_info* @ibmphp_find_same_bus_num(i32 %11)
  store %struct.bus_info* %12, %struct.bus_info** %9, align 8
  %13 = load %struct.bus_info*, %struct.bus_info** %9, align 8
  %14 = icmp ne %struct.bus_info* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %2
  %16 = call i32 @err(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  store i32 255, i32* %3, align 4
  br label %63

17:                                               ; preds = %2
  %18 = load %struct.bus_info*, %struct.bus_info** %9, align 8
  %19 = getelementptr inbounds %struct.bus_info, %struct.bus_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %7, align 4
  %21 = load %struct.bus_info*, %struct.bus_info** %9, align 8
  %22 = getelementptr inbounds %struct.bus_info, %struct.bus_info* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp sgt i32 %24, %25
  br i1 %26, label %31, label %27

27:                                               ; preds = %17
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %27, %17
  %32 = call i32 @err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  store i32 255, i32* %3, align 4
  br label %63

33:                                               ; preds = %27
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* %6, align 4
  %36 = sub nsw i32 %34, %35
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %4, align 4
  %38 = add nsw i32 %37, 1
  %39 = load i32, i32* %8, align 4
  %40 = add nsw i32 %39, %38
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = call %struct.bus_node* @ibmphp_find_res_bus(i32 %41)
  store %struct.bus_node* %42, %struct.bus_node** %10, align 8
  %43 = load %struct.bus_node*, %struct.bus_node** %10, align 8
  %44 = icmp ne %struct.bus_node* %43, null
  br i1 %44, label %45, label %60

45:                                               ; preds = %33
  %46 = load %struct.bus_node*, %struct.bus_node** %10, align 8
  %47 = getelementptr inbounds %struct.bus_node, %struct.bus_node* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %62, label %50

50:                                               ; preds = %45
  %51 = load %struct.bus_node*, %struct.bus_node** %10, align 8
  %52 = getelementptr inbounds %struct.bus_node, %struct.bus_node* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %62, label %55

55:                                               ; preds = %50
  %56 = load %struct.bus_node*, %struct.bus_node** %10, align 8
  %57 = getelementptr inbounds %struct.bus_node, %struct.bus_node* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %55, %33
  %61 = load i32, i32* %8, align 4
  store i32 %61, i32* %3, align 4
  br label %63

62:                                               ; preds = %55, %50, %45
  store i32 255, i32* %3, align 4
  br label %63

63:                                               ; preds = %62, %60, %31, %15
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local %struct.bus_info* @ibmphp_find_same_bus_num(i32) #1

declare dso_local i32 @err(i8*) #1

declare dso_local %struct.bus_node* @ibmphp_find_res_bus(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
