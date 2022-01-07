; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_dvb-usb-firmware.c_dvb_usb_get_hexline.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_dvb-usb-firmware.c_dvb_usb_get_hexline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.firmware = type { i32, i32* }
%struct.hexline = type { i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dvb_usb_get_hexline(%struct.firmware* %0, %struct.hexline* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.firmware*, align 8
  %6 = alloca %struct.hexline*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.firmware* %0, %struct.firmware** %5, align 8
  store %struct.hexline* %1, %struct.hexline** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load %struct.firmware*, %struct.firmware** %5, align 8
  %11 = getelementptr inbounds %struct.firmware, %struct.firmware* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = load i32, i32* %13, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %12, i64 %15
  store i32* %16, i32** %8, align 8
  store i32 4, i32* %9, align 4
  %17 = load i32*, i32** %7, align 8
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.firmware*, %struct.firmware** %5, align 8
  %20 = getelementptr inbounds %struct.firmware, %struct.firmware* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp sge i32 %18, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %112

24:                                               ; preds = %3
  %25 = load %struct.hexline*, %struct.hexline** %6, align 8
  %26 = call i32 @memset(%struct.hexline* %25, i32 0, i32 20)
  %27 = load i32*, i32** %8, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.hexline*, %struct.hexline** %6, align 8
  %31 = getelementptr inbounds %struct.hexline, %struct.hexline* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load i32*, i32** %7, align 8
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.hexline*, %struct.hexline** %6, align 8
  %35 = getelementptr inbounds %struct.hexline, %struct.hexline* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %33, %36
  %38 = add nsw i32 %37, 4
  %39 = load %struct.firmware*, %struct.firmware** %5, align 8
  %40 = getelementptr inbounds %struct.firmware, %struct.firmware* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp sge i32 %38, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %24
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  br label %112

46:                                               ; preds = %24
  %47 = load i32*, i32** %8, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32*, i32** %8, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 2
  %52 = load i32, i32* %51, align 4
  %53 = shl i32 %52, 8
  %54 = or i32 %49, %53
  %55 = load %struct.hexline*, %struct.hexline** %6, align 8
  %56 = getelementptr inbounds %struct.hexline, %struct.hexline* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = load i32*, i32** %8, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 3
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.hexline*, %struct.hexline** %6, align 8
  %61 = getelementptr inbounds %struct.hexline, %struct.hexline* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 4
  %62 = load %struct.hexline*, %struct.hexline** %6, align 8
  %63 = getelementptr inbounds %struct.hexline, %struct.hexline* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = icmp eq i32 %64, 4
  br i1 %65, label %66, label %80

66:                                               ; preds = %46
  %67 = load i32*, i32** %8, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 4
  %69 = load i32, i32* %68, align 4
  %70 = shl i32 %69, 24
  %71 = load i32*, i32** %8, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 5
  %73 = load i32, i32* %72, align 4
  %74 = shl i32 %73, 16
  %75 = or i32 %70, %74
  %76 = load %struct.hexline*, %struct.hexline** %6, align 8
  %77 = getelementptr inbounds %struct.hexline, %struct.hexline* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = or i32 %78, %75
  store i32 %79, i32* %77, align 4
  br label %80

80:                                               ; preds = %66, %46
  %81 = load %struct.hexline*, %struct.hexline** %6, align 8
  %82 = getelementptr inbounds %struct.hexline, %struct.hexline* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 4
  %84 = load i32*, i32** %8, align 8
  %85 = load i32, i32* %9, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load %struct.hexline*, %struct.hexline** %6, align 8
  %89 = getelementptr inbounds %struct.hexline, %struct.hexline* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @memcpy(i32 %83, i32* %87, i32 %90)
  %92 = load i32*, i32** %8, align 8
  %93 = load %struct.hexline*, %struct.hexline** %6, align 8
  %94 = getelementptr inbounds %struct.hexline, %struct.hexline* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %9, align 4
  %97 = add nsw i32 %95, %96
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %92, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.hexline*, %struct.hexline** %6, align 8
  %102 = getelementptr inbounds %struct.hexline, %struct.hexline* %101, i32 0, i32 3
  store i32 %100, i32* %102, align 4
  %103 = load %struct.hexline*, %struct.hexline** %6, align 8
  %104 = getelementptr inbounds %struct.hexline, %struct.hexline* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = add nsw i32 %105, 5
  %107 = load i32*, i32** %7, align 8
  %108 = load i32, i32* %107, align 4
  %109 = add nsw i32 %108, %106
  store i32 %109, i32* %107, align 4
  %110 = load i32*, i32** %7, align 8
  %111 = load i32, i32* %110, align 4
  store i32 %111, i32* %4, align 4
  br label %112

112:                                              ; preds = %80, %43, %23
  %113 = load i32, i32* %4, align 4
  ret i32 %113
}

declare dso_local i32 @memset(%struct.hexline*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
