; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mlx4/extr_mad.c_mlx4_ib_alloc_demux_ctx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mlx4/extr_mad.c_mlx4_ib_alloc_demux_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_ib_dev = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.mlx4_ib_demux_ctx = type { i32, i32*, i32*, i8*, i32*, %struct.mlx4_ib_dev* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Failed initializing mcg para-virt (%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"mlx4_ibt%d\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"Failed to create tunnelling WQ for port %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"mlx4_ibud%d\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"Failed to create up/down WQ for port %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_ib_dev*, %struct.mlx4_ib_demux_ctx*, i32)* @mlx4_ib_alloc_demux_ctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_ib_alloc_demux_ctx(%struct.mlx4_ib_dev* %0, %struct.mlx4_ib_demux_ctx* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx4_ib_dev*, align 8
  %6 = alloca %struct.mlx4_ib_demux_ctx*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [12 x i8], align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mlx4_ib_dev* %0, %struct.mlx4_ib_dev** %5, align 8
  store %struct.mlx4_ib_demux_ctx* %1, %struct.mlx4_ib_demux_ctx** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %11 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %5, align 8
  %12 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call i32* @kcalloc(i32 %16, i32 8, i32 %17)
  %19 = load %struct.mlx4_ib_demux_ctx*, %struct.mlx4_ib_demux_ctx** %6, align 8
  %20 = getelementptr inbounds %struct.mlx4_ib_demux_ctx, %struct.mlx4_ib_demux_ctx* %19, i32 0, i32 1
  store i32* %18, i32** %20, align 8
  %21 = load %struct.mlx4_ib_demux_ctx*, %struct.mlx4_ib_demux_ctx** %6, align 8
  %22 = getelementptr inbounds %struct.mlx4_ib_demux_ctx, %struct.mlx4_ib_demux_ctx* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %3
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %148

28:                                               ; preds = %3
  %29 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %5, align 8
  %30 = load %struct.mlx4_ib_demux_ctx*, %struct.mlx4_ib_demux_ctx** %6, align 8
  %31 = getelementptr inbounds %struct.mlx4_ib_demux_ctx, %struct.mlx4_ib_demux_ctx* %30, i32 0, i32 5
  store %struct.mlx4_ib_dev* %29, %struct.mlx4_ib_dev** %31, align 8
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.mlx4_ib_demux_ctx*, %struct.mlx4_ib_demux_ctx** %6, align 8
  %34 = getelementptr inbounds %struct.mlx4_ib_demux_ctx, %struct.mlx4_ib_demux_ctx* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %5, align 8
  %36 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %35, i32 0, i32 1
  %37 = load %struct.mlx4_ib_demux_ctx*, %struct.mlx4_ib_demux_ctx** %6, align 8
  %38 = getelementptr inbounds %struct.mlx4_ib_demux_ctx, %struct.mlx4_ib_demux_ctx* %37, i32 0, i32 4
  store i32* %36, i32** %38, align 8
  store i32 0, i32* %10, align 4
  br label %39

39:                                               ; preds = %65, %28
  %40 = load i32, i32* %10, align 4
  %41 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %5, align 8
  %42 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp slt i32 %40, %46
  br i1 %47, label %48, label %68

48:                                               ; preds = %39
  %49 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %5, align 8
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* %7, align 4
  %52 = load %struct.mlx4_ib_demux_ctx*, %struct.mlx4_ib_demux_ctx** %6, align 8
  %53 = getelementptr inbounds %struct.mlx4_ib_demux_ctx, %struct.mlx4_ib_demux_ctx* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %10, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = call i32 @alloc_pv_object(%struct.mlx4_ib_dev* %49, i32 %50, i32 %51, i32* %57)
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %9, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %48
  %62 = load i32, i32* @ENOMEM, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %9, align 4
  br label %122

64:                                               ; preds = %48
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %10, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %10, align 4
  br label %39

68:                                               ; preds = %39
  %69 = load %struct.mlx4_ib_demux_ctx*, %struct.mlx4_ib_demux_ctx** %6, align 8
  %70 = call i32 @mlx4_ib_mcg_port_init(%struct.mlx4_ib_demux_ctx* %69)
  store i32 %70, i32* %9, align 4
  %71 = load i32, i32* %9, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %68
  %74 = load i32, i32* %9, align 4
  %75 = call i32 @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %74)
  br label %122

76:                                               ; preds = %68
  %77 = getelementptr inbounds [12 x i8], [12 x i8]* %8, i64 0, i64 0
  %78 = load i32, i32* %7, align 4
  %79 = call i32 @snprintf(i8* %77, i32 12, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %78)
  %80 = getelementptr inbounds [12 x i8], [12 x i8]* %8, i64 0, i64 0
  %81 = call i8* @create_singlethread_workqueue(i8* %80)
  %82 = bitcast i8* %81 to i32*
  %83 = load %struct.mlx4_ib_demux_ctx*, %struct.mlx4_ib_demux_ctx** %6, align 8
  %84 = getelementptr inbounds %struct.mlx4_ib_demux_ctx, %struct.mlx4_ib_demux_ctx* %83, i32 0, i32 2
  store i32* %82, i32** %84, align 8
  %85 = load %struct.mlx4_ib_demux_ctx*, %struct.mlx4_ib_demux_ctx** %6, align 8
  %86 = getelementptr inbounds %struct.mlx4_ib_demux_ctx, %struct.mlx4_ib_demux_ctx* %85, i32 0, i32 2
  %87 = load i32*, i32** %86, align 8
  %88 = icmp ne i32* %87, null
  br i1 %88, label %94, label %89

89:                                               ; preds = %76
  %90 = load i32, i32* %7, align 4
  %91 = call i32 @pr_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %90)
  %92 = load i32, i32* @ENOMEM, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %9, align 4
  br label %119

