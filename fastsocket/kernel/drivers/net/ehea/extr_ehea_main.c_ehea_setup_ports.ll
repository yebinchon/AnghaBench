; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ehea/extr_ehea_main.c_ehea_setup_ports.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ehea/extr_ehea_main.c_ehea_setup_ports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehea_adapter = type { %struct.TYPE_6__**, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { %struct.device_node* }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"ibm,hea-port-no\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"bad device node: eth_dn name=%s\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"creating MR failed\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"%s -> logical port id #%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ehea_adapter*)* @ehea_setup_ports to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ehea_setup_ports(%struct.ehea_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ehea_adapter*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.ehea_adapter* %0, %struct.ehea_adapter** %3, align 8
  store %struct.device_node* null, %struct.device_node** %5, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.ehea_adapter*, %struct.ehea_adapter** %3, align 8
  %9 = getelementptr inbounds %struct.ehea_adapter, %struct.ehea_adapter* %8, i32 0, i32 1
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.device_node*, %struct.device_node** %11, align 8
  store %struct.device_node* %12, %struct.device_node** %4, align 8
  br label %13

13:                                               ; preds = %76, %23, %1
  %14 = load %struct.device_node*, %struct.device_node** %4, align 8
  %15 = load %struct.device_node*, %struct.device_node** %5, align 8
  %16 = call %struct.device_node* @of_get_next_child(%struct.device_node* %14, %struct.device_node* %15)
  store %struct.device_node* %16, %struct.device_node** %5, align 8
  %17 = icmp ne %struct.device_node* %16, null
  br i1 %17, label %18, label %79

18:                                               ; preds = %13
  %19 = load %struct.device_node*, %struct.device_node** %5, align 8
  %20 = call i32* @of_get_property(%struct.device_node* %19, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32* null)
  store i32* %20, i32** %6, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %18
  %24 = load %struct.device_node*, %struct.device_node** %5, align 8
  %25 = getelementptr inbounds %struct.device_node, %struct.device_node* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 (i8*, ...) @ehea_error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  br label %13

28:                                               ; preds = %18
  %29 = load %struct.ehea_adapter*, %struct.ehea_adapter** %3, align 8
  %30 = call i64 @ehea_add_adapter_mr(%struct.ehea_adapter* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %28
  %33 = call i32 (i8*, ...) @ehea_error(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %34 = load %struct.device_node*, %struct.device_node** %5, align 8
  %35 = call i32 @of_node_put(%struct.device_node* %34)
  %36 = load i32, i32* @EIO, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %80

38:                                               ; preds = %28
  %39 = load %struct.ehea_adapter*, %struct.ehea_adapter** %3, align 8
  %40 = load i32*, i32** %6, align 8
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.device_node*, %struct.device_node** %5, align 8
  %43 = call %struct.TYPE_6__* @ehea_setup_single_port(%struct.ehea_adapter* %39, i32 %41, %struct.device_node* %42)
  %44 = load %struct.ehea_adapter*, %struct.ehea_adapter** %3, align 8
  %45 = getelementptr inbounds %struct.ehea_adapter, %struct.ehea_adapter* %44, i32 0, i32 0
  %46 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %45, align 8
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %46, i64 %48
  store %struct.TYPE_6__* %43, %struct.TYPE_6__** %49, align 8
  %50 = load %struct.ehea_adapter*, %struct.ehea_adapter** %3, align 8
  %51 = getelementptr inbounds %struct.ehea_adapter, %struct.ehea_adapter* %50, i32 0, i32 0
  %52 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %51, align 8
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %52, i64 %54
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = icmp ne %struct.TYPE_6__* %56, null
  br i1 %57, label %58, label %73

58:                                               ; preds = %38
  %59 = load %struct.ehea_adapter*, %struct.ehea_adapter** %3, align 8
  %60 = getelementptr inbounds %struct.ehea_adapter, %struct.ehea_adapter* %59, i32 0, i32 0
  %61 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %60, align 8
  %62 = load i32, i32* %7, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %61, i64 %63
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32*, i32** %6, align 8
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @ehea_info(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %69, i32 %71)
  br label %76

73:                                               ; preds = %38
  %74 = load %struct.ehea_adapter*, %struct.ehea_adapter** %3, align 8
  %75 = call i32 @ehea_remove_adapter_mr(%struct.ehea_adapter* %74)
  br label %76

76:                                               ; preds = %73, %58
  %77 = load i32, i32* %7, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %7, align 4
  br label %13

79:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %80

80:                                               ; preds = %79, %32
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local %struct.device_node* @of_get_next_child(%struct.device_node*, %struct.device_node*) #1

declare dso_local i32* @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @ehea_error(i8*, ...) #1

declare dso_local i64 @ehea_add_adapter_mr(%struct.ehea_adapter*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local %struct.TYPE_6__* @ehea_setup_single_port(%struct.ehea_adapter*, i32, %struct.device_node*) #1

declare dso_local i32 @ehea_info(i8*, i32, i32) #1

declare dso_local i32 @ehea_remove_adapter_mr(%struct.ehea_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
