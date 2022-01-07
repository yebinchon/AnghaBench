; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_resource_tracker.c_mlx4_FREE_RES_wrapper.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_resource_tracker.c_mlx4_FREE_RES_wrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }
%struct.mlx4_vhcr = type { i32, i32, i32, i32 }
%struct.mlx4_cmd_mailbox = type { i32 }
%struct.mlx4_cmd_info = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_FREE_RES_wrapper(%struct.mlx4_dev* %0, i32 %1, %struct.mlx4_vhcr* %2, %struct.mlx4_cmd_mailbox* %3, %struct.mlx4_cmd_mailbox* %4, %struct.mlx4_cmd_info* %5) #0 {
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
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %13, align 4
  %17 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %9, align 8
  %18 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %14, align 4
  %20 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %9, align 8
  %21 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %136 [
    i32 131, label %23
    i32 132, label %34
    i32 133, label %47
    i32 135, label %58
    i32 130, label %71
    i32 134, label %84
    i32 129, label %97
    i32 136, label %110
    i32 128, label %123
  ]

23:                                               ; preds = %6
  %24 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %25 = load i32, i32* %8, align 4
  %26 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %9, align 8
  %27 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %14, align 4
  %30 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %9, align 8
  %31 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @qp_free_res(%struct.mlx4_dev* %24, i32 %25, i32 %28, i32 %29, i32 %32)
  store i32 %33, i32* %13, align 4
  br label %137

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
  %46 = call i32 @mtt_free_res(%struct.mlx4_dev* %35, i32 %36, i32 %39, i32 %40, i32 %43, i32* %45)
  store i32 %46, i32* %13, align 4
  br label %137

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
  %57 = call i32 @mpt_free_res(%struct.mlx4_dev* %48, i32 %49, i32 %52, i32 %53, i32 %56)
  store i32 %57, i32* %13, align 4
  br label %137

58:                                               ; preds = %6
  %59 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %60 = load i32, i32* %8, align 4
  %61 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %9, align 8
  %62 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %14, align 4
  %65 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %9, align 8
  %66 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %9, align 8
  %69 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %68, i32 0, i32 2
  %70 = call i32 @cq_free_res(%struct.mlx4_dev* %59, i32 %60, i32 %63, i32 %64, i32 %67, i32* %69)
  store i32 %70, i32* %13, align 4
  br label %137

71:                                               ; preds = %6
  %72 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %73 = load i32, i32* %8, align 4
  %74 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %9, align 8
  %75 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %14, align 4
  %78 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %9, align 8
  %79 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %9, align 8
  %82 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %81, i32 0, i32 2
  %83 = call i32 @srq_free_res(%struct.mlx4_dev* %72, i32 %73, i32 %76, i32 %77, i32 %80, i32* %82)
  store i32 %83, i32* %13, align 4
  br label %137

84:                                               ; preds = %6
  %85 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %86 = load i32, i32* %8, align 4
  %87 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %9, align 8
  %88 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %14, align 4
  %91 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %9, align 8
  %92 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %9, align 8
  %95 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %94, i32 0, i32 2
  %96 = call i32 @mac_free_res(%struct.mlx4_dev* %85, i32 %86, i32 %89, i32 %90, i32 %93, i32* %95)
  store i32 %96, i32* %13, align 4
  br label %137

97:                                               ; preds = %6
  %98 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %99 = load i32, i32* %8, align 4
  %100 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %9, align 8
  %101 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %14, align 4
  %104 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %9, align 8
  %105 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %9, align 8
  %108 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %107, i32 0, i32 2
  %109 = call i32 @vlan_free_res(%struct.mlx4_dev* %98, i32 %99, i32 %102, i32 %103, i32 %106, i32* %108)
  store i32 %109, i32* %13, align 4
  br label %137

110:                                              ; preds = %6
  %111 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %112 = load i32, i32* %8, align 4
  %113 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %9, align 8
  %114 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* %14, align 4
  %117 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %9, align 8
  %118 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %9, align 8
  %121 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %120, i32 0, i32 2
  %122 = call i32 @counter_free_res(%struct.mlx4_dev* %111, i32 %112, i32 %115, i32 %116, i32 %119, i32* %121)
  store i32 %122, i32* %13, align 4
  br label %137

123:                                              ; preds = %6
  %124 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %125 = load i32, i32* %8, align 4
  %126 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %9, align 8
  %127 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* %14, align 4
  %130 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %9, align 8
  %131 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %9, align 8
  %134 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %133, i32 0, i32 2
  %135 = call i32 @xrcdn_free_res(%struct.mlx4_dev* %124, i32 %125, i32 %128, i32 %129, i32 %132, i32* %134)
  store i32 %135, i32* %13, align 4
  br label %136

136:                                              ; preds = %6, %123
  br label %137

137:                                              ; preds = %136, %110, %97, %84, %71, %58, %47, %34, %23
  %138 = load i32, i32* %13, align 4
  ret i32 %138
}

declare dso_local i32 @qp_free_res(%struct.mlx4_dev*, i32, i32, i32, i32) #1

declare dso_local i32 @mtt_free_res(%struct.mlx4_dev*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @mpt_free_res(%struct.mlx4_dev*, i32, i32, i32, i32) #1

declare dso_local i32 @cq_free_res(%struct.mlx4_dev*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @srq_free_res(%struct.mlx4_dev*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @mac_free_res(%struct.mlx4_dev*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @vlan_free_res(%struct.mlx4_dev*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @counter_free_res(%struct.mlx4_dev*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @xrcdn_free_res(%struct.mlx4_dev*, i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
