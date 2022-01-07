; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_sriov_common.c_qlcnic_sriov_pull_bc_msg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_sriov_common.c_qlcnic_sriov_pull_bc_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { %struct.qlcnic_hardware_context* }
%struct.qlcnic_hardware_context = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qlcnic_adapter*, i32*, i32*, i32)* @qlcnic_sriov_pull_bc_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qlcnic_sriov_pull_bc_msg(%struct.qlcnic_adapter* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.qlcnic_adapter*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.qlcnic_hardware_context*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %15 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %16 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %15, i32 0, i32 0
  %17 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %16, align 8
  store %struct.qlcnic_hardware_context* %17, %struct.qlcnic_hardware_context** %9, align 8
  store i32 2, i32* %12, align 4
  store i32 1, i32* %13, align 4
  %18 = load i32, i32* %8, align 4
  %19 = sext i32 %18 to i64
  %20 = udiv i64 %19, 4
  %21 = load i32, i32* %13, align 4
  %22 = sext i32 %21 to i64
  %23 = add i64 %20, %22
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %12, align 4
  %25 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %9, align 8
  %26 = call i32 @QLCNIC_MBX_FW(%struct.qlcnic_hardware_context* %25, i32 0)
  %27 = call i8* @readl(i32 %26)
  %28 = ptrtoint i8* %27 to i32
  store i32 %28, i32* %10, align 4
  store i32 2, i32* %11, align 4
  store i32 0, i32* %14, align 4
  br label %29

29:                                               ; preds = %41, %4
  %30 = load i32, i32* %14, align 4
  %31 = load i32, i32* %13, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %46

33:                                               ; preds = %29
  %34 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %9, align 8
  %35 = load i32, i32* %11, align 4
  %36 = call i32 @QLCNIC_MBX_FW(%struct.qlcnic_hardware_context* %34, i32 %35)
  %37 = call i8* @readl(i32 %36)
  %38 = ptrtoint i8* %37 to i32
  %39 = load i32*, i32** %6, align 8
  %40 = getelementptr inbounds i32, i32* %39, i32 1
  store i32* %40, i32** %6, align 8
  store i32 %38, i32* %39, align 4
  br label %41

41:                                               ; preds = %33
  %42 = load i32, i32* %11, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %14, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %14, align 4
  br label %29

46:                                               ; preds = %29
  br label %47

47:                                               ; preds = %59, %46
  %48 = load i32, i32* %14, align 4
  %49 = load i32, i32* %12, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %64

51:                                               ; preds = %47
  %52 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %9, align 8
  %53 = load i32, i32* %11, align 4
  %54 = call i32 @QLCNIC_MBX_FW(%struct.qlcnic_hardware_context* %52, i32 %53)
  %55 = call i8* @readl(i32 %54)
  %56 = ptrtoint i8* %55 to i32
  %57 = load i32*, i32** %7, align 8
  %58 = getelementptr inbounds i32, i32* %57, i32 1
  store i32* %58, i32** %7, align 8
  store i32 %56, i32* %57, align 4
  br label %59

59:                                               ; preds = %51
  %60 = load i32, i32* %11, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* %14, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %14, align 4
  br label %47

64:                                               ; preds = %47
  ret void
}

declare dso_local i8* @readl(i32) #1

declare dso_local i32 @QLCNIC_MBX_FW(%struct.qlcnic_hardware_context*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