94:                                               ; preds = %76
  %95 = getelementptr inbounds [12 x i8], [12 x i8]* %8, i64 0, i64 0
  %96 = load i32, i32* %7, align 4
  %97 = call i32 @snprintf(i8* %95, i32 12, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %96)
  %98 = getelementptr inbounds [12 x i8], [12 x i8]* %8, i64 0, i64 0
  %99 = call i8* @create_singlethread_workqueue(i8* %98)
  %100 = load %struct.mlx4_ib_demux_ctx*, %struct.mlx4_ib_demux_ctx** %6, align 8
  %101 = getelementptr inbounds %struct.mlx4_ib_demux_ctx, %struct.mlx4_ib_demux_ctx* %100, i32 0, i32 3
  store i8* %99, i8** %101, align 8
  %102 = load %struct.mlx4_ib_demux_ctx*, %struct.mlx4_ib_demux_ctx** %6, align 8
  %103 = getelementptr inbounds %struct.mlx4_ib_demux_ctx, %struct.mlx4_ib_demux_ctx* %102, i32 0, i32 3
  %104 = load i8*, i8** %103, align 8
  %105 = icmp ne i8* %104, null
  br i1 %105, label %111, label %106

106:                                              ; preds = %94
  %107 = load i32, i32* %7, align 4
  %108 = call i32 @pr_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i32 %107)
  %109 = load i32, i32* @ENOMEM, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %9, align 4
  br label %112

111:                                              ; preds = %94
  store i32 0, i32* %4, align 4
  br label %148

112:                                              ; preds = %106
  %113 = load %struct.mlx4_ib_demux_ctx*, %struct.mlx4_ib_demux_ctx** %6, align 8
  %114 = getelementptr inbounds %struct.mlx4_ib_demux_ctx, %struct.mlx4_ib_demux_ctx* %113, i32 0, i32 2
  %115 = load i32*, i32** %114, align 8
  %116 = call i32 @destroy_workqueue(i32* %115)
  %117 = load %struct.mlx4_ib_demux_ctx*, %struct.mlx4_ib_demux_ctx** %6, align 8
  %118 = getelementptr inbounds %struct.mlx4_ib_demux_ctx, %struct.mlx4_ib_demux_ctx* %117, i32 0, i32 2
  store i32* null, i32** %118, align 8
  br label %119

119:                                              ; preds = %112, %89
  %120 = load %struct.mlx4_ib_demux_ctx*, %struct.mlx4_ib_demux_ctx** %6, align 8
  %121 = call i32 @mlx4_ib_mcg_port_cleanup(%struct.mlx4_ib_demux_ctx* %120, i32 1)
  br label %122

122:                                              ; preds = %119, %73, %61
  store i32 0, i32* %10, align 4
  br label %123

123:                                              ; preds = %137, %122
  %124 = load i32, i32* %10, align 4
  %125 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %5, align 8
  %126 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %125, i32 0, i32 0
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = icmp slt i32 %124, %130
  br i1 %131, label %132, label %140

132:                                              ; preds = %123
  %133 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %5, align 8
  %134 = load i32, i32* %10, align 4
  %135 = load i32, i32* %7, align 4
  %136 = call i32 @free_pv_object(%struct.mlx4_ib_dev* %133, i32 %134, i32 %135)
  br label %137

137:                                              ; preds = %132
  %138 = load i32, i32* %10, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %10, align 4
  br label %123

140:                                              ; preds = %123
  %141 = load %struct.mlx4_ib_demux_ctx*, %struct.mlx4_ib_demux_ctx** %6, align 8
  %142 = getelementptr inbounds %struct.mlx4_ib_demux_ctx, %struct.mlx4_ib_demux_ctx* %141, i32 0, i32 1
  %143 = load i32*, i32** %142, align 8
  %144 = call i32 @kfree(i32* %143)
  %145 = load %struct.mlx4_ib_demux_ctx*, %struct.mlx4_ib_demux_ctx** %6, align 8
  %146 = getelementptr inbounds %struct.mlx4_ib_demux_ctx, %struct.mlx4_ib_demux_ctx* %145, i32 0, i32 1
  store i32* null, i32** %146, align 8
  %147 = load i32, i32* %9, align 4
  store i32 %147, i32* %4, align 4
  br label %148

148:                                              ; preds = %140, %111, %25
  %149 = load i32, i32* %4, align 4
  ret i32 %149
}

declare dso_local i32* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @alloc_pv_object(%struct.mlx4_ib_dev*, i32, i32, i32*) #1

declare dso_local i32 @mlx4_ib_mcg_port_init(%struct.mlx4_ib_demux_ctx*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i8* @create_singlethread_workqueue(i8*) #1

declare dso_local i32 @destroy_workqueue(i32*) #1

declare dso_local i32 @mlx4_ib_mcg_port_cleanup(%struct.mlx4_ib_demux_ctx*, i32) #1

declare dso_local i32 @free_pv_object(%struct.mlx4_ib_dev*, i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
