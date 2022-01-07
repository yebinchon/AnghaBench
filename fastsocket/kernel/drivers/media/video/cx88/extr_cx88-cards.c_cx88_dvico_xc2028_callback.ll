; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx88/extr_cx88-cards.c_cx88_dvico_xc2028_callback.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx88/extr_cx88-cards.c_cx88_dvico_xc2028_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx88_core = type { i32 }

@MO_GP0_IO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cx88_core*, i32, i32)* @cx88_dvico_xc2028_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx88_dvico_xc2028_callback(%struct.cx88_core* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cx88_core*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.cx88_core* %0, %struct.cx88_core** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %6, align 4
  switch i32 %8, label %29 [
    i32 128, label %9
  ]

9:                                                ; preds = %3
  %10 = load %struct.cx88_core*, %struct.cx88_core** %5, align 8
  %11 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %22 [
    i32 129, label %13
  ]

13:                                               ; preds = %9
  %14 = load i32, i32* @MO_GP0_IO, align 4
  %15 = call i32 @cx_set(i32 %14, i32 4096)
  %16 = load i32, i32* @MO_GP0_IO, align 4
  %17 = call i32 @cx_clear(i32 %16, i32 16)
  %18 = call i32 @msleep(i32 100)
  %19 = load i32, i32* @MO_GP0_IO, align 4
  %20 = call i32 @cx_set(i32 %19, i32 16)
  %21 = call i32 @msleep(i32 100)
  br label %28

22:                                               ; preds = %9
  %23 = load i32, i32* @MO_GP0_IO, align 4
  %24 = call i32 @cx_write(i32 %23, i32 1052672)
  %25 = call i32 @mdelay(i32 5)
  %26 = load i32, i32* @MO_GP0_IO, align 4
  %27 = call i32 @cx_set(i32 %26, i32 1052688)
  br label %28

28:                                               ; preds = %22, %13
  br label %32

29:                                               ; preds = %3
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %33

32:                                               ; preds = %28
  store i32 0, i32* %4, align 4
  br label %33

33:                                               ; preds = %32, %29
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local i32 @cx_set(i32, i32) #1

declare dso_local i32 @cx_clear(i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @cx_write(i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
