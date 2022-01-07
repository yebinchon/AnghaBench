; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/firewire/extr_core-topology.c_report_found_node.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/firewire/extr_core-topology.c_report_found_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_card = type { i64 }
%struct.fw_node = type { i64, i64, i32 }

@SCODE_BETA = common dso_local global i64 0, align 8
@FW_NODE_CREATED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fw_card*, %struct.fw_node*, %struct.fw_node*)* @report_found_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @report_found_node(%struct.fw_card* %0, %struct.fw_node* %1, %struct.fw_node* %2) #0 {
  %4 = alloca %struct.fw_card*, align 8
  %5 = alloca %struct.fw_node*, align 8
  %6 = alloca %struct.fw_node*, align 8
  %7 = alloca i32, align 4
  store %struct.fw_card* %0, %struct.fw_card** %4, align 8
  store %struct.fw_node* %1, %struct.fw_node** %5, align 8
  store %struct.fw_node* %2, %struct.fw_node** %6, align 8
  %8 = load %struct.fw_node*, %struct.fw_node** %5, align 8
  %9 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @SCODE_BETA, align 8
  %12 = icmp eq i64 %10, %11
  %13 = zext i1 %12 to i32
  store i32 %13, i32* %7, align 4
  %14 = load %struct.fw_node*, %struct.fw_node** %6, align 8
  %15 = icmp ne %struct.fw_node* %14, null
  br i1 %15, label %16, label %48

16:                                               ; preds = %3
  %17 = load %struct.fw_node*, %struct.fw_node** %6, align 8
  %18 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.fw_node*, %struct.fw_node** %5, align 8
  %21 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp slt i64 %19, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %16
  %25 = load %struct.fw_node*, %struct.fw_node** %6, align 8
  %26 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  br label %32

28:                                               ; preds = %16
  %29 = load %struct.fw_node*, %struct.fw_node** %5, align 8
  %30 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  br label %32

32:                                               ; preds = %28, %24
  %33 = phi i64 [ %27, %24 ], [ %31, %28 ]
  %34 = load %struct.fw_node*, %struct.fw_node** %5, align 8
  %35 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %34, i32 0, i32 1
  store i64 %33, i64* %35, align 8
  %36 = load %struct.fw_node*, %struct.fw_node** %6, align 8
  %37 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %32
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br label %43

43:                                               ; preds = %40, %32
  %44 = phi i1 [ false, %32 ], [ %42, %40 ]
  %45 = zext i1 %44 to i32
  %46 = load %struct.fw_node*, %struct.fw_node** %5, align 8
  %47 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 8
  br label %57

48:                                               ; preds = %3
  %49 = load %struct.fw_node*, %struct.fw_node** %5, align 8
  %50 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.fw_node*, %struct.fw_node** %5, align 8
  %53 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %52, i32 0, i32 1
  store i64 %51, i64* %53, align 8
  %54 = load i32, i32* %7, align 4
  %55 = load %struct.fw_node*, %struct.fw_node** %5, align 8
  %56 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 8
  br label %57

57:                                               ; preds = %48, %43
  %58 = load %struct.fw_card*, %struct.fw_card** %4, align 8
  %59 = load %struct.fw_node*, %struct.fw_node** %5, align 8
  %60 = load i32, i32* @FW_NODE_CREATED, align 4
  %61 = call i32 @fw_node_event(%struct.fw_card* %58, %struct.fw_node* %59, i32 %60)
  %62 = load %struct.fw_card*, %struct.fw_card** %4, align 8
  %63 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %62, i32 0, i32 0
  store i64 0, i64* %63, align 8
  ret void
}

declare dso_local i32 @fw_node_event(%struct.fw_card*, %struct.fw_node*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
