; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_sriov.c_bnx2x_vfop_mcast_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_sriov.c_bnx2x_vfop_mcast_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.bnx2x_virtf = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.bnx2x_mcast_ramrod_params }
%struct.bnx2x_mcast_ramrod_params = type { i32, i32* }
%struct.bnx2x_vfop_cmd = type { i32, i32 }
%struct.bnx2x_vfop = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, %struct.bnx2x_mcast_list_elem* }
%struct.bnx2x_mcast_list_elem = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@RAMROD_DRV_CLR_ONLY = common dso_local global i32 0, align 4
@BNX2X_VFOP_MCAST_DEL = common dso_local global i32 0, align 4
@bnx2x_vfop_mcast = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnx2x_vfop_mcast_cmd(%struct.bnx2x* %0, %struct.bnx2x_virtf* %1, %struct.bnx2x_vfop_cmd* %2, i32* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.bnx2x*, align 8
  %9 = alloca %struct.bnx2x_virtf*, align 8
  %10 = alloca %struct.bnx2x_vfop_cmd*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.bnx2x_vfop*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.bnx2x_mcast_list_elem*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.bnx2x_mcast_ramrod_params*, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %8, align 8
  store %struct.bnx2x_virtf* %1, %struct.bnx2x_virtf** %9, align 8
  store %struct.bnx2x_vfop_cmd* %2, %struct.bnx2x_vfop_cmd** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store %struct.bnx2x_vfop* null, %struct.bnx2x_vfop** %14, align 8
  %19 = load i32, i32* %12, align 4
  %20 = sext i32 %19 to i64
  %21 = mul i64 %20, 4
  store i64 %21, i64* %15, align 8
  %22 = load i64, i64* %15, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %6
  %25 = load i64, i64* %15, align 8
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call %struct.bnx2x_mcast_list_elem* @kzalloc(i64 %25, i32 %26)
  br label %29

28:                                               ; preds = %6
  br label %29

29:                                               ; preds = %28, %24
  %30 = phi %struct.bnx2x_mcast_list_elem* [ %27, %24 ], [ null, %28 ]
  store %struct.bnx2x_mcast_list_elem* %30, %struct.bnx2x_mcast_list_elem** %16, align 8
  %31 = load i64, i64* %15, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load %struct.bnx2x_mcast_list_elem*, %struct.bnx2x_mcast_list_elem** %16, align 8
  %35 = icmp ne %struct.bnx2x_mcast_list_elem* %34, null
  br i1 %35, label %36, label %106

36:                                               ; preds = %33, %29
  %37 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %38 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %9, align 8
  %39 = call %struct.bnx2x_vfop* @bnx2x_vfop_add(%struct.bnx2x* %37, %struct.bnx2x_virtf* %38)
  store %struct.bnx2x_vfop* %39, %struct.bnx2x_vfop** %14, align 8
  %40 = load %struct.bnx2x_vfop*, %struct.bnx2x_vfop** %14, align 8
  %41 = icmp ne %struct.bnx2x_vfop* %40, null
  br i1 %41, label %42, label %102

42:                                               ; preds = %36
  %43 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %9, align 8
  %44 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  store %struct.bnx2x_mcast_ramrod_params* %45, %struct.bnx2x_mcast_ramrod_params** %18, align 8
  %46 = load %struct.bnx2x_mcast_ramrod_params*, %struct.bnx2x_mcast_ramrod_params** %18, align 8
  %47 = call i32 @memset(%struct.bnx2x_mcast_ramrod_params* %46, i32 0, i32 16)
  %48 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %9, align 8
  %49 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %48, i32 0, i32 0
  %50 = load %struct.bnx2x_mcast_ramrod_params*, %struct.bnx2x_mcast_ramrod_params** %18, align 8
  %51 = getelementptr inbounds %struct.bnx2x_mcast_ramrod_params, %struct.bnx2x_mcast_ramrod_params* %50, i32 0, i32 1
  store i32* %49, i32** %51, align 8
  %52 = load i32, i32* %13, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %42
  %55 = load i32, i32* @RAMROD_DRV_CLR_ONLY, align 4
  %56 = load %struct.bnx2x_mcast_ramrod_params*, %struct.bnx2x_mcast_ramrod_params** %18, align 8
  %57 = getelementptr inbounds %struct.bnx2x_mcast_ramrod_params, %struct.bnx2x_mcast_ramrod_params* %56, i32 0, i32 0
  %58 = call i32 @set_bit(i32 %55, i32* %57)
  br label %59

59:                                               ; preds = %54, %42
  %60 = load i32, i32* %12, align 4
  %61 = load %struct.bnx2x_vfop*, %struct.bnx2x_vfop** %14, align 8
  %62 = getelementptr inbounds %struct.bnx2x_vfop, %struct.bnx2x_vfop* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  store i32 %60, i32* %64, align 8
  %65 = load %struct.bnx2x_mcast_list_elem*, %struct.bnx2x_mcast_list_elem** %16, align 8
  %66 = load %struct.bnx2x_vfop*, %struct.bnx2x_vfop** %14, align 8
  %67 = getelementptr inbounds %struct.bnx2x_vfop, %struct.bnx2x_vfop* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 1
  store %struct.bnx2x_mcast_list_elem* %65, %struct.bnx2x_mcast_list_elem** %69, align 8
  store i32 0, i32* %17, align 4
  br label %70

70:                                               ; preds = %85, %59
  %71 = load i32, i32* %17, align 4
  %72 = load i32, i32* %12, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %88

74:                                               ; preds = %70
  %75 = load i32*, i32** %11, align 8
  %76 = load i32, i32* %17, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.bnx2x_mcast_list_elem*, %struct.bnx2x_mcast_list_elem** %16, align 8
  %81 = load i32, i32* %17, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.bnx2x_mcast_list_elem, %struct.bnx2x_mcast_list_elem* %80, i64 %82
  %84 = getelementptr inbounds %struct.bnx2x_mcast_list_elem, %struct.bnx2x_mcast_list_elem* %83, i32 0, i32 0
  store i32 %79, i32* %84, align 4
  br label %85

85:                                               ; preds = %74
  %86 = load i32, i32* %17, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %17, align 4
  br label %70

88:                                               ; preds = %70
  %89 = load i32, i32* @BNX2X_VFOP_MCAST_DEL, align 4
  %90 = load i32, i32* @bnx2x_vfop_mcast, align 4
  %91 = load %struct.bnx2x_vfop_cmd*, %struct.bnx2x_vfop_cmd** %10, align 8
  %92 = getelementptr inbounds %struct.bnx2x_vfop_cmd, %struct.bnx2x_vfop_cmd* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @bnx2x_vfop_opset(i32 %89, i32 %90, i32 %93)
  %95 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %96 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %9, align 8
  %97 = load i32, i32* @bnx2x_vfop_mcast, align 4
  %98 = load %struct.bnx2x_vfop_cmd*, %struct.bnx2x_vfop_cmd** %10, align 8
  %99 = getelementptr inbounds %struct.bnx2x_vfop_cmd, %struct.bnx2x_vfop_cmd* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @bnx2x_vfop_transition(%struct.bnx2x* %95, %struct.bnx2x_virtf* %96, i32 %97, i32 %100)
  store i32 %101, i32* %7, align 4
  br label %109

102:                                              ; preds = %36
  %103 = load %struct.bnx2x_mcast_list_elem*, %struct.bnx2x_mcast_list_elem** %16, align 8
  %104 = call i32 @kfree(%struct.bnx2x_mcast_list_elem* %103)
  br label %105

105:                                              ; preds = %102
  br label %106

106:                                              ; preds = %105, %33
  %107 = load i32, i32* @ENOMEM, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %7, align 4
  br label %109

109:                                              ; preds = %106, %88
  %110 = load i32, i32* %7, align 4
  ret i32 %110
}

declare dso_local %struct.bnx2x_mcast_list_elem* @kzalloc(i64, i32) #1

declare dso_local %struct.bnx2x_vfop* @bnx2x_vfop_add(%struct.bnx2x*, %struct.bnx2x_virtf*) #1

declare dso_local i32 @memset(%struct.bnx2x_mcast_ramrod_params*, i32, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @bnx2x_vfop_opset(i32, i32, i32) #1

declare dso_local i32 @bnx2x_vfop_transition(%struct.bnx2x*, %struct.bnx2x_virtf*, i32, i32) #1

declare dso_local i32 @kfree(%struct.bnx2x_mcast_list_elem*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
