; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_dib0700_core.c_dib0700_streaming_ctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_dib0700_core.c_dib0700_streaming_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_adapter = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.dib0700_state* }
%struct.dib0700_state = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"can not set the USB xfer len\0A\00", align 1
@REQUEST_ENABLE_VIDEO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"modifying (%d) streaming state for %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"data for streaming: %x %x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dib0700_streaming_ctrl(%struct.dvb_usb_adapter* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_usb_adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dib0700_state*, align 8
  %7 = alloca [4 x i32], align 16
  %8 = alloca i32, align 4
  store %struct.dvb_usb_adapter* %0, %struct.dvb_usb_adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %4, align 8
  %10 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %9, i32 0, i32 1
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.dib0700_state*, %struct.dib0700_state** %12, align 8
  store %struct.dib0700_state* %13, %struct.dib0700_state** %6, align 8
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %35

16:                                               ; preds = %2
  %17 = load %struct.dib0700_state*, %struct.dib0700_state** %6, align 8
  %18 = getelementptr inbounds %struct.dib0700_state, %struct.dib0700_state* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp sge i32 %19, 66049
  br i1 %20, label %21, label %35

21:                                               ; preds = %16
  %22 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %4, align 8
  %23 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %22, i32 0, i32 1
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = load %struct.dib0700_state*, %struct.dib0700_state** %6, align 8
  %26 = getelementptr inbounds %struct.dib0700_state, %struct.dib0700_state* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @dib0700_set_usb_xfer_len(%struct.TYPE_3__* %24, i32 %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %21
  %32 = call i32 (i8*, ...) @deb_info(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* %8, align 4
  store i32 %33, i32* %3, align 4
  br label %94

34:                                               ; preds = %21
  br label %35

35:                                               ; preds = %34, %16, %2
  %36 = load i32, i32* @REQUEST_ENABLE_VIDEO, align 4
  %37 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  store i32 %36, i32* %37, align 16
  %38 = load i32, i32* %5, align 4
  %39 = shl i32 %38, 4
  %40 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 1
  store i32 %39, i32* %40, align 4
  %41 = load %struct.dib0700_state*, %struct.dib0700_state** %6, align 8
  %42 = getelementptr inbounds %struct.dib0700_state, %struct.dib0700_state* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %43, 1
  br i1 %44, label %45, label %47

45:                                               ; preds = %35
  %46 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 2
  store i32 0, i32* %46, align 8
  br label %49

47:                                               ; preds = %35
  %48 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 2
  store i32 16, i32* %48, align 8
  br label %49

49:                                               ; preds = %47, %45
  %50 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 3
  store i32 0, i32* %50, align 4
  %51 = load i32, i32* %5, align 4
  %52 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %4, align 8
  %53 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 (i8*, ...) @deb_info(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %51, i32 %54)
  %56 = load i32, i32* %5, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %49
  %59 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %4, align 8
  %60 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = shl i32 1, %61
  %63 = load %struct.dib0700_state*, %struct.dib0700_state** %6, align 8
  %64 = getelementptr inbounds %struct.dib0700_state, %struct.dib0700_state* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = or i32 %65, %62
  store i32 %66, i32* %64, align 4
  br label %77

67:                                               ; preds = %49
  %68 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %4, align 8
  %69 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = shl i32 1, %70
  %72 = xor i32 %71, -1
  %73 = load %struct.dib0700_state*, %struct.dib0700_state** %6, align 8
  %74 = getelementptr inbounds %struct.dib0700_state, %struct.dib0700_state* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = and i32 %75, %72
  store i32 %76, i32* %74, align 4
  br label %77

77:                                               ; preds = %67, %58
  %78 = load %struct.dib0700_state*, %struct.dib0700_state** %6, align 8
  %79 = getelementptr inbounds %struct.dib0700_state, %struct.dib0700_state* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 2
  %82 = load i32, i32* %81, align 8
  %83 = or i32 %82, %80
  store i32 %83, i32* %81, align 8
  %84 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 1
  %85 = load i32, i32* %84, align 4
  %86 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 2
  %87 = load i32, i32* %86, align 8
  %88 = call i32 (i8*, ...) @deb_info(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %85, i32 %87)
  %89 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %4, align 8
  %90 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %89, i32 0, i32 1
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %90, align 8
  %92 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %93 = call i32 @dib0700_ctrl_wr(%struct.TYPE_3__* %91, i32* %92, i32 4)
  store i32 %93, i32* %3, align 4
  br label %94

94:                                               ; preds = %77, %31
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local i32 @dib0700_set_usb_xfer_len(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @deb_info(i8*, ...) #1

declare dso_local i32 @dib0700_ctrl_wr(%struct.TYPE_3__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
