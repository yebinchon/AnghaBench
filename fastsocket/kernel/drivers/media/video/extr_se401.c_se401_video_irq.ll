; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_se401.c_se401_video_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_se401.c_se401_video_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32, %struct.TYPE_4__*, i64, i64, %struct.usb_se401* }
%struct.TYPE_4__ = type { i32 }
%struct.usb_se401 = type { i64, i64, i32, i32, i32, %struct.TYPE_4__*, i32, i32, %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"device vapourished\0A\00", align 1
@SE401_NUMSCRATCH = common dso_local global i64 0, align 8
@SE401_MAX_NULLPACKETS = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"urb burned down\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*)* @se401_video_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @se401_video_irq(%struct.urb* %0) #0 {
  %2 = alloca %struct.urb*, align 8
  %3 = alloca %struct.usb_se401*, align 8
  %4 = alloca i32, align 4
  store %struct.urb* %0, %struct.urb** %2, align 8
  %5 = load %struct.urb*, %struct.urb** %2, align 8
  %6 = getelementptr inbounds %struct.urb, %struct.urb* %5, i32 0, i32 4
  %7 = load %struct.usb_se401*, %struct.usb_se401** %6, align 8
  store %struct.usb_se401* %7, %struct.usb_se401** %3, align 8
  %8 = load %struct.urb*, %struct.urb** %2, align 8
  %9 = getelementptr inbounds %struct.urb, %struct.urb* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %4, align 4
  %11 = load %struct.usb_se401*, %struct.usb_se401** %3, align 8
  %12 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %11, i32 0, i32 10
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  br label %181

16:                                               ; preds = %1
  %17 = load %struct.usb_se401*, %struct.usb_se401** %3, align 8
  %18 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %17, i32 0, i32 5
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = icmp ne %struct.TYPE_4__* %19, null
  br i1 %20, label %27, label %21

21:                                               ; preds = %16
  %22 = load %struct.urb*, %struct.urb** %2, align 8
  %23 = getelementptr inbounds %struct.urb, %struct.urb* %22, i32 0, i32 1
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = call i32 @dev_info(i32* %25, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %181

27:                                               ; preds = %16
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %141

30:                                               ; preds = %27
  %31 = load %struct.urb*, %struct.urb** %2, align 8
  %32 = getelementptr inbounds %struct.urb, %struct.urb* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %141, label %35

35:                                               ; preds = %30
  %36 = load %struct.usb_se401*, %struct.usb_se401** %3, align 8
  %37 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %36, i32 0, i32 0
  store i64 0, i64* %37, align 8
  %38 = load %struct.usb_se401*, %struct.usb_se401** %3, align 8
  %39 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %38, i32 0, i32 8
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = load %struct.usb_se401*, %struct.usb_se401** %3, align 8
  %42 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  switch i32 %46, label %120 [
    i32 129, label %47
    i32 130, label %47
    i32 128, label %52
  ]

47:                                               ; preds = %35, %35
  %48 = load %struct.usb_se401*, %struct.usb_se401** %3, align 8
  %49 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %48, i32 0, i32 9
  %50 = load i32, i32* %49, align 8
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %49, align 8
  br label %120

52:                                               ; preds = %35
  %53 = load %struct.usb_se401*, %struct.usb_se401** %3, align 8
  %54 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %53, i32 0, i32 8
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = load %struct.usb_se401*, %struct.usb_se401** %3, align 8
  %57 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.urb*, %struct.urb** %2, align 8
  %63 = getelementptr inbounds %struct.urb, %struct.urb* %62, i32 0, i32 3
  %64 = load i64, i64* %63, align 8
  %65 = inttoptr i64 %64 to i8*
  %66 = load i32, i32* %4, align 4
  %67 = call i32 @memcpy(i32 %61, i8* %65, i32 %66)
  %68 = load %struct.usb_se401*, %struct.usb_se401** %3, align 8
  %69 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %68, i32 0, i32 8
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %69, align 8
  %71 = load %struct.usb_se401*, %struct.usb_se401** %3, align 8
  %72 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  store i32 129, i32* %75, align 4
  %76 = load %struct.usb_se401*, %struct.usb_se401** %3, align 8
  %77 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.usb_se401*, %struct.usb_se401** %3, align 8
  %80 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %79, i32 0, i32 8
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %80, align 8
  %82 = load %struct.usb_se401*, %struct.usb_se401** %3, align 8
  %83 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 1
  store i32 %78, i32* %86, align 4
  %87 = load i32, i32* %4, align 4
  %88 = load %struct.usb_se401*, %struct.usb_se401** %3, align 8
  %89 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %88, i32 0, i32 8
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %89, align 8
  %91 = load %struct.usb_se401*, %struct.usb_se401** %3, align 8
  %92 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 2
  store i32 %87, i32* %95, align 4
  %96 = load %struct.usb_se401*, %struct.usb_se401** %3, align 8
  %97 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %96, i32 0, i32 6
  %98 = call i64 @waitqueue_active(i32* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %52
  %101 = load %struct.usb_se401*, %struct.usb_se401** %3, align 8
  %102 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %101, i32 0, i32 6
  %103 = call i32 @wake_up_interruptible(i32* %102)
  br label %104

104:                                              ; preds = %100, %52
  %105 = load %struct.usb_se401*, %struct.usb_se401** %3, align 8
  %106 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %105, i32 0, i32 7
  store i32 0, i32* %106, align 4
  %107 = load %struct.usb_se401*, %struct.usb_se401** %3, align 8
  %108 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = add i64 %109, 1
  store i64 %110, i64* %108, align 8
  %111 = load %struct.usb_se401*, %struct.usb_se401** %3, align 8
  %112 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @SE401_NUMSCRATCH, align 8
  %115 = icmp uge i64 %113, %114
  br i1 %115, label %116, label %119

116:                                              ; preds = %104
  %117 = load %struct.usb_se401*, %struct.usb_se401** %3, align 8
  %118 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %117, i32 0, i32 1
  store i64 0, i64* %118, align 8
  br label %119

119:                                              ; preds = %116, %104
  br label %120

120:                                              ; preds = %35, %119, %47
  %121 = load i32, i32* %4, align 4
  %122 = load %struct.usb_se401*, %struct.usb_se401** %3, align 8
  %123 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = add nsw i32 %124, %121
  store i32 %125, i32* %123, align 8
  %126 = load %struct.usb_se401*, %struct.usb_se401** %3, align 8
  %127 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.usb_se401*, %struct.usb_se401** %3, align 8
  %130 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.usb_se401*, %struct.usb_se401** %3, align 8
  %133 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %132, i32 0, i32 4
  %134 = load i32, i32* %133, align 8
  %135 = mul nsw i32 %131, %134
  %136 = icmp sge i32 %128, %135
  br i1 %136, label %137, label %140

137:                                              ; preds = %120
  %138 = load %struct.usb_se401*, %struct.usb_se401** %3, align 8
  %139 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %138, i32 0, i32 2
  store i32 0, i32* %139, align 8
  br label %140

140:                                              ; preds = %137, %120
  br label %162

141:                                              ; preds = %30, %27
  %142 = load %struct.usb_se401*, %struct.usb_se401** %3, align 8
  %143 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = add nsw i64 %144, 1
  store i64 %145, i64* %143, align 8
  %146 = load %struct.usb_se401*, %struct.usb_se401** %3, align 8
  %147 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @SE401_MAX_NULLPACKETS, align 8
  %150 = icmp sgt i64 %148, %149
  br i1 %150, label %151, label %161

151:                                              ; preds = %141
  %152 = load %struct.usb_se401*, %struct.usb_se401** %3, align 8
  %153 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %152, i32 0, i32 6
  %154 = call i64 @waitqueue_active(i32* %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %160

156:                                              ; preds = %151
  %157 = load %struct.usb_se401*, %struct.usb_se401** %3, align 8
  %158 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %157, i32 0, i32 6
  %159 = call i32 @wake_up_interruptible(i32* %158)
  br label %160

160:                                              ; preds = %156, %151
  br label %161

161:                                              ; preds = %160, %141
  br label %162

162:                                              ; preds = %161, %140
  %163 = load %struct.urb*, %struct.urb** %2, align 8
  %164 = getelementptr inbounds %struct.urb, %struct.urb* %163, i32 0, i32 2
  store i64 0, i64* %164, align 8
  %165 = load %struct.usb_se401*, %struct.usb_se401** %3, align 8
  %166 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %165, i32 0, i32 5
  %167 = load %struct.TYPE_4__*, %struct.TYPE_4__** %166, align 8
  %168 = load %struct.urb*, %struct.urb** %2, align 8
  %169 = getelementptr inbounds %struct.urb, %struct.urb* %168, i32 0, i32 1
  store %struct.TYPE_4__* %167, %struct.TYPE_4__** %169, align 8
  %170 = load %struct.urb*, %struct.urb** %2, align 8
  %171 = load i32, i32* @GFP_KERNEL, align 4
  %172 = call i64 @usb_submit_urb(%struct.urb* %170, i32 %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %180

174:                                              ; preds = %162
  %175 = load %struct.urb*, %struct.urb** %2, align 8
  %176 = getelementptr inbounds %struct.urb, %struct.urb* %175, i32 0, i32 1
  %177 = load %struct.TYPE_4__*, %struct.TYPE_4__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i32 0, i32 0
  %179 = call i32 @dev_info(i32* %178, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %180

180:                                              ; preds = %174, %162
  br label %181

181:                                              ; preds = %180, %21, %15
  ret void
}

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i64 @waitqueue_active(i32*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i64 @usb_submit_urb(%struct.urb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
