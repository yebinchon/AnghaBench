; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_amiserial.c_rs_set_termios.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_amiserial.c_rs_set_termios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.TYPE_2__*, i64, i32, %struct.async_struct* }
%struct.TYPE_2__ = type { i32 }
%struct.async_struct = type { i32, i32 }
%struct.ktermios = type { i32 }

@CBAUD = common dso_local global i32 0, align 4
@SER_DTR = common dso_local global i32 0, align 4
@SER_RTS = common dso_local global i32 0, align 4
@CRTSCTS = common dso_local global i32 0, align 4
@TTY_THROTTLED = common dso_local global i32 0, align 4
@CLOCAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*, %struct.ktermios*)* @rs_set_termios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rs_set_termios(%struct.tty_struct* %0, %struct.ktermios* %1) #0 {
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca %struct.ktermios*, align 8
  %5 = alloca %struct.async_struct*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  store %struct.ktermios* %1, %struct.ktermios** %4, align 8
  %8 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %9 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %8, i32 0, i32 3
  %10 = load %struct.async_struct*, %struct.async_struct** %9, align 8
  store %struct.async_struct* %10, %struct.async_struct** %5, align 8
  %11 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %12 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %7, align 4
  %16 = load %struct.async_struct*, %struct.async_struct** %5, align 8
  %17 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %18 = call i32 @change_speed(%struct.async_struct* %16, %struct.ktermios* %17)
  %19 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %20 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @CBAUD, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %47

25:                                               ; preds = %2
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @CBAUD, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %47, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* @SER_DTR, align 4
  %32 = load i32, i32* @SER_RTS, align 4
  %33 = or i32 %31, %32
  %34 = xor i32 %33, -1
  %35 = load %struct.async_struct*, %struct.async_struct** %5, align 8
  %36 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, %34
  store i32 %38, i32* %36, align 4
  %39 = load i64, i64* %6, align 8
  %40 = call i32 @local_irq_save(i64 %39)
  %41 = load %struct.async_struct*, %struct.async_struct** %5, align 8
  %42 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @rtsdtr_ctrl(i32 %43)
  %45 = load i64, i64* %6, align 8
  %46 = call i32 @local_irq_restore(i64 %45)
  br label %47

47:                                               ; preds = %30, %25, %2
  %48 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %49 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @CBAUD, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %94, label %54

54:                                               ; preds = %47
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @CBAUD, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %94

59:                                               ; preds = %54
  %60 = load i32, i32* @SER_DTR, align 4
  %61 = load %struct.async_struct*, %struct.async_struct** %5, align 8
  %62 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %63, %60
  store i32 %64, i32* %62, align 4
  %65 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %66 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %65, i32 0, i32 0
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @CRTSCTS, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %59
  %74 = load i32, i32* @TTY_THROTTLED, align 4
  %75 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %76 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %75, i32 0, i32 2
  %77 = call i32 @test_bit(i32 %74, i32* %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %85, label %79

79:                                               ; preds = %73, %59
  %80 = load i32, i32* @SER_RTS, align 4
  %81 = load %struct.async_struct*, %struct.async_struct** %5, align 8
  %82 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = or i32 %83, %80
  store i32 %84, i32* %82, align 4
  br label %85

85:                                               ; preds = %79, %73
  %86 = load i64, i64* %6, align 8
  %87 = call i32 @local_irq_save(i64 %86)
  %88 = load %struct.async_struct*, %struct.async_struct** %5, align 8
  %89 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @rtsdtr_ctrl(i32 %90)
  %92 = load i64, i64* %6, align 8
  %93 = call i32 @local_irq_restore(i64 %92)
  br label %94

94:                                               ; preds = %85, %54, %47
  %95 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %96 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @CRTSCTS, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %115

101:                                              ; preds = %94
  %102 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %103 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %102, i32 0, i32 0
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @CRTSCTS, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %115, label %110

110:                                              ; preds = %101
  %111 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %112 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %111, i32 0, i32 1
  store i64 0, i64* %112, align 8
  %113 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %114 = call i32 @rs_start(%struct.tty_struct* %113)
  br label %115

115:                                              ; preds = %110, %101, %94
  ret void
}

declare dso_local i32 @change_speed(%struct.async_struct*, %struct.ktermios*) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @rtsdtr_ctrl(i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @rs_start(%struct.tty_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
