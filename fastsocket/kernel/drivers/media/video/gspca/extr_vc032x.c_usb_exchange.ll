; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_vc032x.c_usb_exchange.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_vc032x.c_usb_exchange.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*, [4 x i32]*)* @usb_exchange to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usb_exchange(%struct.gspca_dev* %0, [4 x i32]* %1) #0 {
  %3 = alloca %struct.gspca_dev*, align 8
  %4 = alloca [4 x i32]*, align 8
  %5 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %3, align 8
  store [4 x i32]* %1, [4 x i32]** %4, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %82, %2
  %7 = load [4 x i32]*, [4 x i32]** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 %9
  %11 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 3
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %13 [
    i32 204, label %14
    i32 170, label %37
    i32 187, label %51
    i32 221, label %65
  ]

13:                                               ; preds = %6
  ret void

14:                                               ; preds = %6
  %15 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %16 = load [4 x i32]*, [4 x i32]** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 %18
  %20 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 2
  %21 = load i32, i32* %20, align 4
  %22 = load [4 x i32]*, [4 x i32]** %4, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [4 x i32], [4 x i32]* %22, i64 %24
  %26 = getelementptr inbounds [4 x i32], [4 x i32]* %25, i64 0, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = shl i32 %27, 8
  %29 = load [4 x i32]*, [4 x i32]** %4, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [4 x i32], [4 x i32]* %29, i64 %31
  %33 = getelementptr inbounds [4 x i32], [4 x i32]* %32, i64 0, i64 1
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %28, %34
  %36 = call i32 @reg_w(%struct.gspca_dev* %15, i32 160, i32 %21, i32 %35)
  br label %82

37:                                               ; preds = %6
  %38 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %39 = load [4 x i32]*, [4 x i32]** %4, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [4 x i32], [4 x i32]* %39, i64 %41
  %43 = getelementptr inbounds [4 x i32], [4 x i32]* %42, i64 0, i64 1
  %44 = load i32, i32* %43, align 4
  %45 = load [4 x i32]*, [4 x i32]** %4, align 8
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [4 x i32], [4 x i32]* %45, i64 %47
  %49 = getelementptr inbounds [4 x i32], [4 x i32]* %48, i64 0, i64 2
  %50 = call i32 @i2c_write(%struct.gspca_dev* %38, i32 %44, i32* %49, i32 1)
  br label %82

51:                                               ; preds = %6
  %52 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %53 = load [4 x i32]*, [4 x i32]** %4, align 8
  %54 = load i32, i32* %5, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i64 %55
  %57 = getelementptr inbounds [4 x i32], [4 x i32]* %56, i64 0, i64 0
  %58 = load i32, i32* %57, align 4
  %59 = load [4 x i32]*, [4 x i32]** %4, align 8
  %60 = load i32, i32* %5, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i64 %61
  %63 = getelementptr inbounds [4 x i32], [4 x i32]* %62, i64 0, i64 1
  %64 = call i32 @i2c_write(%struct.gspca_dev* %52, i32 %58, i32* %63, i32 2)
  br label %82

65:                                               ; preds = %6
  %66 = load [4 x i32]*, [4 x i32]** %4, align 8
  %67 = load i32, i32* %5, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [4 x i32], [4 x i32]* %66, i64 %68
  %70 = getelementptr inbounds [4 x i32], [4 x i32]* %69, i64 0, i64 1
  %71 = load i32, i32* %70, align 4
  %72 = mul nsw i32 %71, 256
  %73 = load [4 x i32]*, [4 x i32]** %4, align 8
  %74 = load i32, i32* %5, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [4 x i32], [4 x i32]* %73, i64 %75
  %77 = getelementptr inbounds [4 x i32], [4 x i32]* %76, i64 0, i64 2
  %78 = load i32, i32* %77, align 4
  %79 = add nsw i32 %72, %78
  %80 = add nsw i32 %79, 10
  %81 = call i32 @msleep(i32 %80)
  br label %82

82:                                               ; preds = %65, %51, %37, %14
  %83 = load i32, i32* %5, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %5, align 4
  br label %6
}

declare dso_local i32 @reg_w(%struct.gspca_dev*, i32, i32, i32) #1

declare dso_local i32 @i2c_write(%struct.gspca_dev*, i32, i32*, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
