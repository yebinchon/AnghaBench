; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb4/extr_cxgb4_main.c_cxgb_up.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb4/extr_cxgb4_main.c_cxgb_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, i32, %struct.TYPE_6__**, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }

@USING_MSIX = common dso_local global i32 0, align 4
@t4_nondata_intr = common dso_local global i32 0, align 4
@USING_MSI = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@FULL_INIT_DONE = common dso_local global i32 0, align 4
@CXGB4_STATE_UP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"request_irq failed, err %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*)* @cxgb_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxgb_up(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %4 = load %struct.adapter*, %struct.adapter** %2, align 8
  %5 = call i32 @setup_sge_queues(%struct.adapter* %4)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %105

9:                                                ; preds = %1
  %10 = load %struct.adapter*, %struct.adapter** %2, align 8
  %11 = call i32 @setup_rss(%struct.adapter* %10)
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  br label %113

15:                                               ; preds = %9
  %16 = load %struct.adapter*, %struct.adapter** %2, align 8
  %17 = getelementptr inbounds %struct.adapter, %struct.adapter* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @USING_MSIX, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %58

22:                                               ; preds = %15
  %23 = load %struct.adapter*, %struct.adapter** %2, align 8
  %24 = call i32 @name_msix_vecs(%struct.adapter* %23)
  %25 = load %struct.adapter*, %struct.adapter** %2, align 8
  %26 = getelementptr inbounds %struct.adapter, %struct.adapter* %25, i32 0, i32 4
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i64 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @t4_nondata_intr, align 4
  %32 = load %struct.adapter*, %struct.adapter** %2, align 8
  %33 = getelementptr inbounds %struct.adapter, %struct.adapter* %32, i32 0, i32 4
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i64 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.adapter*, %struct.adapter** %2, align 8
  %39 = call i32 @request_irq(i32 %30, i32 %31, i32 0, i32 %37, %struct.adapter* %38)
  store i32 %39, i32* %3, align 4
  %40 = load i32, i32* %3, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %22
  br label %107

43:                                               ; preds = %22
  %44 = load %struct.adapter*, %struct.adapter** %2, align 8
  %45 = call i32 @request_msix_queue_irqs(%struct.adapter* %44)
  store i32 %45, i32* %3, align 4
  %46 = load i32, i32* %3, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %43
  %49 = load %struct.adapter*, %struct.adapter** %2, align 8
  %50 = getelementptr inbounds %struct.adapter, %struct.adapter* %49, i32 0, i32 4
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i64 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.adapter*, %struct.adapter** %2, align 8
  %56 = call i32 @free_irq(i32 %54, %struct.adapter* %55)
  br label %107

57:                                               ; preds = %43
  br label %90

58:                                               ; preds = %15
  %59 = load %struct.adapter*, %struct.adapter** %2, align 8
  %60 = getelementptr inbounds %struct.adapter, %struct.adapter* %59, i32 0, i32 3
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.adapter*, %struct.adapter** %2, align 8
  %65 = call i32 @t4_intr_handler(%struct.adapter* %64)
  %66 = load %struct.adapter*, %struct.adapter** %2, align 8
  %67 = getelementptr inbounds %struct.adapter, %struct.adapter* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @USING_MSI, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %58
  br label %75

73:                                               ; preds = %58
  %74 = load i32, i32* @IRQF_SHARED, align 4
  br label %75

75:                                               ; preds = %73, %72
  %76 = phi i32 [ 0, %72 ], [ %74, %73 ]
  %77 = load %struct.adapter*, %struct.adapter** %2, align 8
  %78 = getelementptr inbounds %struct.adapter, %struct.adapter* %77, i32 0, i32 2
  %79 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %79, i64 0
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.adapter*, %struct.adapter** %2, align 8
  %85 = call i32 @request_irq(i32 %63, i32 %65, i32 %76, i32 %83, %struct.adapter* %84)
  store i32 %85, i32* %3, align 4
  %86 = load i32, i32* %3, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %75
  br label %107

89:                                               ; preds = %75
  br label %90

90:                                               ; preds = %89, %57
  %91 = load %struct.adapter*, %struct.adapter** %2, align 8
  %92 = call i32 @enable_rx(%struct.adapter* %91)
  %93 = load %struct.adapter*, %struct.adapter** %2, align 8
  %94 = call i32 @t4_sge_start(%struct.adapter* %93)
  %95 = load %struct.adapter*, %struct.adapter** %2, align 8
  %96 = call i32 @t4_intr_enable(%struct.adapter* %95)
  %97 = load i32, i32* @FULL_INIT_DONE, align 4
  %98 = load %struct.adapter*, %struct.adapter** %2, align 8
  %99 = getelementptr inbounds %struct.adapter, %struct.adapter* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = or i32 %100, %97
  store i32 %101, i32* %99, align 8
  %102 = load %struct.adapter*, %struct.adapter** %2, align 8
  %103 = load i32, i32* @CXGB4_STATE_UP, align 4
  %104 = call i32 @notify_ulds(%struct.adapter* %102, i32 %103)
  br label %105

105:                                              ; preds = %113, %90, %8
  %106 = load i32, i32* %3, align 4
  ret i32 %106

107:                                              ; preds = %88, %48, %42
  %108 = load %struct.adapter*, %struct.adapter** %2, align 8
  %109 = getelementptr inbounds %struct.adapter, %struct.adapter* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* %3, align 4
  %112 = call i32 @dev_err(i32 %110, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %111)
  br label %113

113:                                              ; preds = %107, %14
  %114 = load %struct.adapter*, %struct.adapter** %2, align 8
  %115 = call i32 @t4_free_sge_resources(%struct.adapter* %114)
  br label %105
}

declare dso_local i32 @setup_sge_queues(%struct.adapter*) #1

declare dso_local i32 @setup_rss(%struct.adapter*) #1

declare dso_local i32 @name_msix_vecs(%struct.adapter*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.adapter*) #1

declare dso_local i32 @request_msix_queue_irqs(%struct.adapter*) #1

declare dso_local i32 @free_irq(i32, %struct.adapter*) #1

declare dso_local i32 @t4_intr_handler(%struct.adapter*) #1

declare dso_local i32 @enable_rx(%struct.adapter*) #1

declare dso_local i32 @t4_sge_start(%struct.adapter*) #1

declare dso_local i32 @t4_intr_enable(%struct.adapter*) #1

declare dso_local i32 @notify_ulds(%struct.adapter*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @t4_free_sge_resources(%struct.adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
