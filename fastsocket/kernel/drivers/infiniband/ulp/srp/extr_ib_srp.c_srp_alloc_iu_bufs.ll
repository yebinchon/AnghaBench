; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/srp/extr_ib_srp.c_srp_alloc_iu_bufs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/srp/extr_ib_srp.c_srp_alloc_iu_bufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.srp_target_port = type { %struct.TYPE_2__**, i32, %struct.TYPE_2__**, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@SRP_RQ_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@SRP_SQ_SIZE = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.srp_target_port*)* @srp_alloc_iu_bufs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @srp_alloc_iu_bufs(%struct.srp_target_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.srp_target_port*, align 8
  %4 = alloca i32, align 4
  store %struct.srp_target_port* %0, %struct.srp_target_port** %3, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %36, %1
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @SRP_RQ_SIZE, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %39

9:                                                ; preds = %5
  %10 = load %struct.srp_target_port*, %struct.srp_target_port** %3, align 8
  %11 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.srp_target_port*, %struct.srp_target_port** %3, align 8
  %14 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %18 = call i8* @srp_alloc_iu(i32 %12, i32 %15, i32 %16, i32 %17)
  %19 = bitcast i8* %18 to %struct.TYPE_2__*
  %20 = load %struct.srp_target_port*, %struct.srp_target_port** %3, align 8
  %21 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %20, i32 0, i32 2
  %22 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %22, i64 %24
  store %struct.TYPE_2__* %19, %struct.TYPE_2__** %25, align 8
  %26 = load %struct.srp_target_port*, %struct.srp_target_port** %3, align 8
  %27 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %26, i32 0, i32 2
  %28 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %27, align 8
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %28, i64 %30
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = icmp ne %struct.TYPE_2__* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %9
  br label %86

35:                                               ; preds = %9
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %4, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %4, align 4
  br label %5

39:                                               ; preds = %5
  store i32 0, i32* %4, align 4
  br label %40

40:                                               ; preds = %82, %39
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @SRP_SQ_SIZE, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %85

44:                                               ; preds = %40
  %45 = load %struct.srp_target_port*, %struct.srp_target_port** %3, align 8
  %46 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.srp_target_port*, %struct.srp_target_port** %3, align 8
  %49 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @GFP_KERNEL, align 4
  %52 = load i32, i32* @DMA_TO_DEVICE, align 4
  %53 = call i8* @srp_alloc_iu(i32 %47, i32 %50, i32 %51, i32 %52)
  %54 = bitcast i8* %53 to %struct.TYPE_2__*
  %55 = load %struct.srp_target_port*, %struct.srp_target_port** %3, align 8
  %56 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %56, align 8
  %58 = load i32, i32* %4, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %57, i64 %59
  store %struct.TYPE_2__* %54, %struct.TYPE_2__** %60, align 8
  %61 = load %struct.srp_target_port*, %struct.srp_target_port** %3, align 8
  %62 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %61, i32 0, i32 0
  %63 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %62, align 8
  %64 = load i32, i32* %4, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %63, i64 %65
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = icmp ne %struct.TYPE_2__* %67, null
  br i1 %68, label %70, label %69

69:                                               ; preds = %44
  br label %86

70:                                               ; preds = %44
  %71 = load %struct.srp_target_port*, %struct.srp_target_port** %3, align 8
  %72 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %71, i32 0, i32 0
  %73 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %72, align 8
  %74 = load i32, i32* %4, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %73, i64 %75
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load %struct.srp_target_port*, %struct.srp_target_port** %3, align 8
  %80 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %79, i32 0, i32 3
  %81 = call i32 @list_add(i32* %78, i32* %80)
  br label %82

82:                                               ; preds = %70
  %83 = load i32, i32* %4, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %4, align 4
  br label %40

85:                                               ; preds = %40
  store i32 0, i32* %2, align 4
  br label %141

86:                                               ; preds = %69, %34
  store i32 0, i32* %4, align 4
  br label %87

87:                                               ; preds = %109, %86
  %88 = load i32, i32* %4, align 4
  %89 = load i32, i32* @SRP_RQ_SIZE, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %112

91:                                               ; preds = %87
  %92 = load %struct.srp_target_port*, %struct.srp_target_port** %3, align 8
  %93 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.srp_target_port*, %struct.srp_target_port** %3, align 8
  %96 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %95, i32 0, i32 2
  %97 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %96, align 8
  %98 = load i32, i32* %4, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %97, i64 %99
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %100, align 8
  %102 = call i32 @srp_free_iu(i32 %94, %struct.TYPE_2__* %101)
  %103 = load %struct.srp_target_port*, %struct.srp_target_port** %3, align 8
  %104 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %103, i32 0, i32 2
  %105 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %104, align 8
  %106 = load i32, i32* %4, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %105, i64 %107
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %108, align 8
  br label %109

109:                                              ; preds = %91
  %110 = load i32, i32* %4, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %4, align 4
  br label %87

112:                                              ; preds = %87
  store i32 0, i32* %4, align 4
  br label %113

113:                                              ; preds = %135, %112
  %114 = load i32, i32* %4, align 4
  %115 = load i32, i32* @SRP_SQ_SIZE, align 4
  %116 = icmp slt i32 %114, %115
  br i1 %116, label %117, label %138

117:                                              ; preds = %113
  %118 = load %struct.srp_target_port*, %struct.srp_target_port** %3, align 8
  %119 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.srp_target_port*, %struct.srp_target_port** %3, align 8
  %122 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %121, i32 0, i32 0
  %123 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %122, align 8
  %124 = load i32, i32* %4, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %123, i64 %125
  %127 = load %struct.TYPE_2__*, %struct.TYPE_2__** %126, align 8
  %128 = call i32 @srp_free_iu(i32 %120, %struct.TYPE_2__* %127)
  %129 = load %struct.srp_target_port*, %struct.srp_target_port** %3, align 8
  %130 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %129, i32 0, i32 0
  %131 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %130, align 8
  %132 = load i32, i32* %4, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %131, i64 %133
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %134, align 8
  br label %135

135:                                              ; preds = %117
  %136 = load i32, i32* %4, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %4, align 4
  br label %113

138:                                              ; preds = %113
  %139 = load i32, i32* @ENOMEM, align 4
  %140 = sub nsw i32 0, %139
  store i32 %140, i32* %2, align 4
  br label %141

141:                                              ; preds = %138, %85
  %142 = load i32, i32* %2, align 4
  ret i32 %142
}

declare dso_local i8* @srp_alloc_iu(i32, i32, i32, i32) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @srp_free_iu(i32, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
