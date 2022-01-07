; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-core/extr_dvb_demux.c_dvb_dmx_swfilter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-core/extr_dvb_demux.c_dvb_dmx_swfilter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_demux = type { i32, i32*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dvb_dmx_swfilter(%struct.dvb_demux* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.dvb_demux*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.dvb_demux* %0, %struct.dvb_demux** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.dvb_demux*, %struct.dvb_demux** %4, align 8
  %11 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %10, i32 0, i32 2
  %12 = call i32 @spin_lock(i32* %11)
  %13 = load %struct.dvb_demux*, %struct.dvb_demux** %4, align 8
  %14 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %73

17:                                               ; preds = %3
  %18 = load %struct.dvb_demux*, %struct.dvb_demux** %4, align 8
  %19 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = sub nsw i32 188, %21
  store i32 %22, i32* %9, align 4
  %23 = load i64, i64* %6, align 8
  %24 = load i32, i32* %9, align 4
  %25 = sext i32 %24 to i64
  %26 = icmp ult i64 %23, %25
  br i1 %26, label %27, label %45

27:                                               ; preds = %17
  %28 = load %struct.dvb_demux*, %struct.dvb_demux** %4, align 8
  %29 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32*, i32** %5, align 8
  %35 = load i64, i64* %6, align 8
  %36 = trunc i64 %35 to i32
  %37 = call i32 @memcpy(i32* %33, i32* %34, i32 %36)
  %38 = load i64, i64* %6, align 8
  %39 = load %struct.dvb_demux*, %struct.dvb_demux** %4, align 8
  %40 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = sext i32 %41 to i64
  %43 = add i64 %42, %38
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %40, align 8
  br label %125

45:                                               ; preds = %17
  %46 = load %struct.dvb_demux*, %struct.dvb_demux** %4, align 8
  %47 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32*, i32** %5, align 8
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @memcpy(i32* %51, i32* %52, i32 %53)
  %55 = load %struct.dvb_demux*, %struct.dvb_demux** %4, align 8
  %56 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp eq i32 %59, 71
  br i1 %60, label %61, label %67

61:                                               ; preds = %45
  %62 = load %struct.dvb_demux*, %struct.dvb_demux** %4, align 8
  %63 = load %struct.dvb_demux*, %struct.dvb_demux** %4, align 8
  %64 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = call i32 @dvb_dmx_swfilter_packet(%struct.dvb_demux* %62, i32* %65)
  br label %67

67:                                               ; preds = %61, %45
  %68 = load %struct.dvb_demux*, %struct.dvb_demux** %4, align 8
  %69 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %68, i32 0, i32 0
  store i32 0, i32* %69, align 8
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* %7, align 4
  %72 = add nsw i32 %71, %70
  store i32 %72, i32* %7, align 4
  br label %73

73:                                               ; preds = %67, %3
  br label %74

74:                                               ; preds = %123, %73
  %75 = load i32, i32* %7, align 4
  %76 = sext i32 %75 to i64
  %77 = load i64, i64* %6, align 8
  %78 = icmp ult i64 %76, %77
  br i1 %78, label %79, label %124

79:                                               ; preds = %74
  %80 = load i32*, i32** %5, align 8
  %81 = load i32, i32* %7, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = icmp eq i32 %84, 71
  br i1 %85, label %86, label %120

86:                                               ; preds = %79
  %87 = load i64, i64* %6, align 8
  %88 = load i32, i32* %7, align 4
  %89 = sext i32 %88 to i64
  %90 = sub i64 %87, %89
  %91 = icmp uge i64 %90, 188
  br i1 %91, label %92, label %101

92:                                               ; preds = %86
  %93 = load %struct.dvb_demux*, %struct.dvb_demux** %4, align 8
  %94 = load i32*, i32** %5, align 8
  %95 = load i32, i32* %7, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = call i32 @dvb_dmx_swfilter_packet(%struct.dvb_demux* %93, i32* %97)
  %99 = load i32, i32* %7, align 4
  %100 = add nsw i32 %99, 188
  store i32 %100, i32* %7, align 4
  br label %119

101:                                              ; preds = %86
  %102 = load i64, i64* %6, align 8
  %103 = load i32, i32* %7, align 4
  %104 = sext i32 %103 to i64
  %105 = sub i64 %102, %104
  %106 = trunc i64 %105 to i32
  store i32 %106, i32* %8, align 4
  %107 = load %struct.dvb_demux*, %struct.dvb_demux** %4, align 8
  %108 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %107, i32 0, i32 1
  %109 = load i32*, i32** %108, align 8
  %110 = load i32*, i32** %5, align 8
  %111 = load i32, i32* %7, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  %114 = load i32, i32* %8, align 4
  %115 = call i32 @memcpy(i32* %109, i32* %113, i32 %114)
  %116 = load i32, i32* %8, align 4
  %117 = load %struct.dvb_demux*, %struct.dvb_demux** %4, align 8
  %118 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %117, i32 0, i32 0
  store i32 %116, i32* %118, align 8
  br label %125

119:                                              ; preds = %92
  br label %123

120:                                              ; preds = %79
  %121 = load i32, i32* %7, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %7, align 4
  br label %123

123:                                              ; preds = %120, %119
  br label %74

124:                                              ; preds = %74
  br label %125

125:                                              ; preds = %124, %101, %27
  %126 = load %struct.dvb_demux*, %struct.dvb_demux** %4, align 8
  %127 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %126, i32 0, i32 2
  %128 = call i32 @spin_unlock(i32* %127)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @dvb_dmx_swfilter_packet(%struct.dvb_demux*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
