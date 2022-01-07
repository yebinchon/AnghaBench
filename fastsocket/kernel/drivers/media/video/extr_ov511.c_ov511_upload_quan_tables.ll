; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ov511.c_ov511_upload_quan_tables.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ov511.c_ov511_upload_quan_tables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ov511 = type { i32 }

@yQuanTable511 = common dso_local global i8* null, align 8
@uvQuanTable511 = common dso_local global i8* null, align 8
@R511_COMP_LUT_BEGIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Uploading quantization tables\00", align 1
@OV511_QUANTABLESIZE = common dso_local global i32 0, align 4
@ENABLE_Y_QUANTABLE = common dso_local global i64 0, align 8
@ENABLE_UV_QUANTABLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_ov511*)* @ov511_upload_quan_tables to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov511_upload_quan_tables(%struct.usb_ov511* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_ov511*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.usb_ov511* %0, %struct.usb_ov511** %3, align 8
  %11 = load i8*, i8** @yQuanTable511, align 8
  store i8* %11, i8** %4, align 8
  %12 = load i8*, i8** @uvQuanTable511, align 8
  store i8* %12, i8** %5, align 8
  %13 = load i32, i32* @R511_COMP_LUT_BEGIN, align 4
  store i32 %13, i32* %10, align 4
  %14 = call i32 @PDEBUG(i32 4, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %15

15:                                               ; preds = %94, %1
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @OV511_QUANTABLESIZE, align 4
  %18 = sdiv i32 %17, 2
  %19 = icmp slt i32 %16, %18
  br i1 %19, label %20, label %97

20:                                               ; preds = %15
  %21 = load i64, i64* @ENABLE_Y_QUANTABLE, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %54

23:                                               ; preds = %20
  %24 = load i8*, i8** %4, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %25, i8** %4, align 8
  %26 = load i8, i8* %24, align 1
  store i8 %26, i8* %6, align 1
  %27 = load i8*, i8** %4, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %28, i8** %4, align 8
  %29 = load i8, i8* %27, align 1
  store i8 %29, i8* %7, align 1
  %30 = load i8, i8* %6, align 1
  %31 = zext i8 %30 to i32
  %32 = and i32 %31, 15
  %33 = trunc i32 %32 to i8
  store i8 %33, i8* %6, align 1
  %34 = load i8, i8* %7, align 1
  %35 = zext i8 %34 to i32
  %36 = and i32 %35, 15
  %37 = trunc i32 %36 to i8
  store i8 %37, i8* %7, align 1
  %38 = load i8, i8* %7, align 1
  %39 = zext i8 %38 to i32
  %40 = shl i32 %39, 4
  %41 = load i8, i8* %6, align 1
  %42 = zext i8 %41 to i32
  %43 = or i32 %42, %40
  %44 = trunc i32 %43 to i8
  store i8 %44, i8* %6, align 1
  %45 = load %struct.usb_ov511*, %struct.usb_ov511** %3, align 8
  %46 = load i32, i32* %10, align 4
  %47 = load i8, i8* %6, align 1
  %48 = call i32 @reg_w(%struct.usb_ov511* %45, i32 %46, i8 zeroext %47)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %23
  %52 = load i32, i32* %9, align 4
  store i32 %52, i32* %2, align 4
  br label %98

53:                                               ; preds = %23
  br label %54

54:                                               ; preds = %53, %20
  %55 = load i64, i64* @ENABLE_UV_QUANTABLE, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %91

57:                                               ; preds = %54
  %58 = load i8*, i8** %5, align 8
  %59 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %59, i8** %5, align 8
  %60 = load i8, i8* %58, align 1
  store i8 %60, i8* %6, align 1
  %61 = load i8*, i8** %5, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %5, align 8
  %63 = load i8, i8* %61, align 1
  store i8 %63, i8* %7, align 1
  %64 = load i8, i8* %6, align 1
  %65 = zext i8 %64 to i32
  %66 = and i32 %65, 15
  %67 = trunc i32 %66 to i8
  store i8 %67, i8* %6, align 1
  %68 = load i8, i8* %7, align 1
  %69 = zext i8 %68 to i32
  %70 = and i32 %69, 15
  %71 = trunc i32 %70 to i8
  store i8 %71, i8* %7, align 1
  %72 = load i8, i8* %7, align 1
  %73 = zext i8 %72 to i32
  %74 = shl i32 %73, 4
  %75 = load i8, i8* %6, align 1
  %76 = zext i8 %75 to i32
  %77 = or i32 %76, %74
  %78 = trunc i32 %77 to i8
  store i8 %78, i8* %6, align 1
  %79 = load %struct.usb_ov511*, %struct.usb_ov511** %3, align 8
  %80 = load i32, i32* %10, align 4
  %81 = load i32, i32* @OV511_QUANTABLESIZE, align 4
  %82 = sdiv i32 %81, 2
  %83 = add nsw i32 %80, %82
  %84 = load i8, i8* %6, align 1
  %85 = call i32 @reg_w(%struct.usb_ov511* %79, i32 %83, i8 zeroext %84)
  store i32 %85, i32* %9, align 4
  %86 = load i32, i32* %9, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %57
  %89 = load i32, i32* %9, align 4
  store i32 %89, i32* %2, align 4
  br label %98

90:                                               ; preds = %57
  br label %91

91:                                               ; preds = %90, %54
  %92 = load i32, i32* %10, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %10, align 4
  br label %94

94:                                               ; preds = %91
  %95 = load i32, i32* %8, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %8, align 4
  br label %15

97:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %98

98:                                               ; preds = %97, %88, %51
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local i32 @PDEBUG(i32, i8*) #1

declare dso_local i32 @reg_w(%struct.usb_ov511*, i32, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
