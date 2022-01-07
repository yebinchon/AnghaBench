; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ov511.c_ov51x_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ov511.c_ov51x_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ov511 = type { i32, i32, i64, i32, %struct.TYPE_4__*, i8*, i8*, i64, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i8*, i64, i8*, i8* }
%struct.TYPE_3__ = type { i32 }

@OV511_NUMFRAMES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"entered\00", align 1
@BUF_ALLOCATED = common dso_local global i64 0, align 8
@OV511_NUMSBUF = common dso_local global i32 0, align 4
@FRAMES_PER_DESC = common dso_local global i32 0, align 4
@MAX_FRAME_SIZE_PER_DESC = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"sbuf[%d] @ %p\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"frame[%d] @ %p\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"leaving\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"errored\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_ov511*)* @ov51x_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov51x_alloc(%struct.usb_ov511* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_ov511*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.usb_ov511* %0, %struct.usb_ov511** %3, align 8
  %9 = load %struct.usb_ov511*, %struct.usb_ov511** %3, align 8
  %10 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %5, align 4
  %12 = load %struct.usb_ov511*, %struct.usb_ov511** %3, align 8
  %13 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* @OV511_NUMFRAMES, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @MAX_DATA_SIZE(i32 %16, i32 %17)
  %19 = mul nsw i32 %15, %18
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* @OV511_NUMFRAMES, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @MAX_RAW_DATA_SIZE(i32 %21, i32 %22)
  %24 = mul nsw i32 %20, %23
  store i32 %24, i32* %8, align 4
  %25 = call i32 (i32, i8*, ...) @PDEBUG(i32 4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.usb_ov511*, %struct.usb_ov511** %3, align 8
  %27 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %26, i32 0, i32 3
  %28 = call i32 @mutex_lock(i32* %27)
  %29 = load %struct.usb_ov511*, %struct.usb_ov511** %3, align 8
  %30 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @BUF_ALLOCATED, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %1
  br label %212

35:                                               ; preds = %1
  %36 = load i32, i32* %7, align 4
  %37 = call i64 @rvmalloc(i32 %36)
  %38 = load %struct.usb_ov511*, %struct.usb_ov511** %3, align 8
  %39 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %38, i32 0, i32 7
  store i64 %37, i64* %39, align 8
  %40 = load %struct.usb_ov511*, %struct.usb_ov511** %3, align 8
  %41 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %40, i32 0, i32 7
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %35
  br label %217

45:                                               ; preds = %35
  %46 = load i32, i32* %8, align 4
  %47 = call i8* @vmalloc(i32 %46)
  %48 = load %struct.usb_ov511*, %struct.usb_ov511** %3, align 8
  %49 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %48, i32 0, i32 6
  store i8* %47, i8** %49, align 8
  %50 = load %struct.usb_ov511*, %struct.usb_ov511** %3, align 8
  %51 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %50, i32 0, i32 6
  %52 = load i8*, i8** %51, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %45
  br label %217

55:                                               ; preds = %45
  %56 = load %struct.usb_ov511*, %struct.usb_ov511** %3, align 8
  %57 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %56, i32 0, i32 6
  %58 = load i8*, i8** %57, align 8
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @memset(i8* %58, i32 0, i32 %59)
  %61 = load i32, i32* %8, align 4
  %62 = call i8* @vmalloc(i32 %61)
  %63 = load %struct.usb_ov511*, %struct.usb_ov511** %3, align 8
  %64 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %63, i32 0, i32 5
  store i8* %62, i8** %64, align 8
  %65 = load %struct.usb_ov511*, %struct.usb_ov511** %3, align 8
  %66 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %65, i32 0, i32 5
  %67 = load i8*, i8** %66, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %70, label %69

69:                                               ; preds = %55
  br label %217

70:                                               ; preds = %55
  %71 = load %struct.usb_ov511*, %struct.usb_ov511** %3, align 8
  %72 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %71, i32 0, i32 5
  %73 = load i8*, i8** %72, align 8
  %74 = load i32, i32* %8, align 4
  %75 = call i32 @memset(i8* %73, i32 0, i32 %74)
  store i32 0, i32* %4, align 4
  br label %76

76:                                               ; preds = %114, %70
  %77 = load i32, i32* %4, align 4
  %78 = load i32, i32* @OV511_NUMSBUF, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %117

80:                                               ; preds = %76
  %81 = load i32, i32* @FRAMES_PER_DESC, align 4
  %82 = load i32, i32* @MAX_FRAME_SIZE_PER_DESC, align 4
  %83 = mul nsw i32 %81, %82
  %84 = load i32, i32* @GFP_KERNEL, align 4
  %85 = call i32 @kmalloc(i32 %83, i32 %84)
  %86 = load %struct.usb_ov511*, %struct.usb_ov511** %3, align 8
  %87 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %86, i32 0, i32 8
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %87, align 8
  %89 = load i32, i32* %4, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  store i32 %85, i32* %92, align 4
  %93 = load %struct.usb_ov511*, %struct.usb_ov511** %3, align 8
  %94 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %93, i32 0, i32 8
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %94, align 8
  %96 = load i32, i32* %4, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %103, label %102

102:                                              ; preds = %80
  br label %217

103:                                              ; preds = %80
  %104 = load i32, i32* %4, align 4
  %105 = load %struct.usb_ov511*, %struct.usb_ov511** %3, align 8
  %106 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %105, i32 0, i32 8
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %106, align 8
  %108 = load i32, i32* %4, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 (i32, i8*, ...) @PDEBUG(i32 4, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %104, i32 %112)
  br label %114

114:                                              ; preds = %103
  %115 = load i32, i32* %4, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %4, align 4
  br label %76

117:                                              ; preds = %76
  store i32 0, i32* %4, align 4
  br label %118

118:                                              ; preds = %205, %117
  %119 = load i32, i32* %4, align 4
  %120 = load i32, i32* @OV511_NUMFRAMES, align 4
  %121 = icmp slt i32 %119, %120
  br i1 %121, label %122, label %208

122:                                              ; preds = %118
  %123 = load %struct.usb_ov511*, %struct.usb_ov511** %3, align 8
  %124 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %123, i32 0, i32 7
  %125 = load i64, i64* %124, align 8
  %126 = load i32, i32* %4, align 4
  %127 = load i32, i32* %5, align 4
  %128 = load i32, i32* %6, align 4
  %129 = call i32 @MAX_DATA_SIZE(i32 %127, i32 %128)
  %130 = mul nsw i32 %126, %129
  %131 = sext i32 %130 to i64
  %132 = add nsw i64 %125, %131
  %133 = load %struct.usb_ov511*, %struct.usb_ov511** %3, align 8
  %134 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %133, i32 0, i32 4
  %135 = load %struct.TYPE_4__*, %struct.TYPE_4__** %134, align 8
  %136 = load i32, i32* %4, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 1
  store i64 %132, i64* %139, align 8
  %140 = load %struct.usb_ov511*, %struct.usb_ov511** %3, align 8
  %141 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %140, i32 0, i32 6
  %142 = load i8*, i8** %141, align 8
  %143 = load i32, i32* %4, align 4
  %144 = load i32, i32* %5, align 4
  %145 = load i32, i32* %6, align 4
  %146 = call i32 @MAX_RAW_DATA_SIZE(i32 %144, i32 %145)
  %147 = mul nsw i32 %143, %146
  %148 = sext i32 %147 to i64
  %149 = getelementptr i8, i8* %142, i64 %148
  %150 = load %struct.usb_ov511*, %struct.usb_ov511** %3, align 8
  %151 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %150, i32 0, i32 4
  %152 = load %struct.TYPE_4__*, %struct.TYPE_4__** %151, align 8
  %153 = load i32, i32* %4, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 3
  store i8* %149, i8** %156, align 8
  %157 = load %struct.usb_ov511*, %struct.usb_ov511** %3, align 8
  %158 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %157, i32 0, i32 5
  %159 = load i8*, i8** %158, align 8
  %160 = load i32, i32* %4, align 4
  %161 = load i32, i32* %5, align 4
  %162 = load i32, i32* %6, align 4
  %163 = call i32 @MAX_RAW_DATA_SIZE(i32 %161, i32 %162)
  %164 = mul nsw i32 %160, %163
  %165 = sext i32 %164 to i64
  %166 = getelementptr i8, i8* %159, i64 %165
  %167 = load %struct.usb_ov511*, %struct.usb_ov511** %3, align 8
  %168 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %167, i32 0, i32 4
  %169 = load %struct.TYPE_4__*, %struct.TYPE_4__** %168, align 8
  %170 = load i32, i32* %4, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i64 %171
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i32 0, i32 2
  store i8* %166, i8** %173, align 8
  %174 = load i32, i32* @GFP_KERNEL, align 4
  %175 = call i64 @__get_free_page(i32 %174)
  %176 = inttoptr i64 %175 to i8*
  %177 = load %struct.usb_ov511*, %struct.usb_ov511** %3, align 8
  %178 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %177, i32 0, i32 4
  %179 = load %struct.TYPE_4__*, %struct.TYPE_4__** %178, align 8
  %180 = load i32, i32* %4, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i64 %181
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %182, i32 0, i32 0
  store i8* %176, i8** %183, align 8
  %184 = load %struct.usb_ov511*, %struct.usb_ov511** %3, align 8
  %185 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %184, i32 0, i32 4
  %186 = load %struct.TYPE_4__*, %struct.TYPE_4__** %185, align 8
  %187 = load i32, i32* %4, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i64 %188
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %189, i32 0, i32 0
  %191 = load i8*, i8** %190, align 8
  %192 = icmp ne i8* %191, null
  br i1 %192, label %194, label %193

193:                                              ; preds = %122
  br label %217

194:                                              ; preds = %122
  %195 = load i32, i32* %4, align 4
  %196 = load %struct.usb_ov511*, %struct.usb_ov511** %3, align 8
  %197 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %196, i32 0, i32 4
  %198 = load %struct.TYPE_4__*, %struct.TYPE_4__** %197, align 8
  %199 = load i32, i32* %4, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %198, i64 %200
  %202 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %201, i32 0, i32 1
  %203 = load i64, i64* %202, align 8
  %204 = call i32 (i32, i8*, ...) @PDEBUG(i32 4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %195, i64 %203)
  br label %205

205:                                              ; preds = %194
  %206 = load i32, i32* %4, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %4, align 4
  br label %118

208:                                              ; preds = %118
  %209 = load i64, i64* @BUF_ALLOCATED, align 8
  %210 = load %struct.usb_ov511*, %struct.usb_ov511** %3, align 8
  %211 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %210, i32 0, i32 2
  store i64 %209, i64* %211, align 8
  br label %212

212:                                              ; preds = %208, %34
  %213 = load %struct.usb_ov511*, %struct.usb_ov511** %3, align 8
  %214 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %213, i32 0, i32 3
  %215 = call i32 @mutex_unlock(i32* %214)
  %216 = call i32 (i32, i8*, ...) @PDEBUG(i32 4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %226

217:                                              ; preds = %193, %102, %69, %54, %44
  %218 = load %struct.usb_ov511*, %struct.usb_ov511** %3, align 8
  %219 = call i32 @ov51x_do_dealloc(%struct.usb_ov511* %218)
  %220 = load %struct.usb_ov511*, %struct.usb_ov511** %3, align 8
  %221 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %220, i32 0, i32 3
  %222 = call i32 @mutex_unlock(i32* %221)
  %223 = call i32 (i32, i8*, ...) @PDEBUG(i32 4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %224 = load i32, i32* @ENOMEM, align 4
  %225 = sub nsw i32 0, %224
  store i32 %225, i32* %2, align 4
  br label %226

226:                                              ; preds = %217, %212
  %227 = load i32, i32* %2, align 4
  ret i32 %227
}

declare dso_local i32 @MAX_DATA_SIZE(i32, i32) #1

declare dso_local i32 @MAX_RAW_DATA_SIZE(i32, i32) #1

declare dso_local i32 @PDEBUG(i32, i8*, ...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @rvmalloc(i32) #1

declare dso_local i8* @vmalloc(i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @kmalloc(i32, i32) #1

declare dso_local i64 @__get_free_page(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ov51x_do_dealloc(%struct.usb_ov511*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
