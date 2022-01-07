; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_asus-laptop.c_asus_hotk_get_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_asus-laptop.c_asus_hotk_get_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.acpi_buffer = type { %union.acpi_object*, i32*, i32 }
%union.acpi_object = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8* }
%struct.TYPE_4__ = type { i8* }

@ACPI_ALLOCATE_BUFFER = common dso_local global i32 0, align 4
@ACPI_SIG_DSDT = common dso_local global i32 0, align 4
@asus_info = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Couldn't get the DSDT table header\0A\00", align 1
@hotk = common dso_local global %struct.TYPE_6__* null, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"INIT\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Hotkey initialization failed\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"BSTS\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"Error calling BSTS\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"BSTS called, 0x%02x returned\0A\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"CWAP\00", align 1
@wapf = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [21 x i8] c"  %s model detected\0A\00", align 1
@mled_set = common dso_local global i32 0, align 4
@tled_set = common dso_local global i32 0, align 4
@rled_set = common dso_local global i32 0, align 4
@pled_set = common dso_local global i32 0, align 4
@gled_set = common dso_local global i32 0, align 4
@ledd_set = common dso_local global i32 0, align 4
@kled_set = common dso_local global i32 0, align 4
@kled_get = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [5 x i8] c"HRWS\00", align 1
@WL_HWRS = common dso_local global i64 0, align 8
@BT_HWRS = common dso_local global i64 0, align 8
@wl_switch = common dso_local global i32 0, align 4
@bt_switch = common dso_local global i32 0, align 4
@wireless_status = common dso_local global i32 0, align 4
@brightness_set = common dso_local global i32 0, align 4
@brightness_get = common dso_local global i32 0, align 4
@lcd_switch = common dso_local global i32 0, align 4
@display_set = common dso_local global i32 0, align 4
@display_get = common dso_local global i32 0, align 4
@ls_switch = common dso_local global i32 0, align 4
@ls_level = common dso_local global i32 0, align 4
@gps_on = common dso_local global i32 0, align 4
@gps_off = common dso_local global i32 0, align 4
@gps_status = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @asus_hotk_get_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asus_hotk_get_info() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.acpi_buffer, align 8
  %3 = alloca %union.acpi_object*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %2, i32 0, i32 0
  %9 = load i32, i32* @ACPI_ALLOCATE_BUFFER, align 4
  %10 = sext i32 %9 to i64
  %11 = inttoptr i64 %10 to %union.acpi_object*
  store %union.acpi_object* %11, %union.acpi_object** %8, align 8
  %12 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %2, i32 0, i32 1
  store i32* null, i32** %12, align 8
  %13 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %2, i32 0, i32 2
  store i32 0, i32* %13, align 8
  store %union.acpi_object* null, %union.acpi_object** %3, align 8
  store i8* null, i8** %6, align 8
  %14 = load i32, i32* @ACPI_SIG_DSDT, align 4
  %15 = call i32 @acpi_get_table(i32 %14, i32 1, i32* @asus_info)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = call i64 @ACPI_FAILURE(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %0
  %20 = call i32 @pr_warning(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %19, %0
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** @hotk, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @write_acpi_int(i32 %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 0, %struct.acpi_buffer* %2)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %21
  %28 = call i32 @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %29 = load i32, i32* @ENODEV, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %1, align 4
  br label %169

31:                                               ; preds = %21
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** @hotk, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @acpi_evaluate_integer(i32 %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32* null, i64* %4)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = call i64 @ACPI_FAILURE(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %31
  %40 = call i32 @pr_warning(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  br label %49

41:                                               ; preds = %31
  %42 = load i64, i64* %4, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %41
  %45 = load i64, i64* %4, align 8
  %46 = inttoptr i64 %45 to i8*
  %47 = call i32 @pr_notice(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i8* %46)
  br label %48

48:                                               ; preds = %44, %41
  br label %49

49:                                               ; preds = %48, %39
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** @hotk, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @wapf, align 4
  %54 = call i64 @write_acpi_int(i32 %52, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 %53, %struct.acpi_buffer* null)
  %55 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %2, i32 0, i32 0
  %56 = load %union.acpi_object*, %union.acpi_object** %55, align 8
  %57 = icmp ne %union.acpi_object* %56, null
  br i1 %57, label %58, label %76

58:                                               ; preds = %49
  %59 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %2, i32 0, i32 0
  %60 = load %union.acpi_object*, %union.acpi_object** %59, align 8
  store %union.acpi_object* %60, %union.acpi_object** %3, align 8
  %61 = load %union.acpi_object*, %union.acpi_object** %3, align 8
  %62 = bitcast %union.acpi_object* %61 to i32*
  %63 = load i32, i32* %62, align 8
  switch i32 %63, label %74 [
    i32 128, label %64
    i32 129, label %69
  ]

64:                                               ; preds = %58
  %65 = load %union.acpi_object*, %union.acpi_object** %3, align 8
  %66 = bitcast %union.acpi_object* %65 to %struct.TYPE_4__*
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  store i8* %68, i8** %6, align 8
  br label %75

69:                                               ; preds = %58
  %70 = load %union.acpi_object*, %union.acpi_object** %3, align 8
  %71 = bitcast %union.acpi_object* %70 to %struct.TYPE_5__*
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  store i8* %73, i8** %6, align 8
  br label %75

74:                                               ; preds = %58
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), i8** %6, align 8
  br label %75

75:                                               ; preds = %74, %69, %64
  br label %76

76:                                               ; preds = %75, %49
  %77 = load i8*, i8** %6, align 8
  %78 = load i32, i32* @GFP_KERNEL, align 4
  %79 = call i32 @kstrdup(i8* %77, i32 %78)
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** @hotk, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 4
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** @hotk, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %89, label %86

86:                                               ; preds = %76
  %87 = load i32, i32* @ENOMEM, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %1, align 4
  br label %169

89:                                               ; preds = %76
  %90 = load i8*, i8** %6, align 8
  %91 = load i8, i8* %90, align 1
  %92 = icmp ne i8 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %89
  %94 = load i8*, i8** %6, align 8
  %95 = call i32 @pr_notice(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i8* %94)
  br label %96

96:                                               ; preds = %93, %89
  %97 = load i32, i32* @mled_set, align 4
  %98 = call i32 @ASUS_HANDLE_INIT(i32 %97)
  %99 = load i32, i32* @tled_set, align 4
  %100 = call i32 @ASUS_HANDLE_INIT(i32 %99)
  %101 = load i32, i32* @rled_set, align 4
  %102 = call i32 @ASUS_HANDLE_INIT(i32 %101)
  %103 = load i32, i32* @pled_set, align 4
  %104 = call i32 @ASUS_HANDLE_INIT(i32 %103)
  %105 = load i32, i32* @gled_set, align 4
  %106 = call i32 @ASUS_HANDLE_INIT(i32 %105)
  %107 = load i32, i32* @ledd_set, align 4
  %108 = call i32 @ASUS_HANDLE_INIT(i32 %107)
  %109 = load i32, i32* @kled_set, align 4
  %110 = call i32 @ASUS_HANDLE_INIT(i32 %109)
  %111 = load i32, i32* @kled_get, align 4
  %112 = call i32 @ASUS_HANDLE_INIT(i32 %111)
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** @hotk, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @acpi_evaluate_integer(i32 %115, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i32* null, i64* %5)
  store i32 %116, i32* %7, align 4
  %117 = load i32, i32* %7, align 4
  %118 = call i64 @ACPI_FAILURE(i32 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %96
  %121 = load i64, i64* @WL_HWRS, align 8
  %122 = load i64, i64* @BT_HWRS, align 8
  %123 = or i64 %121, %122
  store i64 %123, i64* %5, align 8
  br label %124

124:                                              ; preds = %120, %96
  %125 = load i64, i64* %5, align 8
  %126 = load i64, i64* @WL_HWRS, align 8
  %127 = and i64 %125, %126
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %124
  %130 = load i32, i32* @wl_switch, align 4
  %131 = call i32 @ASUS_HANDLE_INIT(i32 %130)
  br label %132

132:                                              ; preds = %129, %124
  %133 = load i64, i64* %5, align 8
  %134 = load i64, i64* @BT_HWRS, align 8
  %135 = and i64 %133, %134
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %132
  %138 = load i32, i32* @bt_switch, align 4
  %139 = call i32 @ASUS_HANDLE_INIT(i32 %138)
  br label %140

140:                                              ; preds = %137, %132
  %141 = load i32, i32* @wireless_status, align 4
  %142 = call i32 @ASUS_HANDLE_INIT(i32 %141)
  %143 = load i32, i32* @brightness_set, align 4
  %144 = call i32 @ASUS_HANDLE_INIT(i32 %143)
  %145 = load i32, i32* @brightness_get, align 4
  %146 = call i32 @ASUS_HANDLE_INIT(i32 %145)
  %147 = load i32, i32* @lcd_switch, align 4
  %148 = call i32 @ASUS_HANDLE_INIT(i32 %147)
  %149 = load i32, i32* @display_set, align 4
  %150 = call i32 @ASUS_HANDLE_INIT(i32 %149)
  %151 = load i32, i32* @display_get, align 4
  %152 = call i32 @ASUS_HANDLE_INIT(i32 %151)
  %153 = load i32, i32* @ls_switch, align 4
  %154 = call i32 @ASUS_HANDLE_INIT(i32 %153)
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %159, label %156

156:                                              ; preds = %140
  %157 = load i32, i32* @ls_level, align 4
  %158 = call i32 @ASUS_HANDLE_INIT(i32 %157)
  br label %159

159:                                              ; preds = %156, %140
  %160 = load i32, i32* @gps_on, align 4
  %161 = call i32 @ASUS_HANDLE_INIT(i32 %160)
  %162 = load i32, i32* @gps_off, align 4
  %163 = call i32 @ASUS_HANDLE_INIT(i32 %162)
  %164 = load i32, i32* @gps_status, align 4
  %165 = call i32 @ASUS_HANDLE_INIT(i32 %164)
  %166 = load %union.acpi_object*, %union.acpi_object** %3, align 8
  %167 = call i32 @kfree(%union.acpi_object* %166)
  %168 = load i32, i32* @AE_OK, align 4
  store i32 %168, i32* %1, align 4
  br label %169

169:                                              ; preds = %159, %86, %27
  %170 = load i32, i32* %1, align 4
  ret i32 %170
}

declare dso_local i32 @acpi_get_table(i32, i32, i32*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @pr_warning(i8*) #1

declare dso_local i64 @write_acpi_int(i32, i8*, i32, %struct.acpi_buffer*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @acpi_evaluate_integer(i32, i8*, i32*, i64*) #1

declare dso_local i32 @pr_notice(i8*, i8*) #1

declare dso_local i32 @kstrdup(i8*, i32) #1

declare dso_local i32 @ASUS_HANDLE_INIT(i32) #1

declare dso_local i32 @kfree(%union.acpi_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
