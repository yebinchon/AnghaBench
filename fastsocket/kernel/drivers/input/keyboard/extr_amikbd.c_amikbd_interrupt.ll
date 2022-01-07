; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/keyboard/extr_amikbd.c_amikbd_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/keyboard/extr_amikbd.c_amikbd_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8, i32 }

@ciaa = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@amikbd_dev = common dso_local global i32 0, align 4
@amikbd_messages = common dso_local global i32* null, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @amikbd_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amikbd_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8, i8* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ciaa, i32 0, i32 0), align 4
  %8 = zext i8 %7 to i32
  %9 = xor i32 %8, -1
  %10 = trunc i32 %9 to i8
  store i8 %10, i8* %5, align 1
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ciaa, i32 0, i32 1), align 4
  %12 = or i32 %11, 64
  store i32 %12, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ciaa, i32 0, i32 1), align 4
  %13 = call i32 @udelay(i32 85)
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ciaa, i32 0, i32 1), align 4
  %15 = and i32 %14, -65
  store i32 %15, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ciaa, i32 0, i32 1), align 4
  %16 = load i8, i8* %5, align 1
  %17 = zext i8 %16 to i32
  %18 = and i32 %17, 1
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = trunc i32 %21 to i8
  store i8 %22, i8* %6, align 1
  %23 = load i8, i8* %5, align 1
  %24 = zext i8 %23 to i32
  %25 = ashr i32 %24, 1
  %26 = trunc i32 %25 to i8
  store i8 %26, i8* %5, align 1
  %27 = load i8, i8* %5, align 1
  %28 = zext i8 %27 to i32
  %29 = icmp slt i32 %28, 120
  br i1 %29, label %30, label %49

30:                                               ; preds = %2
  %31 = load i8, i8* %5, align 1
  %32 = zext i8 %31 to i32
  %33 = icmp eq i32 %32, 98
  br i1 %33, label %34, label %41

34:                                               ; preds = %30
  %35 = load i32, i32* @amikbd_dev, align 4
  %36 = load i8, i8* %5, align 1
  %37 = call i32 @input_report_key(i32 %35, i8 zeroext %36, i8 zeroext 1)
  %38 = load i32, i32* @amikbd_dev, align 4
  %39 = load i8, i8* %5, align 1
  %40 = call i32 @input_report_key(i32 %38, i8 zeroext %39, i8 zeroext 0)
  br label %46

41:                                               ; preds = %30
  %42 = load i32, i32* @amikbd_dev, align 4
  %43 = load i8, i8* %5, align 1
  %44 = load i8, i8* %6, align 1
  %45 = call i32 @input_report_key(i32 %42, i8 zeroext %43, i8 zeroext %44)
  br label %46

46:                                               ; preds = %41, %34
  %47 = load i32, i32* @amikbd_dev, align 4
  %48 = call i32 @input_sync(i32 %47)
  br label %58

49:                                               ; preds = %2
  %50 = load i32*, i32** @amikbd_messages, align 8
  %51 = load i8, i8* %5, align 1
  %52 = zext i8 %51 to i32
  %53 = sub nsw i32 %52, 120
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %50, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @printk(i32 %56)
  br label %58

58:                                               ; preds = %49, %46
  %59 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %59
}

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @input_report_key(i32, i8 zeroext, i8 zeroext) #1

declare dso_local i32 @input_sync(i32) #1

declare dso_local i32 @printk(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
