; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_amimouse.c_amimouse_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_amimouse.c_amimouse_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i16, i16 }
%struct.TYPE_3__ = type { i32 }

@amiga_custom = common dso_local global %struct.TYPE_4__ zeroinitializer, align 2
@amimouse_lastx = common dso_local global i32 0, align 4
@amimouse_lasty = common dso_local global i32 0, align 4
@amimouse_dev = common dso_local global i32 0, align 4
@REL_X = common dso_local global i32 0, align 4
@REL_Y = common dso_local global i32 0, align 4
@BTN_LEFT = common dso_local global i32 0, align 4
@ciaa = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@BTN_MIDDLE = common dso_local global i32 0, align 4
@BTN_RIGHT = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @amimouse_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amimouse_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %11 = load i16, i16* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @amiga_custom, i32 0, i32 0), align 2
  store i16 %11, i16* %5, align 2
  %12 = load i16, i16* %5, align 2
  %13 = zext i16 %12 to i32
  %14 = and i32 %13, 255
  store i32 %14, i32* %7, align 4
  %15 = load i16, i16* %5, align 2
  %16 = zext i16 %15 to i32
  %17 = ashr i32 %16, 8
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @amimouse_lastx, align 4
  %20 = sub nsw i32 %18, %19
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @amimouse_lasty, align 4
  %23 = sub nsw i32 %21, %22
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp slt i32 %24, -127
  br i1 %25, label %26, label %31

26:                                               ; preds = %2
  %27 = load i32, i32* %7, align 4
  %28 = add nsw i32 256, %27
  %29 = load i32, i32* @amimouse_lastx, align 4
  %30 = sub nsw i32 %28, %29
  store i32 %30, i32* %9, align 4
  br label %31

31:                                               ; preds = %26, %2
  %32 = load i32, i32* %9, align 4
  %33 = icmp sgt i32 %32, 127
  br i1 %33, label %34, label %39

34:                                               ; preds = %31
  %35 = load i32, i32* %7, align 4
  %36 = sub nsw i32 %35, 256
  %37 = load i32, i32* @amimouse_lastx, align 4
  %38 = sub nsw i32 %36, %37
  store i32 %38, i32* %9, align 4
  br label %39

39:                                               ; preds = %34, %31
  %40 = load i32, i32* %10, align 4
  %41 = icmp slt i32 %40, -127
  br i1 %41, label %42, label %47

42:                                               ; preds = %39
  %43 = load i32, i32* %8, align 4
  %44 = add nsw i32 256, %43
  %45 = load i32, i32* @amimouse_lasty, align 4
  %46 = sub nsw i32 %44, %45
  store i32 %46, i32* %10, align 4
  br label %47

47:                                               ; preds = %42, %39
  %48 = load i32, i32* %10, align 4
  %49 = icmp sgt i32 %48, 127
  br i1 %49, label %50, label %55

50:                                               ; preds = %47
  %51 = load i32, i32* %8, align 4
  %52 = sub nsw i32 %51, 256
  %53 = load i32, i32* @amimouse_lasty, align 4
  %54 = sub nsw i32 %52, %53
  store i32 %54, i32* %10, align 4
  br label %55

55:                                               ; preds = %50, %47
  %56 = load i32, i32* %7, align 4
  store i32 %56, i32* @amimouse_lastx, align 4
  %57 = load i32, i32* %8, align 4
  store i32 %57, i32* @amimouse_lasty, align 4
  %58 = load i16, i16* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @amiga_custom, i32 0, i32 1), align 2
  store i16 %58, i16* %6, align 2
  %59 = load i32, i32* @amimouse_dev, align 4
  %60 = load i32, i32* @REL_X, align 4
  %61 = load i32, i32* %9, align 4
  %62 = call i32 @input_report_rel(i32 %59, i32 %60, i32 %61)
  %63 = load i32, i32* @amimouse_dev, align 4
  %64 = load i32, i32* @REL_Y, align 4
  %65 = load i32, i32* %10, align 4
  %66 = call i32 @input_report_rel(i32 %63, i32 %64, i32 %65)
  %67 = load i32, i32* @amimouse_dev, align 4
  %68 = load i32, i32* @BTN_LEFT, align 4
  %69 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ciaa, i32 0, i32 0), align 4
  %70 = and i32 %69, 64
  %71 = trunc i32 %70 to i16
  %72 = call i32 @input_report_key(i32 %67, i32 %68, i16 zeroext %71)
  %73 = load i32, i32* @amimouse_dev, align 4
  %74 = load i32, i32* @BTN_MIDDLE, align 4
  %75 = load i16, i16* %6, align 2
  %76 = zext i16 %75 to i32
  %77 = and i32 %76, 256
  %78 = trunc i32 %77 to i16
  %79 = call i32 @input_report_key(i32 %73, i32 %74, i16 zeroext %78)
  %80 = load i32, i32* @amimouse_dev, align 4
  %81 = load i32, i32* @BTN_RIGHT, align 4
  %82 = load i16, i16* %6, align 2
  %83 = zext i16 %82 to i32
  %84 = and i32 %83, 1024
  %85 = trunc i32 %84 to i16
  %86 = call i32 @input_report_key(i32 %80, i32 %81, i16 zeroext %85)
  %87 = load i32, i32* @amimouse_dev, align 4
  %88 = call i32 @input_sync(i32 %87)
  %89 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %89
}

declare dso_local i32 @input_report_rel(i32, i32, i32) #1

declare dso_local i32 @input_report_key(i32, i32, i16 zeroext) #1

declare dso_local i32 @input_sync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
