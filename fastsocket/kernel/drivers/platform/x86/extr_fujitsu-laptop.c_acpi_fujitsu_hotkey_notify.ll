; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_fujitsu-laptop.c_acpi_fujitsu_hotkey_notify.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_fujitsu-laptop.c_acpi_fujitsu_hotkey_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8*, i64, %struct.input_dev* }
%struct.input_dev = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.acpi_device = type { i32 }

@fujitsu_hotkey = common dso_local global %struct.TYPE_3__* null, align 8
@FUNC_RFKILL = common dso_local global i32 0, align 4
@FUNC_BUTTONS = common dso_local global i32 0, align 4
@MAX_HOTKEY_RINGBUFFER_SIZE = common dso_local global i32 0, align 4
@fujitsu = common dso_local global %struct.TYPE_4__* null, align 8
@FUJLAPTOP_DBG_WARN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Unknown GIRB result [%x]\0A\00", align 1
@FUJLAPTOP_DBG_TRACE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Push keycode into ringbuffer [%d]\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Could not push keycode [0x%x]\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"Pop keycode from ringbuffer [%d]\0A\00", align 1
@KEY_UNKNOWN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"Unsupported event [0x%x]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.acpi_device*, i32)* @acpi_fujitsu_hotkey_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acpi_fujitsu_hotkey_notify(%struct.acpi_device* %0, i32 %1) #0 {
  %3 = alloca %struct.acpi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.input_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.acpi_device* %0, %struct.acpi_device** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 1, i32* %8, align 4
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** @fujitsu_hotkey, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 3
  %13 = load %struct.input_dev*, %struct.input_dev** %12, align 8
  store %struct.input_dev* %13, %struct.input_dev** %5, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** @fujitsu_hotkey, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %2
  %19 = load i32, i32* @FUNC_RFKILL, align 4
  %20 = call i8* @call_fext_func(i32 %19, i32 4, i32 0, i32 0)
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** @fujitsu_hotkey, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  store i8* %20, i8** %22, align 8
  br label %23

23:                                               ; preds = %18, %2
  %24 = load i32, i32* %4, align 4
  switch i32 %24, label %113 [
    i32 132, label %25
  ]

25:                                               ; preds = %23
  store i32 0, i32* %9, align 4
  br label %26

26:                                               ; preds = %111, %25
  %27 = load i32, i32* @FUNC_BUTTONS, align 4
  %28 = call i8* @call_fext_func(i32 %27, i32 1, i32 0, i32 0)
  %29 = ptrtoint i8* %28 to i32
  store i32 %29, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = load i32, i32* %9, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* @MAX_HOTKEY_RINGBUFFER_SIZE, align 4
  %35 = icmp slt i32 %32, %34
  br label %36

36:                                               ; preds = %31, %26
  %37 = phi i1 [ false, %26 ], [ %35, %31 ]
  br i1 %37, label %38, label %112

38:                                               ; preds = %36
  %39 = load i32, i32* %8, align 4
  %40 = and i32 %39, 1279
  switch i32 %40, label %58 [
    i32 131, label %41
    i32 130, label %45
    i32 129, label %49
    i32 128, label %53
    i32 0, label %57
  ]

41:                                               ; preds = %38
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** @fujitsu, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %6, align 4
  br label %62

45:                                               ; preds = %38
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** @fujitsu, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %6, align 4
  br label %62

49:                                               ; preds = %38
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** @fujitsu, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %6, align 4
  br label %62

53:                                               ; preds = %38
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** @fujitsu, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %6, align 4
  br label %62

57:                                               ; preds = %38
  store i32 0, i32* %6, align 4
  br label %62

58:                                               ; preds = %38
  %59 = load i32, i32* @FUJLAPTOP_DBG_WARN, align 4
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @vdbg_printk(i32 %59, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %60)
  store i32 -1, i32* %6, align 4
  br label %62

62:                                               ; preds = %58, %57, %53, %49, %45, %41
  %63 = load i32, i32* %6, align 4
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %65, label %88

65:                                               ; preds = %62
  %66 = load i32, i32* @FUJLAPTOP_DBG_TRACE, align 4
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @vdbg_printk(i32 %66, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %67)
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** @fujitsu_hotkey, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = bitcast i32* %6 to i8*
  %73 = call i32 @kfifo_put(i32 %71, i8* %72, i32 4)
  store i32 %73, i32* %10, align 4
  %74 = load i32, i32* %10, align 4
  %75 = sext i32 %74 to i64
  %76 = icmp ne i64 %75, 4
  br i1 %76, label %77, label %81

77:                                               ; preds = %65
  %78 = load i32, i32* @FUJLAPTOP_DBG_WARN, align 4
  %79 = load i32, i32* %6, align 4
  %80 = call i32 @vdbg_printk(i32 %78, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %79)
  br label %87

81:                                               ; preds = %65
  %82 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %83 = load i32, i32* %6, align 4
  %84 = call i32 @input_report_key(%struct.input_dev* %82, i32 %83, i32 1)
  %85 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %86 = call i32 @input_sync(%struct.input_dev* %85)
  br label %87

87:                                               ; preds = %81, %77
  br label %111

88:                                               ; preds = %62
  %89 = load i32, i32* %6, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %110

91:                                               ; preds = %88
  br label %92

92:                                               ; preds = %100, %91
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** @fujitsu_hotkey, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = bitcast i32* %7 to i8*
  %97 = call i32 @kfifo_get(i32 %95, i8* %96, i32 4)
  store i32 %97, i32* %10, align 4
  %98 = sext i32 %97 to i64
  %99 = icmp eq i64 %98, 4
  br i1 %99, label %100, label %109

100:                                              ; preds = %92
  %101 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %102 = load i32, i32* %7, align 4
  %103 = call i32 @input_report_key(%struct.input_dev* %101, i32 %102, i32 0)
  %104 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %105 = call i32 @input_sync(%struct.input_dev* %104)
  %106 = load i32, i32* @FUJLAPTOP_DBG_TRACE, align 4
  %107 = load i32, i32* %7, align 4
  %108 = call i32 @vdbg_printk(i32 %106, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %107)
  br label %92

109:                                              ; preds = %92
  br label %110

110:                                              ; preds = %109, %88
  br label %111

111:                                              ; preds = %110, %87
  br label %26

112:                                              ; preds = %36
  br label %128

113:                                              ; preds = %23
  %114 = load i32, i32* @KEY_UNKNOWN, align 4
  store i32 %114, i32* %6, align 4
  %115 = load i32, i32* @FUJLAPTOP_DBG_WARN, align 4
  %116 = load i32, i32* %4, align 4
  %117 = call i32 @vdbg_printk(i32 %115, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %116)
  %118 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %119 = load i32, i32* %6, align 4
  %120 = call i32 @input_report_key(%struct.input_dev* %118, i32 %119, i32 1)
  %121 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %122 = call i32 @input_sync(%struct.input_dev* %121)
  %123 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %124 = load i32, i32* %6, align 4
  %125 = call i32 @input_report_key(%struct.input_dev* %123, i32 %124, i32 0)
  %126 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %127 = call i32 @input_sync(%struct.input_dev* %126)
  br label %128

128:                                              ; preds = %113, %112
  ret void
}

declare dso_local i8* @call_fext_func(i32, i32, i32, i32) #1

declare dso_local i32 @vdbg_printk(i32, i8*, i32) #1

declare dso_local i32 @kfifo_put(i32, i8*, i32) #1

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

declare dso_local i32 @kfifo_get(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
