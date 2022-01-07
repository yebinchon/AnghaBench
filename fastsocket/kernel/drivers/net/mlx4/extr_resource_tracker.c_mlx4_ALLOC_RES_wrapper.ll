; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_resource_tracker.c_mlx4_ALLOC_RES_wrapper.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_resource_tracker.c_mlx4_ALLOC_RES_wrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }
%struct.mlx4_vhcr = type { i32, i32, i32, i32 }
%struct.mlx4_cmd_mailbox = type { i32 }
%struct.mlx4_cmd_info = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_ALLOC_RES_wrapper(%struct.mlx4_dev* %0, i32 %1, %struct.mlx4_vhcr* %2, %struct.mlx4_cmd_mailbox* %3, %struct.mlx4_cmd_mailbox* %4, %struct.mlx4_cmd_info* %5) #0 {
  %7 = alloca %struct.mlx4_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mlx4_vhcr*, align 8
  %10 = alloca %struct.mlx4_cmd_mailbox*, align 8
  %11 = alloca %struct.mlx4_cmd_mailbox*, align 8
  %12 = alloca %struct.mlx4_cmd_info*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.mlx4_vhcr* %2, %struct.mlx4_vhcr** %9, align 8
  store %struct.mlx4_cmd_mailbox* %3, %struct.mlx4_cmd_mailbox** %10, align 8
  store %struct.mlx4_cmd_mailbox* %4, %struct.mlx4_cmd_mailbox** %11, align 8
  store %struct.mlx4_cmd_info* %5, %struct.mlx4_cmd_info** %12, align 8
  %15 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %9, align 8
  %16 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %14, align 4
  %18 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %9, align 8
  %19 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %138 [
    i32 131, label %21
    i32 132, label %34
    i32 133, label %47
    i32 135, label %60
    i32 130, label %73
    i32 134, label %86
    i32 129, label %99
    i32 136, label %112
    i32 128, label %125
  ]

21:                                               ; preds = %6
  %22 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %23 = load i32, i32* %8, align 4
  %24 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %9, align 8
  %25 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %14, align 4
  %28 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %9, align 8
  %29 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %9, align 8
  %32 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %31, i32 0, i32 2
  %33 = call i32 @qp_alloc_res(%struct.mlx4_dev* %22, i32 %23, i32 %26, i32 %27, i32 %30, i32* %32)
  store i32 %33, i32* %13, align 4
  br label %141

34:                                               ; preds = %6
  %35 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %36 = load i32, i32* %8, align 4
  %37 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %9, align 8
  %38 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %14, align 4
  %41 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %9, align 8
  %42 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %9, align 8
  %45 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %44, i32 0, i32 2
  %46 = call i32 @mtt_alloc_res(%struct.mlx4_dev* %35, i32 %36, i32 %39, i32 %40, i32 %43, i32* %45)
  store i32 %46, i32* %13, align 4
  br label %141

47:                                               ; preds = %6
  %48 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %49 = load i32, i32* %8, align 4
  %50 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %9, align 8
  %51 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %14, align 4
  %54 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %9, align 8
  %55 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %9, align 8
  %58 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %57, i32 0, i32 2
  %59 = call i32 @mpt_alloc_res(%struct.mlx4_dev* %48, i32 %49, i32 %52, i32 %53, i32 %56, i32* %58)
  store i32 %59, i32* %13, align 4
  br label %141

60:                                               ; preds = %6
  %61 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %62 = load i32, i32* %8, align 4
  %63 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %9, align 8
  %64 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %14, align 4
  %67 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %9, align 8
  %68 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %9, align 8
  %71 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %70, i32 0, i32 2
  %72 = call i32 @cq_alloc_res(%struct.mlx4_dev* %61, i32 %62, i32 %65, i32 %66, i32 %69, i32* %71)
  store i32 %72, i32* %13, align 4
  br label %141

73:                                               ; preds = %6
  %74 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %75 = load i32, i32* %8, align 4
  %76 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %9, align 8
  %77 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %14, align 4
  %80 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %9, align 8
  %81 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %9, align 8
  %84 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %83, i32 0, i32 2
  %85 = call i32 @srq_alloc_res(%struct.mlx4_dev* %74, i32 %75, i32 %78, i32 %79, i32 %82, i32* %84)
  store i32 %85, i32* %13, align 4
  br label %141

86:                                               ; preds = %6
  %87 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %88 = load i32, i32* %8, align 4
  %89 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %9, align 8
  %90 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %14, align 4
  %93 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %9, align 8
  %94 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %9, align 8
  %97 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %96, i32 0, i32 2
  %98 = call i32 @mac_alloc_res(%struct.mlx4_dev* %87, i32 %88, i32 %91, i32 %92, i32 %95, i32* %97)
  store i32 %98, i32* %13, align 4
  br label %141

99:                                               ; preds = %6
  %100 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %101 = load i32, i32* %8, align 4
  %102 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %9, align 8
  %103 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* %14, align 4
  %106 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %9, align 8
  %107 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %9, align 8
  %110 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %109, i32 0, i32 2
  %111 = call i32 @vlan_alloc_res(%struct.mlx4_dev* %100, i32 %101, i32 %104, i32 %105, i32 %108, i32* %110)
  store i32 %111, i32* %13, align 4
  br label %141

112:                                              ; preds = %6
  %113 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %114 = load i32, i32* %8, align 4
  %115 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %9, align 8
  %116 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* %14, align 4
  %119 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %9, align 8
  %120 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %9, align 8
  %123 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %122, i32 0, i32 2
  %124 = call i32 @counter_alloc_res(%struct.mlx4_dev* %113, i32 %114, i32 %117, i32 %118, i32 %121, i32* %123)
  store i32 %124, i32* %13, align 4
  br label %141

125:                                              ; preds = %6
  %126 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %127 = load i32, i32* %8, align 4
  %128 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %9, align 8
  %129 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* %14, align 4
  %132 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %9, align 8
  %133 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %9, align 8
  %136 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %135, i32 0, i32 2
  %137 = call i32 @xrcdn_alloc_res(%struct.mlx4_dev* %126, i32 %127, i32 %130, i32 %131, i32 %134, i32* %136)
  store i32 %137, i32* %13, align 4
  br label %141

138:                                              ; preds = %6
  %139 = load i32, i32* @EINVAL, align 4
  %140 = sub nsw i32 0, %139
  store i32 %140, i32* %13, align 4
  br label %141

141:                                              ; preds = %138, %125, %112, %99, %86, %73, %60, %47, %34, %21
  %142 = load i32, i32* %13, align 4
  ret i32 %142
}

declare dso_local i32 @qp_alloc_res(%struct.mlx4_dev*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @mtt_alloc_res(%struct.mlx4_dev*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @mpt_alloc_res(%struct.mlx4_dev*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @cq_alloc_res(%struct.mlx4_dev*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @srq_alloc_res(%struct.mlx4_dev*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @mac_alloc_res(%struct.mlx4_dev*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @vlan_alloc_res(%struct.mlx4_dev*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @counter_alloc_res(%struct.mlx4_dev*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @xrcdn_alloc_res(%struct.mlx4_dev*, i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
