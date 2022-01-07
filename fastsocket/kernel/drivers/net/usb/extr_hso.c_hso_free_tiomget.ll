; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_hso.c_hso_free_tiomget.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_hso.c_hso_free_tiomget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hso_serial = type { %struct.hso_tiocmget* }
%struct.hso_tiocmget = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hso_serial*)* @hso_free_tiomget to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hso_free_tiomget(%struct.hso_serial* %0) #0 {
  %2 = alloca %struct.hso_serial*, align 8
  %3 = alloca %struct.hso_tiocmget*, align 8
  store %struct.hso_serial* %0, %struct.hso_serial** %2, align 8
  %4 = load %struct.hso_serial*, %struct.hso_serial** %2, align 8
  %5 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %4, i32 0, i32 0
  %6 = load %struct.hso_tiocmget*, %struct.hso_tiocmget** %5, align 8
  store %struct.hso_tiocmget* %6, %struct.hso_tiocmget** %3, align 8
  %7 = load %struct.hso_tiocmget*, %struct.hso_tiocmget** %3, align 8
  %8 = icmp ne %struct.hso_tiocmget* %7, null
  br i1 %8, label %9, label %26

9:                                                ; preds = %1
  %10 = load %struct.hso_tiocmget*, %struct.hso_tiocmget** %3, align 8
  %11 = getelementptr inbounds %struct.hso_tiocmget, %struct.hso_tiocmget* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %21

14:                                               ; preds = %9
  %15 = load %struct.hso_tiocmget*, %struct.hso_tiocmget** %3, align 8
  %16 = getelementptr inbounds %struct.hso_tiocmget, %struct.hso_tiocmget* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = call i32 @usb_free_urb(i32* %17)
  %19 = load %struct.hso_tiocmget*, %struct.hso_tiocmget** %3, align 8
  %20 = getelementptr inbounds %struct.hso_tiocmget, %struct.hso_tiocmget* %19, i32 0, i32 0
  store i32* null, i32** %20, align 8
  br label %21

21:                                               ; preds = %14, %9
  %22 = load %struct.hso_serial*, %struct.hso_serial** %2, align 8
  %23 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %22, i32 0, i32 0
  store %struct.hso_tiocmget* null, %struct.hso_tiocmget** %23, align 8
  %24 = load %struct.hso_tiocmget*, %struct.hso_tiocmget** %3, align 8
  %25 = call i32 @kfree(%struct.hso_tiocmget* %24)
  br label %26

26:                                               ; preds = %21, %1
  ret void
}

declare dso_local i32 @usb_free_urb(i32*) #1

declare dso_local i32 @kfree(%struct.hso_tiocmget*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
