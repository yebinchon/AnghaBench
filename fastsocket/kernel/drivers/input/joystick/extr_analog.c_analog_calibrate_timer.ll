; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/joystick/extr_analog.c_analog_calibrate_timer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/joystick/extr_analog.c_analog_calibrate_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.analog_port = type { i32, i8*, %struct.gameport* }
%struct.gameport = type { i32 }

@analog_faketime = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.analog_port*)* @analog_calibrate_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @analog_calibrate_timer(%struct.analog_port* %0) #0 {
  %2 = alloca %struct.analog_port*, align 8
  %3 = alloca %struct.gameport*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.analog_port* %0, %struct.analog_port** %2, align 8
  %11 = load %struct.analog_port*, %struct.analog_port** %2, align 8
  %12 = getelementptr inbounds %struct.analog_port, %struct.analog_port* %11, i32 0, i32 2
  %13 = load %struct.gameport*, %struct.gameport** %12, align 8
  store %struct.gameport* %13, %struct.gameport** %3, align 8
  %14 = load i64, i64* %10, align 8
  %15 = call i32 @local_irq_save(i64 %14)
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @GET_TIME(i32 %16)
  %18 = call i32 @mdelay(i32 1)
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @GET_TIME(i32 %19)
  %21 = load i32, i32* %9, align 4
  %22 = call i32 @GET_TIME(i32 %21)
  %23 = load i64, i64* %10, align 8
  %24 = call i32 @local_irq_restore(i64 %23)
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %8, align 4
  %27 = call i8* @DELTA(i32 %25, i32 %26)
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %9, align 4
  %30 = call i8* @DELTA(i32 %28, i32 %29)
  %31 = ptrtoint i8* %27 to i64
  %32 = ptrtoint i8* %30 to i64
  %33 = sub i64 %31, %32
  %34 = inttoptr i64 %33 to i8*
  %35 = load %struct.analog_port*, %struct.analog_port** %2, align 8
  %36 = getelementptr inbounds %struct.analog_port, %struct.analog_port* %35, i32 0, i32 1
  store i8* %34, i8** %36, align 8
  store i32 -1, i32* %6, align 4
  store i32 0, i32* %4, align 4
  br label %37

37:                                               ; preds = %79, %1
  %38 = load i32, i32* %4, align 4
  %39 = icmp ult i32 %38, 50
  br i1 %39, label %40, label %82

40:                                               ; preds = %37
  %41 = load i64, i64* %10, align 8
  %42 = call i32 @local_irq_save(i64 %41)
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @GET_TIME(i32 %43)
  store i32 0, i32* %5, align 4
  br label %45

45:                                               ; preds = %53, %40
  %46 = load i32, i32* %5, align 4
  %47 = icmp ult i32 %46, 50
  br i1 %47, label %48, label %56

48:                                               ; preds = %45
  %49 = load %struct.gameport*, %struct.gameport** %3, align 8
  %50 = call i32 @gameport_read(%struct.gameport* %49)
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @GET_TIME(i32 %51)
  br label %53

53:                                               ; preds = %48
  %54 = load i32, i32* %5, align 4
  %55 = add i32 %54, 1
  store i32 %55, i32* %5, align 4
  br label %45

56:                                               ; preds = %45
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @GET_TIME(i32 %57)
  %59 = load i64, i64* %10, align 8
  %60 = call i32 @local_irq_restore(i64 %59)
  %61 = load i32, i32* %4, align 4
  %62 = call i32 @udelay(i32 %61)
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* %8, align 4
  %65 = call i8* @DELTA(i32 %63, i32 %64)
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* %9, align 4
  %68 = call i8* @DELTA(i32 %66, i32 %67)
  %69 = ptrtoint i8* %65 to i64
  %70 = ptrtoint i8* %68 to i64
  %71 = sub i64 %69, %70
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %5, align 4
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* %6, align 4
  %75 = icmp ult i32 %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %56
  %77 = load i32, i32* %5, align 4
  store i32 %77, i32* %6, align 4
  br label %78

78:                                               ; preds = %76, %56
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %4, align 4
  %81 = add i32 %80, 1
  store i32 %81, i32* %4, align 4
  br label %37

82:                                               ; preds = %37
  %83 = load i32, i32* %6, align 4
  %84 = udiv i32 %83, 50
  %85 = load %struct.analog_port*, %struct.analog_port** %2, align 8
  %86 = getelementptr inbounds %struct.analog_port, %struct.analog_port* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 8
  ret void
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @GET_TIME(i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i8* @DELTA(i32, i32) #1

declare dso_local i32 @gameport_read(%struct.gameport*) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
