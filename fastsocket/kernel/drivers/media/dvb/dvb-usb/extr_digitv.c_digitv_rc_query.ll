; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_digitv.c_digitv_rc_query.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_digitv.c_digitv_rc_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@REMOTE_NO_KEY_PRESSED = common dso_local global i32 0, align 4
@USB_READ_REMOTE = common dso_local global i32 0, align 4
@USB_WRITE_REMOTE = common dso_local global i32 0, align 4
@REMOTE_KEY_PRESSED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"key: %x %x %x %x %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_device*, i32*, i32*)* @digitv_rc_query to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @digitv_rc_query(%struct.dvb_usb_device* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dvb_usb_device*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [5 x i64], align 16
  %10 = alloca [4 x i64], align 16
  store %struct.dvb_usb_device* %0, %struct.dvb_usb_device** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = bitcast [4 x i64]* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %11, i8 0, i64 32, i1 false)
  %12 = load i32*, i32** %6, align 8
  store i32 0, i32* %12, align 4
  %13 = load i32, i32* @REMOTE_NO_KEY_PRESSED, align 4
  %14 = load i32*, i32** %7, align 8
  store i32 %13, i32* %14, align 4
  %15 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %16 = load i32, i32* @USB_READ_REMOTE, align 4
  %17 = getelementptr inbounds [5 x i64], [5 x i64]* %9, i64 0, i64 1
  %18 = call i32 @digitv_ctrl_msg(%struct.dvb_usb_device* %15, i32 %16, i32 0, i64* null, i32 0, i64* %17, i32 4)
  %19 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %20 = load i32, i32* @USB_WRITE_REMOTE, align 4
  %21 = getelementptr inbounds [4 x i64], [4 x i64]* %10, i64 0, i64 0
  %22 = call i32 @digitv_ctrl_msg(%struct.dvb_usb_device* %19, i32 %20, i32 0, i64* %21, i32 4, i64* null, i32 0)
  %23 = getelementptr inbounds [5 x i64], [5 x i64]* %9, i64 0, i64 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %76

26:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %27

27:                                               ; preds = %72, %26
  %28 = load i32, i32* %8, align 4
  %29 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %30 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %28, %32
  br i1 %33, label %34, label %75

34:                                               ; preds = %27
  %35 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %36 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i64 %40
  %42 = call i64 @rc5_custom(%struct.TYPE_5__* %41)
  %43 = getelementptr inbounds [5 x i64], [5 x i64]* %9, i64 0, i64 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %42, %44
  br i1 %45, label %46, label %71

46:                                               ; preds = %34
  %47 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %48 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = load i32, i32* %8, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i64 %52
  %54 = call i64 @rc5_data(%struct.TYPE_5__* %53)
  %55 = getelementptr inbounds [5 x i64], [5 x i64]* %9, i64 0, i64 2
  %56 = load i64, i64* %55, align 16
  %57 = icmp eq i64 %54, %56
  br i1 %57, label %58, label %71

58:                                               ; preds = %46
  %59 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %60 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %61, align 8
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32*, i32** %6, align 8
  store i32 %67, i32* %68, align 4
  %69 = load i32, i32* @REMOTE_KEY_PRESSED, align 4
  %70 = load i32*, i32** %7, align 8
  store i32 %69, i32* %70, align 4
  store i32 0, i32* %4, align 4
  br label %93

71:                                               ; preds = %46, %34
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %8, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %8, align 4
  br label %27

75:                                               ; preds = %27
  br label %76

76:                                               ; preds = %75, %3
  %77 = getelementptr inbounds [5 x i64], [5 x i64]* %9, i64 0, i64 0
  %78 = load i64, i64* %77, align 16
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %92

80:                                               ; preds = %76
  %81 = getelementptr inbounds [5 x i64], [5 x i64]* %9, i64 0, i64 0
  %82 = load i64, i64* %81, align 16
  %83 = getelementptr inbounds [5 x i64], [5 x i64]* %9, i64 0, i64 1
  %84 = load i64, i64* %83, align 8
  %85 = getelementptr inbounds [5 x i64], [5 x i64]* %9, i64 0, i64 2
  %86 = load i64, i64* %85, align 16
  %87 = getelementptr inbounds [5 x i64], [5 x i64]* %9, i64 0, i64 3
  %88 = load i64, i64* %87, align 8
  %89 = getelementptr inbounds [5 x i64], [5 x i64]* %9, i64 0, i64 4
  %90 = load i64, i64* %89, align 16
  %91 = call i32 @deb_rc(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i64 %82, i64 %84, i64 %86, i64 %88, i64 %90)
  br label %92

92:                                               ; preds = %80, %76
  store i32 0, i32* %4, align 4
  br label %93

93:                                               ; preds = %92, %58
  %94 = load i32, i32* %4, align 4
  ret i32 %94
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @digitv_ctrl_msg(%struct.dvb_usb_device*, i32, i32, i64*, i32, i64*, i32) #2

declare dso_local i64 @rc5_custom(%struct.TYPE_5__*) #2

declare dso_local i64 @rc5_data(%struct.TYPE_5__*) #2

declare dso_local i32 @deb_rc(i8*, i64, i64, i64, i64, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
