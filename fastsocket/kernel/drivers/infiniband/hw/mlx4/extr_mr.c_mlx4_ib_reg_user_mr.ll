; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mlx4/extr_mr.c_mlx4_ib_reg_user_mr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mlx4/extr_mr.c_mlx4_ib_reg_user_mr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mr = type { i32, i32 }
%struct.ib_pd = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%struct.ib_udata = type { i32 }
%struct.mlx4_ib_dev = type { i32 }
%struct.mlx4_ib_mr = type { %struct.TYPE_15__*, %struct.TYPE_14__, %struct.ib_mr }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ib_mr* @mlx4_ib_reg_user_mr(%struct.ib_pd* %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.ib_udata* %5) #0 {
  %7 = alloca %struct.ib_mr*, align 8
  %8 = alloca %struct.ib_pd*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ib_udata*, align 8
  %14 = alloca %struct.mlx4_ib_dev*, align 8
  %15 = alloca %struct.mlx4_ib_mr*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.ib_pd* %0, %struct.ib_pd** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.ib_udata* %5, %struct.ib_udata** %13, align 8
  %19 = load %struct.ib_pd*, %struct.ib_pd** %8, align 8
  %20 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call %struct.mlx4_ib_dev* @to_mdev(i32 %21)
  store %struct.mlx4_ib_dev* %22, %struct.mlx4_ib_dev** %14, align 8
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.mlx4_ib_mr* @kmalloc(i32 24, i32 %23)
  store %struct.mlx4_ib_mr* %24, %struct.mlx4_ib_mr** %15, align 8
  %25 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %15, align 8
  %26 = icmp ne %struct.mlx4_ib_mr* %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %6
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  %30 = call %struct.ib_mr* @ERR_PTR(i32 %29)
  store %struct.ib_mr* %30, %struct.ib_mr** %7, align 8
  br label %138

