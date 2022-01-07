; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_tio.c_ni_m_series_set_second_gate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_tio.c_ni_m_series_set_second_gate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ni_gpct = type { i32, %struct.ni_gpct_device* }
%struct.ni_gpct_device = type { i32* }

@ni_m_series_set_second_gate.selected_second_gate_mask = internal constant i32 31, align 4
@Gi_Second_Gate_Mode_Bit = common dso_local global i32 0, align 4
@Gi_Second_Gate_Select_Mask = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ni_gpct*, i32)* @ni_m_series_set_second_gate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ni_m_series_set_second_gate(%struct.ni_gpct* %0, i32 %1) #0 {
  %3 = alloca %struct.ni_gpct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ni_gpct_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ni_gpct* %0, %struct.ni_gpct** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.ni_gpct*, %struct.ni_gpct** %3, align 8
  %10 = getelementptr inbounds %struct.ni_gpct, %struct.ni_gpct* %9, i32 0, i32 1
  %11 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %10, align 8
  store %struct.ni_gpct_device* %11, %struct.ni_gpct_device** %5, align 8
  %12 = load %struct.ni_gpct*, %struct.ni_gpct** %3, align 8
  %13 = getelementptr inbounds %struct.ni_gpct, %struct.ni_gpct* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @NITIO_Gi_Second_Gate_Reg(i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @CR_CHAN(i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  switch i32 %18, label %19 [
  ]

19:                                               ; preds = %2
  %20 = load i32, i32* %7, align 4
  %21 = and i32 %20, 31
  store i32 %21, i32* %8, align 4
  br label %22

22:                                               ; preds = %19
  %23 = load i32, i32* @Gi_Second_Gate_Mode_Bit, align 4
  %24 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %5, align 8
  %25 = getelementptr inbounds %struct.ni_gpct_device, %struct.ni_gpct_device* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %23
  store i32 %31, i32* %29, align 4
  %32 = load i32, i32* @Gi_Second_Gate_Select_Mask, align 4
  %33 = xor i32 %32, -1
  %34 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %5, align 8
  %35 = getelementptr inbounds %struct.ni_gpct_device, %struct.ni_gpct_device* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %6, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %40, %33
  store i32 %41, i32* %39, align 4
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @Gi_Second_Gate_Select_Bits(i32 %42)
  %44 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %5, align 8
  %45 = getelementptr inbounds %struct.ni_gpct_device, %struct.ni_gpct_device* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, %43
  store i32 %51, i32* %49, align 4
  %52 = load %struct.ni_gpct*, %struct.ni_gpct** %3, align 8
  %53 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %5, align 8
  %54 = getelementptr inbounds %struct.ni_gpct_device, %struct.ni_gpct_device* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %6, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @write_register(%struct.ni_gpct* %52, i32 %59, i32 %60)
  ret i32 0
}

declare dso_local i32 @NITIO_Gi_Second_Gate_Reg(i32) #1

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @Gi_Second_Gate_Select_Bits(i32) #1

declare dso_local i32 @write_register(%struct.ni_gpct*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
