; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-davinci/extr_dma.c_edma_alloc_slot.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-davinci/extr_dma.c_edma_alloc_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@edma_info = common dso_local global %struct.TYPE_2__** null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@edmacc_regs_base = common dso_local global i64* null, align 8
@dummy_paramset = common dso_local global i32 0, align 4
@PARM_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @edma_alloc_slot(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = icmp sge i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @EDMA_CHAN_SLOT(i32 %9)
  store i32 %10, i32* %5, align 4
  br label %11

11:                                               ; preds = %8, %2
  %12 = load i32, i32* %5, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %65

14:                                               ; preds = %11
  %15 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @edma_info, align 8
  %16 = load i32, i32* %4, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %15, i64 %17
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %5, align 4
  br label %22

22:                                               ; preds = %63, %14
  %23 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @edma_info, align 8
  %24 = load i32, i32* %4, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %23, i64 %25
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @edma_info, align 8
  %31 = load i32, i32* %4, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %30, i64 %32
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @find_next_zero_bit(i32 %29, i32 %36, i32 %37)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @edma_info, align 8
  %41 = load i32, i32* %4, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %40, i64 %42
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %39, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %22
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %118

51:                                               ; preds = %22
  %52 = load i32, i32* %5, align 4
  %53 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @edma_info, align 8
  %54 = load i32, i32* %4, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %53, i64 %55
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @test_and_set_bit(i32 %52, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %51
  br label %64

63:                                               ; preds = %51
  br label %22

64:                                               ; preds = %62
  br label %104

65:                                               ; preds = %11
  %66 = load i32, i32* %5, align 4
  %67 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @edma_info, align 8
  %68 = load i32, i32* %4, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %67, i64 %69
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = icmp slt i32 %66, %73
  br i1 %74, label %85, label %75

75:                                               ; preds = %65
  %76 = load i32, i32* %5, align 4
  %77 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @edma_info, align 8
  %78 = load i32, i32* %4, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %77, i64 %79
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = icmp sge i32 %76, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %75, %65
  %86 = load i32, i32* @EINVAL, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %3, align 4
  br label %118

88:                                               ; preds = %75
  %89 = load i32, i32* %5, align 4
  %90 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @edma_info, align 8
  %91 = load i32, i32* %4, align 4
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %90, i64 %92
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = call i64 @test_and_set_bit(i32 %89, i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %88
  %100 = load i32, i32* @EBUSY, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %3, align 4
  br label %118

102:                                              ; preds = %88
  br label %103

103:                                              ; preds = %102
  br label %104

104:                                              ; preds = %103, %64
  %105 = load i64*, i64** @edmacc_regs_base, align 8
  %106 = load i32, i32* %4, align 4
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds i64, i64* %105, i64 %107
  %109 = load i64, i64* %108, align 8
  %110 = load i32, i32* %5, align 4
  %111 = call i64 @PARM_OFFSET(i32 %110)
  %112 = add nsw i64 %109, %111
  %113 = load i32, i32* @PARM_SIZE, align 4
  %114 = call i32 @memcpy_toio(i64 %112, i32* @dummy_paramset, i32 %113)
  %115 = load i32, i32* %4, align 4
  %116 = load i32, i32* %5, align 4
  %117 = call i32 @EDMA_CTLR_CHAN(i32 %115, i32 %116)
  store i32 %117, i32* %3, align 4
  br label %118

118:                                              ; preds = %104, %99, %85, %48
  %119 = load i32, i32* %3, align 4
  ret i32 %119
}

declare dso_local i32 @EDMA_CHAN_SLOT(i32) #1

declare dso_local i32 @find_next_zero_bit(i32, i32, i32) #1

declare dso_local i64 @test_and_set_bit(i32, i32) #1

declare dso_local i32 @memcpy_toio(i64, i32*, i32) #1

declare dso_local i64 @PARM_OFFSET(i32) #1

declare dso_local i32 @EDMA_CTLR_CHAN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