31:                                               ; preds = %6
  %32 = load %struct.ib_pd*, %struct.ib_pd** %8, align 8
  %33 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %32, i32 0, i32 1
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* %12, align 4
  %40 = call %struct.TYPE_15__* @ib_umem_get(i32 %36, i32 %37, i32 %38, i32 %39, i32 0)
  %41 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %15, align 8
  %42 = getelementptr inbounds %struct.mlx4_ib_mr, %struct.mlx4_ib_mr* %41, i32 0, i32 0
  store %struct.TYPE_15__* %40, %struct.TYPE_15__** %42, align 8
  %43 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %15, align 8
  %44 = getelementptr inbounds %struct.mlx4_ib_mr, %struct.mlx4_ib_mr* %43, i32 0, i32 0
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %44, align 8
  %46 = call i64 @IS_ERR(%struct.TYPE_15__* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %31
  %49 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %15, align 8
  %50 = getelementptr inbounds %struct.mlx4_ib_mr, %struct.mlx4_ib_mr* %49, i32 0, i32 0
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %50, align 8
  %52 = call i32 @PTR_ERR(%struct.TYPE_15__* %51)
  store i32 %52, i32* %17, align 4
  br label %133

53:                                               ; preds = %31
  %54 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %15, align 8
  %55 = getelementptr inbounds %struct.mlx4_ib_mr, %struct.mlx4_ib_mr* %54, i32 0, i32 0
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %55, align 8
  %57 = call i32 @ib_umem_page_count(%struct.TYPE_15__* %56)
  store i32 %57, i32* %18, align 4
  %58 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %15, align 8
  %59 = getelementptr inbounds %struct.mlx4_ib_mr, %struct.mlx4_ib_mr* %58, i32 0, i32 0
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @ilog2(i32 %62)
  store i32 %63, i32* %16, align 4
  %64 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %14, align 8
  %65 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.ib_pd*, %struct.ib_pd** %8, align 8
  %68 = call %struct.TYPE_13__* @to_mpd(%struct.ib_pd* %67)
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %11, align 4
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* %12, align 4
  %74 = call i32 @convert_access(i32 %73)
  %75 = load i32, i32* %18, align 4
  %76 = load i32, i32* %16, align 4
  %77 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %15, align 8
  %78 = getelementptr inbounds %struct.mlx4_ib_mr, %struct.mlx4_ib_mr* %77, i32 0, i32 1
  %79 = call i32 @mlx4_mr_alloc(i32 %66, i32 %70, i32 %71, i32 %72, i32 %74, i32 %75, i32 %76, %struct.TYPE_14__* %78)
  store i32 %79, i32* %17, align 4
  %80 = load i32, i32* %17, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %53
  br label %128

83:                                               ; preds = %53
  %84 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %14, align 8
  %85 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %15, align 8
  %86 = getelementptr inbounds %struct.mlx4_ib_mr, %struct.mlx4_ib_mr* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 1
  %88 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %15, align 8
  %89 = getelementptr inbounds %struct.mlx4_ib_mr, %struct.mlx4_ib_mr* %88, i32 0, i32 0
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %89, align 8
  %91 = call i32 @mlx4_ib_umem_write_mtt(%struct.mlx4_ib_dev* %84, i32* %87, %struct.TYPE_15__* %90)
  store i32 %91, i32* %17, align 4
  %92 = load i32, i32* %17, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %83
  br label %118

95:                                               ; preds = %83
  %96 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %14, align 8
  %97 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %15, align 8
  %100 = getelementptr inbounds %struct.mlx4_ib_mr, %struct.mlx4_ib_mr* %99, i32 0, i32 1
  %101 = call i32 @mlx4_mr_enable(i32 %98, %struct.TYPE_14__* %100)
  store i32 %101, i32* %17, align 4
  %102 = load i32, i32* %17, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %95
  br label %118

105:                                              ; preds = %95
  %106 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %15, align 8
  %107 = getelementptr inbounds %struct.mlx4_ib_mr, %struct.mlx4_ib_mr* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %15, align 8
  %111 = getelementptr inbounds %struct.mlx4_ib_mr, %struct.mlx4_ib_mr* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %111, i32 0, i32 0
  store i32 %109, i32* %112, align 8
  %113 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %15, align 8
  %114 = getelementptr inbounds %struct.mlx4_ib_mr, %struct.mlx4_ib_mr* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %114, i32 0, i32 1
  store i32 %109, i32* %115, align 4
  %116 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %15, align 8
  %117 = getelementptr inbounds %struct.mlx4_ib_mr, %struct.mlx4_ib_mr* %116, i32 0, i32 2
  store %struct.ib_mr* %117, %struct.ib_mr** %7, align 8
  br label %138

118:                                              ; preds = %104, %94
  %119 = load %struct.ib_pd*, %struct.ib_pd** %8, align 8
  %120 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = call %struct.mlx4_ib_dev* @to_mdev(i32 %121)
  %123 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %15, align 8
  %126 = getelementptr inbounds %struct.mlx4_ib_mr, %struct.mlx4_ib_mr* %125, i32 0, i32 1
  %127 = call i32 @mlx4_mr_free(i32 %124, %struct.TYPE_14__* %126)
  br label %128

128:                                              ; preds = %118, %82
  %129 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %15, align 8
  %130 = getelementptr inbounds %struct.mlx4_ib_mr, %struct.mlx4_ib_mr* %129, i32 0, i32 0
  %131 = load %struct.TYPE_15__*, %struct.TYPE_15__** %130, align 8
  %132 = call i32 @ib_umem_release(%struct.TYPE_15__* %131)
  br label %133

133:                                              ; preds = %128, %48
  %134 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %15, align 8
  %135 = call i32 @kfree(%struct.mlx4_ib_mr* %134)
  %136 = load i32, i32* %17, align 4
  %137 = call %struct.ib_mr* @ERR_PTR(i32 %136)
  store %struct.ib_mr* %137, %struct.ib_mr** %7, align 8
  br label %138

138:                                              ; preds = %133, %105, %27
  %139 = load %struct.ib_mr*, %struct.ib_mr** %7, align 8
  ret %struct.ib_mr* %139
}

declare dso_local %struct.mlx4_ib_dev* @to_mdev(i32) #1

declare dso_local %struct.mlx4_ib_mr* @kmalloc(i32, i32) #1

declare dso_local %struct.ib_mr* @ERR_PTR(i32) #1

declare dso_local %struct.TYPE_15__* @ib_umem_get(i32, i32, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_15__*) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_15__*) #1

declare dso_local i32 @ib_umem_page_count(%struct.TYPE_15__*) #1

declare dso_local i32 @ilog2(i32) #1

declare dso_local i32 @mlx4_mr_alloc(i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_14__*) #1

declare dso_local %struct.TYPE_13__* @to_mpd(%struct.ib_pd*) #1

declare dso_local i32 @convert_access(i32) #1

declare dso_local i32 @mlx4_ib_umem_write_mtt(%struct.mlx4_ib_dev*, i32*, %struct.TYPE_15__*) #1

declare dso_local i32 @mlx4_mr_enable(i32, %struct.TYPE_14__*) #1

declare dso_local i32 @mlx4_mr_free(i32, %struct.TYPE_14__*) #1

declare dso_local i32 @ib_umem_release(%struct.TYPE_15__*) #1

declare dso_local i32 @kfree(%struct.mlx4_ib_mr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
