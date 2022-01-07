; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_hso.c_hso_serial_tiocmset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_hso.c_hso_serial_tiocmset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32 }
%struct.file = type { i32 }
%struct.hso_serial = type { i32, i32, %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"no tty structures\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@TIOCM_RTS = common dso_local global i32 0, align 4
@TIOCM_DTR = common dso_local global i32 0, align 4
@USB_CTRL_SET_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, %struct.file*, i32, i32)* @hso_serial_tiocmset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hso_serial_tiocmset(%struct.tty_struct* %0, %struct.file* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tty_struct*, align 8
  %7 = alloca %struct.file*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.hso_serial*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %6, align 8
  store %struct.file* %1, %struct.file** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %14 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %15 = call %struct.hso_serial* @get_serial_by_tty(%struct.tty_struct* %14)
  store %struct.hso_serial* %15, %struct.hso_serial** %13, align 8
  %16 = load %struct.hso_serial*, %struct.hso_serial** %13, align 8
  %17 = icmp ne %struct.hso_serial* %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %4
  %19 = call i32 @D1(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %104

22:                                               ; preds = %4
  %23 = load %struct.hso_serial*, %struct.hso_serial** %13, align 8
  %24 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %23, i32 0, i32 2
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %12, align 4
  %33 = load %struct.hso_serial*, %struct.hso_serial** %13, align 8
  %34 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %33, i32 0, i32 3
  %35 = load i64, i64* %11, align 8
  %36 = call i32 @spin_lock_irqsave(i32* %34, i64 %35)
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @TIOCM_RTS, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %22
  %42 = load %struct.hso_serial*, %struct.hso_serial** %13, align 8
  %43 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %42, i32 0, i32 0
  store i32 1, i32* %43, align 8
  br label %44

44:                                               ; preds = %41, %22
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* @TIOCM_DTR, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load %struct.hso_serial*, %struct.hso_serial** %13, align 8
  %51 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %50, i32 0, i32 1
  store i32 1, i32* %51, align 4
  br label %52

52:                                               ; preds = %49, %44
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* @TIOCM_RTS, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load %struct.hso_serial*, %struct.hso_serial** %13, align 8
  %59 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %58, i32 0, i32 0
  store i32 0, i32* %59, align 8
  br label %60

60:                                               ; preds = %57, %52
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* @TIOCM_DTR, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = load %struct.hso_serial*, %struct.hso_serial** %13, align 8
  %67 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %66, i32 0, i32 1
  store i32 0, i32* %67, align 4
  br label %68

68:                                               ; preds = %65, %60
  %69 = load %struct.hso_serial*, %struct.hso_serial** %13, align 8
  %70 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %68
  %74 = load i32, i32* %10, align 4
  %75 = or i32 %74, 1
  store i32 %75, i32* %10, align 4
  br label %76

76:                                               ; preds = %73, %68
  %77 = load %struct.hso_serial*, %struct.hso_serial** %13, align 8
  %78 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %76
  %82 = load i32, i32* %10, align 4
  %83 = or i32 %82, 2
  store i32 %83, i32* %10, align 4
  br label %84

84:                                               ; preds = %81, %76
  %85 = load %struct.hso_serial*, %struct.hso_serial** %13, align 8
  %86 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %85, i32 0, i32 3
  %87 = load i64, i64* %11, align 8
  %88 = call i32 @spin_unlock_irqrestore(i32* %86, i64 %87)
  %89 = load %struct.hso_serial*, %struct.hso_serial** %13, align 8
  %90 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %89, i32 0, i32 2
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.hso_serial*, %struct.hso_serial** %13, align 8
  %95 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %94, i32 0, i32 2
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @usb_rcvctrlpipe(i32 %98, i32 0)
  %100 = load i32, i32* %10, align 4
  %101 = load i32, i32* %12, align 4
  %102 = load i32, i32* @USB_CTRL_SET_TIMEOUT, align 4
  %103 = call i32 @usb_control_msg(i32 %93, i32 %99, i32 34, i32 33, i32 %100, i32 %101, i32* null, i32 0, i32 %102)
  store i32 %103, i32* %5, align 4
  br label %104

104:                                              ; preds = %84, %18
  %105 = load i32, i32* %5, align 4
  ret i32 %105
}

declare dso_local %struct.hso_serial* @get_serial_by_tty(%struct.tty_struct*) #1

declare dso_local i32 @D1(i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
