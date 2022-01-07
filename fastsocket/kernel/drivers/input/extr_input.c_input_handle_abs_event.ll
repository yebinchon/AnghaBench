; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/extr_input.c_input_handle_abs_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/extr_input.c_input_handle_abs_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32, i32, i32*, i32*, %struct.input_mt_slot* }
%struct.input_mt_slot = type { i32* }

@ABS_MT_SLOT = common dso_local global i32 0, align 4
@INPUT_IGNORE_EVENT = common dso_local global i32 0, align 4
@ABS_MT_FIRST = common dso_local global i32 0, align 4
@ABS_MT_LAST = common dso_local global i32 0, align 4
@EV_ABS = common dso_local global i32 0, align 4
@INPUT_PASS_TO_HANDLERS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.input_dev*, i32, i32*)* @input_handle_abs_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @input_handle_abs_event(%struct.input_dev* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.input_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.input_mt_slot*, align 8
  store %struct.input_dev* %0, %struct.input_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @ABS_MT_SLOT, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %32

14:                                               ; preds = %3
  %15 = load i32*, i32** %7, align 8
  %16 = load i32, i32* %15, align 4
  %17 = icmp sge i32 %16, 0
  br i1 %17, label %18, label %30

18:                                               ; preds = %14
  %19 = load i32*, i32** %7, align 8
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %22 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %18
  %26 = load i32*, i32** %7, align 8
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %29 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  br label %30

30:                                               ; preds = %25, %18, %14
  %31 = load i32, i32* @INPUT_IGNORE_EVENT, align 4
  store i32 %31, i32* %4, align 4
  br label %138

32:                                               ; preds = %3
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @ABS_MT_FIRST, align 4
  %35 = icmp uge i32 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @ABS_MT_LAST, align 4
  %39 = icmp ule i32 %37, %38
  br label %40

40:                                               ; preds = %36, %32
  %41 = phi i1 [ false, %32 ], [ %39, %36 ]
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %52, label %45

45:                                               ; preds = %40
  %46 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %47 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %46, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %6, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  store i32* %51, i32** %9, align 8
  br label %76

52:                                               ; preds = %40
  %53 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %54 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %53, i32 0, i32 4
  %55 = load %struct.input_mt_slot*, %struct.input_mt_slot** %54, align 8
  %56 = icmp ne %struct.input_mt_slot* %55, null
  br i1 %56, label %57, label %74

57:                                               ; preds = %52
  %58 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %59 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %58, i32 0, i32 4
  %60 = load %struct.input_mt_slot*, %struct.input_mt_slot** %59, align 8
  %61 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %62 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.input_mt_slot, %struct.input_mt_slot* %60, i64 %64
  store %struct.input_mt_slot* %65, %struct.input_mt_slot** %10, align 8
  %66 = load %struct.input_mt_slot*, %struct.input_mt_slot** %10, align 8
  %67 = getelementptr inbounds %struct.input_mt_slot, %struct.input_mt_slot* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* @ABS_MT_FIRST, align 4
  %71 = sub i32 %69, %70
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %68, i64 %72
  store i32* %73, i32** %9, align 8
  br label %75

74:                                               ; preds = %52
  store i32* null, i32** %9, align 8
  br label %75

75:                                               ; preds = %74, %57
  br label %76

76:                                               ; preds = %75, %45
  %77 = load i32*, i32** %9, align 8
  %78 = icmp ne i32* %77, null
  br i1 %78, label %79, label %104

79:                                               ; preds = %76
  %80 = load i32*, i32** %7, align 8
  %81 = load i32, i32* %80, align 4
  %82 = load i32*, i32** %9, align 8
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %85 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %84, i32 0, i32 3
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* %6, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @input_defuzz_abs_event(i32 %81, i32 %83, i32 %90)
  %92 = load i32*, i32** %7, align 8
  store i32 %91, i32* %92, align 4
  %93 = load i32*, i32** %9, align 8
  %94 = load i32, i32* %93, align 4
  %95 = load i32*, i32** %7, align 8
  %96 = load i32, i32* %95, align 4
  %97 = icmp eq i32 %94, %96
  br i1 %97, label %98, label %100

98:                                               ; preds = %79
  %99 = load i32, i32* @INPUT_IGNORE_EVENT, align 4
  store i32 %99, i32* %4, align 4
  br label %138

100:                                              ; preds = %79
  %101 = load i32*, i32** %7, align 8
  %102 = load i32, i32* %101, align 4
  %103 = load i32*, i32** %9, align 8
  store i32 %102, i32* %103, align 4
  br label %104

104:                                              ; preds = %100, %76
  %105 = load i32, i32* %8, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %136

107:                                              ; preds = %104
  %108 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %109 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %112 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %111, i32 0, i32 2
  %113 = load i32*, i32** %112, align 8
  %114 = load i32, i32* @ABS_MT_SLOT, align 4
  %115 = zext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = icmp ne i32 %110, %117
  br i1 %118, label %119, label %136

119:                                              ; preds = %107
  %120 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %121 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %124 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %123, i32 0, i32 2
  %125 = load i32*, i32** %124, align 8
  %126 = load i32, i32* @ABS_MT_SLOT, align 4
  %127 = zext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  store i32 %122, i32* %128, align 4
  %129 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %130 = load i32, i32* @EV_ABS, align 4
  %131 = load i32, i32* @ABS_MT_SLOT, align 4
  %132 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %133 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @input_pass_event(%struct.input_dev* %129, i32 %130, i32 %131, i32 %134)
  br label %136

136:                                              ; preds = %119, %107, %104
  %137 = load i32, i32* @INPUT_PASS_TO_HANDLERS, align 4
  store i32 %137, i32* %4, align 4
  br label %138

138:                                              ; preds = %136, %98, %30
  %139 = load i32, i32* %4, align 4
  ret i32 %139
}

declare dso_local i32 @input_defuzz_abs_event(i32, i32, i32) #1

declare dso_local i32 @input_pass_event(%struct.input_dev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
