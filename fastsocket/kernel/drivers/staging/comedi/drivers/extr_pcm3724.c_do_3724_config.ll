; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_pcm3724.c_do_3724_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_pcm3724.c_do_3724_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64, %struct.comedi_subdevice* }
%struct.comedi_subdevice = type { i32 }

@CR_CW = common dso_local global i32 0, align 4
@CR_A_IO = common dso_local global i32 0, align 4
@CR_B_IO = common dso_local global i32 0, align 4
@CR_C_IO = common dso_local global i32 0, align 4
@_8255_CR = common dso_local global i64 0, align 8
@SIZE_8255 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, %struct.comedi_subdevice*, i32)* @do_3724_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_3724_config(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, i32 %2) #0 {
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca %struct.comedi_subdevice*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* @CR_CW, align 4
  store i32 %10, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %11 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %12 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = and i32 %13, 255
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @CR_A_IO, align 4
  %18 = load i32, i32* %7, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %7, align 4
  br label %20

20:                                               ; preds = %16, %3
  %21 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %22 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, 65280
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %20
  %27 = load i32, i32* @CR_B_IO, align 4
  %28 = load i32, i32* %7, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %7, align 4
  br label %30

30:                                               ; preds = %26, %20
  %31 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %32 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %33, 16711680
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %30
  %37 = load i32, i32* @CR_C_IO, align 4
  %38 = load i32, i32* %7, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %7, align 4
  br label %40

40:                                               ; preds = %36, %30
  %41 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %42 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %41, i32 0, i32 1
  %43 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %42, align 8
  %44 = call i32 @compute_buffer(i32 0, i32 0, %struct.comedi_subdevice* %43)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %47 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %46, i32 0, i32 1
  %48 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %47, align 8
  %49 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %48, i64 1
  %50 = call i32 @compute_buffer(i32 %45, i32 1, %struct.comedi_subdevice* %49)
  store i32 %50, i32* %8, align 4
  %51 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %52 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %53 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %52, i32 0, i32 1
  %54 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %53, align 8
  %55 = icmp eq %struct.comedi_subdevice* %51, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %40
  %57 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %58 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @_8255_CR, align 8
  %61 = add i64 %59, %60
  store i64 %61, i64* %9, align 8
  br label %70

62:                                               ; preds = %40
  %63 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %64 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @SIZE_8255, align 8
  %67 = add i64 %65, %66
  %68 = load i64, i64* @_8255_CR, align 8
  %69 = add i64 %67, %68
  store i64 %69, i64* %9, align 8
  br label %70

70:                                               ; preds = %62, %56
  %71 = load i32, i32* %8, align 4
  %72 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %73 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = add i64 %74, 8
  %76 = call i32 @outb(i32 %71, i64 %75)
  %77 = load i32, i32* %7, align 4
  %78 = load i64, i64* %9, align 8
  %79 = call i32 @outb(i32 %77, i64 %78)
  ret void
}

declare dso_local i32 @compute_buffer(i32, i32, %struct.comedi_subdevice*) #1

declare dso_local i32 @outb(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
