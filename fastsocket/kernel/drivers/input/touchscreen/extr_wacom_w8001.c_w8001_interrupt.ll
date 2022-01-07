; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/touchscreen/extr_wacom_w8001.c_w8001_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/touchscreen/extr_wacom_w8001.c_w8001_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serio = type { i32 }
%struct.w8001 = type { i8*, i64, i32, i32, i32, %struct.input_dev* }
%struct.input_dev = type { i32 }
%struct.w8001_coord = type { i32, i32, i32, i32 }

@W8001_LEAD_MASK = common dso_local global i8 0, align 1
@W8001_LEAD_BYTE = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [36 x i8] c"w8001: unsynchronized data: 0x%02x\0A\00", align 1
@W8001_TAB_MASK = common dso_local global i8 0, align 1
@W8001_TAB_BYTE = common dso_local global i8 0, align 1
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@ABS_PRESSURE = common dso_local global i32 0, align 4
@BTN_TOUCH = common dso_local global i32 0, align 4
@W8001_MAX_LENGTH = common dso_local global i32 0, align 4
@W8001_QUERY_PACKET = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.serio*, i8, i32)* @w8001_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @w8001_interrupt(%struct.serio* %0, i8 zeroext %1, i32 %2) #0 {
  %4 = alloca %struct.serio*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca %struct.w8001*, align 8
  %8 = alloca %struct.input_dev*, align 8
  %9 = alloca %struct.w8001_coord, align 4
  %10 = alloca i8, align 1
  store %struct.serio* %0, %struct.serio** %4, align 8
  store i8 %1, i8* %5, align 1
  store i32 %2, i32* %6, align 4
  %11 = load %struct.serio*, %struct.serio** %4, align 8
  %12 = call %struct.w8001* @serio_get_drvdata(%struct.serio* %11)
  store %struct.w8001* %12, %struct.w8001** %7, align 8
  %13 = load %struct.w8001*, %struct.w8001** %7, align 8
  %14 = getelementptr inbounds %struct.w8001, %struct.w8001* %13, i32 0, i32 5
  %15 = load %struct.input_dev*, %struct.input_dev** %14, align 8
  store %struct.input_dev* %15, %struct.input_dev** %8, align 8
  %16 = load i8, i8* %5, align 1
  %17 = load %struct.w8001*, %struct.w8001** %7, align 8
  %18 = getelementptr inbounds %struct.w8001, %struct.w8001* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = load %struct.w8001*, %struct.w8001** %7, align 8
  %21 = getelementptr inbounds %struct.w8001, %struct.w8001* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds i8, i8* %19, i64 %22
  store i8 %16, i8* %23, align 1
  %24 = load %struct.w8001*, %struct.w8001** %7, align 8
  %25 = getelementptr inbounds %struct.w8001, %struct.w8001* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = add i64 %26, 1
  store i64 %27, i64* %25, align 8
  switch i64 %26, label %109 [
    i64 0, label %28
    i64 8, label %43
    i64 10, label %92
  ]

28:                                               ; preds = %3
  %29 = load i8, i8* %5, align 1
  %30 = zext i8 %29 to i32
  %31 = load i8, i8* @W8001_LEAD_MASK, align 1
  %32 = zext i8 %31 to i32
  %33 = and i32 %30, %32
  %34 = load i8, i8* @W8001_LEAD_BYTE, align 1
  %35 = zext i8 %34 to i32
  %36 = icmp ne i32 %33, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %28
  %38 = load i8, i8* %5, align 1
  %39 = call i32 @pr_debug(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8 zeroext %38)
  %40 = load %struct.w8001*, %struct.w8001** %7, align 8
  %41 = getelementptr inbounds %struct.w8001, %struct.w8001* %40, i32 0, i32 1
  store i64 0, i64* %41, align 8
  br label %42

42:                                               ; preds = %37, %28
  br label %109

