; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_qdio_main.c_qdio_allocate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_qdio_main.c_qdio_allocate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qdio_initialize = type { %struct.TYPE_6__*, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.qdio_irq*, %struct.TYPE_4__ }
%struct.qdio_irq = type { %struct.qdr*, i64, i32 }
%struct.qdr = type { i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"qallocate:%4x\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@QDIO_MAX_QUEUES_PER_IRQ = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@QDIO_IRQ_STATE_INACTIVE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qdio_allocate(%struct.qdio_initialize* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qdio_initialize*, align 8
  %4 = alloca %struct.qdio_irq*, align 8
  store %struct.qdio_initialize* %0, %struct.qdio_initialize** %3, align 8
  %5 = load %struct.qdio_initialize*, %struct.qdio_initialize** %3, align 8
  %6 = getelementptr inbounds %struct.qdio_initialize, %struct.qdio_initialize* %5, i32 0, i32 0
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @DBF_EVENT(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load %struct.qdio_initialize*, %struct.qdio_initialize** %3, align 8
  %15 = getelementptr inbounds %struct.qdio_initialize, %struct.qdio_initialize* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %1
  %19 = load %struct.qdio_initialize*, %struct.qdio_initialize** %3, align 8
  %20 = getelementptr inbounds %struct.qdio_initialize, %struct.qdio_initialize* %19, i32 0, i32 6
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %18, %1
  %24 = load %struct.qdio_initialize*, %struct.qdio_initialize** %3, align 8
  %25 = getelementptr inbounds %struct.qdio_initialize, %struct.qdio_initialize* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %23
  %29 = load %struct.qdio_initialize*, %struct.qdio_initialize** %3, align 8
  %30 = getelementptr inbounds %struct.qdio_initialize, %struct.qdio_initialize* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %28, %18
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %137

36:                                               ; preds = %28, %23
  %37 = load %struct.qdio_initialize*, %struct.qdio_initialize** %3, align 8
  %38 = getelementptr inbounds %struct.qdio_initialize, %struct.qdio_initialize* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @QDIO_MAX_QUEUES_PER_IRQ, align 4
  %41 = icmp sgt i32 %39, %40
  br i1 %41, label %48, label %42

42:                                               ; preds = %36
  %43 = load %struct.qdio_initialize*, %struct.qdio_initialize** %3, align 8
  %44 = getelementptr inbounds %struct.qdio_initialize, %struct.qdio_initialize* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @QDIO_MAX_QUEUES_PER_IRQ, align 4
  %47 = icmp sgt i32 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %42, %36
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %137

51:                                               ; preds = %42
  %52 = load %struct.qdio_initialize*, %struct.qdio_initialize** %3, align 8
  %53 = getelementptr inbounds %struct.qdio_initialize, %struct.qdio_initialize* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %51
  %57 = load %struct.qdio_initialize*, %struct.qdio_initialize** %3, align 8
  %58 = getelementptr inbounds %struct.qdio_initialize, %struct.qdio_initialize* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %56, %51
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %2, align 4
  br label %137

64:                                               ; preds = %56
  %65 = load i32, i32* @GFP_KERNEL, align 4
  %66 = load i32, i32* @GFP_DMA, align 4
  %67 = or i32 %65, %66
  %68 = call i64 @get_zeroed_page(i32 %67)
  %69 = inttoptr i64 %68 to i8*
  %70 = bitcast i8* %69 to %struct.qdio_irq*
  store %struct.qdio_irq* %70, %struct.qdio_irq** %4, align 8
  %71 = load %struct.qdio_irq*, %struct.qdio_irq** %4, align 8
  %72 = icmp ne %struct.qdio_irq* %71, null
  br i1 %72, label %74, label %73

73:                                               ; preds = %64
  br label %134

74:                                               ; preds = %64
  %75 = load %struct.qdio_irq*, %struct.qdio_irq** %4, align 8
  %76 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %75, i32 0, i32 2
  %77 = call i32 @mutex_init(i32* %76)
  %78 = load %struct.qdio_initialize*, %struct.qdio_initialize** %3, align 8
  %79 = load %struct.qdio_irq*, %struct.qdio_irq** %4, align 8
  %80 = call i32 @qdio_allocate_dbf(%struct.qdio_initialize* %78, %struct.qdio_irq* %79)
  %81 = load i32, i32* @GFP_KERNEL, align 4
  %82 = call i64 @get_zeroed_page(i32 %81)
  %83 = load %struct.qdio_irq*, %struct.qdio_irq** %4, align 8
  %84 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %83, i32 0, i32 1
  store i64 %82, i64* %84, align 8
  %85 = load %struct.qdio_irq*, %struct.qdio_irq** %4, align 8
  %86 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %74
  br label %131

90:                                               ; preds = %74
  %91 = load i32, i32* @GFP_KERNEL, align 4
  %92 = load i32, i32* @GFP_DMA, align 4
  %93 = or i32 %91, %92
  %94 = call i64 @get_zeroed_page(i32 %93)
  %95 = inttoptr i64 %94 to %struct.qdr*
  %96 = load %struct.qdio_irq*, %struct.qdio_irq** %4, align 8
  %97 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %96, i32 0, i32 0
  store %struct.qdr* %95, %struct.qdr** %97, align 8
  %98 = load %struct.qdio_irq*, %struct.qdio_irq** %4, align 8
  %99 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %98, i32 0, i32 0
  %100 = load %struct.qdr*, %struct.qdr** %99, align 8
  %101 = icmp ne %struct.qdr* %100, null
  br i1 %101, label %103, label %102

102:                                              ; preds = %90
  br label %131

103:                                              ; preds = %90
  %104 = load %struct.qdio_irq*, %struct.qdio_irq** %4, align 8
  %105 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %104, i32 0, i32 0
  %106 = load %struct.qdr*, %struct.qdr** %105, align 8
  %107 = ptrtoint %struct.qdr* %106 to i64
  %108 = and i64 %107, 4095
  %109 = call i32 @WARN_ON(i64 %108)
  %110 = load %struct.qdio_irq*, %struct.qdio_irq** %4, align 8
  %111 = load %struct.qdio_initialize*, %struct.qdio_initialize** %3, align 8
  %112 = getelementptr inbounds %struct.qdio_initialize, %struct.qdio_initialize* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.qdio_initialize*, %struct.qdio_initialize** %3, align 8
  %115 = getelementptr inbounds %struct.qdio_initialize, %struct.qdio_initialize* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = call i64 @qdio_allocate_qs(%struct.qdio_irq* %110, i32 %113, i32 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %103
  br label %131

120:                                              ; preds = %103
  %121 = load %struct.qdio_irq*, %struct.qdio_irq** %4, align 8
  %122 = load %struct.qdio_initialize*, %struct.qdio_initialize** %3, align 8
  %123 = getelementptr inbounds %struct.qdio_initialize, %struct.qdio_initialize* %122, i32 0, i32 0
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 0
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 0
  store %struct.qdio_irq* %121, %struct.qdio_irq** %127, align 8
  %128 = load %struct.qdio_irq*, %struct.qdio_irq** %4, align 8
  %129 = load i32, i32* @QDIO_IRQ_STATE_INACTIVE, align 4
  %130 = call i32 @qdio_set_state(%struct.qdio_irq* %128, i32 %129)
  store i32 0, i32* %2, align 4
  br label %137

131:                                              ; preds = %119, %102, %89
  %132 = load %struct.qdio_irq*, %struct.qdio_irq** %4, align 8
  %133 = call i32 @qdio_release_memory(%struct.qdio_irq* %132)
  br label %134

134:                                              ; preds = %131, %73
  %135 = load i32, i32* @ENOMEM, align 4
  %136 = sub nsw i32 0, %135
  store i32 %136, i32* %2, align 4
  br label %137

137:                                              ; preds = %134, %120, %61, %48, %33
  %138 = load i32, i32* %2, align 4
  ret i32 %138
}

declare dso_local i32 @DBF_EVENT(i8*, i32) #1

declare dso_local i64 @get_zeroed_page(i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @qdio_allocate_dbf(%struct.qdio_initialize*, %struct.qdio_irq*) #1

declare dso_local i32 @WARN_ON(i64) #1

declare dso_local i64 @qdio_allocate_qs(%struct.qdio_irq*, i32, i32) #1

declare dso_local i32 @qdio_set_state(%struct.qdio_irq*, i32) #1

declare dso_local i32 @qdio_release_memory(%struct.qdio_irq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
