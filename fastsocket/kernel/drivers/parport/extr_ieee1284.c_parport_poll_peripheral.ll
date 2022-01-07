; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/parport/extr_ieee1284.c_parport_poll_peripheral.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/parport/extr_ieee1284.c_parport_poll_peripheral.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parport = type { i32 }

@current = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parport_poll_peripheral(%struct.parport* %0, i8 zeroext %1, i8 zeroext %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.parport*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  store %struct.parport* %0, %struct.parport** %6, align 8
  store i8 %1, i8* %7, align 1
  store i8 %2, i8* %8, align 1
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = sdiv i32 %13, 5
  %15 = add nsw i32 %14, 2
  store i32 %15, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %16

16:                                               ; preds = %49, %4
  %17 = load i32, i32* %11, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %52

20:                                               ; preds = %16
  %21 = load %struct.parport*, %struct.parport** %6, align 8
  %22 = call zeroext i8 @parport_read_status(%struct.parport* %21)
  store i8 %22, i8* %12, align 1
  %23 = load i8, i8* %12, align 1
  %24 = zext i8 %23 to i32
  %25 = load i8, i8* %7, align 1
  %26 = zext i8 %25 to i32
  %27 = and i32 %24, %26
  %28 = load i8, i8* %8, align 1
  %29 = zext i8 %28 to i32
  %30 = icmp eq i32 %27, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %20
  store i32 0, i32* %5, align 4
  br label %53

32:                                               ; preds = %20
  %33 = load i32, i32* @current, align 4
  %34 = call i64 @signal_pending(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = load i32, i32* @EINTR, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %5, align 4
  br label %53

39:                                               ; preds = %32
  %40 = call i64 (...) @need_resched()
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  br label %52

43:                                               ; preds = %39
  %44 = load i32, i32* %11, align 4
  %45 = icmp sge i32 %44, 2
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = call i32 @udelay(i32 5)
  br label %48

48:                                               ; preds = %46, %43
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %11, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %11, align 4
  br label %16

52:                                               ; preds = %42, %16
  store i32 1, i32* %5, align 4
  br label %53

53:                                               ; preds = %52, %36, %31
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

declare dso_local zeroext i8 @parport_read_status(%struct.parport*) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i64 @need_resched(...) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
