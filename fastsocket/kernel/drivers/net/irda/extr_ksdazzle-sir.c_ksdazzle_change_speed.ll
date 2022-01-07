; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/irda/extr_ksdazzle-sir.c_ksdazzle_change_speed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/irda/extr_ksdazzle-sir.c_ksdazzle_change_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ksdazzle_cb = type { %struct.TYPE_5__*, %struct.TYPE_6__, i32*, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { i32, i32 }

@ksdazzle_change_speed.supported_speeds = internal global [10 x i32] [i32 2400, i32 9600, i32 19200, i32 38400, i32 57600, i32 115200, i32 576000, i32 1152000, i32 4000000, i32 0], align 16
@ENOMEM = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@KS_DATA_8_BITS = common dso_local global i32 0, align 4
@ksdazzle_speed_irq = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ksdazzle_cb*, i32)* @ksdazzle_change_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ksdazzle_change_speed(%struct.ksdazzle_cb* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ksdazzle_cb*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ksdazzle_cb* %0, %struct.ksdazzle_cb** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.ksdazzle_cb*, %struct.ksdazzle_cb** %4, align 8
  %9 = getelementptr inbounds %struct.ksdazzle_cb, %struct.ksdazzle_cb* %8, i32 0, i32 2
  %10 = load i32*, i32** %9, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %2
  %13 = load %struct.ksdazzle_cb*, %struct.ksdazzle_cb** %4, align 8
  %14 = getelementptr inbounds %struct.ksdazzle_cb, %struct.ksdazzle_cb* %13, i32 0, i32 0
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = icmp eq %struct.TYPE_5__* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %12, %2
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %91

20:                                               ; preds = %12
  store i32 0, i32* %7, align 4
  br label %21

21:                                               ; preds = %37, %20
  %22 = load i32, i32* %7, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds [10 x i32], [10 x i32]* @ksdazzle_change_speed.supported_speeds, i64 0, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %21
  %28 = load i32, i32* %7, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds [10 x i32], [10 x i32]* @ksdazzle_change_speed.supported_speeds, i64 0, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %31, %32
  br label %34

34:                                               ; preds = %27, %21
  %35 = phi i1 [ false, %21 ], [ %33, %27 ]
  br i1 %35, label %36, label %40

36:                                               ; preds = %34
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %7, align 4
  %39 = add i32 %38, 1
  store i32 %39, i32* %7, align 4
  br label %21

40:                                               ; preds = %34
  %41 = load i32, i32* %7, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds [10 x i32], [10 x i32]* @ksdazzle_change_speed.supported_speeds, i64 0, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load i32, i32* @EOPNOTSUPP, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %91

49:                                               ; preds = %40
  %50 = load %struct.ksdazzle_cb*, %struct.ksdazzle_cb** %4, align 8
  %51 = getelementptr inbounds %struct.ksdazzle_cb, %struct.ksdazzle_cb* %50, i32 0, i32 1
  %52 = call i32 @memset(%struct.TYPE_6__* %51, i32 0, i32 4)
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @cpu_to_le32(i32 %53)
  %55 = load %struct.ksdazzle_cb*, %struct.ksdazzle_cb** %4, align 8
  %56 = getelementptr inbounds %struct.ksdazzle_cb, %struct.ksdazzle_cb* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  store i32 %54, i32* %57, align 4
  %58 = load i32, i32* @KS_DATA_8_BITS, align 4
  %59 = load %struct.ksdazzle_cb*, %struct.ksdazzle_cb** %4, align 8
  %60 = getelementptr inbounds %struct.ksdazzle_cb, %struct.ksdazzle_cb* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  store i32 %58, i32* %61, align 8
  %62 = load %struct.ksdazzle_cb*, %struct.ksdazzle_cb** %4, align 8
  %63 = getelementptr inbounds %struct.ksdazzle_cb, %struct.ksdazzle_cb* %62, i32 0, i32 0
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 8
  %65 = load %struct.ksdazzle_cb*, %struct.ksdazzle_cb** %4, align 8
  %66 = getelementptr inbounds %struct.ksdazzle_cb, %struct.ksdazzle_cb* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.ksdazzle_cb*, %struct.ksdazzle_cb** %4, align 8
  %69 = getelementptr inbounds %struct.ksdazzle_cb, %struct.ksdazzle_cb* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @usb_sndctrlpipe(i32 %70, i32 0)
  %72 = load %struct.ksdazzle_cb*, %struct.ksdazzle_cb** %4, align 8
  %73 = getelementptr inbounds %struct.ksdazzle_cb, %struct.ksdazzle_cb* %72, i32 0, i32 2
  %74 = load i32*, i32** %73, align 8
  %75 = bitcast i32* %74 to i8*
  %76 = load %struct.ksdazzle_cb*, %struct.ksdazzle_cb** %4, align 8
  %77 = getelementptr inbounds %struct.ksdazzle_cb, %struct.ksdazzle_cb* %76, i32 0, i32 1
  %78 = load i32, i32* @ksdazzle_speed_irq, align 4
  %79 = load %struct.ksdazzle_cb*, %struct.ksdazzle_cb** %4, align 8
  %80 = call i32 @usb_fill_control_urb(%struct.TYPE_5__* %64, i32 %67, i32 %71, i8* %75, %struct.TYPE_6__* %77, i32 4, i32 %78, %struct.ksdazzle_cb* %79)
  %81 = load %struct.ksdazzle_cb*, %struct.ksdazzle_cb** %4, align 8
  %82 = getelementptr inbounds %struct.ksdazzle_cb, %struct.ksdazzle_cb* %81, i32 0, i32 0
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  store i64 0, i64* %84, align 8
  %85 = load %struct.ksdazzle_cb*, %struct.ksdazzle_cb** %4, align 8
  %86 = getelementptr inbounds %struct.ksdazzle_cb, %struct.ksdazzle_cb* %85, i32 0, i32 0
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %86, align 8
  %88 = load i32, i32* @GFP_ATOMIC, align 4
  %89 = call i32 @usb_submit_urb(%struct.TYPE_5__* %87, i32 %88)
  store i32 %89, i32* %6, align 4
  %90 = load i32, i32* %6, align 4
  store i32 %90, i32* %3, align 4
  br label %91

91:                                               ; preds = %49, %46, %17
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @usb_fill_control_urb(%struct.TYPE_5__*, i32, i32, i8*, %struct.TYPE_6__*, i32, i32, %struct.ksdazzle_cb*) #1

declare dso_local i32 @usb_sndctrlpipe(i32, i32) #1

declare dso_local i32 @usb_submit_urb(%struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
