; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_amiserial.c_rs_tiocmget.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_amiserial.c_rs_tiocmget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8 }
%struct.tty_struct = type { i32, i32, %struct.async_struct* }
%struct.async_struct = type { i8 }
%struct.file = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"rs_ioctl\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@TTY_IO_ERROR = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@ciab = common dso_local global %struct.TYPE_2__ zeroinitializer, align 1
@SER_RTS = common dso_local global i8 0, align 1
@TIOCM_RTS = common dso_local global i32 0, align 4
@SER_DTR = common dso_local global i8 0, align 1
@TIOCM_DTR = common dso_local global i32 0, align 4
@SER_DCD = common dso_local global i8 0, align 1
@TIOCM_CAR = common dso_local global i32 0, align 4
@SER_DSR = common dso_local global i8 0, align 1
@TIOCM_DSR = common dso_local global i32 0, align 4
@SER_CTS = common dso_local global i8 0, align 1
@TIOCM_CTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, %struct.file*)* @rs_tiocmget to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rs_tiocmget(%struct.tty_struct* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.async_struct*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i64, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %10 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %11 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %10, i32 0, i32 2
  %12 = load %struct.async_struct*, %struct.async_struct** %11, align 8
  store %struct.async_struct* %12, %struct.async_struct** %6, align 8
  %13 = load %struct.async_struct*, %struct.async_struct** %6, align 8
  %14 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %15 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @serial_paranoia_check(%struct.async_struct* %13, i32 %16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @ENODEV, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %101

22:                                               ; preds = %2
  %23 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %24 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @TTY_IO_ERROR, align 4
  %27 = shl i32 1, %26
  %28 = and i32 %25, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %22
  %31 = load i32, i32* @EIO, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %101

33:                                               ; preds = %22
  %34 = load %struct.async_struct*, %struct.async_struct** %6, align 8
  %35 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %34, i32 0, i32 0
  %36 = load i8, i8* %35, align 1
  store i8 %36, i8* %7, align 1
  %37 = load i64, i64* %9, align 8
  %38 = call i32 @local_irq_save(i64 %37)
  %39 = load i8, i8* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ciab, i32 0, i32 0), align 1
  store i8 %39, i8* %8, align 1
  %40 = load i64, i64* %9, align 8
  %41 = call i32 @local_irq_restore(i64 %40)
  %42 = load i8, i8* %7, align 1
  %43 = zext i8 %42 to i32
  %44 = load i8, i8* @SER_RTS, align 1
  %45 = zext i8 %44 to i32
  %46 = and i32 %43, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %33
  %49 = load i32, i32* @TIOCM_RTS, align 4
  br label %51

50:                                               ; preds = %33
  br label %51

51:                                               ; preds = %50, %48
  %52 = phi i32 [ %49, %48 ], [ 0, %50 ]
  %53 = load i8, i8* %7, align 1
  %54 = zext i8 %53 to i32
  %55 = load i8, i8* @SER_DTR, align 1
  %56 = zext i8 %55 to i32
  %57 = and i32 %54, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %51
  %60 = load i32, i32* @TIOCM_DTR, align 4
  br label %62

61:                                               ; preds = %51
  br label %62

62:                                               ; preds = %61, %59
  %63 = phi i32 [ %60, %59 ], [ 0, %61 ]
  %64 = or i32 %52, %63
  %65 = load i8, i8* %8, align 1
  %66 = zext i8 %65 to i32
  %67 = load i8, i8* @SER_DCD, align 1
  %68 = zext i8 %67 to i32
  %69 = and i32 %66, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %73, label %71

71:                                               ; preds = %62
  %72 = load i32, i32* @TIOCM_CAR, align 4
  br label %74

73:                                               ; preds = %62
  br label %74

74:                                               ; preds = %73, %71
  %75 = phi i32 [ %72, %71 ], [ 0, %73 ]
  %76 = or i32 %64, %75
  %77 = load i8, i8* %8, align 1
  %78 = zext i8 %77 to i32
  %79 = load i8, i8* @SER_DSR, align 1
  %80 = zext i8 %79 to i32
  %81 = and i32 %78, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %85, label %83

83:                                               ; preds = %74
  %84 = load i32, i32* @TIOCM_DSR, align 4
  br label %86

85:                                               ; preds = %74
  br label %86

86:                                               ; preds = %85, %83
  %87 = phi i32 [ %84, %83 ], [ 0, %85 ]
  %88 = or i32 %76, %87
  %89 = load i8, i8* %8, align 1
  %90 = zext i8 %89 to i32
  %91 = load i8, i8* @SER_CTS, align 1
  %92 = zext i8 %91 to i32
  %93 = and i32 %90, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %97, label %95

95:                                               ; preds = %86
  %96 = load i32, i32* @TIOCM_CTS, align 4
  br label %98

97:                                               ; preds = %86
  br label %98

98:                                               ; preds = %97, %95
  %99 = phi i32 [ %96, %95 ], [ 0, %97 ]
  %100 = or i32 %88, %99
  store i32 %100, i32* %3, align 4
  br label %101

101:                                              ; preds = %98, %30, %19
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local i64 @serial_paranoia_check(%struct.async_struct*, i32, i8*) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
