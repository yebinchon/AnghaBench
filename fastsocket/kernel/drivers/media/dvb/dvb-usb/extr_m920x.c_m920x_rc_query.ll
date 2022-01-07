; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_m920x.c_m920x_rc_query.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_m920x.c_m920x_rc_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_device = type { %struct.TYPE_3__, i32, %struct.m920x_state* }
%struct.TYPE_3__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.m920x_state = type { i32 }

@M9206_CORE = common dso_local global i32 0, align 4
@M9206_RC_STATE = common dso_local global i32 0, align 4
@M9206_RC_KEY = common dso_local global i32 0, align 4
@REMOTE_NO_KEY_PRESSED = common dso_local global i32 0, align 4
@REMOTE_KEY_PRESSED = common dso_local global i32 0, align 4
@REMOTE_KEY_REPEAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Unexpected rc state %02x\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Unknown rc key %02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_device*, i32*, i32*)* @m920x_rc_query to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m920x_rc_query(%struct.dvb_usb_device* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.dvb_usb_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.m920x_state*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [2 x i32], align 4
  store %struct.dvb_usb_device* %0, %struct.dvb_usb_device** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %12 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %11, i32 0, i32 2
  %13 = load %struct.m920x_state*, %struct.m920x_state** %12, align 8
  store %struct.m920x_state* %13, %struct.m920x_state** %7, align 8
  store i32 0, i32* %9, align 4
  %14 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %15 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @M9206_CORE, align 4
  %18 = load i32, i32* @M9206_RC_STATE, align 4
  %19 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %20 = call i32 @m920x_read(i32 %16, i32 %17, i32 0, i32 %18, i32* %19, i32 1)
  store i32 %20, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  br label %114

23:                                               ; preds = %3
  %24 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %25 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @M9206_CORE, align 4
  %28 = load i32, i32* @M9206_RC_KEY, align 4
  %29 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %30 = getelementptr inbounds i32, i32* %29, i64 1
  %31 = call i32 @m920x_read(i32 %26, i32 %27, i32 0, i32 %28, i32* %30, i32 1)
  store i32 %31, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %23
  br label %114

34:                                               ; preds = %23
  store i32 0, i32* %8, align 4
  br label %35

35:                                               ; preds = %100, %34
  %36 = load i32, i32* %8, align 4
  %37 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %38 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp slt i32 %36, %40
  br i1 %41, label %42, label %103

42:                                               ; preds = %35
  %43 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %44 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i64 %48
  %50 = call i32 @rc5_data(%struct.TYPE_4__* %49)
  %51 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  %52 = load i32, i32* %51, align 4
  %53 = icmp eq i32 %50, %52
  br i1 %53, label %54, label %99

54:                                               ; preds = %42
  %55 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %56 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = load i32, i32* %8, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32*, i32** %5, align 8
  store i32 %63, i32* %64, align 4
  %65 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %66 = load i32, i32* %65, align 4
  switch i32 %66, label %93 [
    i32 128, label %67
    i32 136, label %70
    i32 153, label %70
    i32 192, label %70
    i32 216, label %70
    i32 147, label %75
    i32 146, label %75
    i32 131, label %75
    i32 130, label %75
    i32 145, label %80
    i32 129, label %80
  ]

67:                                               ; preds = %54
  %68 = load i32, i32* @REMOTE_NO_KEY_PRESSED, align 4
  %69 = load i32*, i32** %6, align 8
  store i32 %68, i32* %69, align 4
  br label %114

70:                                               ; preds = %54, %54, %54, %54
  %71 = load i32, i32* @REMOTE_NO_KEY_PRESSED, align 4
  %72 = load i32*, i32** %6, align 8
  store i32 %71, i32* %72, align 4
  %73 = load %struct.m920x_state*, %struct.m920x_state** %7, align 8
  %74 = getelementptr inbounds %struct.m920x_state, %struct.m920x_state* %73, i32 0, i32 0
  store i32 0, i32* %74, align 4
  br label %114

75:                                               ; preds = %54, %54, %54, %54
  %76 = load %struct.m920x_state*, %struct.m920x_state** %7, align 8
  %77 = getelementptr inbounds %struct.m920x_state, %struct.m920x_state* %76, i32 0, i32 0
  store i32 0, i32* %77, align 4
  %78 = load i32, i32* @REMOTE_KEY_PRESSED, align 4
  %79 = load i32*, i32** %6, align 8
  store i32 %78, i32* %79, align 4
  br label %114

80:                                               ; preds = %54, %54
  %81 = load %struct.m920x_state*, %struct.m920x_state** %7, align 8
  %82 = getelementptr inbounds %struct.m920x_state, %struct.m920x_state* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %82, align 4
  %85 = icmp sgt i32 %84, 2
  br i1 %85, label %86, label %89

86:                                               ; preds = %80
  %87 = load i32, i32* @REMOTE_KEY_REPEAT, align 4
  %88 = load i32*, i32** %6, align 8
  store i32 %87, i32* %88, align 4
  br label %92

89:                                               ; preds = %80
  %90 = load i32, i32* @REMOTE_NO_KEY_PRESSED, align 4
  %91 = load i32*, i32** %6, align 8
  store i32 %90, i32* %91, align 4
  br label %92

92:                                               ; preds = %89, %86
  br label %114

93:                                               ; preds = %54
  %94 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @deb(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %95)
  %97 = load i32, i32* @REMOTE_NO_KEY_PRESSED, align 4
  %98 = load i32*, i32** %6, align 8
  store i32 %97, i32* %98, align 4
  br label %114

99:                                               ; preds = %42
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %8, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %8, align 4
  br label %35

103:                                              ; preds = %35
  %104 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  %105 = load i32, i32* %104, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %103
  %108 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @deb(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %109)
  br label %111

111:                                              ; preds = %107, %103
  %112 = load i32, i32* @REMOTE_NO_KEY_PRESSED, align 4
  %113 = load i32*, i32** %6, align 8
  store i32 %112, i32* %113, align 4
  br label %114

114:                                              ; preds = %111, %93, %92, %75, %70, %67, %33, %22
  %115 = load i32, i32* %9, align 4
  ret i32 %115
}

declare dso_local i32 @m920x_read(i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @rc5_data(%struct.TYPE_4__*) #1

declare dso_local i32 @deb(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
