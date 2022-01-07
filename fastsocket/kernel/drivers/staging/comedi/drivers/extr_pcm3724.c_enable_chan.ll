; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_pcm3724.c_enable_chan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_pcm3724.c_enable_chan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64, %struct.comedi_subdevice*, i64 }
%struct.comedi_subdevice = type { i32 }
%struct.priv_pcm3724 = type { i32, i32 }

@GATE_C0 = common dso_local global i32 0, align 4
@GATE_B0 = common dso_local global i32 0, align 4
@GATE_A0 = common dso_local global i32 0, align 4
@GATE_C1 = common dso_local global i32 0, align 4
@GATE_B1 = common dso_local global i32 0, align 4
@GATE_A1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, %struct.comedi_subdevice*, i32)* @enable_chan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enable_chan(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, i32 %2) #0 {
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca %struct.comedi_subdevice*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.priv_pcm3724*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %10 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %11 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.priv_pcm3724*
  store %struct.priv_pcm3724* %13, %struct.priv_pcm3724** %9, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @CR_CHAN(i32 %14)
  %16 = shl i32 1, %15
  store i32 %16, i32* %7, align 4
  %17 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %18 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %19 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %18, i32 0, i32 1
  %20 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %19, align 8
  %21 = icmp eq %struct.comedi_subdevice* %17, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %3
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.priv_pcm3724*, %struct.priv_pcm3724** %9, align 8
  %25 = getelementptr inbounds %struct.priv_pcm3724, %struct.priv_pcm3724* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 4
  br label %34

28:                                               ; preds = %3
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.priv_pcm3724*, %struct.priv_pcm3724** %9, align 8
  %31 = getelementptr inbounds %struct.priv_pcm3724, %struct.priv_pcm3724* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 4
  br label %34

34:                                               ; preds = %28, %22
  %35 = load %struct.priv_pcm3724*, %struct.priv_pcm3724** %9, align 8
  %36 = getelementptr inbounds %struct.priv_pcm3724, %struct.priv_pcm3724* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, 16711680
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %34
  %41 = load i32, i32* @GATE_C0, align 4
  %42 = load i32, i32* %8, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %8, align 4
  br label %44

44:                                               ; preds = %40, %34
  %45 = load %struct.priv_pcm3724*, %struct.priv_pcm3724** %9, align 8
  %46 = getelementptr inbounds %struct.priv_pcm3724, %struct.priv_pcm3724* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %47, 65280
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %44
  %51 = load i32, i32* @GATE_B0, align 4
  %52 = load i32, i32* %8, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %8, align 4
  br label %54

54:                                               ; preds = %50, %44
  %55 = load %struct.priv_pcm3724*, %struct.priv_pcm3724** %9, align 8
  %56 = getelementptr inbounds %struct.priv_pcm3724, %struct.priv_pcm3724* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = and i32 %57, 255
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %54
  %61 = load i32, i32* @GATE_A0, align 4
  %62 = load i32, i32* %8, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %8, align 4
  br label %64

64:                                               ; preds = %60, %54
  %65 = load %struct.priv_pcm3724*, %struct.priv_pcm3724** %9, align 8
  %66 = getelementptr inbounds %struct.priv_pcm3724, %struct.priv_pcm3724* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = and i32 %67, 16711680
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %64
  %71 = load i32, i32* @GATE_C1, align 4
  %72 = load i32, i32* %8, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %8, align 4
  br label %74

74:                                               ; preds = %70, %64
  %75 = load %struct.priv_pcm3724*, %struct.priv_pcm3724** %9, align 8
  %76 = getelementptr inbounds %struct.priv_pcm3724, %struct.priv_pcm3724* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = and i32 %77, 65280
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %74
  %81 = load i32, i32* @GATE_B1, align 4
  %82 = load i32, i32* %8, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %8, align 4
  br label %84

84:                                               ; preds = %80, %74
  %85 = load %struct.priv_pcm3724*, %struct.priv_pcm3724** %9, align 8
  %86 = getelementptr inbounds %struct.priv_pcm3724, %struct.priv_pcm3724* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = and i32 %87, 255
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %84
  %91 = load i32, i32* @GATE_A1, align 4
  %92 = load i32, i32* %8, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %8, align 4
  br label %94

94:                                               ; preds = %90, %84
  %95 = load i32, i32* %8, align 4
  %96 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %97 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = add nsw i64 %98, 9
  %100 = call i32 @outb(i32 %95, i64 %99)
  ret void
}

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @outb(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
