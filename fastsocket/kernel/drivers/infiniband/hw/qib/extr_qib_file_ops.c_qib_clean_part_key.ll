; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_file_ops.c_qib_clean_part_key.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_file_ops.c_qib_clean_part_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_ctxtdata = type { i32*, %struct.qib_pportdata* }
%struct.qib_pportdata = type { i32*, %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i32 (%struct.qib_pportdata*, i32, i32)* }
%struct.qib_devdata = type { i32 }

@QIB_IB_CFG_PKEYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qib_ctxtdata*, %struct.qib_devdata*)* @qib_clean_part_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qib_clean_part_key(%struct.qib_ctxtdata* %0, %struct.qib_devdata* %1) #0 {
  %3 = alloca %struct.qib_ctxtdata*, align 8
  %4 = alloca %struct.qib_devdata*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.qib_pportdata*, align 8
  store %struct.qib_ctxtdata* %0, %struct.qib_ctxtdata** %3, align 8
  store %struct.qib_devdata* %1, %struct.qib_devdata** %4, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %3, align 8
  %11 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %10, i32 0, i32 1
  %12 = load %struct.qib_pportdata*, %struct.qib_pportdata** %11, align 8
  store %struct.qib_pportdata* %12, %struct.qib_pportdata** %9, align 8
  %13 = load %struct.qib_pportdata*, %struct.qib_pportdata** %9, align 8
  %14 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.qib_pportdata*, %struct.qib_pportdata** %9, align 8
  %19 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 1
  %22 = load i32, i32* %21, align 4
  %23 = shl i32 %22, 16
  %24 = or i32 %17, %23
  %25 = load %struct.qib_pportdata*, %struct.qib_pportdata** %9, align 8
  %26 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 2
  %29 = load i32, i32* %28, align 4
  %30 = shl i32 %29, 32
  %31 = or i32 %24, %30
  %32 = load %struct.qib_pportdata*, %struct.qib_pportdata** %9, align 8
  %33 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 3
  %36 = load i32, i32* %35, align 4
  %37 = shl i32 %36, 48
  %38 = or i32 %31, %37
  store i32 %38, i32* %8, align 4
  store i32 0, i32* %5, align 4
  br label %39

39:                                               ; preds = %112, %2
  %40 = load i32, i32* %5, align 4
  %41 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %3, align 8
  %42 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 @ARRAY_SIZE(i32* %43)
  %45 = icmp slt i32 %40, %44
  br i1 %45, label %46, label %115

46:                                               ; preds = %39
  %47 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %3, align 8
  %48 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %46
  br label %112

56:                                               ; preds = %46
  store i32 0, i32* %6, align 4
  br label %57

57:                                               ; preds = %102, %56
  %58 = load i32, i32* %6, align 4
  %59 = load %struct.qib_pportdata*, %struct.qib_pportdata** %9, align 8
  %60 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = call i32 @ARRAY_SIZE(i32* %61)
  %63 = icmp slt i32 %58, %62
  br i1 %63, label %64, label %105

64:                                               ; preds = %57
  %65 = load %struct.qib_pportdata*, %struct.qib_pportdata** %9, align 8
  %66 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %6, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = and i32 %71, 32767
  %73 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %3, align 8
  %74 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %5, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = and i32 %79, 32767
  %81 = icmp ne i32 %72, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %64
  br label %102

83:                                               ; preds = %64
  %84 = load %struct.qib_pportdata*, %struct.qib_pportdata** %9, align 8
  %85 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %84, i32 0, i32 2
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* %6, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = call i64 @atomic_dec_and_test(i32* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %101

92:                                               ; preds = %83
  %93 = load %struct.qib_pportdata*, %struct.qib_pportdata** %9, align 8
  %94 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = load i32, i32* %6, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  store i32 0, i32* %98, align 4
  %99 = load i32, i32* %7, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %7, align 4
  br label %101

101:                                              ; preds = %92, %83
  br label %105

102:                                              ; preds = %82
  %103 = load i32, i32* %6, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %6, align 4
  br label %57

105:                                              ; preds = %101, %57
  %106 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %3, align 8
  %107 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %106, i32 0, i32 0
  %108 = load i32*, i32** %107, align 8
  %109 = load i32, i32* %5, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  store i32 0, i32* %111, align 4
  br label %112

112:                                              ; preds = %105, %55
  %113 = load i32, i32* %5, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %5, align 4
  br label %39

115:                                              ; preds = %39
  %116 = load i32, i32* %7, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %127

118:                                              ; preds = %115
  %119 = load %struct.qib_pportdata*, %struct.qib_pportdata** %9, align 8
  %120 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %119, i32 0, i32 1
  %121 = load %struct.TYPE_2__*, %struct.TYPE_2__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 0
  %123 = load i32 (%struct.qib_pportdata*, i32, i32)*, i32 (%struct.qib_pportdata*, i32, i32)** %122, align 8
  %124 = load %struct.qib_pportdata*, %struct.qib_pportdata** %9, align 8
  %125 = load i32, i32* @QIB_IB_CFG_PKEYS, align 4
  %126 = call i32 %123(%struct.qib_pportdata* %124, i32 %125, i32 0)
  br label %127

127:                                              ; preds = %118, %115
  ret void
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
