; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pwc/extr_pwc-if.c_pwc_rcv_short_packet.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pwc/extr_pwc-if.c_pwc_rcv_short_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwc_device = type { i32, i64, i8, i32, i32, i32 }
%struct.pwc_frame_buf = type { i32, i64 }

@.str = private unnamed_addr constant [42 x i8] c"Hyundai CMOS sensor bug. Dropping frame.\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Image is mirrored.\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"Image is normal.\0A\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"Frame buffer underflow (%d bytes); discarded.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pwc_device*, %struct.pwc_frame_buf*)* @pwc_rcv_short_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pwc_rcv_short_packet(%struct.pwc_device* %0, %struct.pwc_frame_buf* %1) #0 {
  %3 = alloca %struct.pwc_device*, align 8
  %4 = alloca %struct.pwc_frame_buf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct.pwc_device* %0, %struct.pwc_device** %3, align 8
  store %struct.pwc_frame_buf* %1, %struct.pwc_frame_buf** %4, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %9 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp eq i32 %10, 730
  br i1 %11, label %12, label %103

12:                                               ; preds = %2
  %13 = load %struct.pwc_frame_buf*, %struct.pwc_frame_buf** %4, align 8
  %14 = getelementptr inbounds %struct.pwc_frame_buf, %struct.pwc_frame_buf* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to i8*
  store i8* %16, i8** %6, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 1
  %19 = load i8, i8* %18, align 1
  %20 = zext i8 %19 to i32
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %39

