; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_rpaphp_core.c_get_children_props.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_rpaphp_core.c_get_children_props.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"ibm,drc-indexes\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"ibm,drc-names\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"ibm,drc-types\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"ibm,drc-power-domains\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device_node*, i32**, i32**, i32**, i32**)* @get_children_props to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_children_props(%struct.device_node* %0, i32** %1, i32** %2, i32** %3, i32** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i32**, align 8
  %11 = alloca i32**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  store %struct.device_node* %0, %struct.device_node** %7, align 8
  store i32** %1, i32*** %8, align 8
  store i32** %2, i32*** %9, align 8
  store i32** %3, i32*** %10, align 8
  store i32** %4, i32*** %11, align 8
  %16 = load %struct.device_node*, %struct.device_node** %7, align 8
  %17 = call i32* @of_get_property(%struct.device_node* %16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32* null)
  store i32* %17, i32** %12, align 8
  %18 = load %struct.device_node*, %struct.device_node** %7, align 8
  %19 = call i32* @of_get_property(%struct.device_node* %18, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32* null)
  store i32* %19, i32** %13, align 8
  %20 = load %struct.device_node*, %struct.device_node** %7, align 8
  %21 = call i32* @of_get_property(%struct.device_node* %20, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32* null)
  store i32* %21, i32** %14, align 8
  %22 = load %struct.device_node*, %struct.device_node** %7, align 8
  %23 = call i32* @of_get_property(%struct.device_node* %22, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32* null)
  store i32* %23, i32** %15, align 8
  %24 = load i32*, i32** %12, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %35

26:                                               ; preds = %5
  %27 = load i32*, i32** %13, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %35

29:                                               ; preds = %26
  %30 = load i32*, i32** %14, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load i32*, i32** %15, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %32, %29, %26, %5
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %6, align 4
  br label %63

38:                                               ; preds = %32
  %39 = load i32**, i32*** %8, align 8
  %40 = icmp ne i32** %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load i32*, i32** %12, align 8
  %43 = load i32**, i32*** %8, align 8
  store i32* %42, i32** %43, align 8
  br label %44

44:                                               ; preds = %41, %38
  %45 = load i32**, i32*** %9, align 8
  %46 = icmp ne i32** %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load i32*, i32** %13, align 8
  %49 = load i32**, i32*** %9, align 8
  store i32* %48, i32** %49, align 8
  br label %50

50:                                               ; preds = %47, %44
  %51 = load i32**, i32*** %10, align 8
  %52 = icmp ne i32** %51, null
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load i32*, i32** %14, align 8
  %55 = load i32**, i32*** %10, align 8
  store i32* %54, i32** %55, align 8
  br label %56

56:                                               ; preds = %53, %50
  %57 = load i32**, i32*** %11, align 8
  %58 = icmp ne i32** %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load i32*, i32** %15, align 8
  %61 = load i32**, i32*** %11, align 8
  store i32* %60, i32** %61, align 8
  br label %62

62:                                               ; preds = %59, %56
  store i32 0, i32* %6, align 4
  br label %63

63:                                               ; preds = %62, %35
  %64 = load i32, i32* %6, align 4
  ret i32 %64
}

declare dso_local i32* @of_get_property(%struct.device_node*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
