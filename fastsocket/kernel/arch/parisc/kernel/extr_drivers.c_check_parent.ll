; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/parisc/kernel/extr_drivers.c_check_parent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/parisc/kernel/extr_drivers.c_check_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32* }
%struct.parse_tree_data = type { %struct.device*, i32, i32 }

@parisc_bus_type = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i8*)* @check_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_parent(%struct.device* %0, i8* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.parse_tree_data*, align 8
  %6 = alloca %struct.device*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.parse_tree_data*
  store %struct.parse_tree_data* %8, %struct.parse_tree_data** %5, align 8
  %9 = load %struct.device*, %struct.device** %3, align 8
  %10 = call i64 @check_dev(%struct.device* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %75

12:                                               ; preds = %2
  %13 = load %struct.device*, %struct.device** %3, align 8
  %14 = getelementptr inbounds %struct.device, %struct.device* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = icmp eq i32* %15, @parisc_bus_type
  br i1 %16, label %17, label %32

17:                                               ; preds = %12
  %18 = load %struct.device*, %struct.device** %3, align 8
  %19 = load %struct.parse_tree_data*, %struct.parse_tree_data** %5, align 8
  %20 = getelementptr inbounds %struct.parse_tree_data, %struct.parse_tree_data* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.parse_tree_data*, %struct.parse_tree_data** %5, align 8
  %23 = getelementptr inbounds %struct.parse_tree_data, %struct.parse_tree_data* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i64 @match_parisc_device(%struct.device* %18, i32 %21, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %17
  %28 = load %struct.device*, %struct.device** %3, align 8
  %29 = load %struct.parse_tree_data*, %struct.parse_tree_data** %5, align 8
  %30 = getelementptr inbounds %struct.parse_tree_data, %struct.parse_tree_data* %29, i32 0, i32 0
  store %struct.device* %28, %struct.device** %30, align 8
  br label %31

31:                                               ; preds = %27, %17
  br label %74

32:                                               ; preds = %12
  %33 = load %struct.device*, %struct.device** %3, align 8
  %34 = call i64 @is_pci_dev(%struct.device* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %51

36:                                               ; preds = %32
  %37 = load %struct.device*, %struct.device** %3, align 8
  %38 = load %struct.parse_tree_data*, %struct.parse_tree_data** %5, align 8
  %39 = getelementptr inbounds %struct.parse_tree_data, %struct.parse_tree_data* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.parse_tree_data*, %struct.parse_tree_data** %5, align 8
  %42 = getelementptr inbounds %struct.parse_tree_data, %struct.parse_tree_data* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i64 @match_pci_device(%struct.device* %37, i32 %40, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %36
  %47 = load %struct.device*, %struct.device** %3, align 8
  %48 = load %struct.parse_tree_data*, %struct.parse_tree_data** %5, align 8
  %49 = getelementptr inbounds %struct.parse_tree_data, %struct.parse_tree_data* %48, i32 0, i32 0
  store %struct.device* %47, %struct.device** %49, align 8
  br label %50

50:                                               ; preds = %46, %36
  br label %73

51:                                               ; preds = %32
  %52 = load %struct.device*, %struct.device** %3, align 8
  %53 = getelementptr inbounds %struct.device, %struct.device* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = icmp eq i32* %54, null
  br i1 %55, label %56, label %72

56:                                               ; preds = %51
  %57 = load %struct.device*, %struct.device** %3, align 8
  %58 = load %struct.parse_tree_data*, %struct.parse_tree_data** %5, align 8
  %59 = getelementptr inbounds %struct.parse_tree_data, %struct.parse_tree_data* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.parse_tree_data*, %struct.parse_tree_data** %5, align 8
  %62 = getelementptr inbounds %struct.parse_tree_data, %struct.parse_tree_data* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = call %struct.device* @parse_tree_node(%struct.device* %57, i32 %60, i32 %63)
  store %struct.device* %64, %struct.device** %6, align 8
  %65 = load %struct.device*, %struct.device** %6, align 8
  %66 = icmp ne %struct.device* %65, null
  br i1 %66, label %67, label %71

67:                                               ; preds = %56
  %68 = load %struct.device*, %struct.device** %6, align 8
  %69 = load %struct.parse_tree_data*, %struct.parse_tree_data** %5, align 8
  %70 = getelementptr inbounds %struct.parse_tree_data, %struct.parse_tree_data* %69, i32 0, i32 0
  store %struct.device* %68, %struct.device** %70, align 8
  br label %71

71:                                               ; preds = %67, %56
  br label %72

72:                                               ; preds = %71, %51
  br label %73

73:                                               ; preds = %72, %50
  br label %74

74:                                               ; preds = %73, %31
  br label %75

75:                                               ; preds = %74, %2
  %76 = load %struct.parse_tree_data*, %struct.parse_tree_data** %5, align 8
  %77 = getelementptr inbounds %struct.parse_tree_data, %struct.parse_tree_data* %76, i32 0, i32 0
  %78 = load %struct.device*, %struct.device** %77, align 8
  %79 = icmp ne %struct.device* %78, null
  %80 = zext i1 %79 to i32
  ret i32 %80
}

declare dso_local i64 @check_dev(%struct.device*) #1

declare dso_local i64 @match_parisc_device(%struct.device*, i32, i32) #1

declare dso_local i64 @is_pci_dev(%struct.device*) #1

declare dso_local i64 @match_pci_device(%struct.device*, i32, i32) #1

declare dso_local %struct.device* @parse_tree_node(%struct.device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
