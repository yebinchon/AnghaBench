; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_m920x.c_m920x_update_filters.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_m920x.c_m920x_update_filters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_adapter = type { i64, %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { %struct.m920x_state* }
%struct.m920x_state = type { i32*, i32** }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@M9206_MAX_FILTERS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_adapter*)* @m920x_update_filters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m920x_update_filters(%struct.dvb_usb_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_usb_adapter*, align 8
  %4 = alloca %struct.m920x_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.dvb_usb_adapter* %0, %struct.dvb_usb_adapter** %3, align 8
  %10 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %11 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %10, i32 0, i32 1
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load %struct.m920x_state*, %struct.m920x_state** %13, align 8
  store %struct.m920x_state* %14, %struct.m920x_state** %4, align 8
  %15 = load %struct.m920x_state*, %struct.m920x_state** %4, align 8
  %16 = getelementptr inbounds %struct.m920x_state, %struct.m920x_state* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %19 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds i32, i32* %17, i64 %20
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %5, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %23 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %24 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %9, align 4
  store i32 0, i32* %6, align 4
  br label %28

28:                                               ; preds = %48, %1
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @M9206_MAX_FILTERS, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %51

32:                                               ; preds = %28
  %33 = load %struct.m920x_state*, %struct.m920x_state** %4, align 8
  %34 = getelementptr inbounds %struct.m920x_state, %struct.m920x_state* %33, i32 0, i32 1
  %35 = load i32**, i32*** %34, align 8
  %36 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %37 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds i32*, i32** %35, i64 %38
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = icmp eq i32 %44, 8192
  br i1 %45, label %46, label %47

46:                                               ; preds = %32
  store i32 0, i32* %5, align 4
  br label %47

47:                                               ; preds = %46, %32
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %6, align 4
  br label %28

51:                                               ; preds = %28
  %52 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %53 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %52, i32 0, i32 1
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @m920x_set_filter(%struct.TYPE_6__* %54, i32 %55, i32 1, i32 %56)
  store i32 %57, i32* %7, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %51
  %60 = load i32, i32* %7, align 4
  store i32 %60, i32* %2, align 4
  br label %136

61:                                               ; preds = %51
  store i32 0, i32* %6, align 4
  br label %62

62:                                               ; preds = %78, %61
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* @M9206_MAX_FILTERS, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %81

66:                                               ; preds = %62
  %67 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %68 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %67, i32 0, i32 1
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* %6, align 4
  %72 = add nsw i32 %71, 2
  %73 = call i32 @m920x_set_filter(%struct.TYPE_6__* %69, i32 %70, i32 %72, i32 0)
  store i32 %73, i32* %7, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %66
  %76 = load i32, i32* %7, align 4
  store i32 %76, i32* %2, align 4
  br label %136

77:                                               ; preds = %66
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %6, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %6, align 4
  br label %62

81:                                               ; preds = %62
  %82 = load i32, i32* %5, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %134

84:                                               ; preds = %81
  store i32 0, i32* %6, align 4
  br label %85

85:                                               ; preds = %130, %84
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* @M9206_MAX_FILTERS, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %133

89:                                               ; preds = %85
  %90 = load %struct.m920x_state*, %struct.m920x_state** %4, align 8
  %91 = getelementptr inbounds %struct.m920x_state, %struct.m920x_state* %90, i32 0, i32 1
  %92 = load i32**, i32*** %91, align 8
  %93 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %94 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = getelementptr inbounds i32*, i32** %92, i64 %95
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* %6, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %89
  br label %130

104:                                              ; preds = %89
  %105 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %106 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %105, i32 0, i32 1
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %106, align 8
  %108 = load i32, i32* %9, align 4
  %109 = load i32, i32* %8, align 4
  %110 = add nsw i32 %109, 2
  %111 = load %struct.m920x_state*, %struct.m920x_state** %4, align 8
  %112 = getelementptr inbounds %struct.m920x_state, %struct.m920x_state* %111, i32 0, i32 1
  %113 = load i32**, i32*** %112, align 8
  %114 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %115 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = getelementptr inbounds i32*, i32** %113, i64 %116
  %118 = load i32*, i32** %117, align 8
  %119 = load i32, i32* %6, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @m920x_set_filter(%struct.TYPE_6__* %107, i32 %108, i32 %110, i32 %122)
  store i32 %123, i32* %7, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %104
  %126 = load i32, i32* %7, align 4
  store i32 %126, i32* %2, align 4
  br label %136

127:                                              ; preds = %104
  %128 = load i32, i32* %8, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %8, align 4
  br label %130

130:                                              ; preds = %127, %103
  %131 = load i32, i32* %6, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %6, align 4
  br label %85

133:                                              ; preds = %85
  br label %134

134:                                              ; preds = %133, %81
  %135 = load i32, i32* %7, align 4
  store i32 %135, i32* %2, align 4
  br label %136

136:                                              ; preds = %134, %125, %75, %59
  %137 = load i32, i32* %2, align 4
  ret i32 %137
}

declare dso_local i32 @m920x_set_filter(%struct.TYPE_6__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
