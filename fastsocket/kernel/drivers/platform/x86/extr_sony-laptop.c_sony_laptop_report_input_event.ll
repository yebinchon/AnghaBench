; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_sony-laptop.c_sony_laptop_report_input_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_sony-laptop.c_sony_laptop_report_input_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, %struct.input_dev*, %struct.input_dev* }
%struct.input_dev = type { i32 }
%struct.sony_laptop_keypress = type { %struct.input_dev*, i32, i32* }

@sony_laptop_input = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@SONYPI_EVENT_FNKEY_RELEASED = common dso_local global i32 0, align 4
@SONYPI_EVENT_ANYBUTTON_RELEASED = common dso_local global i32 0, align 4
@REL_WHEEL = common dso_local global i32 0, align 4
@BTN_MIDDLE = common dso_local global i32 0, align 4
@sony_laptop_input_index = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [53 x i8] c"sony_laptop_report_input_event, event not known: %d\0A\00", align 1
@sony_laptop_input_keycode_map = common dso_local global i32* null, align 8
@KEY_UNKNOWN = common dso_local global i32 0, align 4
@EV_MSC = common dso_local global i32 0, align 4
@MSC_SCAN = common dso_local global i32 0, align 4
@sony_laptop_release_key_work = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"unknown input event %.2x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @sony_laptop_report_input_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sony_laptop_report_input_event(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.input_dev*, align 8
  %4 = alloca %struct.input_dev*, align 8
  %5 = alloca %struct.sony_laptop_keypress, align 8
  store i32 %0, i32* %2, align 4
  %6 = load %struct.input_dev*, %struct.input_dev** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sony_laptop_input, i32 0, i32 3), align 8
  store %struct.input_dev* %6, %struct.input_dev** %3, align 8
  %7 = load %struct.input_dev*, %struct.input_dev** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sony_laptop_input, i32 0, i32 2), align 8
  store %struct.input_dev* %7, %struct.input_dev** %4, align 8
  %8 = bitcast %struct.sony_laptop_keypress* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %8, i8 0, i64 24, i1 false)
  %9 = load i32, i32* %2, align 4
  %10 = load i32, i32* @SONYPI_EVENT_FNKEY_RELEASED, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %16, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* %2, align 4
  %14 = load i32, i32* @SONYPI_EVENT_ANYBUTTON_RELEASED, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %12, %1
  br label %102

17:                                               ; preds = %12
  %18 = load i32, i32* %2, align 4
  switch i32 %18, label %36 [
    i32 129, label %19
    i32 128, label %19
    i32 132, label %25
    i32 131, label %25
    i32 130, label %31
  ]

19:                                               ; preds = %17, %17
  %20 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %21 = load i32, i32* @REL_WHEEL, align 4
  %22 = call i32 @input_report_rel(%struct.input_dev* %20, i32 %21, i32 1)
  %23 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %24 = call i32 @input_sync(%struct.input_dev* %23)
  br label %102

25:                                               ; preds = %17, %17
  %26 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %27 = load i32, i32* @REL_WHEEL, align 4
  %28 = call i32 @input_report_rel(%struct.input_dev* %26, i32 %27, i32 -1)
  %29 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %30 = call i32 @input_sync(%struct.input_dev* %29)
  br label %102

31:                                               ; preds = %17
  %32 = load i32, i32* @BTN_MIDDLE, align 4
  %33 = getelementptr inbounds %struct.sony_laptop_keypress, %struct.sony_laptop_keypress* %5, i32 0, i32 1
  store i32 %32, i32* %33, align 8
  %34 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %35 = getelementptr inbounds %struct.sony_laptop_keypress, %struct.sony_laptop_keypress* %5, i32 0, i32 0
  store %struct.input_dev* %34, %struct.input_dev** %35, align 8
  br label %71

36:                                               ; preds = %17
  %37 = load i32, i32* %2, align 4
  %38 = load i32*, i32** @sony_laptop_input_index, align 8
  %39 = call i32 @ARRAY_SIZE(i32* %38)
  %40 = icmp sge i32 %37, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load i32, i32* %2, align 4
  %43 = call i32 @dprintk(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %42)
  br label %71

