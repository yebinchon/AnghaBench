; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/cell/extr_spu_base.c_spu_request_irqs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/cell/extr_spu_base.c_spu_request_irqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spu = type { i64*, i32, i32, i32, i32 }

@NO_IRQ = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"spe%02d.0\00", align 1
@spu_irq_class_0 = common dso_local global i32 0, align 4
@IRQF_DISABLED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"spe%02d.1\00", align 1
@spu_irq_class_1 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"spe%02d.2\00", align 1
@spu_irq_class_2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spu*)* @spu_request_irqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spu_request_irqs(%struct.spu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spu*, align 8
  %4 = alloca i32, align 4
  store %struct.spu* %0, %struct.spu** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.spu*, %struct.spu** %3, align 8
  %6 = getelementptr inbounds %struct.spu, %struct.spu* %5, i32 0, i32 0
  %7 = load i64*, i64** %6, align 8
  %8 = getelementptr inbounds i64, i64* %7, i64 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @NO_IRQ, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %36

12:                                               ; preds = %1
  %13 = load %struct.spu*, %struct.spu** %3, align 8
  %14 = getelementptr inbounds %struct.spu, %struct.spu* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.spu*, %struct.spu** %3, align 8
  %17 = getelementptr inbounds %struct.spu, %struct.spu* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @snprintf(i32 %15, i32 4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load %struct.spu*, %struct.spu** %3, align 8
  %21 = getelementptr inbounds %struct.spu, %struct.spu* %20, i32 0, i32 0
  %22 = load i64*, i64** %21, align 8
  %23 = getelementptr inbounds i64, i64* %22, i64 0
  %24 = load i64, i64* %23, align 8
  %25 = load i32, i32* @spu_irq_class_0, align 4
  %26 = load i32, i32* @IRQF_DISABLED, align 4
  %27 = load %struct.spu*, %struct.spu** %3, align 8
  %28 = getelementptr inbounds %struct.spu, %struct.spu* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.spu*, %struct.spu** %3, align 8
  %31 = call i32 @request_irq(i64 %24, i32 %25, i32 %26, i32 %29, %struct.spu* %30)
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %12
  br label %135

35:                                               ; preds = %12
  br label %36

36:                                               ; preds = %35, %1
  %37 = load %struct.spu*, %struct.spu** %3, align 8
  %38 = getelementptr inbounds %struct.spu, %struct.spu* %37, i32 0, i32 0
  %39 = load i64*, i64** %38, align 8
  %40 = getelementptr inbounds i64, i64* %39, i64 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @NO_IRQ, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %68

44:                                               ; preds = %36
  %45 = load %struct.spu*, %struct.spu** %3, align 8
  %46 = getelementptr inbounds %struct.spu, %struct.spu* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.spu*, %struct.spu** %3, align 8
  %49 = getelementptr inbounds %struct.spu, %struct.spu* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @snprintf(i32 %47, i32 4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  %52 = load %struct.spu*, %struct.spu** %3, align 8
  %53 = getelementptr inbounds %struct.spu, %struct.spu* %52, i32 0, i32 0
  %54 = load i64*, i64** %53, align 8
  %55 = getelementptr inbounds i64, i64* %54, i64 1
  %56 = load i64, i64* %55, align 8
  %57 = load i32, i32* @spu_irq_class_1, align 4
  %58 = load i32, i32* @IRQF_DISABLED, align 4
  %59 = load %struct.spu*, %struct.spu** %3, align 8
  %60 = getelementptr inbounds %struct.spu, %struct.spu* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.spu*, %struct.spu** %3, align 8
  %63 = call i32 @request_irq(i64 %56, i32 %57, i32 %58, i32 %61, %struct.spu* %62)
  store i32 %63, i32* %4, align 4
  %64 = load i32, i32* %4, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %44
  br label %118

67:                                               ; preds = %44
  br label %68

68:                                               ; preds = %67, %36
  %69 = load %struct.spu*, %struct.spu** %3, align 8
  %70 = getelementptr inbounds %struct.spu, %struct.spu* %69, i32 0, i32 0
  %71 = load i64*, i64** %70, align 8
  %72 = getelementptr inbounds i64, i64* %71, i64 2
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @NO_IRQ, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %100

76:                                               ; preds = %68
  %77 = load %struct.spu*, %struct.spu** %3, align 8
  %78 = getelementptr inbounds %struct.spu, %struct.spu* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.spu*, %struct.spu** %3, align 8
  %81 = getelementptr inbounds %struct.spu, %struct.spu* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @snprintf(i32 %79, i32 4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %82)
  %84 = load %struct.spu*, %struct.spu** %3, align 8
  %85 = getelementptr inbounds %struct.spu, %struct.spu* %84, i32 0, i32 0
  %86 = load i64*, i64** %85, align 8
  %87 = getelementptr inbounds i64, i64* %86, i64 2
  %88 = load i64, i64* %87, align 8
  %89 = load i32, i32* @spu_irq_class_2, align 4
  %90 = load i32, i32* @IRQF_DISABLED, align 4
  %91 = load %struct.spu*, %struct.spu** %3, align 8
  %92 = getelementptr inbounds %struct.spu, %struct.spu* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.spu*, %struct.spu** %3, align 8
  %95 = call i32 @request_irq(i64 %88, i32 %89, i32 %90, i32 %93, %struct.spu* %94)
  store i32 %95, i32* %4, align 4
  %96 = load i32, i32* %4, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %76
  br label %101

99:                                               ; preds = %76
  br label %100

100:                                              ; preds = %99, %68
  store i32 0, i32* %2, align 4
  br label %137

101:                                              ; preds = %98
  %102 = load %struct.spu*, %struct.spu** %3, align 8
  %103 = getelementptr inbounds %struct.spu, %struct.spu* %102, i32 0, i32 0
  %104 = load i64*, i64** %103, align 8
  %105 = getelementptr inbounds i64, i64* %104, i64 1
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @NO_IRQ, align 8
  %108 = icmp ne i64 %106, %107
  br i1 %108, label %109, label %117

109:                                              ; preds = %101
  %110 = load %struct.spu*, %struct.spu** %3, align 8
  %111 = getelementptr inbounds %struct.spu, %struct.spu* %110, i32 0, i32 0
  %112 = load i64*, i64** %111, align 8
  %113 = getelementptr inbounds i64, i64* %112, i64 1
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.spu*, %struct.spu** %3, align 8
  %116 = call i32 @free_irq(i64 %114, %struct.spu* %115)
  br label %117

117:                                              ; preds = %109, %101
  br label %118

118:                                              ; preds = %117, %66
  %119 = load %struct.spu*, %struct.spu** %3, align 8
  %120 = getelementptr inbounds %struct.spu, %struct.spu* %119, i32 0, i32 0
  %121 = load i64*, i64** %120, align 8
  %122 = getelementptr inbounds i64, i64* %121, i64 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @NO_IRQ, align 8
  %125 = icmp ne i64 %123, %124
  br i1 %125, label %126, label %134

126:                                              ; preds = %118
  %127 = load %struct.spu*, %struct.spu** %3, align 8
  %128 = getelementptr inbounds %struct.spu, %struct.spu* %127, i32 0, i32 0
  %129 = load i64*, i64** %128, align 8
  %130 = getelementptr inbounds i64, i64* %129, i64 0
  %131 = load i64, i64* %130, align 8
  %132 = load %struct.spu*, %struct.spu** %3, align 8
  %133 = call i32 @free_irq(i64 %131, %struct.spu* %132)
  br label %134

134:                                              ; preds = %126, %118
  br label %135

135:                                              ; preds = %134, %34
  %136 = load i32, i32* %4, align 4
  store i32 %136, i32* %2, align 4
  br label %137

137:                                              ; preds = %135, %100
  %138 = load i32, i32* %2, align 4
  ret i32 %138
}

declare dso_local i32 @snprintf(i32, i32, i8*, i32) #1

declare dso_local i32 @request_irq(i64, i32, i32, i32, %struct.spu*) #1

declare dso_local i32 @free_irq(i64, %struct.spu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
