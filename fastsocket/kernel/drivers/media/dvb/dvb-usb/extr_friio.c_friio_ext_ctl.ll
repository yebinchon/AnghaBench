; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_friio.c_friio_ext_ctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_friio.c_friio_ext_ctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_adapter = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.i2c_msg = type { i32, i32, i32*, i64 }

@FRIIO_CTL_LNB = common dso_local global i32 0, align 4
@FRIIO_CTL_LED = common dso_local global i32 0, align 4
@FRIIO_CTL_STROBE = common dso_local global i32 0, align 4
@FRIIO_CTL_CLK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_adapter*, i32, i32)* @friio_ext_ctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @friio_ext_ctl(%struct.dvb_usb_adapter* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.dvb_usb_adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.i2c_msg, align 8
  %10 = alloca [2 x i32], align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.dvb_usb_adapter* %0, %struct.dvb_usb_adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* @FRIIO_CTL_LNB, align 4
  br label %18

17:                                               ; preds = %3
  br label %18

18:                                               ; preds = %17, %15
  %19 = phi i32 [ %16, %15 ], [ 0, %17 ]
  store i32 %19, i32* %12, align 4
  %20 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %9, i32 0, i32 0
  store i32 0, i32* %20, align 8
  %21 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %9, i32 0, i32 3
  store i64 0, i64* %21, align 8
  %22 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %9, i32 0, i32 1
  store i32 2, i32* %22, align 4
  %23 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %24 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %9, i32 0, i32 2
  store i32* %23, i32** %24, align 8
  %25 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  store i32 0, i32* %25, align 4
  %26 = load i32, i32* %12, align 4
  %27 = load i32, i32* @FRIIO_CTL_LED, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @FRIIO_CTL_STROBE, align 4
  %30 = or i32 %28, %29
  %31 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  store i32 %30, i32* %31, align 4
  %32 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %4, align 8
  %33 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = call i32 @gl861_i2c_xfer(i32* %35, %struct.i2c_msg* %9, i32 1)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* @FRIIO_CTL_CLK, align 4
  %38 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %39, %37
  store i32 %40, i32* %38, align 4
  %41 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %4, align 8
  %42 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = call i32 @gl861_i2c_xfer(i32* %44, %struct.i2c_msg* %9, i32 1)
  %46 = load i32, i32* %8, align 4
  %47 = add nsw i32 %46, %45
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %12, align 4
  %49 = load i32, i32* @FRIIO_CTL_STROBE, align 4
  %50 = or i32 %48, %49
  %51 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  store i32 %50, i32* %51, align 4
  %52 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %4, align 8
  %53 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = call i32 @gl861_i2c_xfer(i32* %55, %struct.i2c_msg* %9, i32 1)
  %57 = load i32, i32* %8, align 4
  %58 = add nsw i32 %57, %56
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* @FRIIO_CTL_CLK, align 4
  %60 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %61, %59
  store i32 %62, i32* %60, align 4
  %63 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %4, align 8
  %64 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %63, i32 0, i32 0
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = call i32 @gl861_i2c_xfer(i32* %66, %struct.i2c_msg* %9, i32 1)
  %68 = load i32, i32* %8, align 4
  %69 = add nsw i32 %68, %67
  store i32 %69, i32* %8, align 4
  store i32 -2147483648, i32* %11, align 4
  store i32 0, i32* %7, align 4
  br label %70

70:                                               ; preds = %108, %18
  %71 = load i32, i32* %7, align 4
  %72 = icmp slt i32 %71, 32
  br i1 %72, label %73, label %111

73:                                               ; preds = %70
  %74 = load i32, i32* %12, align 4
  %75 = load i32, i32* @FRIIO_CTL_STROBE, align 4
  %76 = or i32 %74, %75
  %77 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  store i32 %76, i32* %77, align 4
  %78 = load i32, i32* %5, align 4
  %79 = load i32, i32* %11, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %73
  %83 = load i32, i32* @FRIIO_CTL_LED, align 4
  %84 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  %85 = load i32, i32* %84, align 4
  %86 = or i32 %85, %83
  store i32 %86, i32* %84, align 4
  br label %87

87:                                               ; preds = %82, %73
  %88 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %4, align 8
  %89 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %88, i32 0, i32 0
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = call i32 @gl861_i2c_xfer(i32* %91, %struct.i2c_msg* %9, i32 1)
  %93 = load i32, i32* %8, align 4
  %94 = add nsw i32 %93, %92
  store i32 %94, i32* %8, align 4
  %95 = load i32, i32* @FRIIO_CTL_CLK, align 4
  %96 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  %97 = load i32, i32* %96, align 4
  %98 = or i32 %97, %95
  store i32 %98, i32* %96, align 4
  %99 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %4, align 8
  %100 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %99, i32 0, i32 0
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = call i32 @gl861_i2c_xfer(i32* %102, %struct.i2c_msg* %9, i32 1)
  %104 = load i32, i32* %8, align 4
  %105 = add nsw i32 %104, %103
  store i32 %105, i32* %8, align 4
  %106 = load i32, i32* %11, align 4
  %107 = ashr i32 %106, 1
  store i32 %107, i32* %11, align 4
  br label %108

108:                                              ; preds = %87
  %109 = load i32, i32* %7, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %7, align 4
  br label %70

111:                                              ; preds = %70
  %112 = load i32, i32* %12, align 4
  %113 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  store i32 %112, i32* %113, align 4
  %114 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %4, align 8
  %115 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %114, i32 0, i32 0
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 0
  %118 = call i32 @gl861_i2c_xfer(i32* %117, %struct.i2c_msg* %9, i32 1)
  %119 = load i32, i32* %8, align 4
  %120 = add nsw i32 %119, %118
  store i32 %120, i32* %8, align 4
  %121 = load i32, i32* @FRIIO_CTL_CLK, align 4
  %122 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  %123 = load i32, i32* %122, align 4
  %124 = or i32 %123, %121
  store i32 %124, i32* %122, align 4
  %125 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %4, align 8
  %126 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %125, i32 0, i32 0
  %127 = load %struct.TYPE_2__*, %struct.TYPE_2__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 0
  %129 = call i32 @gl861_i2c_xfer(i32* %128, %struct.i2c_msg* %9, i32 1)
  %130 = load i32, i32* %8, align 4
  %131 = add nsw i32 %130, %129
  store i32 %131, i32* %8, align 4
  %132 = load i32, i32* %8, align 4
  %133 = icmp eq i32 %132, 70
  %134 = zext i1 %133 to i32
  ret i32 %134
}

declare dso_local i32 @gl861_i2c_xfer(i32*, %struct.i2c_msg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
