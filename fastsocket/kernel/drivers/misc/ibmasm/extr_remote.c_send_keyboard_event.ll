; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/ibmasm/extr_remote.c_send_keyboard_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/ibmasm/extr_remote.c_send_keyboard_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32 }
%struct.remote_input = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i16, i32 }

@xlate_high = common dso_local global i32* null, align 8
@xlate = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.input_dev*, %struct.remote_input*)* @send_keyboard_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @send_keyboard_event(%struct.input_dev* %0, %struct.remote_input* %1) #0 {
  %3 = alloca %struct.input_dev*, align 8
  %4 = alloca %struct.remote_input*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i16, align 2
  store %struct.input_dev* %0, %struct.input_dev** %3, align 8
  store %struct.remote_input* %1, %struct.remote_input** %4, align 8
  %7 = load %struct.remote_input*, %struct.remote_input** %4, align 8
  %8 = getelementptr inbounds %struct.remote_input, %struct.remote_input* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i16, i16* %10, align 4
  store i16 %11, i16* %6, align 2
  %12 = load i16, i16* %6, align 2
  %13 = zext i16 %12 to i32
  %14 = and i32 %13, 65280
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %2
  %17 = load i32*, i32** @xlate_high, align 8
  %18 = load i16, i16* %6, align 2
  %19 = zext i16 %18 to i32
  %20 = and i32 %19, 255
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %17, i64 %21
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %5, align 4
  br label %30

24:                                               ; preds = %2
  %25 = load i32*, i32** @xlate, align 8
  %26 = load i16, i16* %6, align 2
  %27 = zext i16 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %24, %16
  %31 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.remote_input*, %struct.remote_input** %4, align 8
  %34 = getelementptr inbounds %struct.remote_input, %struct.remote_input* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @input_report_key(%struct.input_dev* %31, i32 %32, i32 %37)
  %39 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %40 = call i32 @input_sync(%struct.input_dev* %39)
  ret void
}

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
