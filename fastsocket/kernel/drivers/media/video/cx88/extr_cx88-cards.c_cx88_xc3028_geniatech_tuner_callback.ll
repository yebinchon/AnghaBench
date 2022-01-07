; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx88/extr_cx88-cards.c_cx88_xc3028_geniatech_tuner_callback.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx88/extr_cx88-cards.c_cx88_xc3028_geniatech_tuner_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx88_core = type { i32 }
%struct.TYPE_2__ = type { i32 }

@MO_GP1_IO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cx88_core*, i32, i32)* @cx88_xc3028_geniatech_tuner_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx88_xc3028_geniatech_tuner_callback(%struct.cx88_core* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cx88_core*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_2__, align 4
  store %struct.cx88_core* %0, %struct.cx88_core** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %6, align 4
  switch i32 %9, label %37 [
    i32 128, label %10
  ]

10:                                               ; preds = %3
  %11 = load %struct.cx88_core*, %struct.cx88_core** %5, align 8
  %12 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @INPUT(i32 %13)
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store i32 %14, i32* %15, align 4
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %23 [
    i32 130, label %18
    i32 129, label %19
  ]

18:                                               ; preds = %10
  br label %27

19:                                               ; preds = %10
  %20 = load i32, i32* @MO_GP1_IO, align 4
  %21 = call i32 @cx_write(i32 %20, i32 197378)
  %22 = call i32 @mdelay(i32 50)
  br label %27

23:                                               ; preds = %10
  %24 = load i32, i32* @MO_GP1_IO, align 4
  %25 = call i32 @cx_write(i32 %24, i32 197377)
  %26 = call i32 @mdelay(i32 50)
  br label %27

27:                                               ; preds = %23, %19, %18
  %28 = load i32, i32* @MO_GP1_IO, align 4
  %29 = call i32 @cx_write(i32 %28, i32 1052688)
  %30 = call i32 @mdelay(i32 50)
  %31 = load i32, i32* @MO_GP1_IO, align 4
  %32 = call i32 @cx_write(i32 %31, i32 1052672)
  %33 = call i32 @mdelay(i32 50)
  %34 = load i32, i32* @MO_GP1_IO, align 4
  %35 = call i32 @cx_write(i32 %34, i32 1052688)
  %36 = call i32 @mdelay(i32 50)
  store i32 0, i32* %4, align 4
  br label %40

37:                                               ; preds = %3
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %40

40:                                               ; preds = %37, %27
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local i32 @INPUT(i32) #1

declare dso_local i32 @cx_write(i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
