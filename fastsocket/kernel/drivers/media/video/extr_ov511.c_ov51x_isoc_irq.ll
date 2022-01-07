; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ov511.c_ov51x_isoc_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ov511.c_ov51x_isoc_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32, i8*, i64, %struct.TYPE_2__*, i32, %struct.ov511_sbuf* }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.ov511_sbuf = type { i32, %struct.usb_ov511* }
%struct.usb_ov511 = type { i64, i64, i32, i64, i32, i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"no context\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"no device, or not open\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"hmmm... not streaming, but got interrupt\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@ECONNRESET = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"URB unlinked\00", align 1
@EINPROGRESS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"ERROR: urb->status=%d: %s\00", align 1
@urb_errlist = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [28 x i8] c"sbuf[%d]: Moving %d packets\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"Zero-length packet\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"data error: [%d] len=%d, status=%d\00", align 1
@BCL_OV511 = common dso_local global i64 0, align 8
@BCL_OV518 = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [27 x i8] c"Unknown bridge device (%d)\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [24 x i8] c"usb_submit_urb() ret %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*)* @ov51x_isoc_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ov51x_isoc_irq(%struct.urb* %0) #0 {
  %2 = alloca %struct.urb*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_ov511*, align 8
  %5 = alloca %struct.ov511_sbuf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.urb* %0, %struct.urb** %2, align 8
  %9 = load %struct.urb*, %struct.urb** %2, align 8
  %10 = getelementptr inbounds %struct.urb, %struct.urb* %9, i32 0, i32 5
  %11 = load %struct.ov511_sbuf*, %struct.ov511_sbuf** %10, align 8
  %12 = icmp ne %struct.ov511_sbuf* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %1
  %14 = call i32 (i32, i8*, ...) @PDEBUG(i32 4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  br label %213

15:                                               ; preds = %1
  %16 = load %struct.urb*, %struct.urb** %2, align 8
  %17 = getelementptr inbounds %struct.urb, %struct.urb* %16, i32 0, i32 5
  %18 = load %struct.ov511_sbuf*, %struct.ov511_sbuf** %17, align 8
  store %struct.ov511_sbuf* %18, %struct.ov511_sbuf** %5, align 8
  %19 = load %struct.ov511_sbuf*, %struct.ov511_sbuf** %5, align 8
  %20 = getelementptr inbounds %struct.ov511_sbuf, %struct.ov511_sbuf* %19, i32 0, i32 1
  %21 = load %struct.usb_ov511*, %struct.usb_ov511** %20, align 8
  store %struct.usb_ov511* %21, %struct.usb_ov511** %4, align 8
  %22 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %23 = icmp ne %struct.usb_ov511* %22, null
  br i1 %23, label %24, label %34

24:                                               ; preds = %15
  %25 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %26 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %31 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %30, i32 0, i32 6
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %29, %24, %15
  %35 = call i32 (i32, i8*, ...) @PDEBUG(i32 4, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %213

36:                                               ; preds = %29
  %37 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %38 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %36
  %42 = call i32 (i32, i8*, ...) @PDEBUG(i32 4, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  br label %213

43:                                               ; preds = %36
  %44 = load %struct.urb*, %struct.urb** %2, align 8
  %45 = getelementptr inbounds %struct.urb, %struct.urb* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @ENOENT, align 4
  %48 = sub nsw i32 0, %47
  %49 = icmp eq i32 %46, %48
  br i1 %49, label %57, label %50

50:                                               ; preds = %43
  %51 = load %struct.urb*, %struct.urb** %2, align 8
  %52 = getelementptr inbounds %struct.urb, %struct.urb* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @ECONNRESET, align 4
  %55 = sub nsw i32 0, %54
  %56 = icmp eq i32 %53, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %50, %43
  %58 = call i32 (i32, i8*, ...) @PDEBUG(i32 4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  br label %213

59:                                               ; preds = %50
  %60 = load %struct.urb*, %struct.urb** %2, align 8
  %61 = getelementptr inbounds %struct.urb, %struct.urb* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @EINPROGRESS, align 4
  %64 = sub nsw i32 0, %63
  %65 = icmp ne i32 %62, %64
  br i1 %65, label %66, label %81

66:                                               ; preds = %59
  %67 = load %struct.urb*, %struct.urb** %2, align 8
  %68 = getelementptr inbounds %struct.urb, %struct.urb* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 8
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %81

71:                                               ; preds = %66
  %72 = load %struct.urb*, %struct.urb** %2, align 8
  %73 = getelementptr inbounds %struct.urb, %struct.urb* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @urb_errlist, align 4
  %76 = load %struct.urb*, %struct.urb** %2, align 8
  %77 = getelementptr inbounds %struct.urb, %struct.urb* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @symbolic(i32 %75, i32 %78)
  %80 = call i32 (i8*, i32, ...) @err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %74, i32 %79)
  br label %81

81:                                               ; preds = %71, %66, %59
  %82 = load %struct.ov511_sbuf*, %struct.ov511_sbuf** %5, align 8
  %83 = getelementptr inbounds %struct.ov511_sbuf, %struct.ov511_sbuf* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.urb*, %struct.urb** %2, align 8
  %86 = getelementptr inbounds %struct.urb, %struct.urb* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i32 (i32, i8*, ...) @PDEBUG(i32 5, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i32 %84, i32 %87)
  store i32 0, i32* %3, align 4
  br label %89

89:                                               ; preds = %196, %81
  %90 = load i32, i32* %3, align 4
  %91 = load %struct.urb*, %struct.urb** %2, align 8
  %92 = getelementptr inbounds %struct.urb, %struct.urb* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = icmp slt i32 %90, %93
  br i1 %94, label %95, label %199

95:                                               ; preds = %89
  %96 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %97 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp sge i64 %98, 0
  br i1 %99, label %100, label %185

100:                                              ; preds = %95
  %101 = load %struct.urb*, %struct.urb** %2, align 8
  %102 = getelementptr inbounds %struct.urb, %struct.urb* %101, i32 0, i32 3
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %102, align 8
  %104 = load i32, i32* %3, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  store i32 %108, i32* %6, align 4
  %109 = load %struct.urb*, %struct.urb** %2, align 8
  %110 = getelementptr inbounds %struct.urb, %struct.urb* %109, i32 0, i32 3
  %111 = load %struct.TYPE_2__*, %struct.TYPE_2__** %110, align 8
  %112 = load i32, i32* %3, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  store i32 %116, i32* %7, align 4
  %117 = load %struct.urb*, %struct.urb** %2, align 8
  %118 = getelementptr inbounds %struct.urb, %struct.urb* %117, i32 0, i32 3
  %119 = load %struct.TYPE_2__*, %struct.TYPE_2__** %118, align 8
  %120 = load i32, i32* %3, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 0
  store i32 0, i32* %123, align 4
  %124 = load %struct.urb*, %struct.urb** %2, align 8
  %125 = getelementptr inbounds %struct.urb, %struct.urb* %124, i32 0, i32 3
  %126 = load %struct.TYPE_2__*, %struct.TYPE_2__** %125, align 8
  %127 = load i32, i32* %3, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 1
  store i32 0, i32* %130, align 4
  %131 = load %struct.urb*, %struct.urb** %2, align 8
  %132 = getelementptr inbounds %struct.urb, %struct.urb* %131, i32 0, i32 1
  %133 = load i8*, i8** %132, align 8
  %134 = load %struct.urb*, %struct.urb** %2, align 8
  %135 = getelementptr inbounds %struct.urb, %struct.urb* %134, i32 0, i32 3
  %136 = load %struct.TYPE_2__*, %struct.TYPE_2__** %135, align 8
  %137 = load i32, i32* %3, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i8, i8* %133, i64 %142
  store i8* %143, i8** %8, align 8
  %144 = load i32, i32* %6, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %148, label %146

146:                                              ; preds = %100
  %147 = call i32 (i32, i8*, ...) @PDEBUG(i32 4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  br label %196

148:                                              ; preds = %100
  %149 = load i32, i32* %7, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %156

151:                                              ; preds = %148
  %152 = load i32, i32* %3, align 4
  %153 = load i32, i32* %6, align 4
  %154 = load i32, i32* %7, align 4
  %155 = call i32 (i32, i8*, ...) @PDEBUG(i32 2, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0), i32 %152, i32 %153, i32 %154)
  br label %156

156:                                              ; preds = %151, %148
  %157 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %158 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* @BCL_OV511, align 8
  %161 = icmp eq i64 %159, %160
  br i1 %161, label %162, label %167

162:                                              ; preds = %156
  %163 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %164 = load i8*, i8** %8, align 8
  %165 = load i32, i32* %6, align 4
  %166 = call i32 @ov511_move_data(%struct.usb_ov511* %163, i8* %164, i32 %165)
  br label %184

167:                                              ; preds = %156
  %168 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %169 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = load i64, i64* @BCL_OV518, align 8
  %172 = icmp eq i64 %170, %171
  br i1 %172, label %173, label %178

173:                                              ; preds = %167
  %174 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %175 = load i8*, i8** %8, align 8
  %176 = load i32, i32* %6, align 4
  %177 = call i32 @ov518_move_data(%struct.usb_ov511* %174, i8* %175, i32 %176)
  br label %183

178:                                              ; preds = %167
  %179 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %180 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 8
  %182 = call i32 (i8*, i32, ...) @err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0), i32 %181)
  br label %183

183:                                              ; preds = %178, %173
  br label %184

184:                                              ; preds = %183, %162
  br label %195

185:                                              ; preds = %95
  %186 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %187 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %186, i32 0, i32 4
  %188 = call i64 @waitqueue_active(i32* %187)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %194

190:                                              ; preds = %185
  %191 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %192 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %191, i32 0, i32 4
  %193 = call i32 @wake_up_interruptible(i32* %192)
  br label %194

194:                                              ; preds = %190, %185
  br label %195

195:                                              ; preds = %194, %184
  br label %196

196:                                              ; preds = %195, %146
  %197 = load i32, i32* %3, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %3, align 4
  br label %89

199:                                              ; preds = %89
  %200 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %201 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %200, i32 0, i32 3
  %202 = load i64, i64* %201, align 8
  %203 = load %struct.urb*, %struct.urb** %2, align 8
  %204 = getelementptr inbounds %struct.urb, %struct.urb* %203, i32 0, i32 2
  store i64 %202, i64* %204, align 8
  %205 = load %struct.urb*, %struct.urb** %2, align 8
  %206 = load i32, i32* @GFP_ATOMIC, align 4
  %207 = call i32 @usb_submit_urb(%struct.urb* %205, i32 %206)
  store i32 %207, i32* %3, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %212

209:                                              ; preds = %199
  %210 = load i32, i32* %3, align 4
  %211 = call i32 (i8*, i32, ...) @err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0), i32 %210)
  br label %212

212:                                              ; preds = %209, %199
  br label %213

213:                                              ; preds = %212, %57, %41, %34, %13
  ret void
}

declare dso_local i32 @PDEBUG(i32, i8*, ...) #1

declare dso_local i32 @err(i8*, i32, ...) #1

declare dso_local i32 @symbolic(i32, i32) #1

declare dso_local i32 @ov511_move_data(%struct.usb_ov511*, i8*, i32) #1

declare dso_local i32 @ov518_move_data(%struct.usb_ov511*, i8*, i32) #1

declare dso_local i64 @waitqueue_active(i32*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
