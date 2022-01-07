; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ehea/extr_ehea_main.c_ehea_get_eth_dn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ehea/extr_ehea_main.c_ehea_get_eth_dn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }
%struct.ehea_adapter = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device_node* }

@.str = private unnamed_addr constant [16 x i8] c"ibm,hea-port-no\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.device_node* (%struct.ehea_adapter*, i64)* @ehea_get_eth_dn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.device_node* @ehea_get_eth_dn(%struct.ehea_adapter* %0, i64 %1) #0 {
  %3 = alloca %struct.device_node*, align 8
  %4 = alloca %struct.ehea_adapter*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca i64*, align 8
  store %struct.ehea_adapter* %0, %struct.ehea_adapter** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.device_node* null, %struct.device_node** %7, align 8
  %9 = load %struct.ehea_adapter*, %struct.ehea_adapter** %4, align 8
  %10 = getelementptr inbounds %struct.ehea_adapter, %struct.ehea_adapter* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.device_node*, %struct.device_node** %12, align 8
  store %struct.device_node* %13, %struct.device_node** %6, align 8
  br label %14

14:                                               ; preds = %32, %2
  %15 = load %struct.device_node*, %struct.device_node** %6, align 8
  %16 = load %struct.device_node*, %struct.device_node** %7, align 8
  %17 = call %struct.device_node* @of_get_next_child(%struct.device_node* %15, %struct.device_node* %16)
  store %struct.device_node* %17, %struct.device_node** %7, align 8
  %18 = icmp ne %struct.device_node* %17, null
  br i1 %18, label %19, label %33

19:                                               ; preds = %14
  %20 = load %struct.device_node*, %struct.device_node** %7, align 8
  %21 = call i64* @of_get_property(%struct.device_node* %20, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32* null)
  store i64* %21, i64** %8, align 8
  %22 = load i64*, i64** %8, align 8
  %23 = icmp ne i64* %22, null
  br i1 %23, label %24, label %32

24:                                               ; preds = %19
  %25 = load i64*, i64** %8, align 8
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %5, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load %struct.device_node*, %struct.device_node** %7, align 8
  store %struct.device_node* %30, %struct.device_node** %3, align 8
  br label %34

31:                                               ; preds = %24
  br label %32

32:                                               ; preds = %31, %19
  br label %14

33:                                               ; preds = %14
  store %struct.device_node* null, %struct.device_node** %3, align 8
  br label %34

34:                                               ; preds = %33, %29
  %35 = load %struct.device_node*, %struct.device_node** %3, align 8
  ret %struct.device_node* %35
}

declare dso_local %struct.device_node* @of_get_next_child(%struct.device_node*, %struct.device_node*) #1

declare dso_local i64* @of_get_property(%struct.device_node*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
