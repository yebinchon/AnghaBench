; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/misc/extr_winbond-cir.c_wbcir_rc6cells_to_byte.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/misc/extr_winbond-cir.c_wbcir_rc6cells_to_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wbcir_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wbcir_data*)* @wbcir_rc6cells_to_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wbcir_rc6cells_to_byte(%struct.wbcir_data* %0) #0 {
  %2 = alloca %struct.wbcir_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.wbcir_data* %0, %struct.wbcir_data** %2, align 8
  %6 = load %struct.wbcir_data*, %struct.wbcir_data** %2, align 8
  %7 = call i32 @get_bits(%struct.wbcir_data* %6, i32 16)
  store i32 %7, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %26, %1
  %9 = load i32, i32* %5, align 4
  %10 = icmp slt i32 %9, 8
  br i1 %10, label %11, label %29

11:                                               ; preds = %8
  %12 = load i32, i32* %3, align 4
  %13 = and i32 %12, 3
  switch i32 %13, label %20 [
    i32 1, label %14
    i32 2, label %15
  ]

14:                                               ; preds = %11
  br label %23

15:                                               ; preds = %11
  %16 = load i32, i32* %5, align 4
  %17 = shl i32 1, %16
  %18 = load i32, i32* %4, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %4, align 4
  br label %23

20:                                               ; preds = %11
  %21 = load %struct.wbcir_data*, %struct.wbcir_data** %2, align 8
  %22 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %21, i32 0, i32 0
  store i32 1, i32* %22, align 4
  br label %23

23:                                               ; preds = %20, %15, %14
  %24 = load i32, i32* %3, align 4
  %25 = ashr i32 %24, 2
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %23
  %27 = load i32, i32* %5, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %5, align 4
  br label %8

29:                                               ; preds = %8
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

declare dso_local i32 @get_bits(%struct.wbcir_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