22:                                               ; preds = %12
  %23 = load i8*, i8** %6, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 0
  %25 = load i8, i8* %24, align 1
  %26 = zext i8 %25 to i32
  %27 = and i32 %26, 16
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %22
  %30 = call i32 @PWC_TRACE(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %31 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %32 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %33, 2
  store i64 %34, i64* %32, align 8
  %35 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %36 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %36, align 4
  br label %39

39:                                               ; preds = %29, %22, %12
  %40 = load i8*, i8** %6, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 0
  %42 = load i8, i8* %41, align 1
  %43 = zext i8 %42 to i32
  %44 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %45 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %44, i32 0, i32 2
  %46 = load i8, i8* %45, align 8
  %47 = zext i8 %46 to i32
  %48 = xor i32 %43, %47
  %49 = and i32 %48, 1
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %39
  %52 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %53 = load i8*, i8** %6, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 0
  %55 = load i8, i8* %54, align 1
  %56 = zext i8 %55 to i32
  %57 = and i32 %56, 1
  %58 = trunc i32 %57 to i8
  %59 = call i32 @pwc_snapshot_button(%struct.pwc_device* %52, i8 zeroext %58)
  br label %60

60:                                               ; preds = %51, %39
  %61 = load i8*, i8** %6, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 0
  %63 = load i8, i8* %62, align 1
  %64 = zext i8 %63 to i32
  %65 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %66 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %65, i32 0, i32 2
  %67 = load i8, i8* %66, align 8
  %68 = zext i8 %67 to i32
  %69 = xor i32 %64, %68
  %70 = and i32 %69, 2
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %84

72:                                               ; preds = %60
  %73 = load i8*, i8** %6, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 0
  %75 = load i8, i8* %74, align 1
  %76 = zext i8 %75 to i32
  %77 = and i32 %76, 2
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %72
  %80 = call i32 @PWC_TRACE(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %83

81:                                               ; preds = %72
  %82 = call i32 @PWC_TRACE(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %83

83:                                               ; preds = %81, %79
  br label %84

84:                                               ; preds = %83, %60
  %85 = load i8*, i8** %6, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 0
  %87 = load i8, i8* %86, align 1
  %88 = zext i8 %87 to i32
  %89 = and i32 %88, 3
  %90 = trunc i32 %89 to i8
  %91 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %92 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %91, i32 0, i32 2
  store i8 %90, i8* %92, align 8
  %93 = load %struct.pwc_frame_buf*, %struct.pwc_frame_buf** %4, align 8
  %94 = getelementptr inbounds %struct.pwc_frame_buf, %struct.pwc_frame_buf* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = icmp eq i32 %95, 4
  br i1 %96, label %97, label %102

97:                                               ; preds = %84
  %98 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %99 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = add nsw i64 %100, 1
  store i64 %101, i64* %99, align 8
  br label %102

102:                                              ; preds = %97, %84
  br label %148

103:                                              ; preds = %2
  %104 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %105 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = icmp eq i32 %106, 740
  br i1 %107, label %113, label %108

108:                                              ; preds = %103
  %109 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %110 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = icmp eq i32 %111, 720
  br i1 %112, label %113, label %147

113:                                              ; preds = %108, %103
  %114 = load %struct.pwc_frame_buf*, %struct.pwc_frame_buf** %4, align 8
  %115 = getelementptr inbounds %struct.pwc_frame_buf, %struct.pwc_frame_buf* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = inttoptr i64 %116 to i8*
  store i8* %117, i8** %7, align 8
  %118 = load i8*, i8** %7, align 8
  %119 = getelementptr inbounds i8, i8* %118, i64 0
  %120 = load i8, i8* %119, align 1
  %121 = zext i8 %120 to i32
  %122 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %123 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %122, i32 0, i32 2
  %124 = load i8, i8* %123, align 8
  %125 = zext i8 %124 to i32
  %126 = xor i32 %121, %125
  %127 = and i32 %126, 1
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %138

129:                                              ; preds = %113
  %130 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %131 = load i8*, i8** %7, align 8
  %132 = getelementptr inbounds i8, i8* %131, i64 0
  %133 = load i8, i8* %132, align 1
  %134 = zext i8 %133 to i32
  %135 = and i32 %134, 1
  %136 = trunc i32 %135 to i8
  %137 = call i32 @pwc_snapshot_button(%struct.pwc_device* %130, i8 zeroext %136)
  br label %138

138:                                              ; preds = %129, %113
  %139 = load i8*, i8** %7, align 8
  %140 = getelementptr inbounds i8, i8* %139, i64 0
  %141 = load i8, i8* %140, align 1
  %142 = zext i8 %141 to i32
  %143 = and i32 %142, 3
  %144 = trunc i32 %143 to i8
  %145 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %146 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %145, i32 0, i32 2
  store i8 %144, i8* %146, align 8
  br label %147

147:                                              ; preds = %138, %108
  br label %148

148:                                              ; preds = %147, %102
  %149 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %150 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = icmp sgt i64 %151, 0
  br i1 %152, label %153, label %158

153:                                              ; preds = %148
  %154 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %155 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = add nsw i64 %156, -1
  store i64 %157, i64* %155, align 8
  br label %184

158:                                              ; preds = %148
  %159 = load %struct.pwc_frame_buf*, %struct.pwc_frame_buf** %4, align 8
  %160 = getelementptr inbounds %struct.pwc_frame_buf, %struct.pwc_frame_buf* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %163 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 4
  %165 = icmp slt i32 %161, %164
  br i1 %165, label %166, label %175

166:                                              ; preds = %158
  %167 = load %struct.pwc_frame_buf*, %struct.pwc_frame_buf** %4, align 8
  %168 = getelementptr inbounds %struct.pwc_frame_buf, %struct.pwc_frame_buf* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = call i32 @PWC_DEBUG_FLOW(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i32 %169)
  %171 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %172 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %171, i32 0, i32 5
  %173 = load i32, i32* %172, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %172, align 4
  br label %183

175:                                              ; preds = %158
  store i32 1, i32* %5, align 4
  %176 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %177 = call i64 @pwc_next_fill_frame(%struct.pwc_device* %176)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %182

179:                                              ; preds = %175
  %180 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %181 = call i32 @pwc_frame_dumped(%struct.pwc_device* %180)
  br label %182

182:                                              ; preds = %179, %175
  br label %183

183:                                              ; preds = %182, %166
  br label %184

184:                                              ; preds = %183, %153
  %185 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %186 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %185, i32 0, i32 4
  %187 = load i32, i32* %186, align 8
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %186, align 8
  %189 = load i32, i32* %5, align 4
  ret i32 %189
}

declare dso_local i32 @PWC_TRACE(i8*) #1

declare dso_local i32 @pwc_snapshot_button(%struct.pwc_device*, i8 zeroext) #1

declare dso_local i32 @PWC_DEBUG_FLOW(i8*, i32) #1

declare dso_local i64 @pwc_next_fill_frame(%struct.pwc_device*) #1

declare dso_local i32 @pwc_frame_dumped(%struct.pwc_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
