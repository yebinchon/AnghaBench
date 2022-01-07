; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_tape_core.c_tape_generic_online.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_tape_core.c_tape_generic_online.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tape_device = type { i64, i64, %struct.tape_discipline*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.tape_discipline = type { i32 (%struct.tape_device.0*)*, i32, i32 (%struct.tape_device.1*)* }
%struct.tape_device.0 = type opaque
%struct.tape_device.1 = type opaque

@.str = private unnamed_addr constant [28 x i8] c"tape_enable_device(%p, %p)\0A\00", align 1
@TS_INIT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"Tapestate not INIT (%d)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@tape_long_busy_timeout = common dso_local global i32 0, align 4
@TS_UNUSED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"(%08x): Drive set online\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tape_generic_online(%struct.tape_device* %0, %struct.tape_discipline* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tape_device*, align 8
  %5 = alloca %struct.tape_discipline*, align 8
  %6 = alloca i32, align 4
  store %struct.tape_device* %0, %struct.tape_device** %4, align 8
  store %struct.tape_discipline* %1, %struct.tape_discipline** %5, align 8
  %7 = load %struct.tape_device*, %struct.tape_device** %4, align 8
  %8 = ptrtoint %struct.tape_device* %7 to i64
  %9 = load %struct.tape_discipline*, %struct.tape_discipline** %5, align 8
  %10 = call i32 (i32, i8*, i64, ...) @DBF_LH(i32 6, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %8, %struct.tape_discipline* %9)
  %11 = load %struct.tape_device*, %struct.tape_device** %4, align 8
  %12 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @TS_INIT, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %23

16:                                               ; preds = %2
  %17 = load %struct.tape_device*, %struct.tape_device** %4, align 8
  %18 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i32 (i32, i8*, i64, ...) @DBF_LH(i32 3, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i64 %19)
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %101

23:                                               ; preds = %2
  %24 = load %struct.tape_device*, %struct.tape_device** %4, align 8
  %25 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %24, i32 0, i32 3
  %26 = call i32 @init_timer(%struct.TYPE_2__* %25)
  %27 = load i32, i32* @tape_long_busy_timeout, align 4
  %28 = load %struct.tape_device*, %struct.tape_device** %4, align 8
  %29 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store i32 %27, i32* %30, align 8
  %31 = load %struct.tape_discipline*, %struct.tape_discipline** %5, align 8
  %32 = load %struct.tape_device*, %struct.tape_device** %4, align 8
  %33 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %32, i32 0, i32 2
  store %struct.tape_discipline* %31, %struct.tape_discipline** %33, align 8
  %34 = load %struct.tape_discipline*, %struct.tape_discipline** %5, align 8
  %35 = getelementptr inbounds %struct.tape_discipline, %struct.tape_discipline* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @try_module_get(i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %23
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %101

42:                                               ; preds = %23
  %43 = load %struct.tape_discipline*, %struct.tape_discipline** %5, align 8
  %44 = getelementptr inbounds %struct.tape_discipline, %struct.tape_discipline* %43, i32 0, i32 0
  %45 = load i32 (%struct.tape_device.0*)*, i32 (%struct.tape_device.0*)** %44, align 8
  %46 = load %struct.tape_device*, %struct.tape_device** %4, align 8
  %47 = bitcast %struct.tape_device* %46 to %struct.tape_device.0*
  %48 = call i32 %45(%struct.tape_device.0* %47)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %42
  br label %95

52:                                               ; preds = %42
  %53 = load %struct.tape_device*, %struct.tape_device** %4, align 8
  %54 = call i32 @tape_assign_minor(%struct.tape_device* %53)
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %6, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  br label %84

58:                                               ; preds = %52
  %59 = load %struct.tape_device*, %struct.tape_device** %4, align 8
  %60 = call i32 @tapechar_setup_device(%struct.tape_device* %59)
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %6, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  br label %81

64:                                               ; preds = %58
  %65 = load %struct.tape_device*, %struct.tape_device** %4, align 8
  %66 = call i32 @tapeblock_setup_device(%struct.tape_device* %65)
  store i32 %66, i32* %6, align 4
  %67 = load i32, i32* %6, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %64
  br label %78

70:                                               ; preds = %64
  %71 = load %struct.tape_device*, %struct.tape_device** %4, align 8
  %72 = load i32, i32* @TS_UNUSED, align 4
  %73 = call i32 @tape_state_set(%struct.tape_device* %71, i32 %72)
  %74 = load %struct.tape_device*, %struct.tape_device** %4, align 8
  %75 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = call i32 (i32, i8*, i64, ...) @DBF_LH(i32 3, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i64 %76)
  store i32 0, i32* %3, align 4
  br label %101

78:                                               ; preds = %69
  %79 = load %struct.tape_device*, %struct.tape_device** %4, align 8
  %80 = call i32 @tapechar_cleanup_device(%struct.tape_device* %79)
  br label %81

81:                                               ; preds = %78, %63
  %82 = load %struct.tape_device*, %struct.tape_device** %4, align 8
  %83 = call i32 @tape_remove_minor(%struct.tape_device* %82)
  br label %84

84:                                               ; preds = %81, %57
  %85 = load %struct.tape_device*, %struct.tape_device** %4, align 8
  %86 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %85, i32 0, i32 2
  %87 = load %struct.tape_discipline*, %struct.tape_discipline** %86, align 8
  %88 = getelementptr inbounds %struct.tape_discipline, %struct.tape_discipline* %87, i32 0, i32 2
  %89 = load i32 (%struct.tape_device.1*)*, i32 (%struct.tape_device.1*)** %88, align 8
  %90 = load %struct.tape_device*, %struct.tape_device** %4, align 8
  %91 = bitcast %struct.tape_device* %90 to %struct.tape_device.1*
  %92 = call i32 %89(%struct.tape_device.1* %91)
  %93 = load %struct.tape_device*, %struct.tape_device** %4, align 8
  %94 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %93, i32 0, i32 2
  store %struct.tape_discipline* null, %struct.tape_discipline** %94, align 8
  br label %95

95:                                               ; preds = %84, %51
  %96 = load %struct.tape_discipline*, %struct.tape_discipline** %5, align 8
  %97 = getelementptr inbounds %struct.tape_discipline, %struct.tape_discipline* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @module_put(i32 %98)
  %100 = load i32, i32* %6, align 4
  store i32 %100, i32* %3, align 4
  br label %101

101:                                              ; preds = %95, %70, %39, %16
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local i32 @DBF_LH(i32, i8*, i64, ...) #1

declare dso_local i32 @init_timer(%struct.TYPE_2__*) #1

declare dso_local i32 @try_module_get(i32) #1

declare dso_local i32 @tape_assign_minor(%struct.tape_device*) #1

declare dso_local i32 @tapechar_setup_device(%struct.tape_device*) #1

declare dso_local i32 @tapeblock_setup_device(%struct.tape_device*) #1

declare dso_local i32 @tape_state_set(%struct.tape_device*, i32) #1

declare dso_local i32 @tapechar_cleanup_device(%struct.tape_device*) #1

declare dso_local i32 @tape_remove_minor(%struct.tape_device*) #1

declare dso_local i32 @module_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
