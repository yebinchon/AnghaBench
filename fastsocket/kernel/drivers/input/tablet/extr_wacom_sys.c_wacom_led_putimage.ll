; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/tablet/extr_wacom_sys.c_wacom_led_putimage.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/tablet/extr_wacom_sys.c_wacom_led_putimage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wacom = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@WAC_CMD_ICON_START = common dso_local global i8 0, align 1
@WAC_CMD_RETRIES = common dso_local global i32 0, align 4
@WAC_CMD_ICON_XFER = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wacom*, i32, i8*)* @wacom_led_putimage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wacom_led_putimage(%struct.wacom* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wacom*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.wacom* %0, %struct.wacom** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call i8* @kzalloc(i32 259, i32 %11)
  store i8* %12, i8** %8, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %90

18:                                               ; preds = %3
  %19 = load i8, i8* @WAC_CMD_ICON_START, align 1
  %20 = load i8*, i8** %8, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 0
  store i8 %19, i8* %21, align 1
  %22 = load i8*, i8** %8, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 1
  store i8 1, i8* %23, align 1
  %24 = load %struct.wacom*, %struct.wacom** %5, align 8
  %25 = getelementptr inbounds %struct.wacom, %struct.wacom* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i8, i8* @WAC_CMD_ICON_START, align 1
  %28 = load i8*, i8** %8, align 8
  %29 = load i32, i32* @WAC_CMD_RETRIES, align 4
  %30 = call i32 @wacom_set_report(i32 %26, i32 3, i8 zeroext %27, i8* %28, i32 2, i32 %29)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %18
  br label %86

34:                                               ; preds = %18
  %35 = load i8, i8* @WAC_CMD_ICON_XFER, align 1
  %36 = load i8*, i8** %8, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 0
  store i8 %35, i8* %37, align 1
  %38 = load i32, i32* %6, align 4
  %39 = and i32 %38, 7
  %40 = trunc i32 %39 to i8
  %41 = load i8*, i8** %8, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 1
  store i8 %40, i8* %42, align 1
  store i32 0, i32* %9, align 4
  br label %43

43:                                               ; preds = %70, %34
  %44 = load i32, i32* %9, align 4
  %45 = icmp slt i32 %44, 4
  br i1 %45, label %46, label %73

46:                                               ; preds = %43
  %47 = load i32, i32* %9, align 4
  %48 = trunc i32 %47 to i8
  %49 = load i8*, i8** %8, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 2
  store i8 %48, i8* %50, align 1
  %51 = load i8*, i8** %8, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 3
  %53 = load i8*, i8** %7, align 8
  %54 = load i32, i32* %9, align 4
  %55 = mul nsw i32 %54, 256
  %56 = sext i32 %55 to i64
  %57 = getelementptr i8, i8* %53, i64 %56
  %58 = call i32 @memcpy(i8* %52, i8* %57, i32 256)
  %59 = load %struct.wacom*, %struct.wacom** %5, align 8
  %60 = getelementptr inbounds %struct.wacom, %struct.wacom* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i8, i8* @WAC_CMD_ICON_XFER, align 1
  %63 = load i8*, i8** %8, align 8
  %64 = load i32, i32* @WAC_CMD_RETRIES, align 4
  %65 = call i32 @wacom_set_report(i32 %61, i32 3, i8 zeroext %62, i8* %63, i32 259, i32 %64)
  store i32 %65, i32* %10, align 4
  %66 = load i32, i32* %10, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %46
  br label %73

69:                                               ; preds = %46
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %9, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %9, align 4
  br label %43

73:                                               ; preds = %68, %43
  %74 = load i8, i8* @WAC_CMD_ICON_START, align 1
  %75 = load i8*, i8** %8, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 0
  store i8 %74, i8* %76, align 1
  %77 = load i8*, i8** %8, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 1
  store i8 0, i8* %78, align 1
  %79 = load %struct.wacom*, %struct.wacom** %5, align 8
  %80 = getelementptr inbounds %struct.wacom, %struct.wacom* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i8, i8* @WAC_CMD_ICON_START, align 1
  %83 = load i8*, i8** %8, align 8
  %84 = load i32, i32* @WAC_CMD_RETRIES, align 4
  %85 = call i32 @wacom_set_report(i32 %81, i32 3, i8 zeroext %82, i8* %83, i32 2, i32 %84)
  br label %86

86:                                               ; preds = %73, %33
  %87 = load i8*, i8** %8, align 8
  %88 = call i32 @kfree(i8* %87)
  %89 = load i32, i32* %10, align 4
  store i32 %89, i32* %4, align 4
  br label %90

90:                                               ; preds = %86, %15
  %91 = load i32, i32* %4, align 4
  ret i32 %91
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @wacom_set_report(i32, i32, i8 zeroext, i8*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
