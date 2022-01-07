; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/firewire/extr_core-topology.c_fw_core_handle_bus_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/firewire/extr_core-topology.c_fw_core_handle_bus_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_card = type { i32, i32, i32, i32, %struct.fw_node*, i32, i32, i64 }
%struct.fw_node = type { i32 }

@.str = private unnamed_addr constant [47 x i8] c"skipped bus generations, destroying all nodes\0A\00", align 1
@jiffies = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"topology build failed\0A\00", align 1
@report_found_node = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fw_core_handle_bus_reset(%struct.fw_card* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.fw_card*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.fw_node*, align 8
  %12 = alloca i64, align 8
  store %struct.fw_card* %0, %struct.fw_card** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %13 = load i32, i32* %8, align 4
  %14 = load %struct.fw_card*, %struct.fw_card** %6, align 8
  %15 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @is_next_generation(i32 %13, i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %30, label %19

19:                                               ; preds = %5
  %20 = load %struct.fw_card*, %struct.fw_card** %6, align 8
  %21 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %20, i32 0, i32 4
  %22 = load %struct.fw_node*, %struct.fw_node** %21, align 8
  %23 = icmp ne %struct.fw_node* %22, null
  br i1 %23, label %24, label %30

24:                                               ; preds = %19
  %25 = call i32 @fw_notify(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.fw_card*, %struct.fw_card** %6, align 8
  %27 = call i32 @fw_destroy_nodes(%struct.fw_card* %26)
  %28 = load %struct.fw_card*, %struct.fw_card** %6, align 8
  %29 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %28, i32 0, i32 7
  store i64 0, i64* %29, align 8
  br label %30

30:                                               ; preds = %24, %19, %5
  %31 = load %struct.fw_card*, %struct.fw_card** %6, align 8
  %32 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %31, i32 0, i32 3
  %33 = load i64, i64* %12, align 8
  %34 = call i32 @spin_lock_irqsave(i32* %32, i64 %33)
  %35 = load %struct.fw_card*, %struct.fw_card** %6, align 8
  %36 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %35, i32 0, i32 1
  store i32 0, i32* %36, align 4
  %37 = load i32, i32* %7, align 4
  %38 = load %struct.fw_card*, %struct.fw_card** %6, align 8
  %39 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 8
  %40 = call i32 (...) @smp_wmb()
  %41 = load i32, i32* %8, align 4
  %42 = load %struct.fw_card*, %struct.fw_card** %6, align 8
  %43 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load i32, i32* @jiffies, align 4
  %45 = load %struct.fw_card*, %struct.fw_card** %6, align 8
  %46 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %45, i32 0, i32 6
  store i32 %44, i32* %46, align 4
  %47 = load %struct.fw_card*, %struct.fw_card** %6, align 8
  %48 = call i32 @fw_schedule_bm_work(%struct.fw_card* %47, i32 0)
  %49 = load %struct.fw_card*, %struct.fw_card** %6, align 8
  %50 = load i32*, i32** %10, align 8
  %51 = load i32, i32* %9, align 4
  %52 = call %struct.fw_node* @build_tree(%struct.fw_card* %49, i32* %50, i32 %51)
  store %struct.fw_node* %52, %struct.fw_node** %11, align 8
  %53 = load %struct.fw_card*, %struct.fw_card** %6, align 8
  %54 = load i32*, i32** %10, align 8
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @update_topology_map(%struct.fw_card* %53, i32* %54, i32 %55)
  %57 = load %struct.fw_card*, %struct.fw_card** %6, align 8
  %58 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %57, i32 0, i32 5
  %59 = load i32, i32* %58, align 8
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %58, align 8
  %61 = load %struct.fw_node*, %struct.fw_node** %11, align 8
  %62 = icmp eq %struct.fw_node* %61, null
  br i1 %62, label %63, label %65

63:                                               ; preds = %30
  %64 = call i32 @fw_error(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %83

65:                                               ; preds = %30
  %66 = load %struct.fw_card*, %struct.fw_card** %6, align 8
  %67 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %66, i32 0, i32 4
  %68 = load %struct.fw_node*, %struct.fw_node** %67, align 8
  %69 = icmp eq %struct.fw_node* %68, null
  br i1 %69, label %70, label %78

70:                                               ; preds = %65
  %71 = load %struct.fw_node*, %struct.fw_node** %11, align 8
  %72 = load %struct.fw_card*, %struct.fw_card** %6, align 8
  %73 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %72, i32 0, i32 4
  store %struct.fw_node* %71, %struct.fw_node** %73, align 8
  %74 = load %struct.fw_card*, %struct.fw_card** %6, align 8
  %75 = load %struct.fw_node*, %struct.fw_node** %11, align 8
  %76 = load i32, i32* @report_found_node, align 4
  %77 = call i32 @for_each_fw_node(%struct.fw_card* %74, %struct.fw_node* %75, i32 %76)
  br label %82

78:                                               ; preds = %65
  %79 = load %struct.fw_card*, %struct.fw_card** %6, align 8
  %80 = load %struct.fw_node*, %struct.fw_node** %11, align 8
  %81 = call i32 @update_tree(%struct.fw_card* %79, %struct.fw_node* %80)
  br label %82

82:                                               ; preds = %78, %70
  br label %83

83:                                               ; preds = %82, %63
  %84 = load %struct.fw_card*, %struct.fw_card** %6, align 8
  %85 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %84, i32 0, i32 3
  %86 = load i64, i64* %12, align 8
  %87 = call i32 @spin_unlock_irqrestore(i32* %85, i64 %86)
  ret void
}

declare dso_local i32 @is_next_generation(i32, i32) #1

declare dso_local i32 @fw_notify(i8*) #1

declare dso_local i32 @fw_destroy_nodes(%struct.fw_card*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @fw_schedule_bm_work(%struct.fw_card*, i32) #1

declare dso_local %struct.fw_node* @build_tree(%struct.fw_card*, i32*, i32) #1

declare dso_local i32 @update_topology_map(%struct.fw_card*, i32*, i32) #1

declare dso_local i32 @fw_error(i8*) #1

declare dso_local i32 @for_each_fw_node(%struct.fw_card*, %struct.fw_node*, i32) #1

declare dso_local i32 @update_tree(%struct.fw_card*, %struct.fw_node*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
