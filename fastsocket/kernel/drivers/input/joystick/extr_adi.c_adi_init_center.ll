; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/joystick/extr_adi.c_adi_init_center.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/joystick/extr_adi.c_adi_init_center.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adi = type { i32, i32, i32, i32, i32*, i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32* }

@ABS_THROTTLE = common dso_local global i32 0, align 4
@ABS_RUDDER = common dso_local global i32 0, align 4
@ADI_ID_WGPE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adi*)* @adi_init_center to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adi_init_center(%struct.adi* %0) #0 {
  %2 = alloca %struct.adi*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.adi* %0, %struct.adi** %2, align 8
  %6 = load %struct.adi*, %struct.adi** %2, align 8
  %7 = getelementptr inbounds %struct.adi, %struct.adi* %6, i32 0, i32 7
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %116

11:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %12

12:                                               ; preds = %113, %11
  %13 = load i32, i32* %3, align 4
  %14 = load %struct.adi*, %struct.adi** %2, align 8
  %15 = getelementptr inbounds %struct.adi, %struct.adi* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.adi*, %struct.adi** %2, align 8
  %18 = getelementptr inbounds %struct.adi, %struct.adi* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %16, %19
  %21 = load %struct.adi*, %struct.adi** %2, align 8
  %22 = getelementptr inbounds %struct.adi, %struct.adi* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.adi*, %struct.adi** %2, align 8
  %25 = getelementptr inbounds %struct.adi, %struct.adi* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, -1
  %28 = zext i1 %27 to i32
  %29 = add nsw i32 %23, %28
  %30 = mul nsw i32 %29, 2
  %31 = add nsw i32 %20, %30
  %32 = icmp slt i32 %13, %31
  br i1 %32, label %33, label %116

33:                                               ; preds = %12
  %34 = load %struct.adi*, %struct.adi** %2, align 8
  %35 = getelementptr inbounds %struct.adi, %struct.adi* %34, i32 0, i32 4
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %3, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %4, align 4
  %41 = load %struct.adi*, %struct.adi** %2, align 8
  %42 = getelementptr inbounds %struct.adi, %struct.adi* %41, i32 0, i32 6
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %4, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* @ABS_THROTTLE, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %63, label %53

53:                                               ; preds = %33
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* @ABS_RUDDER, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %63, label %57

57:                                               ; preds = %53
  %58 = load %struct.adi*, %struct.adi** %2, align 8
  %59 = getelementptr inbounds %struct.adi, %struct.adi* %58, i32 0, i32 5
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @ADI_ID_WGPE, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %71

63:                                               ; preds = %57, %53, %33
  %64 = load i32, i32* %3, align 4
  %65 = load %struct.adi*, %struct.adi** %2, align 8
  %66 = getelementptr inbounds %struct.adi, %struct.adi* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp slt i32 %64, %67
  %69 = zext i1 %68 to i64
  %70 = select i1 %68, i32 512, i32 128
  store i32 %70, i32* %5, align 4
  br label %71

71:                                               ; preds = %63, %57
  %72 = load i32, i32* %3, align 4
  %73 = load %struct.adi*, %struct.adi** %2, align 8
  %74 = getelementptr inbounds %struct.adi, %struct.adi* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp slt i32 %72, %75
  br i1 %76, label %77, label %86

77:                                               ; preds = %71
  %78 = load %struct.adi*, %struct.adi** %2, align 8
  %79 = getelementptr inbounds %struct.adi, %struct.adi* %78, i32 0, i32 6
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = load i32, i32* %4, align 4
  %82 = load i32, i32* %5, align 4
  %83 = mul nsw i32 %82, 2
  %84 = sub nsw i32 %83, 64
  %85 = call i32 @input_set_abs_params(%struct.TYPE_2__* %80, i32 %81, i32 64, i32 %84, i32 2, i32 16)
  br label %112

86:                                               ; preds = %71
  %87 = load i32, i32* %3, align 4
  %88 = load %struct.adi*, %struct.adi** %2, align 8
  %89 = getelementptr inbounds %struct.adi, %struct.adi* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.adi*, %struct.adi** %2, align 8
  %92 = getelementptr inbounds %struct.adi, %struct.adi* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = add nsw i32 %90, %93
  %95 = icmp slt i32 %87, %94
  br i1 %95, label %96, label %105

96:                                               ; preds = %86
  %97 = load %struct.adi*, %struct.adi** %2, align 8
  %98 = getelementptr inbounds %struct.adi, %struct.adi* %97, i32 0, i32 6
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %98, align 8
  %100 = load i32, i32* %4, align 4
  %101 = load i32, i32* %5, align 4
  %102 = mul nsw i32 %101, 2
  %103 = sub nsw i32 %102, 48
  %104 = call i32 @input_set_abs_params(%struct.TYPE_2__* %99, i32 %100, i32 48, i32 %103, i32 1, i32 16)
  br label %111

105:                                              ; preds = %86
  %106 = load %struct.adi*, %struct.adi** %2, align 8
  %107 = getelementptr inbounds %struct.adi, %struct.adi* %106, i32 0, i32 6
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** %107, align 8
  %109 = load i32, i32* %4, align 4
  %110 = call i32 @input_set_abs_params(%struct.TYPE_2__* %108, i32 %109, i32 -1, i32 1, i32 0, i32 0)
  br label %111

111:                                              ; preds = %105, %96
  br label %112

112:                                              ; preds = %111, %77
  br label %113

113:                                              ; preds = %112
  %114 = load i32, i32* %3, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %3, align 4
  br label %12

116:                                              ; preds = %10, %12
  ret void
}

declare dso_local i32 @input_set_abs_params(%struct.TYPE_2__*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