44:                                               ; preds = %36
  %45 = load i32*, i32** @sony_laptop_input_index, align 8
  %46 = load i32, i32* %2, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, -1
  br i1 %50, label %51, label %70

51:                                               ; preds = %44
  %52 = load i32*, i32** @sony_laptop_input_keycode_map, align 8
  %53 = load i32*, i32** @sony_laptop_input_index, align 8
  %54 = load i32, i32* %2, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %52, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = getelementptr inbounds %struct.sony_laptop_keypress, %struct.sony_laptop_keypress* %5, i32 0, i32 1
  store i32 %60, i32* %61, align 8
  %62 = getelementptr inbounds %struct.sony_laptop_keypress, %struct.sony_laptop_keypress* %5, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @KEY_UNKNOWN, align 4
  %65 = icmp ne i32 %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %51
  %67 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %68 = getelementptr inbounds %struct.sony_laptop_keypress, %struct.sony_laptop_keypress* %5, i32 0, i32 0
  store %struct.input_dev* %67, %struct.input_dev** %68, align 8
  br label %69

69:                                               ; preds = %66, %51
  br label %70

70:                                               ; preds = %69, %44
  br label %71

71:                                               ; preds = %70, %41, %31
  %72 = getelementptr inbounds %struct.sony_laptop_keypress, %struct.sony_laptop_keypress* %5, i32 0, i32 0
  %73 = load %struct.input_dev*, %struct.input_dev** %72, align 8
  %74 = icmp ne %struct.input_dev* %73, null
  br i1 %74, label %75, label %99

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.sony_laptop_keypress, %struct.sony_laptop_keypress* %5, i32 0, i32 0
  %77 = load %struct.input_dev*, %struct.input_dev** %76, align 8
  %78 = getelementptr inbounds %struct.sony_laptop_keypress, %struct.sony_laptop_keypress* %5, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @input_report_key(%struct.input_dev* %77, i32 %79, i32 1)
  %81 = getelementptr inbounds %struct.sony_laptop_keypress, %struct.sony_laptop_keypress* %5, i32 0, i32 0
  %82 = load %struct.input_dev*, %struct.input_dev** %81, align 8
  %83 = load i32, i32* @EV_MSC, align 4
  %84 = load i32, i32* @MSC_SCAN, align 4
  %85 = load i32, i32* %2, align 4
  %86 = call i32 @input_event(%struct.input_dev* %82, i32 %83, i32 %84, i32 %85)
  %87 = getelementptr inbounds %struct.sony_laptop_keypress, %struct.sony_laptop_keypress* %5, i32 0, i32 0
  %88 = load %struct.input_dev*, %struct.input_dev** %87, align 8
  %89 = call i32 @input_sync(%struct.input_dev* %88)
  %90 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sony_laptop_input, i32 0, i32 1), align 4
  %91 = bitcast %struct.sony_laptop_keypress* %5 to i8*
  %92 = call i32 @kfifo_put(i32 %90, i8* %91, i32 24)
  %93 = call i32 @work_pending(i32* @sony_laptop_release_key_work)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %98, label %95

95:                                               ; preds = %75
  %96 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sony_laptop_input, i32 0, i32 0), align 8
  %97 = call i32 @queue_work(i32 %96, i32* @sony_laptop_release_key_work)
  br label %98

98:                                               ; preds = %95, %75
  br label %102

99:                                               ; preds = %71
  %100 = load i32, i32* %2, align 4
  %101 = call i32 @dprintk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %100)
  br label %102

102:                                              ; preds = %16, %19, %25, %99, %98
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @input_report_rel(%struct.input_dev*, i32, i32) #2

declare dso_local i32 @input_sync(%struct.input_dev*) #2

declare dso_local i32 @ARRAY_SIZE(i32*) #2

declare dso_local i32 @dprintk(i8*, i32) #2

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i32) #2

declare dso_local i32 @input_event(%struct.input_dev*, i32, i32, i32) #2

declare dso_local i32 @kfifo_put(i32, i8*, i32) #2

declare dso_local i32 @work_pending(i32*) #2

declare dso_local i32 @queue_work(i32, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
