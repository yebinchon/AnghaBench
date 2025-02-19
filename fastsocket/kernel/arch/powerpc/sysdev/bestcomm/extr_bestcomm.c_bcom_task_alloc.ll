; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/sysdev/bestcomm/extr_bestcomm.c_bcom_task_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/sysdev/bestcomm/extr_bestcomm.c_bcom_task_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.bcom_task = type { i32, i64, i32, i32, %struct.bcom_task*, i32, i32, i8* }

@bcom_eng = common dso_local global %struct.TYPE_4__* null, align 8
@BCOM_MAX_TASKS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@NO_IRQ = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bcom_task* @bcom_task_alloc(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.bcom_task*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.bcom_task*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 -1, i32* %9, align 4
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** @bcom_eng, align 8
  %12 = icmp ne %struct.TYPE_4__* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store %struct.bcom_task* null, %struct.bcom_task** %4, align 8
  br label %170

14:                                               ; preds = %3
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** @bcom_eng, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 2
  %17 = call i32 @spin_lock(i32* %16)
  store i32 0, i32* %8, align 4
  br label %18

18:                                               ; preds = %42, %14
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @BCOM_MAX_TASKS, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %45

22:                                               ; preds = %18
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** @bcom_eng, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %41, label %32

32:                                               ; preds = %22
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** @bcom_eng, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  store i32 -1, i32* %39, align 4
  %40 = load i32, i32* %8, align 4
  store i32 %40, i32* %9, align 4
  br label %45

41:                                               ; preds = %22
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %8, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %8, align 4
  br label %18

45:                                               ; preds = %32, %18
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** @bcom_eng, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 2
  %48 = call i32 @spin_unlock(i32* %47)
  %49 = load i32, i32* %9, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  store %struct.bcom_task* null, %struct.bcom_task** %4, align 8
  br label %170

52:                                               ; preds = %45
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = add i64 48, %54
  %56 = trunc i64 %55 to i32
  %57 = load i32, i32* @GFP_KERNEL, align 4
  %58 = call %struct.bcom_task* @kzalloc(i32 %56, i32 %57)
  store %struct.bcom_task* %58, %struct.bcom_task** %10, align 8
  %59 = load %struct.bcom_task*, %struct.bcom_task** %10, align 8
  %60 = icmp ne %struct.bcom_task* %59, null
  br i1 %60, label %62, label %61

61:                                               ; preds = %52
  br label %137

62:                                               ; preds = %52
  %63 = load i32, i32* %9, align 4
  %64 = load %struct.bcom_task*, %struct.bcom_task** %10, align 8
  %65 = getelementptr inbounds %struct.bcom_task, %struct.bcom_task* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  %66 = load i32, i32* %7, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %62
  %69 = load %struct.bcom_task*, %struct.bcom_task** %10, align 8
  %70 = bitcast %struct.bcom_task* %69 to i8*
  %71 = getelementptr i8, i8* %70, i64 48
  %72 = load %struct.bcom_task*, %struct.bcom_task** %10, align 8
  %73 = getelementptr inbounds %struct.bcom_task, %struct.bcom_task* %72, i32 0, i32 7
  store i8* %71, i8** %73, align 8
  br label %74

74:                                               ; preds = %68, %62
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** @bcom_eng, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.bcom_task*, %struct.bcom_task** %10, align 8
  %79 = getelementptr inbounds %struct.bcom_task, %struct.bcom_task* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i64 @irq_of_parse_and_map(i32 %77, i32 %80)
  %82 = load %struct.bcom_task*, %struct.bcom_task** %10, align 8
  %83 = getelementptr inbounds %struct.bcom_task, %struct.bcom_task* %82, i32 0, i32 1
  store i64 %81, i64* %83, align 8
  %84 = load %struct.bcom_task*, %struct.bcom_task** %10, align 8
  %85 = getelementptr inbounds %struct.bcom_task, %struct.bcom_task* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @NO_IRQ, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %74
  br label %137

90:                                               ; preds = %74
  %91 = load i32, i32* %5, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %135

93:                                               ; preds = %90
  %94 = load i32, i32* %5, align 4
  %95 = sext i32 %94 to i64
  %96 = mul i64 8, %95
  %97 = trunc i64 %96 to i32
  %98 = load i32, i32* @GFP_KERNEL, align 4
  %99 = call %struct.bcom_task* @kmalloc(i32 %97, i32 %98)
  %100 = load %struct.bcom_task*, %struct.bcom_task** %10, align 8
  %101 = getelementptr inbounds %struct.bcom_task, %struct.bcom_task* %100, i32 0, i32 4
  store %struct.bcom_task* %99, %struct.bcom_task** %101, align 8
  %102 = load %struct.bcom_task*, %struct.bcom_task** %10, align 8
  %103 = getelementptr inbounds %struct.bcom_task, %struct.bcom_task* %102, i32 0, i32 4
  %104 = load %struct.bcom_task*, %struct.bcom_task** %103, align 8
  %105 = icmp ne %struct.bcom_task* %104, null
  br i1 %105, label %107, label %106

106:                                              ; preds = %93
  br label %137

107:                                              ; preds = %93
  %108 = load i32, i32* %5, align 4
  %109 = load i32, i32* %6, align 4
  %110 = mul nsw i32 %108, %109
  %111 = load %struct.bcom_task*, %struct.bcom_task** %10, align 8
  %112 = getelementptr inbounds %struct.bcom_task, %struct.bcom_task* %111, i32 0, i32 6
  %113 = call i32 @bcom_sram_alloc(i32 %110, i32 4, i32* %112)
  %114 = load %struct.bcom_task*, %struct.bcom_task** %10, align 8
  %115 = getelementptr inbounds %struct.bcom_task, %struct.bcom_task* %114, i32 0, i32 5
  store i32 %113, i32* %115, align 8
  %116 = load %struct.bcom_task*, %struct.bcom_task** %10, align 8
  %117 = getelementptr inbounds %struct.bcom_task, %struct.bcom_task* %116, i32 0, i32 5
  %118 = load i32, i32* %117, align 8
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %121, label %120

120:                                              ; preds = %107
  br label %137

121:                                              ; preds = %107
  %122 = load %struct.bcom_task*, %struct.bcom_task** %10, align 8
  %123 = getelementptr inbounds %struct.bcom_task, %struct.bcom_task* %122, i32 0, i32 5
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* %5, align 4
  %126 = load i32, i32* %6, align 4
  %127 = mul nsw i32 %125, %126
  %128 = call i32 @memset(i32 %124, i32 0, i32 %127)
  %129 = load i32, i32* %5, align 4
  %130 = load %struct.bcom_task*, %struct.bcom_task** %10, align 8
  %131 = getelementptr inbounds %struct.bcom_task, %struct.bcom_task* %130, i32 0, i32 2
  store i32 %129, i32* %131, align 8
  %132 = load i32, i32* %6, align 4
  %133 = load %struct.bcom_task*, %struct.bcom_task** %10, align 8
  %134 = getelementptr inbounds %struct.bcom_task, %struct.bcom_task* %133, i32 0, i32 3
  store i32 %132, i32* %134, align 4
  br label %135

135:                                              ; preds = %121, %90
  %136 = load %struct.bcom_task*, %struct.bcom_task** %10, align 8
  store %struct.bcom_task* %136, %struct.bcom_task** %4, align 8
  br label %170

137:                                              ; preds = %120, %106, %89, %61
  %138 = load %struct.bcom_task*, %struct.bcom_task** %10, align 8
  %139 = icmp ne %struct.bcom_task* %138, null
  br i1 %139, label %140, label %162

140:                                              ; preds = %137
  %141 = load %struct.bcom_task*, %struct.bcom_task** %10, align 8
  %142 = getelementptr inbounds %struct.bcom_task, %struct.bcom_task* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @NO_IRQ, align 8
  %145 = icmp ne i64 %143, %144
  br i1 %145, label %146, label %151

146:                                              ; preds = %140
  %147 = load %struct.bcom_task*, %struct.bcom_task** %10, align 8
  %148 = getelementptr inbounds %struct.bcom_task, %struct.bcom_task* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = call i32 @irq_dispose_mapping(i64 %149)
  br label %151

151:                                              ; preds = %146, %140
  %152 = load %struct.bcom_task*, %struct.bcom_task** %10, align 8
  %153 = getelementptr inbounds %struct.bcom_task, %struct.bcom_task* %152, i32 0, i32 5
  %154 = load i32, i32* %153, align 8
  %155 = call i32 @bcom_sram_free(i32 %154)
  %156 = load %struct.bcom_task*, %struct.bcom_task** %10, align 8
  %157 = getelementptr inbounds %struct.bcom_task, %struct.bcom_task* %156, i32 0, i32 4
  %158 = load %struct.bcom_task*, %struct.bcom_task** %157, align 8
  %159 = call i32 @kfree(%struct.bcom_task* %158)
  %160 = load %struct.bcom_task*, %struct.bcom_task** %10, align 8
  %161 = call i32 @kfree(%struct.bcom_task* %160)
  br label %162

162:                                              ; preds = %151, %137
  %163 = load %struct.TYPE_4__*, %struct.TYPE_4__** @bcom_eng, align 8
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 0
  %165 = load %struct.TYPE_3__*, %struct.TYPE_3__** %164, align 8
  %166 = load i32, i32* %9, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %165, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %168, i32 0, i32 0
  store i32 0, i32* %169, align 4
  store %struct.bcom_task* null, %struct.bcom_task** %4, align 8
  br label %170

170:                                              ; preds = %162, %135, %51, %13
  %171 = load %struct.bcom_task*, %struct.bcom_task** %4, align 8
  ret %struct.bcom_task* %171
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local %struct.bcom_task* @kzalloc(i32, i32) #1

declare dso_local i64 @irq_of_parse_and_map(i32, i32) #1

declare dso_local %struct.bcom_task* @kmalloc(i32, i32) #1

declare dso_local i32 @bcom_sram_alloc(i32, i32, i32*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @irq_dispose_mapping(i64) #1

declare dso_local i32 @bcom_sram_free(i32) #1

declare dso_local i32 @kfree(%struct.bcom_task*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
