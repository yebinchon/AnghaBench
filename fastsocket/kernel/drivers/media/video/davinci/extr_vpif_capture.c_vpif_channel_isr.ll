; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_vpif_capture.c_vpif_channel_isr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_vpif_capture.c_vpif_channel_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vpif_device = type { %struct.channel_obj** }
%struct.channel_obj = type { i32, i32, %struct.TYPE_10__, %struct.common_obj* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.common_obj = type { i64, i64, i64, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@vpif_obj = common dso_local global %struct.vpif_device zeroinitializer, align 8
@VPIF_VIDEO_INDEX = common dso_local global i64 0, align 8
@VPIF_NUMBER_OF_OBJECTS = common dso_local global i32 0, align 4
@channel_first_int = common dso_local global i64** null, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @vpif_channel_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vpif_channel_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.vpif_device*, align 8
  %7 = alloca %struct.common_obj*, align 8
  %8 = alloca %struct.channel_obj*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store %struct.vpif_device* @vpif_obj, %struct.vpif_device** %6, align 8
  store i32 0, i32* %10, align 4
  store i32 -1, i32* %11, align 4
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to i32*
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %10, align 4
  %16 = load %struct.vpif_device*, %struct.vpif_device** %6, align 8
  %17 = getelementptr inbounds %struct.vpif_device, %struct.vpif_device* %16, i32 0, i32 0
  %18 = load %struct.channel_obj**, %struct.channel_obj*** %17, align 8
  %19 = load i32, i32* %10, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.channel_obj*, %struct.channel_obj** %18, i64 %20
  %22 = load %struct.channel_obj*, %struct.channel_obj** %21, align 8
  store %struct.channel_obj* %22, %struct.channel_obj** %8, align 8
  %23 = load %struct.channel_obj*, %struct.channel_obj** %8, align 8
  %24 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %23, i32 0, i32 3
  %25 = load %struct.common_obj*, %struct.common_obj** %24, align 8
  %26 = load i64, i64* @VPIF_VIDEO_INDEX, align 8
  %27 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %25, i64 %26
  %28 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %27, i32 0, i32 4
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %9, align 4
  store i32 0, i32* %12, align 4
  br label %33

33:                                               ; preds = %180, %2
  %34 = load i32, i32* %12, align 4
  %35 = load i32, i32* @VPIF_NUMBER_OF_OBJECTS, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %183

37:                                               ; preds = %33
  %38 = load %struct.channel_obj*, %struct.channel_obj** %8, align 8
  %39 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %38, i32 0, i32 3
  %40 = load %struct.common_obj*, %struct.common_obj** %39, align 8
  %41 = load i32, i32* %12, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %40, i64 %42
  store %struct.common_obj* %43, %struct.common_obj** %7, align 8
  %44 = load %struct.common_obj*, %struct.common_obj** %7, align 8
  %45 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 0, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %37
  br label %180

49:                                               ; preds = %37
  %50 = load %struct.channel_obj*, %struct.channel_obj** %8, align 8
  %51 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp eq i32 1, %54
  br i1 %55, label %56, label %95

56:                                               ; preds = %49
  %57 = load %struct.common_obj*, %struct.common_obj** %7, align 8
  %58 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %57, i32 0, i32 3
  %59 = call i64 @list_empty(i32* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  br label %180

62:                                               ; preds = %56
  %63 = load i64**, i64*** @channel_first_int, align 8
  %64 = load i32, i32* %12, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i64*, i64** %63, i64 %65
  %67 = load i64*, i64** %66, align 8
  %68 = load i32, i32* %10, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i64, i64* %67, i64 %69
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %62
  %74 = load %struct.common_obj*, %struct.common_obj** %7, align 8
  %75 = call i32 @vpif_process_buffer_complete(%struct.common_obj* %74)
  br label %76

76:                                               ; preds = %73, %62
  %77 = load i64**, i64*** @channel_first_int, align 8
  %78 = load i32, i32* %12, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i64*, i64** %77, i64 %79
  %81 = load i64*, i64** %80, align 8
  %82 = load i32, i32* %10, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i64, i64* %81, i64 %83
  store i64 0, i64* %84, align 8
  %85 = load %struct.common_obj*, %struct.common_obj** %7, align 8
  %86 = call i32 @vpif_schedule_next_buffer(%struct.common_obj* %85)
  %87 = load i64**, i64*** @channel_first_int, align 8
  %88 = load i32, i32* %12, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i64*, i64** %87, i64 %89
  %91 = load i64*, i64** %90, align 8
  %92 = load i32, i32* %10, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i64, i64* %91, i64 %93
  store i64 0, i64* %94, align 8
  br label %179

95:                                               ; preds = %49
  %96 = load i64**, i64*** @channel_first_int, align 8
  %97 = load i32, i32* %12, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i64*, i64** %96, i64 %98
  %100 = load i64*, i64** %99, align 8
  %101 = load i32, i32* %10, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i64, i64* %100, i64 %102
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %115

106:                                              ; preds = %95
  %107 = load i64**, i64*** @channel_first_int, align 8
  %108 = load i32, i32* %12, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i64*, i64** %107, i64 %109
  %111 = load i64*, i64** %110, align 8
  %112 = load i32, i32* %10, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i64, i64* %111, i64 %113
  store i64 0, i64* %114, align 8
  br label %180

115:                                              ; preds = %95
  %116 = load i32, i32* %12, align 4
  %117 = icmp eq i32 0, %116
  br i1 %117, label %118, label %142

118:                                              ; preds = %115
  %119 = load %struct.channel_obj*, %struct.channel_obj** %8, align 8
  %120 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = xor i32 %121, 1
  store i32 %122, i32* %120, align 8
  %123 = load %struct.channel_obj*, %struct.channel_obj** %8, align 8
  %124 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @vpif_channel_getfid(i32 %125)
  store i32 %126, i32* %11, align 4
  %127 = load i32, i32* %11, align 4
  %128 = load %struct.channel_obj*, %struct.channel_obj** %8, align 8
  %129 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = icmp ne i32 %127, %130
  br i1 %131, label %132, label %141

132:                                              ; preds = %118
  %133 = load i32, i32* %11, align 4
  %134 = icmp eq i32 0, %133
  br i1 %134, label %135, label %139

135:                                              ; preds = %132
  %136 = load i32, i32* %11, align 4
  %137 = load %struct.channel_obj*, %struct.channel_obj** %8, align 8
  %138 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %137, i32 0, i32 0
  store i32 %136, i32* %138, align 8
  br label %139

139:                                              ; preds = %135, %132
  %140 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %140, i32* %3, align 4
  br label %185

141:                                              ; preds = %118
  br label %142

142:                                              ; preds = %141, %115
  %143 = load i32, i32* %11, align 4
  %144 = icmp eq i32 0, %143
  br i1 %144, label %145, label %157

145:                                              ; preds = %142
  %146 = load %struct.common_obj*, %struct.common_obj** %7, align 8
  %147 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = load %struct.common_obj*, %struct.common_obj** %7, align 8
  %150 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %149, i32 0, i32 2
  %151 = load i64, i64* %150, align 8
  %152 = icmp eq i64 %148, %151
  br i1 %152, label %153, label %154

153:                                              ; preds = %145
  br label %180

154:                                              ; preds = %145
  %155 = load %struct.common_obj*, %struct.common_obj** %7, align 8
  %156 = call i32 @vpif_process_buffer_complete(%struct.common_obj* %155)
  br label %178

157:                                              ; preds = %142
  %158 = load i32, i32* %11, align 4
  %159 = icmp eq i32 1, %158
  br i1 %159, label %160, label %177

160:                                              ; preds = %157
  %161 = load %struct.common_obj*, %struct.common_obj** %7, align 8
  %162 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %161, i32 0, i32 3
  %163 = call i64 @list_empty(i32* %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %173, label %165

165:                                              ; preds = %160
  %166 = load %struct.common_obj*, %struct.common_obj** %7, align 8
  %167 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %166, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  %169 = load %struct.common_obj*, %struct.common_obj** %7, align 8
  %170 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %169, i32 0, i32 2
  %171 = load i64, i64* %170, align 8
  %172 = icmp ne i64 %168, %171
  br i1 %172, label %173, label %174

173:                                              ; preds = %165, %160
  br label %180

174:                                              ; preds = %165
  %175 = load %struct.common_obj*, %struct.common_obj** %7, align 8
  %176 = call i32 @vpif_schedule_next_buffer(%struct.common_obj* %175)
  br label %177

177:                                              ; preds = %174, %157
  br label %178

178:                                              ; preds = %177, %154
  br label %179

179:                                              ; preds = %178, %76
  br label %180

180:                                              ; preds = %179, %173, %153, %106, %61, %48
  %181 = load i32, i32* %12, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %12, align 4
  br label %33

183:                                              ; preds = %33
  %184 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %184, i32* %3, align 4
  br label %185

185:                                              ; preds = %183, %139
  %186 = load i32, i32* %3, align 4
  ret i32 %186
}

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @vpif_process_buffer_complete(%struct.common_obj*) #1

declare dso_local i32 @vpif_schedule_next_buffer(%struct.common_obj*) #1

declare dso_local i32 @vpif_channel_getfid(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
