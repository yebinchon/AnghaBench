; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_hso.c_hso_serial_tiocmget.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_hso.c_hso_serial_tiocmget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32 }
%struct.file = type { i32 }
%struct.hso_serial = type { i32, %struct.hso_tiocmget*, i64, i64 }
%struct.hso_tiocmget = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"no tty structures\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@TIOCM_RTS = common dso_local global i32 0, align 4
@TIOCM_DTR = common dso_local global i32 0, align 4
@B_RING_SIGNAL = common dso_local global i32 0, align 4
@TIOCM_RNG = common dso_local global i32 0, align 4
@B_RX_CARRIER = common dso_local global i32 0, align 4
@TIOCM_CD = common dso_local global i32 0, align 4
@B_TX_CARRIER = common dso_local global i32 0, align 4
@TIOCM_DSR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, %struct.file*)* @hso_serial_tiocmget to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hso_serial_tiocmget(%struct.tty_struct* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.hso_serial*, align 8
  %8 = alloca %struct.hso_tiocmget*, align 8
  %9 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %10 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %11 = call %struct.hso_serial* @get_serial_by_tty(%struct.tty_struct* %10)
  store %struct.hso_serial* %11, %struct.hso_serial** %7, align 8
  %12 = load %struct.hso_serial*, %struct.hso_serial** %7, align 8
  %13 = icmp ne %struct.hso_serial* %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %2
  %15 = call i32 @D1(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %83

18:                                               ; preds = %2
  %19 = load %struct.hso_serial*, %struct.hso_serial** %7, align 8
  %20 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %19, i32 0, i32 0
  %21 = call i32 @spin_lock_irq(i32* %20)
  %22 = load %struct.hso_serial*, %struct.hso_serial** %7, align 8
  %23 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %18
  %27 = load i32, i32* @TIOCM_RTS, align 4
  br label %29

28:                                               ; preds = %18
  br label %29

29:                                               ; preds = %28, %26
  %30 = phi i32 [ %27, %26 ], [ 0, %28 ]
  %31 = load %struct.hso_serial*, %struct.hso_serial** %7, align 8
  %32 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = load i32, i32* @TIOCM_DTR, align 4
  br label %38

37:                                               ; preds = %29
  br label %38

38:                                               ; preds = %37, %35
  %39 = phi i32 [ %36, %35 ], [ 0, %37 ]
  %40 = or i32 %30, %39
  store i32 %40, i32* %6, align 4
  %41 = load %struct.hso_serial*, %struct.hso_serial** %7, align 8
  %42 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %41, i32 0, i32 1
  %43 = load %struct.hso_tiocmget*, %struct.hso_tiocmget** %42, align 8
  store %struct.hso_tiocmget* %43, %struct.hso_tiocmget** %8, align 8
  %44 = load %struct.hso_tiocmget*, %struct.hso_tiocmget** %8, align 8
  %45 = icmp ne %struct.hso_tiocmget* %44, null
  br i1 %45, label %46, label %78

46:                                               ; preds = %38
  %47 = load %struct.hso_tiocmget*, %struct.hso_tiocmget** %8, align 8
  %48 = getelementptr inbounds %struct.hso_tiocmget, %struct.hso_tiocmget* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @le16_to_cpu(i32 %49)
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* @B_RING_SIGNAL, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %46
  %56 = load i32, i32* @TIOCM_RNG, align 4
  %57 = load i32, i32* %6, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %6, align 4
  br label %59

59:                                               ; preds = %55, %46
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* @B_RX_CARRIER, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %59
  %65 = load i32, i32* @TIOCM_CD, align 4
  %66 = load i32, i32* %6, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %6, align 4
  br label %68

68:                                               ; preds = %64, %59
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* @B_TX_CARRIER, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %68
  %74 = load i32, i32* @TIOCM_DSR, align 4
  %75 = load i32, i32* %6, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %6, align 4
  br label %77

77:                                               ; preds = %73, %68
  br label %78

78:                                               ; preds = %77, %38
  %79 = load %struct.hso_serial*, %struct.hso_serial** %7, align 8
  %80 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %79, i32 0, i32 0
  %81 = call i32 @spin_unlock_irq(i32* %80)
  %82 = load i32, i32* %6, align 4
  store i32 %82, i32* %3, align 4
  br label %83

83:                                               ; preds = %78, %14
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local %struct.hso_serial* @get_serial_by_tty(%struct.tty_struct*) #1

declare dso_local i32 @D1(i8*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
