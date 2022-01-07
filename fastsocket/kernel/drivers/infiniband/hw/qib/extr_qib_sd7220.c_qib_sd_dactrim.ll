; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_sd7220.c_qib_sd_dactrim.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_sd7220.c_qib_sd_dactrim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_devdata = type { i32 }

@EPB_GLOBAL_WR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qib_devdata*)* @qib_sd_dactrim to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qib_sd_dactrim(%struct.qib_devdata* %0) #0 {
  %2 = alloca %struct.qib_devdata*, align 8
  %3 = alloca i32, align 4
  store %struct.qib_devdata* %0, %struct.qib_devdata** %2, align 8
  %4 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %5 = call i32 @VCDL_DAC2(i32 0)
  %6 = load i32, i32* @EPB_GLOBAL_WR, align 4
  %7 = or i32 %5, %6
  %8 = call i32 @ibsd_mod_allchnls(%struct.qib_devdata* %4, i32 %7, i32 45, i32 255)
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %53

12:                                               ; preds = %1
  %13 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %14 = call i32 @VCDL_CTRL2(i32 0)
  %15 = call i32 @ibsd_mod_allchnls(%struct.qib_devdata* %13, i32 %14, i32 3, i32 15)
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  br label %53

19:                                               ; preds = %12
  %20 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %21 = call i32 @BACTRL(i32 0)
  %22 = load i32, i32* @EPB_GLOBAL_WR, align 4
  %23 = or i32 %21, %22
  %24 = call i32 @ibsd_mod_allchnls(%struct.qib_devdata* %20, i32 %23, i32 64, i32 255)
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* %3, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  br label %53

28:                                               ; preds = %19
  %29 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %30 = call i32 @LDOUTCTRL1(i32 0)
  %31 = load i32, i32* @EPB_GLOBAL_WR, align 4
  %32 = or i32 %30, %31
  %33 = call i32 @ibsd_mod_allchnls(%struct.qib_devdata* %29, i32 %32, i32 4, i32 255)
  store i32 %33, i32* %3, align 4
  %34 = load i32, i32* %3, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  br label %53

37:                                               ; preds = %28
  %38 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %39 = call i32 @RXHSSTATUS(i32 0)
  %40 = load i32, i32* @EPB_GLOBAL_WR, align 4
  %41 = or i32 %39, %40
  %42 = call i32 @ibsd_mod_allchnls(%struct.qib_devdata* %38, i32 %41, i32 4, i32 255)
  store i32 %42, i32* %3, align 4
  %43 = load i32, i32* %3, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %37
  br label %53

46:                                               ; preds = %37
  %47 = call i32 @udelay(i32 415)
  %48 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %49 = call i32 @LDOUTCTRL1(i32 0)
  %50 = load i32, i32* @EPB_GLOBAL_WR, align 4
  %51 = or i32 %49, %50
  %52 = call i32 @ibsd_mod_allchnls(%struct.qib_devdata* %48, i32 %51, i32 0, i32 255)
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %46, %45, %36, %27, %18, %11
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @ibsd_mod_allchnls(%struct.qib_devdata*, i32, i32, i32) #1

declare dso_local i32 @VCDL_DAC2(i32) #1

declare dso_local i32 @VCDL_CTRL2(i32) #1

declare dso_local i32 @BACTRL(i32) #1

declare dso_local i32 @LDOUTCTRL1(i32) #1

declare dso_local i32 @RXHSSTATUS(i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
