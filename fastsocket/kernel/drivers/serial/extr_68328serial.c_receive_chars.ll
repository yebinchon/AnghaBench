; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_68328serial.c_receive_chars.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_68328serial.c_receive_chars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i16 }
%struct.m68k_serial = type { i64, i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.tty_struct* }
%struct.tty_struct = type { i32 }

@uart_addr = common dso_local global %struct.TYPE_7__* null, align 8
@URX_RXDATA = common dso_local global i32 0, align 4
@URX_BREAK = common dso_local global i16 0, align 2
@TTY_NORMAL = common dso_local global i8 0, align 1
@URX_PARITY_ERROR = common dso_local global i16 0, align 2
@TTY_PARITY = common dso_local global i8 0, align 1
@URX_OVRUN = common dso_local global i16 0, align 2
@TTY_OVERRUN = common dso_local global i8 0, align 1
@URX_FRAME_ERROR = common dso_local global i16 0, align 2
@TTY_FRAME = common dso_local global i8 0, align 1
@URX_DATA_READY = common dso_local global i16 0, align 2
@keypress_wait = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.m68k_serial*, i16)* @receive_chars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @receive_chars(%struct.m68k_serial* %0, i16 zeroext %1) #0 {
  %3 = alloca %struct.m68k_serial*, align 8
  %4 = alloca i16, align 2
  %5 = alloca %struct.tty_struct*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  store %struct.m68k_serial* %0, %struct.m68k_serial** %3, align 8
  store i16 %1, i16* %4, align 2
  %9 = load %struct.m68k_serial*, %struct.m68k_serial** %3, align 8
  %10 = getelementptr inbounds %struct.m68k_serial, %struct.m68k_serial* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load %struct.tty_struct*, %struct.tty_struct** %11, align 8
  store %struct.tty_struct* %12, %struct.tty_struct** %5, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** @uart_addr, align 8
  %14 = load %struct.m68k_serial*, %struct.m68k_serial** %3, align 8
  %15 = getelementptr inbounds %struct.m68k_serial, %struct.m68k_serial* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i64 %16
  store %struct.TYPE_7__* %17, %struct.TYPE_7__** %6, align 8
  br label %18

18:                                               ; preds = %86, %2
  %19 = load i16, i16* %4, align 2
  %20 = load i32, i32* @URX_RXDATA, align 4
  %21 = call zeroext i8 @GET_FIELD(i16 zeroext %19, i32 %20)
  store i8 %21, i8* %7, align 1
  %22 = load %struct.m68k_serial*, %struct.m68k_serial** %3, align 8
  %23 = getelementptr inbounds %struct.m68k_serial, %struct.m68k_serial* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %38

26:                                               ; preds = %18
  %27 = load i16, i16* @URX_BREAK, align 2
  %28 = zext i16 %27 to i32
  %29 = load i16, i16* %4, align 2
  %30 = zext i16 %29 to i32
  %31 = and i32 %28, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %26
  %34 = load %struct.m68k_serial*, %struct.m68k_serial** %3, align 8
  %35 = load i16, i16* %4, align 2
  %36 = call i32 @status_handle(%struct.m68k_serial* %34, i16 zeroext %35)
  br label %100

37:                                               ; preds = %26
  br label %38

38:                                               ; preds = %37, %18
  %39 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %40 = icmp ne %struct.tty_struct* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %38
  br label %99

42:                                               ; preds = %38
  %43 = load i8, i8* @TTY_NORMAL, align 1
  store i8 %43, i8* %8, align 1
  %44 = load i16, i16* %4, align 2
  %45 = zext i16 %44 to i32
  %46 = load i16, i16* @URX_PARITY_ERROR, align 2
  %47 = zext i16 %46 to i32
  %48 = and i32 %45, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %42
  %51 = load i8, i8* @TTY_PARITY, align 1
  store i8 %51, i8* %8, align 1
  %52 = load %struct.m68k_serial*, %struct.m68k_serial** %3, align 8
  %53 = load i16, i16* %4, align 2
  %54 = call i32 @status_handle(%struct.m68k_serial* %52, i16 zeroext %53)
  br label %81

55:                                               ; preds = %42
  %56 = load i16, i16* %4, align 2
  %57 = zext i16 %56 to i32
  %58 = load i16, i16* @URX_OVRUN, align 2
  %59 = zext i16 %58 to i32
  %60 = and i32 %57, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %55
  %63 = load i8, i8* @TTY_OVERRUN, align 1
  store i8 %63, i8* %8, align 1
  %64 = load %struct.m68k_serial*, %struct.m68k_serial** %3, align 8
  %65 = load i16, i16* %4, align 2
  %66 = call i32 @status_handle(%struct.m68k_serial* %64, i16 zeroext %65)
  br label %80

67:                                               ; preds = %55
  %68 = load i16, i16* %4, align 2
  %69 = zext i16 %68 to i32
  %70 = load i16, i16* @URX_FRAME_ERROR, align 2
  %71 = zext i16 %70 to i32
  %72 = and i32 %69, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %67
  %75 = load i8, i8* @TTY_FRAME, align 1
  store i8 %75, i8* %8, align 1
  %76 = load %struct.m68k_serial*, %struct.m68k_serial** %3, align 8
  %77 = load i16, i16* %4, align 2
  %78 = call i32 @status_handle(%struct.m68k_serial* %76, i16 zeroext %77)
  br label %79

79:                                               ; preds = %74, %67
  br label %80

80:                                               ; preds = %79, %62
  br label %81

81:                                               ; preds = %80, %50
  %82 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %83 = load i8, i8* %7, align 1
  %84 = load i8, i8* %8, align 1
  %85 = call i32 @tty_insert_flip_char(%struct.tty_struct* %82, i8 zeroext %83, i8 zeroext %84)
  br label %86

86:                                               ; preds = %81
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = load i16, i16* %89, align 2
  store i16 %90, i16* %4, align 2
  %91 = zext i16 %90 to i32
  %92 = load i16, i16* @URX_DATA_READY, align 2
  %93 = zext i16 %92 to i32
  %94 = and i32 %91, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %18, label %96

96:                                               ; preds = %86
  %97 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %98 = call i32 @tty_schedule_flip(%struct.tty_struct* %97)
  br label %99

99:                                               ; preds = %96, %41
  br label %100

100:                                              ; preds = %99, %33
  ret void
}

declare dso_local zeroext i8 @GET_FIELD(i16 zeroext, i32) #1

declare dso_local i32 @status_handle(%struct.m68k_serial*, i16 zeroext) #1

declare dso_local i32 @tty_insert_flip_char(%struct.tty_struct*, i8 zeroext, i8 zeroext) #1

declare dso_local i32 @tty_schedule_flip(%struct.tty_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
