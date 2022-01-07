; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/rc/extr_mceusb.c_mceusb_handle_command.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/rc/extr_mceusb.c_mceusb_handle_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mceusb_dev = type { i32*, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mceusb_dev*, i32)* @mceusb_handle_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mceusb_handle_command(%struct.mceusb_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.mceusb_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mceusb_dev* %0, %struct.mceusb_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.mceusb_dev*, %struct.mceusb_dev** %3, align 8
  %8 = getelementptr inbounds %struct.mceusb_dev, %struct.mceusb_dev* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = load i32, i32* %4, align 4
  %11 = add nsw i32 %10, 1
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i32, i32* %9, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = and i32 %14, 255
  store i32 %15, i32* %5, align 4
  %16 = load %struct.mceusb_dev*, %struct.mceusb_dev** %3, align 8
  %17 = getelementptr inbounds %struct.mceusb_dev, %struct.mceusb_dev* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = add nsw i32 %19, 2
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %18, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, 255
  store i32 %24, i32* %6, align 4
  %25 = load %struct.mceusb_dev*, %struct.mceusb_dev** %3, align 8
  %26 = getelementptr inbounds %struct.mceusb_dev, %struct.mceusb_dev* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  switch i32 %31, label %53 [
    i32 129, label %32
    i32 128, label %43
    i32 130, label %47
  ]

32:                                               ; preds = %2
  %33 = load i32, i32* %5, align 4
  %34 = shl i32 %33, 8
  %35 = load i32, i32* %6, align 4
  %36 = or i32 %34, %35
  %37 = sdiv i32 %36, 2
  %38 = call i32 @US_TO_NS(i32 %37)
  %39 = load %struct.mceusb_dev*, %struct.mceusb_dev** %3, align 8
  %40 = getelementptr inbounds %struct.mceusb_dev, %struct.mceusb_dev* %39, i32 0, i32 3
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store i32 %38, i32* %42, align 4
  br label %54

43:                                               ; preds = %2
  %44 = load i32, i32* %5, align 4
  %45 = load %struct.mceusb_dev*, %struct.mceusb_dev** %3, align 8
  %46 = getelementptr inbounds %struct.mceusb_dev, %struct.mceusb_dev* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 8
  br label %54

47:                                               ; preds = %2
  %48 = load i32, i32* %5, align 4
  %49 = icmp eq i32 %48, 2
  %50 = zext i1 %49 to i32
  %51 = load %struct.mceusb_dev*, %struct.mceusb_dev** %3, align 8
  %52 = getelementptr inbounds %struct.mceusb_dev, %struct.mceusb_dev* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 4
  br label %54

53:                                               ; preds = %2
  br label %54

54:                                               ; preds = %53, %47, %43, %32
  ret void
}

declare dso_local i32 @US_TO_NS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