43:                                               ; preds = %3
  %44 = load %struct.w8001*, %struct.w8001** %7, align 8
  %45 = getelementptr inbounds %struct.w8001, %struct.w8001* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 0
  %48 = load i8, i8* %47, align 1
  %49 = zext i8 %48 to i32
  %50 = load i8, i8* @W8001_TAB_MASK, align 1
  %51 = zext i8 %50 to i32
  %52 = and i32 %49, %51
  %53 = trunc i32 %52 to i8
  store i8 %53, i8* %10, align 1
  %54 = load i8, i8* %10, align 1
  %55 = zext i8 %54 to i32
  %56 = load i8, i8* @W8001_TAB_BYTE, align 1
  %57 = zext i8 %56 to i32
  %58 = icmp eq i32 %55, %57
  %59 = zext i1 %58 to i32
  %60 = call i32 @unlikely(i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %43
  br label %109

63:                                               ; preds = %43
  %64 = load %struct.w8001*, %struct.w8001** %7, align 8
  %65 = getelementptr inbounds %struct.w8001, %struct.w8001* %64, i32 0, i32 1
  store i64 0, i64* %65, align 8
  %66 = load %struct.w8001*, %struct.w8001** %7, align 8
  %67 = getelementptr inbounds %struct.w8001, %struct.w8001* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = call i32 @parse_data(i8* %68, %struct.w8001_coord* %9)
  %70 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %71 = load i32, i32* @ABS_X, align 4
  %72 = getelementptr inbounds %struct.w8001_coord, %struct.w8001_coord* %9, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @input_report_abs(%struct.input_dev* %70, i32 %71, i32 %73)
  %75 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %76 = load i32, i32* @ABS_Y, align 4
  %77 = getelementptr inbounds %struct.w8001_coord, %struct.w8001_coord* %9, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @input_report_abs(%struct.input_dev* %75, i32 %76, i32 %78)
  %80 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %81 = load i32, i32* @ABS_PRESSURE, align 4
  %82 = getelementptr inbounds %struct.w8001_coord, %struct.w8001_coord* %9, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @input_report_abs(%struct.input_dev* %80, i32 %81, i32 %83)
  %85 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %86 = load i32, i32* @BTN_TOUCH, align 4
  %87 = getelementptr inbounds %struct.w8001_coord, %struct.w8001_coord* %9, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @input_report_key(%struct.input_dev* %85, i32 %86, i32 %88)
  %90 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %91 = call i32 @input_sync(%struct.input_dev* %90)
  br label %109

92:                                               ; preds = %3
  %93 = load %struct.w8001*, %struct.w8001** %7, align 8
  %94 = getelementptr inbounds %struct.w8001, %struct.w8001* %93, i32 0, i32 1
  store i64 0, i64* %94, align 8
  %95 = load %struct.w8001*, %struct.w8001** %7, align 8
  %96 = getelementptr inbounds %struct.w8001, %struct.w8001* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.w8001*, %struct.w8001** %7, align 8
  %99 = getelementptr inbounds %struct.w8001, %struct.w8001* %98, i32 0, i32 0
  %100 = load i8*, i8** %99, align 8
  %101 = load i32, i32* @W8001_MAX_LENGTH, align 4
  %102 = call i32 @memcpy(i32 %97, i8* %100, i32 %101)
  %103 = load i32, i32* @W8001_QUERY_PACKET, align 4
  %104 = load %struct.w8001*, %struct.w8001** %7, align 8
  %105 = getelementptr inbounds %struct.w8001, %struct.w8001* %104, i32 0, i32 3
  store i32 %103, i32* %105, align 4
  %106 = load %struct.w8001*, %struct.w8001** %7, align 8
  %107 = getelementptr inbounds %struct.w8001, %struct.w8001* %106, i32 0, i32 2
  %108 = call i32 @complete(i32* %107)
  br label %109

109:                                              ; preds = %3, %92, %63, %62, %42
  %110 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %110
}

declare dso_local %struct.w8001* @serio_get_drvdata(%struct.serio*) #1

declare dso_local i32 @pr_debug(i8*, i8 zeroext) #1

declare dso_local i32 @unlikely(i32) #1

declare dso_local i32 @parse_data(i8*, %struct.w8001_coord*) #1

declare dso_local i32 @input_report_abs(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
