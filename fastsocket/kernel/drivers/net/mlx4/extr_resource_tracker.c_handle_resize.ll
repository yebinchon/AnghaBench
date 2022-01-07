; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_resource_tracker.c_handle_resize.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_resource_tracker.c_handle_resize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.mlx4_vhcr = type { i32 }
%struct.mlx4_cmd_mailbox = type { %struct.mlx4_cq_context* }
%struct.mlx4_cq_context = type { i32 }
%struct.mlx4_cmd_info = type { i32 }
%struct.res_cq = type { %struct.res_mtt* }
%struct.res_mtt = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }

@RES_MTT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_dev*, i32, %struct.mlx4_vhcr*, %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_info*, %struct.res_cq*)* @handle_resize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_resize(%struct.mlx4_dev* %0, i32 %1, %struct.mlx4_vhcr* %2, %struct.mlx4_cmd_mailbox* %3, %struct.mlx4_cmd_mailbox* %4, %struct.mlx4_cmd_info* %5, %struct.res_cq* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.mlx4_dev*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.mlx4_vhcr*, align 8
  %12 = alloca %struct.mlx4_cmd_mailbox*, align 8
  %13 = alloca %struct.mlx4_cmd_mailbox*, align 8
  %14 = alloca %struct.mlx4_cmd_info*, align 8
  %15 = alloca %struct.res_cq*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.res_mtt*, align 8
  %18 = alloca %struct.res_mtt*, align 8
  %19 = alloca %struct.mlx4_cq_context*, align 8
  %20 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %9, align 8
  store i32 %1, i32* %10, align 4
  store %struct.mlx4_vhcr* %2, %struct.mlx4_vhcr** %11, align 8
  store %struct.mlx4_cmd_mailbox* %3, %struct.mlx4_cmd_mailbox** %12, align 8
  store %struct.mlx4_cmd_mailbox* %4, %struct.mlx4_cmd_mailbox** %13, align 8
  store %struct.mlx4_cmd_info* %5, %struct.mlx4_cmd_info** %14, align 8
  store %struct.res_cq* %6, %struct.res_cq** %15, align 8
  %21 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %12, align 8
  %22 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %21, i32 0, i32 0
  %23 = load %struct.mlx4_cq_context*, %struct.mlx4_cq_context** %22, align 8
  store %struct.mlx4_cq_context* %23, %struct.mlx4_cq_context** %19, align 8
  %24 = load %struct.mlx4_cq_context*, %struct.mlx4_cq_context** %19, align 8
  %25 = call i32 @cq_get_mtt_addr(%struct.mlx4_cq_context* %24)
  %26 = load %struct.mlx4_dev*, %struct.mlx4_dev** %9, align 8
  %27 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = sdiv i32 %25, %29
  store i32 %30, i32* %20, align 4
  %31 = load %struct.mlx4_dev*, %struct.mlx4_dev** %9, align 8
  %32 = load i32, i32* %10, align 4
  %33 = load %struct.res_cq*, %struct.res_cq** %15, align 8
  %34 = getelementptr inbounds %struct.res_cq, %struct.res_cq* %33, i32 0, i32 0
  %35 = load %struct.res_mtt*, %struct.res_mtt** %34, align 8
  %36 = getelementptr inbounds %struct.res_mtt, %struct.res_mtt* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @RES_MTT, align 4
  %40 = call i32 @get_res(%struct.mlx4_dev* %31, i32 %32, i32 %38, i32 %39, %struct.res_mtt** %17)
  store i32 %40, i32* %16, align 4
  %41 = load i32, i32* %16, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %7
  %44 = load i32, i32* %16, align 4
  store i32 %44, i32* %8, align 4
  br label %130

45:                                               ; preds = %7
  %46 = load %struct.res_mtt*, %struct.res_mtt** %17, align 8
  %47 = load %struct.res_cq*, %struct.res_cq** %15, align 8
  %48 = getelementptr inbounds %struct.res_cq, %struct.res_cq* %47, i32 0, i32 0
  %49 = load %struct.res_mtt*, %struct.res_mtt** %48, align 8
  %50 = icmp ne %struct.res_mtt* %46, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %45
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %16, align 4
  br label %120

54:                                               ; preds = %45
  %55 = load %struct.mlx4_dev*, %struct.mlx4_dev** %9, align 8
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* %20, align 4
  %58 = load i32, i32* @RES_MTT, align 4
  %59 = call i32 @get_res(%struct.mlx4_dev* %55, i32 %56, i32 %57, i32 %58, %struct.res_mtt** %18)
  store i32 %59, i32* %16, align 4
  %60 = load i32, i32* %16, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %54
  br label %120

63:                                               ; preds = %54
  %64 = load %struct.mlx4_dev*, %struct.mlx4_dev** %9, align 8
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* %20, align 4
  %67 = load %struct.mlx4_cq_context*, %struct.mlx4_cq_context** %19, align 8
  %68 = call i32 @cq_get_mtt_size(%struct.mlx4_cq_context* %67)
  %69 = load %struct.res_mtt*, %struct.res_mtt** %18, align 8
  %70 = call i32 @check_mtt_range(%struct.mlx4_dev* %64, i32 %65, i32 %66, i32 %68, %struct.res_mtt* %69)
  store i32 %70, i32* %16, align 4
  %71 = load i32, i32* %16, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %63
  br label %111

74:                                               ; preds = %63
  %75 = load %struct.mlx4_dev*, %struct.mlx4_dev** %9, align 8
  %76 = load i32, i32* %10, align 4
  %77 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %11, align 8
  %78 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %12, align 8
  %79 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %13, align 8
  %80 = load %struct.mlx4_cmd_info*, %struct.mlx4_cmd_info** %14, align 8
  %81 = call i32 @mlx4_DMA_wrapper(%struct.mlx4_dev* %75, i32 %76, %struct.mlx4_vhcr* %77, %struct.mlx4_cmd_mailbox* %78, %struct.mlx4_cmd_mailbox* %79, %struct.mlx4_cmd_info* %80)
  store i32 %81, i32* %16, align 4
  %82 = load i32, i32* %16, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %74
  br label %111

85:                                               ; preds = %74
  %86 = load %struct.res_mtt*, %struct.res_mtt** %17, align 8
  %87 = getelementptr inbounds %struct.res_mtt, %struct.res_mtt* %86, i32 0, i32 1
  %88 = call i32 @atomic_dec(i32* %87)
  %89 = load %struct.mlx4_dev*, %struct.mlx4_dev** %9, align 8
  %90 = load i32, i32* %10, align 4
  %91 = load %struct.res_mtt*, %struct.res_mtt** %17, align 8
  %92 = getelementptr inbounds %struct.res_mtt, %struct.res_mtt* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @RES_MTT, align 4
  %96 = call i32 @put_res(%struct.mlx4_dev* %89, i32 %90, i32 %94, i32 %95)
  %97 = load %struct.res_mtt*, %struct.res_mtt** %18, align 8
  %98 = getelementptr inbounds %struct.res_mtt, %struct.res_mtt* %97, i32 0, i32 1
  %99 = call i32 @atomic_inc(i32* %98)
  %100 = load %struct.res_mtt*, %struct.res_mtt** %18, align 8
  %101 = load %struct.res_cq*, %struct.res_cq** %15, align 8
  %102 = getelementptr inbounds %struct.res_cq, %struct.res_cq* %101, i32 0, i32 0
  store %struct.res_mtt* %100, %struct.res_mtt** %102, align 8
  %103 = load %struct.mlx4_dev*, %struct.mlx4_dev** %9, align 8
  %104 = load i32, i32* %10, align 4
  %105 = load %struct.res_mtt*, %struct.res_mtt** %18, align 8
  %106 = getelementptr inbounds %struct.res_mtt, %struct.res_mtt* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @RES_MTT, align 4
  %110 = call i32 @put_res(%struct.mlx4_dev* %103, i32 %104, i32 %108, i32 %109)
  store i32 0, i32* %8, align 4
  br label %130

111:                                              ; preds = %84, %73
  %112 = load %struct.mlx4_dev*, %struct.mlx4_dev** %9, align 8
  %113 = load i32, i32* %10, align 4
  %114 = load %struct.res_mtt*, %struct.res_mtt** %18, align 8
  %115 = getelementptr inbounds %struct.res_mtt, %struct.res_mtt* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @RES_MTT, align 4
  %119 = call i32 @put_res(%struct.mlx4_dev* %112, i32 %113, i32 %117, i32 %118)
  br label %120

120:                                              ; preds = %111, %62, %51
  %121 = load %struct.mlx4_dev*, %struct.mlx4_dev** %9, align 8
  %122 = load i32, i32* %10, align 4
  %123 = load %struct.res_mtt*, %struct.res_mtt** %17, align 8
  %124 = getelementptr inbounds %struct.res_mtt, %struct.res_mtt* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @RES_MTT, align 4
  %128 = call i32 @put_res(%struct.mlx4_dev* %121, i32 %122, i32 %126, i32 %127)
  %129 = load i32, i32* %16, align 4
  store i32 %129, i32* %8, align 4
  br label %130

130:                                              ; preds = %120, %85, %43
  %131 = load i32, i32* %8, align 4
  ret i32 %131
}

declare dso_local i32 @cq_get_mtt_addr(%struct.mlx4_cq_context*) #1

declare dso_local i32 @get_res(%struct.mlx4_dev*, i32, i32, i32, %struct.res_mtt**) #1

declare dso_local i32 @check_mtt_range(%struct.mlx4_dev*, i32, i32, i32, %struct.res_mtt*) #1

declare dso_local i32 @cq_get_mtt_size(%struct.mlx4_cq_context*) #1

declare dso_local i32 @mlx4_DMA_wrapper(%struct.mlx4_dev*, i32, %struct.mlx4_vhcr*, %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_info*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @put_res(%struct.mlx4_dev*, i32, i32, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
