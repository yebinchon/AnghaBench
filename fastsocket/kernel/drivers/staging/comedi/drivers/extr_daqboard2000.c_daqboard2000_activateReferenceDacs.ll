; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_daqboard2000.c_daqboard2000_activateReferenceDacs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_daqboard2000.c_daqboard2000_activateReferenceDacs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.daqboard2000_hw* }
%struct.daqboard2000_hw = type { i32, i32 }
%struct.comedi_device = type { i32 }

@devpriv = common dso_local global %struct.TYPE_2__* null, align 8
@DAQBOARD2000_PosRefDacSelect = common dso_local global i32 0, align 4
@DAQBOARD2000_RefBusy = common dso_local global i32 0, align 4
@DAQBOARD2000_NegRefDacSelect = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*)* @daqboard2000_activateReferenceDacs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @daqboard2000_activateReferenceDacs(%struct.comedi_device* %0) #0 {
  %2 = alloca %struct.comedi_device*, align 8
  %3 = alloca %struct.daqboard2000_hw*, align 8
  %4 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %2, align 8
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load %struct.daqboard2000_hw*, %struct.daqboard2000_hw** %6, align 8
  store %struct.daqboard2000_hw* %7, %struct.daqboard2000_hw** %3, align 8
  %8 = load i32, i32* @DAQBOARD2000_PosRefDacSelect, align 4
  %9 = or i32 128, %8
  %10 = load %struct.daqboard2000_hw*, %struct.daqboard2000_hw** %3, align 8
  %11 = getelementptr inbounds %struct.daqboard2000_hw, %struct.daqboard2000_hw* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 4
  store i32 0, i32* %4, align 4
  br label %12

12:                                               ; preds = %25, %1
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %13, 20
  br i1 %14, label %15, label %28

15:                                               ; preds = %12
  %16 = load %struct.daqboard2000_hw*, %struct.daqboard2000_hw** %3, align 8
  %17 = getelementptr inbounds %struct.daqboard2000_hw, %struct.daqboard2000_hw* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @DAQBOARD2000_RefBusy, align 4
  %20 = and i32 %18, %19
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %15
  br label %28

23:                                               ; preds = %15
  %24 = call i32 @udelay(i32 2)
  br label %25

25:                                               ; preds = %23
  %26 = load i32, i32* %4, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %4, align 4
  br label %12

28:                                               ; preds = %22, %12
  %29 = load i32, i32* @DAQBOARD2000_NegRefDacSelect, align 4
  %30 = or i32 128, %29
  %31 = load %struct.daqboard2000_hw*, %struct.daqboard2000_hw** %3, align 8
  %32 = getelementptr inbounds %struct.daqboard2000_hw, %struct.daqboard2000_hw* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  store i32 0, i32* %4, align 4
  br label %33

33:                                               ; preds = %46, %28
  %34 = load i32, i32* %4, align 4
  %35 = icmp slt i32 %34, 20
  br i1 %35, label %36, label %49

36:                                               ; preds = %33
  %37 = load %struct.daqboard2000_hw*, %struct.daqboard2000_hw** %3, align 8
  %38 = getelementptr inbounds %struct.daqboard2000_hw, %struct.daqboard2000_hw* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @DAQBOARD2000_RefBusy, align 4
  %41 = and i32 %39, %40
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  br label %49

44:                                               ; preds = %36
  %45 = call i32 @udelay(i32 2)
  br label %46

46:                                               ; preds = %44
  %47 = load i32, i32* %4, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %4, align 4
  br label %33

49:                                               ; preds = %43, %33
  ret void
}

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
