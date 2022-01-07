; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wimax/i2400m/extr_usb-notif.c_i2400mu_notification_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wimax/i2400m/extr_usb-notif.c_i2400mu_notification_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2400mu = type { %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { %struct.device }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"(i2400mu %p)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i2400mu_notification_release(%struct.i2400mu* %0) #0 {
  %2 = alloca %struct.i2400mu*, align 8
  %3 = alloca %struct.device*, align 8
  store %struct.i2400mu* %0, %struct.i2400mu** %2, align 8
  %4 = load %struct.i2400mu*, %struct.i2400mu** %2, align 8
  %5 = getelementptr inbounds %struct.i2400mu, %struct.i2400mu* %4, i32 0, i32 1
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  store %struct.device* %7, %struct.device** %3, align 8
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = load %struct.i2400mu*, %struct.i2400mu** %2, align 8
  %10 = call i32 @d_fnstart(i32 4, %struct.device* %8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), %struct.i2400mu* %9)
  %11 = load %struct.i2400mu*, %struct.i2400mu** %2, align 8
  %12 = getelementptr inbounds %struct.i2400mu, %struct.i2400mu* %11, i32 0, i32 0
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = icmp ne %struct.TYPE_5__* %13, null
  br i1 %14, label %15, label %32

15:                                               ; preds = %1
  %16 = load %struct.i2400mu*, %struct.i2400mu** %2, align 8
  %17 = getelementptr inbounds %struct.i2400mu, %struct.i2400mu* %16, i32 0, i32 0
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = call i32 @usb_kill_urb(%struct.TYPE_5__* %18)
  %20 = load %struct.i2400mu*, %struct.i2400mu** %2, align 8
  %21 = getelementptr inbounds %struct.i2400mu, %struct.i2400mu* %20, i32 0, i32 0
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @kfree(i32 %24)
  %26 = load %struct.i2400mu*, %struct.i2400mu** %2, align 8
  %27 = getelementptr inbounds %struct.i2400mu, %struct.i2400mu* %26, i32 0, i32 0
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = call i32 @usb_free_urb(%struct.TYPE_5__* %28)
  %30 = load %struct.i2400mu*, %struct.i2400mu** %2, align 8
  %31 = getelementptr inbounds %struct.i2400mu, %struct.i2400mu* %30, i32 0, i32 0
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %31, align 8
  br label %32

32:                                               ; preds = %15, %1
  %33 = load %struct.device*, %struct.device** %3, align 8
  %34 = load %struct.i2400mu*, %struct.i2400mu** %2, align 8
  %35 = call i32 @d_fnend(i32 4, %struct.device* %33, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), %struct.i2400mu* %34)
  ret void
}

declare dso_local i32 @d_fnstart(i32, %struct.device*, i8*, %struct.i2400mu*) #1

declare dso_local i32 @usb_kill_urb(%struct.TYPE_5__*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @usb_free_urb(%struct.TYPE_5__*) #1

declare dso_local i32 @d_fnend(i32, %struct.device*, i8*, %struct.i2400mu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
