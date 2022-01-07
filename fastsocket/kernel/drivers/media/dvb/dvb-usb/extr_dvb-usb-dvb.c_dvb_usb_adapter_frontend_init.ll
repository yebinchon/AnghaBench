; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_dvb-usb-dvb.c_dvb_usb_adapter_frontend_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_dvb-usb-dvb.c_dvb_usb_adapter_frontend_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_adapter = type { %struct.TYPE_10__*, %struct.TYPE_8__, %struct.TYPE_11__*, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i64 (%struct.dvb_usb_adapter.0*)*, i32 (%struct.dvb_usb_adapter.1*)* }
%struct.dvb_usb_adapter.0 = type opaque
%struct.dvb_usb_adapter.1 = type opaque
%struct.TYPE_11__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }

@.str = private unnamed_addr constant [53 x i8] c"strange: '%s' #%d doesn't want to attach a frontend.\00", align 1
@dvb_usb_fe_wakeup = common dso_local global i32 0, align 4
@dvb_usb_fe_sleep = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Frontend registration failed.\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"no frontend was attached by '%s'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dvb_usb_adapter_frontend_init(%struct.dvb_usb_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_usb_adapter*, align 8
  store %struct.dvb_usb_adapter* %0, %struct.dvb_usb_adapter** %3, align 8
  %4 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %5 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %7 = load i64 (%struct.dvb_usb_adapter.0*)*, i64 (%struct.dvb_usb_adapter.0*)** %6, align 8
  %8 = icmp eq i64 (%struct.dvb_usb_adapter.0*)* %7, null
  br i1 %8, label %9, label %21

9:                                                ; preds = %1
  %10 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %11 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %10, i32 0, i32 0
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %18 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %17, i32 0, i32 6
  %19 = load i32, i32* %18, align 4
  %20 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %19)
  store i32 0, i32* %2, align 4
  br label %106

21:                                               ; preds = %1
  %22 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %23 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i64 (%struct.dvb_usb_adapter.0*)*, i64 (%struct.dvb_usb_adapter.0*)** %24, align 8
  %26 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %27 = bitcast %struct.dvb_usb_adapter* %26 to %struct.dvb_usb_adapter.0*
  %28 = call i64 %25(%struct.dvb_usb_adapter.0* %27)
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %96

30:                                               ; preds = %21
  %31 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %32 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %31, i32 0, i32 2
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %32, align 8
  %34 = icmp ne %struct.TYPE_11__* %33, null
  br i1 %34, label %35, label %96

35:                                               ; preds = %30
  %36 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %37 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %36, i32 0, i32 2
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %43 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %42, i32 0, i32 5
  store i32 %41, i32* %43, align 8
  %44 = load i32, i32* @dvb_usb_fe_wakeup, align 4
  %45 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %46 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %45, i32 0, i32 2
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 1
  store i32 %44, i32* %49, align 4
  %50 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %51 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %50, i32 0, i32 2
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %57 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %56, i32 0, i32 4
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* @dvb_usb_fe_sleep, align 4
  %59 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %60 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %59, i32 0, i32 2
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  store i32 %58, i32* %63, align 4
  %64 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %65 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %64, i32 0, i32 3
  %66 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %67 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %66, i32 0, i32 2
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %67, align 8
  %69 = call i64 @dvb_register_frontend(i32* %65, %struct.TYPE_11__* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %81

71:                                               ; preds = %35
  %72 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %73 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %74 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %73, i32 0, i32 2
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %74, align 8
  %76 = call i32 @dvb_frontend_detach(%struct.TYPE_11__* %75)
  %77 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %78 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %77, i32 0, i32 2
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %78, align 8
  %79 = load i32, i32* @ENODEV, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %2, align 4
  br label %106

81:                                               ; preds = %35
  %82 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %83 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 1
  %85 = load i32 (%struct.dvb_usb_adapter.1*)*, i32 (%struct.dvb_usb_adapter.1*)** %84, align 8
  %86 = icmp ne i32 (%struct.dvb_usb_adapter.1*)* %85, null
  br i1 %86, label %87, label %95

87:                                               ; preds = %81
  %88 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %89 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 1
  %91 = load i32 (%struct.dvb_usb_adapter.1*)*, i32 (%struct.dvb_usb_adapter.1*)** %90, align 8
  %92 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %93 = bitcast %struct.dvb_usb_adapter* %92 to %struct.dvb_usb_adapter.1*
  %94 = call i32 %91(%struct.dvb_usb_adapter.1* %93)
  br label %95

95:                                               ; preds = %87, %81
  br label %105

96:                                               ; preds = %30, %21
  %97 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %98 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %97, i32 0, i32 0
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %103)
  br label %105

105:                                              ; preds = %96, %95
  store i32 0, i32* %2, align 4
  br label %106

106:                                              ; preds = %105, %71, %9
  %107 = load i32, i32* %2, align 4
  ret i32 %107
}

declare dso_local i32 @err(i8*, ...) #1

declare dso_local i64 @dvb_register_frontend(i32*, %struct.TYPE_11__*) #1

declare dso_local i32 @dvb_frontend_detach(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
