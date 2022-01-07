; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/tulip/extr_de2104x.c_de_reset_mac.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/tulip/extr_de2104x.c_de_reset_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.de_private = type { i32 }

@BusMode = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@CmdReset = common dso_local global i32 0, align 4
@de_bus_mode = common dso_local global i32 0, align 4
@MacStatus = common dso_local global i32 0, align 4
@RxState = common dso_local global i32 0, align 4
@TxState = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.de_private*)* @de_reset_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @de_reset_mac(%struct.de_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.de_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.de_private* %0, %struct.de_private** %3, align 8
  %6 = load i32, i32* @BusMode, align 4
  %7 = call i32 @dr32(i32 %6)
  %8 = icmp eq i32 %7, -1
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i32, i32* @EBUSY, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %51

12:                                               ; preds = %1
  %13 = load i32, i32* @BusMode, align 4
  %14 = load i32, i32* @CmdReset, align 4
  %15 = call i32 @dw32(i32 %13, i32 %14)
  %16 = call i32 @mdelay(i32 1)
  %17 = load i32, i32* @BusMode, align 4
  %18 = load i32, i32* @de_bus_mode, align 4
  %19 = call i32 @dw32(i32 %17, i32 %18)
  %20 = call i32 @mdelay(i32 1)
  store i32 0, i32* %5, align 4
  br label %21

21:                                               ; preds = %28, %12
  %22 = load i32, i32* %5, align 4
  %23 = icmp slt i32 %22, 5
  br i1 %23, label %24, label %31

24:                                               ; preds = %21
  %25 = load i32, i32* @BusMode, align 4
  %26 = call i32 @dr32(i32 %25)
  %27 = call i32 @mdelay(i32 1)
  br label %28

28:                                               ; preds = %24
  %29 = load i32, i32* %5, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %5, align 4
  br label %21

31:                                               ; preds = %21
  %32 = call i32 @mdelay(i32 1)
  %33 = load i32, i32* @MacStatus, align 4
  %34 = call i32 @dr32(i32 %33)
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @RxState, align 4
  %37 = load i32, i32* @TxState, align 4
  %38 = or i32 %36, %37
  %39 = and i32 %35, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %31
  %42 = load i32, i32* @EBUSY, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %51

44:                                               ; preds = %31
  %45 = load i32, i32* %4, align 4
  %46 = icmp eq i32 %45, -1
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load i32, i32* @ENODEV, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %2, align 4
  br label %51

50:                                               ; preds = %44
  store i32 0, i32* %2, align 4
  br label %51

51:                                               ; preds = %50, %47, %41, %9
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i32 @dr32(i32) #1

declare dso_local i32 @dw32(i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
