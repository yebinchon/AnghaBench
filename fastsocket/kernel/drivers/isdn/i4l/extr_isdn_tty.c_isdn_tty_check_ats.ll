; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/i4l/extr_isdn_tty.c_isdn_tty_check_ats.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/i4l/extr_isdn_tty.c_isdn_tty_check_ats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32* }

@ISDN_PROTO_L2_MAX = common dso_local global i32 0, align 4
@ISDN_SERIAL_XMIT_MAX = common dso_local global i32 0, align 4
@REG_SI1 = common dso_local global i64 0, align 8
@VBUFX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.TYPE_5__*, %struct.TYPE_6__*)* @isdn_tty_check_ats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isdn_tty_check_ats(i32 %0, i32 %1, %struct.TYPE_5__* %2, %struct.TYPE_6__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %8, align 8
  store %struct.TYPE_6__* %3, %struct.TYPE_6__** %9, align 8
  %10 = load i32, i32* %6, align 4
  switch i32 %10, label %40 [
    i32 132, label %11
    i32 130, label %17
    i32 128, label %39
    i32 131, label %39
    i32 129, label %39
  ]

11:                                               ; preds = %4
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @ISDN_PROTO_L2_MAX, align 4
  %14 = icmp sgt i32 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  store i32 1, i32* %5, align 4
  br label %41

16:                                               ; preds = %11
  br label %40

17:                                               ; preds = %4
  %18 = load i32, i32* %7, align 4
  %19 = mul nsw i32 %18, 16
  %20 = load i32, i32* @ISDN_SERIAL_XMIT_MAX, align 4
  %21 = icmp sgt i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  store i32 1, i32* %5, align 4
  br label %41

23:                                               ; preds = %17
  %24 = load i32, i32* %7, align 4
  %25 = mul nsw i32 %24, 16
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 132
  %32 = load i32, i32* %31, align 4
  switch i32 %32, label %38 [
    i32 133, label %33
    i32 135, label %33
    i32 134, label %33
  ]

33:                                               ; preds = %23, %23, %23
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = sdiv i32 %36, 10
  store i32 %37, i32* %35, align 4
  br label %38

38:                                               ; preds = %33, %23
  br label %40

39:                                               ; preds = %4, %4, %4
  store i32 1, i32* %5, align 4
  br label %41

40:                                               ; preds = %4, %38, %16
  store i32 0, i32* %5, align 4
  br label %41

41:                                               ; preds = %40, %39, %22, %15
  %42 = load i32, i32* %5, align 4
  ret i32 %42
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
