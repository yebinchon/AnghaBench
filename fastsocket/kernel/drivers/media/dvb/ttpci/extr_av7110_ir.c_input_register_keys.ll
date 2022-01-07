; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ttpci/extr_av7110_ir.c_input_register_keys.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ttpci/extr_av7110_ir.c_input_register_keys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.infrared = type { i64*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64*, i32, i32, i32, i32, i32 }

@EV_KEY = common dso_local global i64 0, align 8
@EV_REP = common dso_local global i64 0, align 8
@EV_MSC = common dso_local global i64 0, align 8
@MSC_RAW = common dso_local global i64 0, align 8
@MSC_SCAN = common dso_local global i64 0, align 8
@KEY_MAX = common dso_local global i64 0, align 8
@KEY_RESERVED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.infrared*)* @input_register_keys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @input_register_keys(%struct.infrared* %0) #0 {
  %2 = alloca %struct.infrared*, align 8
  %3 = alloca i32, align 4
  store %struct.infrared* %0, %struct.infrared** %2, align 8
  %4 = load i64, i64* @EV_KEY, align 8
  %5 = load %struct.infrared*, %struct.infrared** %2, align 8
  %6 = getelementptr inbounds %struct.infrared, %struct.infrared* %5, i32 0, i32 1
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 5
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @set_bit(i64 %4, i32 %9)
  %11 = load i64, i64* @EV_REP, align 8
  %12 = load %struct.infrared*, %struct.infrared** %2, align 8
  %13 = getelementptr inbounds %struct.infrared, %struct.infrared* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @set_bit(i64 %11, i32 %16)
  %18 = load i64, i64* @EV_MSC, align 8
  %19 = load %struct.infrared*, %struct.infrared** %2, align 8
  %20 = getelementptr inbounds %struct.infrared, %struct.infrared* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @set_bit(i64 %18, i32 %23)
  %25 = load i64, i64* @MSC_RAW, align 8
  %26 = load %struct.infrared*, %struct.infrared** %2, align 8
  %27 = getelementptr inbounds %struct.infrared, %struct.infrared* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @set_bit(i64 %25, i32 %30)
  %32 = load i64, i64* @MSC_SCAN, align 8
  %33 = load %struct.infrared*, %struct.infrared** %2, align 8
  %34 = getelementptr inbounds %struct.infrared, %struct.infrared* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @set_bit(i64 %32, i32 %37)
  %39 = load %struct.infrared*, %struct.infrared** %2, align 8
  %40 = getelementptr inbounds %struct.infrared, %struct.infrared* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @memset(i32 %43, i32 0, i32 4)
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %95, %1
  %46 = load i32, i32* %3, align 4
  %47 = load %struct.infrared*, %struct.infrared** %2, align 8
  %48 = getelementptr inbounds %struct.infrared, %struct.infrared* %47, i32 0, i32 0
  %49 = load i64*, i64** %48, align 8
  %50 = call i32 @ARRAY_SIZE(i64* %49)
  %51 = icmp slt i32 %46, %50
  br i1 %51, label %52, label %98

52:                                               ; preds = %45
  %53 = load %struct.infrared*, %struct.infrared** %2, align 8
  %54 = getelementptr inbounds %struct.infrared, %struct.infrared* %53, i32 0, i32 0
  %55 = load i64*, i64** %54, align 8
  %56 = load i32, i32* %3, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i64, i64* %55, i64 %57
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @KEY_MAX, align 8
  %61 = icmp sgt i64 %59, %60
  br i1 %61, label %62, label %69

62:                                               ; preds = %52
  %63 = load %struct.infrared*, %struct.infrared** %2, align 8
  %64 = getelementptr inbounds %struct.infrared, %struct.infrared* %63, i32 0, i32 0
  %65 = load i64*, i64** %64, align 8
  %66 = load i32, i32* %3, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i64, i64* %65, i64 %67
  store i64 0, i64* %68, align 8
  br label %94

69:                                               ; preds = %52
  %70 = load %struct.infrared*, %struct.infrared** %2, align 8
  %71 = getelementptr inbounds %struct.infrared, %struct.infrared* %70, i32 0, i32 0
  %72 = load i64*, i64** %71, align 8
  %73 = load i32, i32* %3, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i64, i64* %72, i64 %74
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @KEY_RESERVED, align 8
  %78 = icmp sgt i64 %76, %77
  br i1 %78, label %79, label %93

79:                                               ; preds = %69
  %80 = load %struct.infrared*, %struct.infrared** %2, align 8
  %81 = getelementptr inbounds %struct.infrared, %struct.infrared* %80, i32 0, i32 0
  %82 = load i64*, i64** %81, align 8
  %83 = load i32, i32* %3, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i64, i64* %82, i64 %84
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.infrared*, %struct.infrared** %2, align 8
  %88 = getelementptr inbounds %struct.infrared, %struct.infrared* %87, i32 0, i32 1
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @set_bit(i64 %86, i32 %91)
  br label %93

93:                                               ; preds = %79, %69
  br label %94

94:                                               ; preds = %93, %62
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %3, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %3, align 4
  br label %45

98:                                               ; preds = %45
  %99 = load %struct.infrared*, %struct.infrared** %2, align 8
  %100 = getelementptr inbounds %struct.infrared, %struct.infrared* %99, i32 0, i32 0
  %101 = load i64*, i64** %100, align 8
  %102 = load %struct.infrared*, %struct.infrared** %2, align 8
  %103 = getelementptr inbounds %struct.infrared, %struct.infrared* %102, i32 0, i32 1
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  store i64* %101, i64** %105, align 8
  %106 = load %struct.infrared*, %struct.infrared** %2, align 8
  %107 = getelementptr inbounds %struct.infrared, %struct.infrared* %106, i32 0, i32 1
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 1
  store i32 8, i32* %109, align 8
  %110 = load %struct.infrared*, %struct.infrared** %2, align 8
  %111 = getelementptr inbounds %struct.infrared, %struct.infrared* %110, i32 0, i32 0
  %112 = load i64*, i64** %111, align 8
  %113 = call i32 @ARRAY_SIZE(i64* %112)
  %114 = load %struct.infrared*, %struct.infrared** %2, align 8
  %115 = getelementptr inbounds %struct.infrared, %struct.infrared* %114, i32 0, i32 1
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 2
  store i32 %113, i32* %117, align 4
  ret void
}

declare dso_local i32 @set_bit(i64, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
