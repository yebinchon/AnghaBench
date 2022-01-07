; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_stk014.c_snd_val.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_stk014.c_snd_val.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32, i32*, %struct.usb_device* }
%struct.usb_device = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"snd_val err %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*, i32, i32)* @snd_val to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_val(%struct.gspca_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.gspca_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.usb_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %12 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %11, i32 0, i32 2
  %13 = load %struct.usb_device*, %struct.usb_device** %12, align 8
  store %struct.usb_device* %13, %struct.usb_device** %7, align 8
  store i32 0, i32* %10, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp eq i32 %14, 16136
  br i1 %15, label %16, label %26

16:                                               ; preds = %3
  %17 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %18 = call i32 @reg_r(%struct.gspca_dev* %17, i32 1796)
  %19 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %20 = call i32 @reg_r(%struct.gspca_dev* %19, i32 1797)
  store i32 %20, i32* %10, align 4
  %21 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %22 = call i32 @reg_r(%struct.gspca_dev* %21, i32 1616)
  %23 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %24 = load i32, i32* %10, align 4
  %25 = call i32 @reg_w(%struct.gspca_dev* %23, i32 1620, i32 %24)
  br label %32

26:                                               ; preds = %3
  %27 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %28 = load i32, i32* %5, align 4
  %29 = ashr i32 %28, 16
  %30 = and i32 %29, 255
  %31 = call i32 @reg_w(%struct.gspca_dev* %27, i32 1620, i32 %30)
  br label %32

32:                                               ; preds = %26, %16
  %33 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %34 = load i32, i32* %5, align 4
  %35 = ashr i32 %34, 8
  %36 = and i32 %35, 255
  %37 = call i32 @reg_w(%struct.gspca_dev* %33, i32 1621, i32 %36)
  %38 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %39 = load i32, i32* %5, align 4
  %40 = and i32 %39, 255
  %41 = call i32 @reg_w(%struct.gspca_dev* %38, i32 1622, i32 %40)
  %42 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %43 = call i32 @reg_w(%struct.gspca_dev* %42, i32 1623, i32 0)
  %44 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %45 = call i32 @reg_w(%struct.gspca_dev* %44, i32 1624, i32 4)
  %46 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %47 = call i32 @reg_w(%struct.gspca_dev* %46, i32 1625, i32 0)
  %48 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %49 = call i32 @reg_w(%struct.gspca_dev* %48, i32 1626, i32 0)
  %50 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %51 = call i32 @reg_w(%struct.gspca_dev* %50, i32 1627, i32 0)
  %52 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %53 = call i32 @reg_w(%struct.gspca_dev* %52, i32 1616, i32 5)
  %54 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %55 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %32
  br label %110

59:                                               ; preds = %32
  %60 = load i32, i32* %6, align 4
  %61 = lshr i32 %60, 24
  %62 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %63 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  store i32 %61, i32* %65, align 4
  %66 = load i32, i32* %6, align 4
  %67 = lshr i32 %66, 16
  %68 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %69 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 1
  store i32 %67, i32* %71, align 4
  %72 = load i32, i32* %6, align 4
  %73 = lshr i32 %72, 8
  %74 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %75 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 2
  store i32 %73, i32* %77, align 4
  %78 = load i32, i32* %6, align 4
  %79 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %80 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 3
  store i32 %78, i32* %82, align 4
  %83 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %84 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %85 = call i32 @usb_sndbulkpipe(%struct.usb_device* %84, i32 6)
  %86 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %87 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %86, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  %89 = call i32 @usb_bulk_msg(%struct.usb_device* %83, i32 %85, i32* %88, i32 4, i32* %8, i32 500)
  store i32 %89, i32* %9, align 4
  %90 = load i32, i32* %9, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %59
  %93 = load i32, i32* %9, align 4
  %94 = call i32 @err(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %93)
  %95 = load i32, i32* %9, align 4
  %96 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %97 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 8
  br label %110

98:                                               ; preds = %59
  %99 = load i32, i32* %5, align 4
  %100 = icmp eq i32 %99, 16136
  br i1 %100, label %101, label %109

101:                                              ; preds = %98
  %102 = load i32, i32* %10, align 4
  %103 = add nsw i32 %102, 4
  store i32 %103, i32* %10, align 4
  %104 = load i32, i32* %10, align 4
  %105 = and i32 %104, 63
  store i32 %105, i32* %10, align 4
  %106 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %107 = load i32, i32* %10, align 4
  %108 = call i32 @reg_w(%struct.gspca_dev* %106, i32 1797, i32 %107)
  br label %109

109:                                              ; preds = %101, %98
  br label %110

110:                                              ; preds = %58, %109, %92
  ret void
}

declare dso_local i32 @reg_r(%struct.gspca_dev*, i32) #1

declare dso_local i32 @reg_w(%struct.gspca_dev*, i32, i32) #1

declare dso_local i32 @usb_bulk_msg(%struct.usb_device*, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @usb_sndbulkpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
