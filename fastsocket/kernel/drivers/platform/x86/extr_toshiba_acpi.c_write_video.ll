; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_toshiba_acpi.c_write_video.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_toshiba_acpi.c_write_video.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c" lcd_out : %i\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c" crt_out : %i\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c" tv_out : %i\00", align 1
@HCI_VIDEO_OUT = common dso_local global i32 0, align 4
@HCI_SUCCESS = common dso_local global i64 0, align 8
@HCI_VIDEO_OUT_LCD = common dso_local global i32 0, align 4
@HCI_VIDEO_OUT_CRT = common dso_local global i32 0, align 4
@HCI_VIDEO_OUT_TV = common dso_local global i32 0, align 4
@METHOD_VIDEO_OUT = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64)* @write_video to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @write_video(i8* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %14 = load i64, i64* %5, align 8
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %7, align 4
  store i32 -1, i32* %8, align 4
  store i32 -1, i32* %9, align 4
  store i32 -1, i32* %10, align 4
  br label %16

16:                                               ; preds = %59, %2
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %60

19:                                               ; preds = %16
  %20 = load i8*, i8** %4, align 8
  %21 = call i32 @sscanf(i8* %20, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32* %6)
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load i32, i32* %6, align 4
  %25 = and i32 %24, 1
  store i32 %25, i32* %8, align 4
  br label %42

26:                                               ; preds = %19
  %27 = load i8*, i8** %4, align 8
  %28 = call i32 @sscanf(i8* %27, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32* %6)
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load i32, i32* %6, align 4
  %32 = and i32 %31, 1
  store i32 %32, i32* %9, align 4
  br label %41

33:                                               ; preds = %26
  %34 = load i8*, i8** %4, align 8
  %35 = call i32 @sscanf(i8* %34, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32* %6)
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load i32, i32* %6, align 4
  %39 = and i32 %38, 1
  store i32 %39, i32* %10, align 4
  br label %40

40:                                               ; preds = %37, %33
  br label %41

41:                                               ; preds = %40, %30
  br label %42

42:                                               ; preds = %41, %23
  br label %43

43:                                               ; preds = %57, %42
  %44 = load i8*, i8** %4, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %4, align 8
  %46 = load i32, i32* %7, align 4
  %47 = add nsw i32 %46, -1
  store i32 %47, i32* %7, align 4
  br label %48

48:                                               ; preds = %43
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %48
  %52 = load i8*, i8** %4, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 -1
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp ne i32 %55, 59
  br label %57

57:                                               ; preds = %51, %48
  %58 = phi i1 [ false, %48 ], [ %56, %51 ]
  br i1 %58, label %43, label %59

59:                                               ; preds = %57
  br label %16

60:                                               ; preds = %16
  %61 = load i32, i32* @HCI_VIDEO_OUT, align 4
  %62 = call i32 @hci_read1(i32 %61, i64* %12, i64* %11)
  %63 = load i64, i64* %11, align 8
  %64 = load i64, i64* @HCI_SUCCESS, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %99

66:                                               ; preds = %60
  %67 = load i64, i64* %12, align 8
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %13, align 4
  %69 = load i32, i32* %8, align 4
  %70 = icmp ne i32 %69, -1
  br i1 %70, label %71, label %75

71:                                               ; preds = %66
  %72 = load i32, i32* @HCI_VIDEO_OUT_LCD, align 4
  %73 = load i32, i32* %8, align 4
  %74 = call i32 @_set_bit(i32* %13, i32 %72, i32 %73)
  br label %75

75:                                               ; preds = %71, %66
  %76 = load i32, i32* %9, align 4
  %77 = icmp ne i32 %76, -1
  br i1 %77, label %78, label %82

78:                                               ; preds = %75
  %79 = load i32, i32* @HCI_VIDEO_OUT_CRT, align 4
  %80 = load i32, i32* %9, align 4
  %81 = call i32 @_set_bit(i32* %13, i32 %79, i32 %80)
  br label %82

82:                                               ; preds = %78, %75
  %83 = load i32, i32* %10, align 4
  %84 = icmp ne i32 %83, -1
  br i1 %84, label %85, label %89

85:                                               ; preds = %82
  %86 = load i32, i32* @HCI_VIDEO_OUT_TV, align 4
  %87 = load i32, i32* %10, align 4
  %88 = call i32 @_set_bit(i32* %13, i32 %86, i32 %87)
  br label %89

89:                                               ; preds = %85, %82
  %90 = load i32, i32* %13, align 4
  %91 = zext i32 %90 to i64
  %92 = load i64, i64* %12, align 8
  %93 = icmp ne i64 %91, %92
  br i1 %93, label %94, label %98

94:                                               ; preds = %89
  %95 = load i32, i32* @METHOD_VIDEO_OUT, align 4
  %96 = load i32, i32* %13, align 4
  %97 = call i32 @write_acpi_int(i32 %95, i32 %96)
  br label %98

98:                                               ; preds = %94, %89
  br label %102

99:                                               ; preds = %60
  %100 = load i64, i64* @EFAULT, align 8
  %101 = sub i64 0, %100
  store i64 %101, i64* %3, align 8
  br label %104

102:                                              ; preds = %98
  %103 = load i64, i64* %5, align 8
  store i64 %103, i64* %3, align 8
  br label %104

104:                                              ; preds = %102, %99
  %105 = load i64, i64* %3, align 8
  ret i64 %105
}

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

declare dso_local i32 @hci_read1(i32, i64*, i64*) #1

declare dso_local i32 @_set_bit(i32*, i32, i32) #1

declare dso_local i32 @write_acpi_int(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
