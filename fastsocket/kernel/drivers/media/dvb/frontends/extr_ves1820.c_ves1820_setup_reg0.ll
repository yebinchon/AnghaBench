; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_ves1820.c_ves1820_setup_reg0.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_ves1820.c_ves1820_setup_reg0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ves1820_state = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@INVERSION_ON = common dso_local global i64 0, align 8
@INVERSION_OFF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ves1820_state*, i32, i64)* @ves1820_setup_reg0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ves1820_setup_reg0(%struct.ves1820_state* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.ves1820_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.ves1820_state* %0, %struct.ves1820_state** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %7 = load %struct.ves1820_state*, %struct.ves1820_state** %4, align 8
  %8 = getelementptr inbounds %struct.ves1820_state, %struct.ves1820_state* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = and i32 %9, 98
  %11 = load i32, i32* %5, align 4
  %12 = or i32 %11, %10
  store i32 %12, i32* %5, align 4
  %13 = load i64, i64* @INVERSION_ON, align 8
  %14 = load i64, i64* %6, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %30

16:                                               ; preds = %3
  %17 = load %struct.ves1820_state*, %struct.ves1820_state** %4, align 8
  %18 = getelementptr inbounds %struct.ves1820_state, %struct.ves1820_state* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %16
  %24 = load i32, i32* %5, align 4
  %25 = or i32 %24, 32
  store i32 %25, i32* %5, align 4
  br label %29

26:                                               ; preds = %16
  %27 = load i32, i32* %5, align 4
  %28 = and i32 %27, -33
  store i32 %28, i32* %5, align 4
  br label %29

29:                                               ; preds = %26, %23
  br label %49

30:                                               ; preds = %3
  %31 = load i64, i64* @INVERSION_OFF, align 8
  %32 = load i64, i64* %6, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %48

34:                                               ; preds = %30
  %35 = load %struct.ves1820_state*, %struct.ves1820_state** %4, align 8
  %36 = getelementptr inbounds %struct.ves1820_state, %struct.ves1820_state* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %34
  %42 = load i32, i32* %5, align 4
  %43 = and i32 %42, -33
  store i32 %43, i32* %5, align 4
  br label %47

44:                                               ; preds = %34
  %45 = load i32, i32* %5, align 4
  %46 = or i32 %45, 32
  store i32 %46, i32* %5, align 4
  br label %47

47:                                               ; preds = %44, %41
  br label %48

48:                                               ; preds = %47, %30
  br label %49

49:                                               ; preds = %48, %29
  %50 = load %struct.ves1820_state*, %struct.ves1820_state** %4, align 8
  %51 = load i32, i32* %5, align 4
  %52 = and i32 %51, 254
  %53 = call i32 @ves1820_writereg(%struct.ves1820_state* %50, i32 0, i32 %52)
  %54 = load %struct.ves1820_state*, %struct.ves1820_state** %4, align 8
  %55 = load i32, i32* %5, align 4
  %56 = or i32 %55, 1
  %57 = call i32 @ves1820_writereg(%struct.ves1820_state* %54, i32 0, i32 %56)
  %58 = load i32, i32* %5, align 4
  %59 = load %struct.ves1820_state*, %struct.ves1820_state** %4, align 8
  %60 = getelementptr inbounds %struct.ves1820_state, %struct.ves1820_state* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  ret i32 0
}

declare dso_local i32 @ves1820_writereg(%struct.ves1820_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
