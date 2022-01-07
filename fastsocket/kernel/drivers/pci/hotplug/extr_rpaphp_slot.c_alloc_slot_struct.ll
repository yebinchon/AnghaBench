; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_rpaphp_slot.c_alloc_slot_struct.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_rpaphp_slot.c_alloc_slot_struct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slot = type { i32, i32, %struct.slot*, %struct.slot*, i32*, i32*, %struct.slot*, %struct.device_node*, i32 }
%struct.device_node = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@rpaphp_hotplug_slot_ops = common dso_local global i32 0, align 4
@rpaphp_release_slot = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.slot* @alloc_slot_struct(%struct.device_node* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.slot*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.slot*, align 8
  store %struct.device_node* %0, %struct.device_node** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call i8* @kzalloc(i32 64, i32 %11)
  %13 = bitcast i8* %12 to %struct.slot*
  store %struct.slot* %13, %struct.slot** %10, align 8
  %14 = load %struct.slot*, %struct.slot** %10, align 8
  %15 = icmp ne %struct.slot* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %4
  br label %93

17:                                               ; preds = %4
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call i8* @kzalloc(i32 4, i32 %18)
  %20 = bitcast i8* %19 to %struct.slot*
  %21 = load %struct.slot*, %struct.slot** %10, align 8
  %22 = getelementptr inbounds %struct.slot, %struct.slot* %21, i32 0, i32 2
  store %struct.slot* %20, %struct.slot** %22, align 8
  %23 = load %struct.slot*, %struct.slot** %10, align 8
  %24 = getelementptr inbounds %struct.slot, %struct.slot* %23, i32 0, i32 2
  %25 = load %struct.slot*, %struct.slot** %24, align 8
  %26 = icmp ne %struct.slot* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %17
  br label %90

28:                                               ; preds = %17
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call i8* @kzalloc(i32 4, i32 %29)
  %31 = bitcast i8* %30 to %struct.slot*
  %32 = load %struct.slot*, %struct.slot** %10, align 8
  %33 = getelementptr inbounds %struct.slot, %struct.slot* %32, i32 0, i32 2
  %34 = load %struct.slot*, %struct.slot** %33, align 8
  %35 = getelementptr inbounds %struct.slot, %struct.slot* %34, i32 0, i32 3
  store %struct.slot* %31, %struct.slot** %35, align 8
  %36 = load %struct.slot*, %struct.slot** %10, align 8
  %37 = getelementptr inbounds %struct.slot, %struct.slot* %36, i32 0, i32 2
  %38 = load %struct.slot*, %struct.slot** %37, align 8
  %39 = getelementptr inbounds %struct.slot, %struct.slot* %38, i32 0, i32 3
  %40 = load %struct.slot*, %struct.slot** %39, align 8
  %41 = icmp ne %struct.slot* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %28
  br label %85

43:                                               ; preds = %28
  %44 = load i8*, i8** %8, align 8
  %45 = load i32, i32* @GFP_KERNEL, align 4
  %46 = call i32 @kstrdup(i8* %44, i32 %45)
  %47 = load %struct.slot*, %struct.slot** %10, align 8
  %48 = getelementptr inbounds %struct.slot, %struct.slot* %47, i32 0, i32 8
  store i32 %46, i32* %48, align 8
  %49 = load %struct.slot*, %struct.slot** %10, align 8
  %50 = getelementptr inbounds %struct.slot, %struct.slot* %49, i32 0, i32 8
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %43
  br label %78

54:                                               ; preds = %43
  %55 = load %struct.device_node*, %struct.device_node** %6, align 8
  %56 = load %struct.slot*, %struct.slot** %10, align 8
  %57 = getelementptr inbounds %struct.slot, %struct.slot* %56, i32 0, i32 7
  store %struct.device_node* %55, %struct.device_node** %57, align 8
  %58 = load i32, i32* %7, align 4
  %59 = load %struct.slot*, %struct.slot** %10, align 8
  %60 = getelementptr inbounds %struct.slot, %struct.slot* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  %61 = load i32, i32* %9, align 4
  %62 = load %struct.slot*, %struct.slot** %10, align 8
  %63 = getelementptr inbounds %struct.slot, %struct.slot* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  %64 = load %struct.slot*, %struct.slot** %10, align 8
  %65 = load %struct.slot*, %struct.slot** %10, align 8
  %66 = getelementptr inbounds %struct.slot, %struct.slot* %65, i32 0, i32 2
  %67 = load %struct.slot*, %struct.slot** %66, align 8
  %68 = getelementptr inbounds %struct.slot, %struct.slot* %67, i32 0, i32 6
  store %struct.slot* %64, %struct.slot** %68, align 8
  %69 = load %struct.slot*, %struct.slot** %10, align 8
  %70 = getelementptr inbounds %struct.slot, %struct.slot* %69, i32 0, i32 2
  %71 = load %struct.slot*, %struct.slot** %70, align 8
  %72 = getelementptr inbounds %struct.slot, %struct.slot* %71, i32 0, i32 5
  store i32* @rpaphp_hotplug_slot_ops, i32** %72, align 8
  %73 = load %struct.slot*, %struct.slot** %10, align 8
  %74 = getelementptr inbounds %struct.slot, %struct.slot* %73, i32 0, i32 2
  %75 = load %struct.slot*, %struct.slot** %74, align 8
  %76 = getelementptr inbounds %struct.slot, %struct.slot* %75, i32 0, i32 4
  store i32* @rpaphp_release_slot, i32** %76, align 8
  %77 = load %struct.slot*, %struct.slot** %10, align 8
  store %struct.slot* %77, %struct.slot** %5, align 8
  br label %94

78:                                               ; preds = %53
  %79 = load %struct.slot*, %struct.slot** %10, align 8
  %80 = getelementptr inbounds %struct.slot, %struct.slot* %79, i32 0, i32 2
  %81 = load %struct.slot*, %struct.slot** %80, align 8
  %82 = getelementptr inbounds %struct.slot, %struct.slot* %81, i32 0, i32 3
  %83 = load %struct.slot*, %struct.slot** %82, align 8
  %84 = call i32 @kfree(%struct.slot* %83)
  br label %85

85:                                               ; preds = %78, %42
  %86 = load %struct.slot*, %struct.slot** %10, align 8
  %87 = getelementptr inbounds %struct.slot, %struct.slot* %86, i32 0, i32 2
  %88 = load %struct.slot*, %struct.slot** %87, align 8
  %89 = call i32 @kfree(%struct.slot* %88)
  br label %90

90:                                               ; preds = %85, %27
  %91 = load %struct.slot*, %struct.slot** %10, align 8
  %92 = call i32 @kfree(%struct.slot* %91)
  br label %93

93:                                               ; preds = %90, %16
  store %struct.slot* null, %struct.slot** %5, align 8
  br label %94

94:                                               ; preds = %93, %54
  %95 = load %struct.slot*, %struct.slot** %5, align 8
  ret %struct.slot* %95
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @kstrdup(i8*, i32) #1

declare dso_local i32 @kfree(%struct.slot*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
