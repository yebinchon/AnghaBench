; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_dabusb.c_dabusb_alloc_buffers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_dabusb.c_dabusb_alloc_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32, i32, i32, %struct.TYPE_11__*, %struct.TYPE_13__*, i32, %struct.TYPE_14__*, %struct.TYPE_13__*, i32, i32, %struct.TYPE_12__* }
%struct.TYPE_11__ = type { i32, i32 }

@_DABUSB_ISOPIPE = common dso_local global i32 0, align 4
@_ISOPIPESIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"dabusb_alloc_buffers pipesize:%d packets:%d transfer_buffer_len:%d\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"kzalloc(sizeof(buff_t))==NULL\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"usb_alloc_urb == NULL\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"kmalloc(%d)==NULL\0A\00", align 1
@dabusb_iso_complete = common dso_local global i32 0, align 4
@URB_ISO_ASAP = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*)* @dabusb_alloc_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dabusb_alloc_buffers(%struct.TYPE_12__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  store i32 0, i32* %4, align 4
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 3
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %14 = load i32, i32* @_DABUSB_ISOPIPE, align 4
  %15 = call i32 @usb_rcvisocpipe(%struct.TYPE_14__* %13, i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 3
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @usb_pipeout(i32 %20)
  %22 = call i32 @usb_maxpacket(%struct.TYPE_14__* %18, i32 %19, i32 %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* @_ISOPIPESIZE, align 4
  %24 = load i32, i32* %7, align 4
  %25 = sdiv i32 %23, %24
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %7, align 4
  %28 = mul nsw i32 %26, %27
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @dbg(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %30, i32 %31)
  br label %33

33:                                               ; preds = %167, %1
  %34 = load i32, i32* %4, align 4
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = shl i32 %37, 10
  %39 = icmp slt i32 %34, %38
  br i1 %39, label %40, label %176

40:                                               ; preds = %33
  %41 = load i32, i32* @GFP_KERNEL, align 4
  %42 = call %struct.TYPE_13__* @kzalloc(i32 4, i32 %41)
  store %struct.TYPE_13__* %42, %struct.TYPE_13__** %5, align 8
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %44 = icmp ne %struct.TYPE_13__* %43, null
  br i1 %44, label %51, label %45

45:                                               ; preds = %40
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 3
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 0
  %50 = call i32 (i32*, i8*, ...) @dev_err(i32* %49, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %180

51:                                               ; preds = %40
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 11
  store %struct.TYPE_12__* %52, %struct.TYPE_12__** %54, align 8
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* @GFP_KERNEL, align 4
  %57 = call %struct.TYPE_13__* @usb_alloc_urb(i32 %55, i32 %56)
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 5
  store %struct.TYPE_13__* %57, %struct.TYPE_13__** %59, align 8
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 5
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %61, align 8
  %63 = icmp ne %struct.TYPE_13__* %62, null
  br i1 %63, label %72, label %64

64:                                               ; preds = %51
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 3
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 0
  %69 = call i32 (i32*, i8*, ...) @dev_err(i32* %68, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %71 = call i32 @kfree(%struct.TYPE_13__* %70)
  br label %180

72:                                               ; preds = %51
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* @GFP_KERNEL, align 4
  %75 = call i32 @kmalloc(i32 %73, i32 %74)
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 5
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 10
  store i32 %75, i32* %79, align 4
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 5
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 10
  %84 = load i32, i32* %83, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %99, label %86

86:                                               ; preds = %72
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 5
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %88, align 8
  %90 = call i32 @kfree(%struct.TYPE_13__* %89)
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %92 = call i32 @kfree(%struct.TYPE_13__* %91)
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 3
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 0
  %97 = load i32, i32* %9, align 4
  %98 = call i32 (i32*, i8*, ...) @dev_err(i32* %96, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %97)
  br label %180

99:                                               ; preds = %72
  %100 = load i32, i32* %9, align 4
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 5
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 0
  store i32 %100, i32* %104, align 8
  %105 = load i32, i32* %8, align 4
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 5
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 0, i32 1
  store i32 %105, i32* %109, align 4
  %110 = load i32, i32* @dabusb_iso_complete, align 4
  %111 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 5
  %113 = load %struct.TYPE_13__*, %struct.TYPE_13__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i32 0, i32 9
  store i32 %110, i32* %114, align 8
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %116 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i32 0, i32 5
  %118 = load %struct.TYPE_13__*, %struct.TYPE_13__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %118, i32 0, i32 8
  store %struct.TYPE_13__* %115, %struct.TYPE_13__** %119, align 8
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 3
  %122 = load %struct.TYPE_14__*, %struct.TYPE_14__** %121, align 8
  %123 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %123, i32 0, i32 5
  %125 = load %struct.TYPE_13__*, %struct.TYPE_13__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %125, i32 0, i32 7
  store %struct.TYPE_14__* %122, %struct.TYPE_14__** %126, align 8
  %127 = load i32, i32* %6, align 4
  %128 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %128, i32 0, i32 5
  %130 = load %struct.TYPE_13__*, %struct.TYPE_13__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %130, i32 0, i32 2
  store i32 %127, i32* %131, align 8
  %132 = load i32, i32* @URB_ISO_ASAP, align 4
  %133 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %133, i32 0, i32 5
  %135 = load %struct.TYPE_13__*, %struct.TYPE_13__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %135, i32 0, i32 6
  store i32 %132, i32* %136, align 8
  store i32 0, i32* %10, align 4
  br label %137

137:                                              ; preds = %164, %99
  %138 = load i32, i32* %10, align 4
  %139 = load i32, i32* %8, align 4
  %140 = icmp slt i32 %138, %139
  br i1 %140, label %141, label %167

141:                                              ; preds = %137
  %142 = load i32, i32* %10, align 4
  %143 = load i32, i32* %7, align 4
  %144 = mul nsw i32 %142, %143
  %145 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %145, i32 0, i32 5
  %147 = load %struct.TYPE_13__*, %struct.TYPE_13__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %147, i32 0, i32 4
  %149 = load %struct.TYPE_11__*, %struct.TYPE_11__** %148, align 8
  %150 = load i32, i32* %10, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %149, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %152, i32 0, i32 0
  store i32 %144, i32* %153, align 4
  %154 = load i32, i32* %7, align 4
  %155 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %155, i32 0, i32 5
  %157 = load %struct.TYPE_13__*, %struct.TYPE_13__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %157, i32 0, i32 4
  %159 = load %struct.TYPE_11__*, %struct.TYPE_11__** %158, align 8
  %160 = load i32, i32* %10, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %159, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %162, i32 0, i32 1
  store i32 %154, i32* %163, align 4
  br label %164

164:                                              ; preds = %141
  %165 = load i32, i32* %10, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %10, align 4
  br label %137

167:                                              ; preds = %137
  %168 = load i32, i32* %9, align 4
  %169 = load i32, i32* %4, align 4
  %170 = add nsw i32 %169, %168
  store i32 %170, i32* %4, align 4
  %171 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %171, i32 0, i32 3
  %173 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %174 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %173, i32 0, i32 2
  %175 = call i32 @list_add_tail(i32* %172, i32* %174)
  br label %33

176:                                              ; preds = %33
  %177 = load i32, i32* %4, align 4
  %178 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %179 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %178, i32 0, i32 1
  store i32 %177, i32* %179, align 4
  store i32 0, i32* %2, align 4
  br label %185

180:                                              ; preds = %86, %64, %45
  %181 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %182 = call i32 @dabusb_free_buffers(%struct.TYPE_12__* %181)
  %183 = load i32, i32* @ENOMEM, align 4
  %184 = sub nsw i32 0, %183
  store i32 %184, i32* %2, align 4
  br label %185

185:                                              ; preds = %180, %176
  %186 = load i32, i32* %2, align 4
  ret i32 %186
}

declare dso_local i32 @usb_rcvisocpipe(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @usb_maxpacket(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @usb_pipeout(i32) #1

declare dso_local i32 @dbg(i8*, i32, i32, i32) #1

declare dso_local %struct.TYPE_13__* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local %struct.TYPE_13__* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @kfree(%struct.TYPE_13__*) #1

declare dso_local i32 @kmalloc(i32, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @dabusb_free_buffers(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
