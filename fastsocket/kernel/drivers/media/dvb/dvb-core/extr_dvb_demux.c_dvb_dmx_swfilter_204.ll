; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-core/extr_dvb_demux.c_dvb_dmx_swfilter_204.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-core/extr_dvb_demux.c_dvb_dmx_swfilter_204.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_demux = type { i32, i32*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dvb_dmx_swfilter_204(%struct.dvb_demux* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.dvb_demux*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [188 x i32], align 16
  store %struct.dvb_demux* %0, %struct.dvb_demux** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.dvb_demux*, %struct.dvb_demux** %4, align 8
  %12 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %11, i32 0, i32 2
  %13 = call i32 @spin_lock(i32* %12)
  %14 = load %struct.dvb_demux*, %struct.dvb_demux** %4, align 8
  %15 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %90

18:                                               ; preds = %3
  %19 = load %struct.dvb_demux*, %struct.dvb_demux** %4, align 8
  %20 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = sub nsw i32 204, %22
  store i32 %23, i32* %9, align 4
  %24 = load i64, i64* %6, align 8
  %25 = load i32, i32* %9, align 4
  %26 = sext i32 %25 to i64
  %27 = icmp ult i64 %24, %26
  br i1 %27, label %28, label %46

28:                                               ; preds = %18
  %29 = load %struct.dvb_demux*, %struct.dvb_demux** %4, align 8
  %30 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32*, i32** %5, align 8
  %36 = load i64, i64* %6, align 8
  %37 = trunc i64 %36 to i32
  %38 = call i32 @memcpy(i32* %34, i32* %35, i32 %37)
  %39 = load i64, i64* %6, align 8
  %40 = load %struct.dvb_demux*, %struct.dvb_demux** %4, align 8
  %41 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = sext i32 %42 to i64
  %44 = add i64 %43, %39
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %41, align 8
  br label %158

46:                                               ; preds = %18
  %47 = load %struct.dvb_demux*, %struct.dvb_demux** %4, align 8
  %48 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32*, i32** %5, align 8
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @memcpy(i32* %52, i32* %53, i32 %54)
  %56 = load %struct.dvb_demux*, %struct.dvb_demux** %4, align 8
  %57 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp eq i32 %60, 71
  br i1 %61, label %69, label %62

62:                                               ; preds = %46
  %63 = load %struct.dvb_demux*, %struct.dvb_demux** %4, align 8
  %64 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 0
  %67 = load i32, i32* %66, align 4
  %68 = icmp eq i32 %67, 184
  br i1 %68, label %69, label %84

69:                                               ; preds = %62, %46
  %70 = getelementptr inbounds [188 x i32], [188 x i32]* %10, i64 0, i64 0
  %71 = load %struct.dvb_demux*, %struct.dvb_demux** %4, align 8
  %72 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = call i32 @memcpy(i32* %70, i32* %73, i32 188)
  %75 = getelementptr inbounds [188 x i32], [188 x i32]* %10, i64 0, i64 0
  %76 = load i32, i32* %75, align 16
  %77 = icmp eq i32 %76, 184
  br i1 %77, label %78, label %80

78:                                               ; preds = %69
  %79 = getelementptr inbounds [188 x i32], [188 x i32]* %10, i64 0, i64 0
  store i32 71, i32* %79, align 16
  br label %80

80:                                               ; preds = %78, %69
  %81 = load %struct.dvb_demux*, %struct.dvb_demux** %4, align 8
  %82 = getelementptr inbounds [188 x i32], [188 x i32]* %10, i64 0, i64 0
  %83 = call i32 @dvb_dmx_swfilter_packet(%struct.dvb_demux* %81, i32* %82)
  br label %84

84:                                               ; preds = %80, %62
  %85 = load %struct.dvb_demux*, %struct.dvb_demux** %4, align 8
  %86 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %85, i32 0, i32 0
  store i32 0, i32* %86, align 8
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* %7, align 4
  %89 = add nsw i32 %88, %87
  store i32 %89, i32* %7, align 4
  br label %90

90:                                               ; preds = %84, %3
  br label %91

91:                                               ; preds = %156, %90
  %92 = load i32, i32* %7, align 4
  %93 = sext i32 %92 to i64
  %94 = load i64, i64* %6, align 8
  %95 = icmp ult i64 %93, %94
  br i1 %95, label %96, label %157

96:                                               ; preds = %91
  %97 = load i32*, i32** %5, align 8
  %98 = load i32, i32* %7, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = icmp eq i32 %101, 71
  br i1 %102, label %110, label %103

103:                                              ; preds = %96
  %104 = load i32*, i32** %5, align 8
  %105 = load i32, i32* %7, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = icmp eq i32 %108, 184
  br i1 %109, label %110, label %153

110:                                              ; preds = %103, %96
  %111 = load i64, i64* %6, align 8
  %112 = load i32, i32* %7, align 4
  %113 = sext i32 %112 to i64
  %114 = sub i64 %111, %113
  %115 = icmp uge i64 %114, 204
  br i1 %115, label %116, label %134

116:                                              ; preds = %110
  %117 = getelementptr inbounds [188 x i32], [188 x i32]* %10, i64 0, i64 0
  %118 = load i32*, i32** %5, align 8
  %119 = load i32, i32* %7, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  %122 = call i32 @memcpy(i32* %117, i32* %121, i32 188)
  %123 = getelementptr inbounds [188 x i32], [188 x i32]* %10, i64 0, i64 0
  %124 = load i32, i32* %123, align 16
  %125 = icmp eq i32 %124, 184
  br i1 %125, label %126, label %128

126:                                              ; preds = %116
  %127 = getelementptr inbounds [188 x i32], [188 x i32]* %10, i64 0, i64 0
  store i32 71, i32* %127, align 16
  br label %128

128:                                              ; preds = %126, %116
  %129 = load %struct.dvb_demux*, %struct.dvb_demux** %4, align 8
  %130 = getelementptr inbounds [188 x i32], [188 x i32]* %10, i64 0, i64 0
  %131 = call i32 @dvb_dmx_swfilter_packet(%struct.dvb_demux* %129, i32* %130)
  %132 = load i32, i32* %7, align 4
  %133 = add nsw i32 %132, 204
  store i32 %133, i32* %7, align 4
  br label %152

134:                                              ; preds = %110
  %135 = load i64, i64* %6, align 8
  %136 = load i32, i32* %7, align 4
  %137 = sext i32 %136 to i64
  %138 = sub i64 %135, %137
  %139 = trunc i64 %138 to i32
  store i32 %139, i32* %8, align 4
  %140 = load %struct.dvb_demux*, %struct.dvb_demux** %4, align 8
  %141 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %140, i32 0, i32 1
  %142 = load i32*, i32** %141, align 8
  %143 = load i32*, i32** %5, align 8
  %144 = load i32, i32* %7, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %143, i64 %145
  %147 = load i32, i32* %8, align 4
  %148 = call i32 @memcpy(i32* %142, i32* %146, i32 %147)
  %149 = load i32, i32* %8, align 4
  %150 = load %struct.dvb_demux*, %struct.dvb_demux** %4, align 8
  %151 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %150, i32 0, i32 0
  store i32 %149, i32* %151, align 8
  br label %158

152:                                              ; preds = %128
  br label %156

153:                                              ; preds = %103
  %154 = load i32, i32* %7, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %7, align 4
  br label %156

156:                                              ; preds = %153, %152
  br label %91

157:                                              ; preds = %91
  br label %158

158:                                              ; preds = %157, %134, %28
  %159 = load %struct.dvb_demux*, %struct.dvb_demux** %4, align 8
  %160 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %159, i32 0, i32 2
  %161 = call i32 @spin_unlock(i32* %160)
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
