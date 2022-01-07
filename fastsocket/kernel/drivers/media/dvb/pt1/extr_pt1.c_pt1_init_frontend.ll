; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/pt1/extr_pt1.c_pt1_init_frontend.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/pt1/extr_pt1.c_pt1_init_frontend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt1_adapter = type { %struct.dvb_frontend*, i32, i32, i32, i32 }
%struct.dvb_frontend = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@pt1_set_voltage = common dso_local global i32 0, align 4
@pt1_sleep = common dso_local global i32 0, align 4
@pt1_wakeup = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt1_adapter*, %struct.dvb_frontend*)* @pt1_init_frontend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pt1_init_frontend(%struct.pt1_adapter* %0, %struct.dvb_frontend* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pt1_adapter*, align 8
  %5 = alloca %struct.dvb_frontend*, align 8
  %6 = alloca i32, align 4
  store %struct.pt1_adapter* %0, %struct.pt1_adapter** %4, align 8
  store %struct.dvb_frontend* %1, %struct.dvb_frontend** %5, align 8
  %7 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %8 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.pt1_adapter*, %struct.pt1_adapter** %4, align 8
  %12 = getelementptr inbounds %struct.pt1_adapter, %struct.pt1_adapter* %11, i32 0, i32 4
  store i32 %10, i32* %12, align 4
  %13 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %14 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.pt1_adapter*, %struct.pt1_adapter** %4, align 8
  %18 = getelementptr inbounds %struct.pt1_adapter, %struct.pt1_adapter* %17, i32 0, i32 3
  store i32 %16, i32* %18, align 8
  %19 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %20 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.pt1_adapter*, %struct.pt1_adapter** %4, align 8
  %24 = getelementptr inbounds %struct.pt1_adapter, %struct.pt1_adapter* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* @pt1_set_voltage, align 4
  %26 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %27 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 2
  store i32 %25, i32* %28, align 4
  %29 = load i32, i32* @pt1_sleep, align 4
  %30 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %31 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  store i32 %29, i32* %32, align 4
  %33 = load i32, i32* @pt1_wakeup, align 4
  %34 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %35 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  store i32 %33, i32* %36, align 4
  %37 = load %struct.pt1_adapter*, %struct.pt1_adapter** %4, align 8
  %38 = getelementptr inbounds %struct.pt1_adapter, %struct.pt1_adapter* %37, i32 0, i32 1
  %39 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %40 = call i32 @dvb_register_frontend(i32* %38, %struct.dvb_frontend* %39)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %2
  %44 = load i32, i32* %6, align 4
  store i32 %44, i32* %3, align 4
  br label %49

45:                                               ; preds = %2
  %46 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %47 = load %struct.pt1_adapter*, %struct.pt1_adapter** %4, align 8
  %48 = getelementptr inbounds %struct.pt1_adapter, %struct.pt1_adapter* %47, i32 0, i32 0
  store %struct.dvb_frontend* %46, %struct.dvb_frontend** %48, align 8
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %45, %43
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @dvb_register_frontend(i32*, %struct.dvb_frontend*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
