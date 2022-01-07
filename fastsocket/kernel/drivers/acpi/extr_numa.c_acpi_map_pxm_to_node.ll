; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_numa.c_acpi_map_pxm_to_node.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_numa.c_acpi_map_pxm_to_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pxm_to_node_map = common dso_local global i32* null, align 8
@nodes_found_map = common dso_local global i32 0, align 4
@MAX_NUMNODES = common dso_local global i64 0, align 8
@NID_INVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_map_pxm_to_node(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32*, i32** @pxm_to_node_map, align 8
  %6 = load i32, i32* %3, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds i32, i32* %5, i64 %7
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %28

12:                                               ; preds = %1
  %13 = load i32, i32* @nodes_found_map, align 4
  %14 = call i64 @nodes_weight(i32 %13)
  %15 = load i64, i64* @MAX_NUMNODES, align 8
  %16 = icmp sge i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = load i32, i32* @NID_INVAL, align 4
  store i32 %18, i32* %2, align 4
  br label %30

19:                                               ; preds = %12
  %20 = load i32, i32* @nodes_found_map, align 4
  %21 = call i32 @first_unset_node(i32 %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @__acpi_map_pxm_to_node(i32 %22, i32 %23)
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @nodes_found_map, align 4
  %27 = call i32 @node_set(i32 %25, i32 %26)
  br label %28

28:                                               ; preds = %19, %1
  %29 = load i32, i32* %4, align 4
  store i32 %29, i32* %2, align 4
  br label %30

30:                                               ; preds = %28, %17
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i64 @nodes_weight(i32) #1

declare dso_local i32 @first_unset_node(i32) #1

declare dso_local i32 @__acpi_map_pxm_to_node(i32, i32) #1

declare dso_local i32 @node_set(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
