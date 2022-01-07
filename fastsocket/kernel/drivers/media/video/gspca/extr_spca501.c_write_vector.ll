; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_spca501.c_write_vector.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_spca501.c_write_vector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { %struct.usb_device* }
%struct.usb_device = type { i32 }

@D_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Reg write failed for 0x%02x,0x%02x,0x%02x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*, [3 x i64]*)* @write_vector to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_vector(%struct.gspca_dev* %0, [3 x i64]* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gspca_dev*, align 8
  %5 = alloca [3 x i64]*, align 8
  %6 = alloca %struct.usb_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %4, align 8
  store [3 x i64]* %1, [3 x i64]** %5, align 8
  %9 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %10 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %9, i32 0, i32 0
  %11 = load %struct.usb_device*, %struct.usb_device** %10, align 8
  store %struct.usb_device* %11, %struct.usb_device** %6, align 8
  store i32 0, i32* %8, align 4
  br label %12

12:                                               ; preds = %83, %2
  %13 = load [3 x i64]*, [3 x i64]** %5, align 8
  %14 = load i32, i32* %8, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [3 x i64], [3 x i64]* %13, i64 %15
  %17 = getelementptr inbounds [3 x i64], [3 x i64]* %16, i64 0, i64 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %36, label %20

20:                                               ; preds = %12
  %21 = load [3 x i64]*, [3 x i64]** %5, align 8
  %22 = load i32, i32* %8, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [3 x i64], [3 x i64]* %21, i64 %23
  %25 = getelementptr inbounds [3 x i64], [3 x i64]* %24, i64 0, i64 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %36, label %28

28:                                               ; preds = %20
  %29 = load [3 x i64]*, [3 x i64]** %5, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [3 x i64], [3 x i64]* %29, i64 %31
  %33 = getelementptr inbounds [3 x i64], [3 x i64]* %32, i64 0, i64 2
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br label %36

36:                                               ; preds = %28, %20, %12
  %37 = phi i1 [ true, %20 ], [ true, %12 ], [ %35, %28 ]
  br i1 %37, label %38, label %86

38:                                               ; preds = %36
  %39 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %40 = load [3 x i64]*, [3 x i64]** %5, align 8
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [3 x i64], [3 x i64]* %40, i64 %42
  %44 = getelementptr inbounds [3 x i64], [3 x i64]* %43, i64 0, i64 0
  %45 = load i64, i64* %44, align 8
  %46 = load [3 x i64]*, [3 x i64]** %5, align 8
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [3 x i64], [3 x i64]* %46, i64 %48
  %50 = getelementptr inbounds [3 x i64], [3 x i64]* %49, i64 0, i64 2
  %51 = load i64, i64* %50, align 8
  %52 = load [3 x i64]*, [3 x i64]** %5, align 8
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [3 x i64], [3 x i64]* %52, i64 %54
  %56 = getelementptr inbounds [3 x i64], [3 x i64]* %55, i64 0, i64 1
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @reg_write(%struct.usb_device* %39, i64 %45, i64 %51, i64 %57)
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* %7, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %83

61:                                               ; preds = %38
  %62 = load i32, i32* @D_ERR, align 4
  %63 = load [3 x i64]*, [3 x i64]** %5, align 8
  %64 = load i32, i32* %8, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [3 x i64], [3 x i64]* %63, i64 %65
  %67 = getelementptr inbounds [3 x i64], [3 x i64]* %66, i64 0, i64 0
  %68 = load i64, i64* %67, align 8
  %69 = load [3 x i64]*, [3 x i64]** %5, align 8
  %70 = load i32, i32* %8, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [3 x i64], [3 x i64]* %69, i64 %71
  %73 = getelementptr inbounds [3 x i64], [3 x i64]* %72, i64 0, i64 1
  %74 = load i64, i64* %73, align 8
  %75 = load [3 x i64]*, [3 x i64]** %5, align 8
  %76 = load i32, i32* %8, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [3 x i64], [3 x i64]* %75, i64 %77
  %79 = getelementptr inbounds [3 x i64], [3 x i64]* %78, i64 0, i64 2
  %80 = load i64, i64* %79, align 8
  %81 = call i32 @PDEBUG(i32 %62, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i64 %68, i64 %74, i64 %80)
  %82 = load i32, i32* %7, align 4
  store i32 %82, i32* %3, align 4
  br label %87

83:                                               ; preds = %38
  %84 = load i32, i32* %8, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %8, align 4
  br label %12

86:                                               ; preds = %36
  store i32 0, i32* %3, align 4
  br label %87

87:                                               ; preds = %86, %61
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i32 @reg_write(%struct.usb_device*, i64, i64, i64) #1

declare dso_local i32 @PDEBUG(i32, i8*, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
