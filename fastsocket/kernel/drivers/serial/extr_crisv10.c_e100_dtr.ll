; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_crisv10.c_e100_dtr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_crisv10.c_e100_dtr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8, i32*, i8* }
%struct.e100_serial = type { i64 }

@e100_modem_pins = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.e100_serial*, i32)* @e100_dtr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e100_dtr(%struct.e100_serial* %0, i32 %1) #0 {
  %3 = alloca %struct.e100_serial*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i64, align 8
  store %struct.e100_serial* %0, %struct.e100_serial** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @e100_modem_pins, align 8
  %8 = load %struct.e100_serial*, %struct.e100_serial** %3, align 8
  %9 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i64 %10
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i8, i8* %12, align 8
  store i8 %13, i8* %5, align 1
  %14 = load i64, i64* %6, align 8
  %15 = call i32 @local_irq_save(i64 %14)
  %16 = load i8, i8* %5, align 1
  %17 = zext i8 %16 to i32
  %18 = xor i32 %17, -1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @e100_modem_pins, align 8
  %20 = load %struct.e100_serial*, %struct.e100_serial** %3, align 8
  %21 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, %18
  store i32 %27, i32* %25, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %2
  br label %34

31:                                               ; preds = %2
  %32 = load i8, i8* %5, align 1
  %33 = zext i8 %32 to i32
  br label %34

34:                                               ; preds = %31, %30
  %35 = phi i32 [ 0, %30 ], [ %33, %31 ]
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** @e100_modem_pins, align 8
  %37 = load %struct.e100_serial*, %struct.e100_serial** %3, align 8
  %38 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %35
  store i32 %44, i32* %42, align 4
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** @e100_modem_pins, align 8
  %46 = load %struct.e100_serial*, %struct.e100_serial** %3, align 8
  %47 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %51, align 4
  %53 = trunc i32 %52 to i8
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** @e100_modem_pins, align 8
  %55 = load %struct.e100_serial*, %struct.e100_serial** %3, align 8
  %56 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 2
  %60 = load i8*, i8** %59, align 8
  store i8 %53, i8* %60, align 1
  %61 = load i64, i64* %6, align 8
  %62 = call i32 @local_irq_restore(i64 %61)
  ret void
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
