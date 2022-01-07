; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/misc/extr_winbond-cir.c_get_bits.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/misc/extr_winbond-cir.c_get_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wbcir_data = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wbcir_data*, i32)* @get_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_bits(%struct.wbcir_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wbcir_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.wbcir_data* %0, %struct.wbcir_data** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load %struct.wbcir_data*, %struct.wbcir_data** %4, align 8
  %8 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.wbcir_data*, %struct.wbcir_data** %4, align 8
  %11 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = sub nsw i32 %9, %12
  %14 = load i32, i32* %5, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load %struct.wbcir_data*, %struct.wbcir_data** %4, align 8
  %18 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %17, i32 0, i32 2
  store i32 1, i32* %18, align 4
  store i32 0, i32* %3, align 4
  br label %46

19:                                               ; preds = %2
  br label %20

20:                                               ; preds = %37, %19
  %21 = load i32, i32* %5, align 4
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %44

23:                                               ; preds = %20
  %24 = load i32, i32* %6, align 4
  %25 = shl i32 %24, 1
  store i32 %25, i32* %6, align 4
  %26 = load %struct.wbcir_data*, %struct.wbcir_data** %4, align 8
  %27 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.wbcir_data*, %struct.wbcir_data** %4, align 8
  %30 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @test_bit(i32 %28, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %23
  %35 = load i32, i32* %6, align 4
  %36 = or i32 %35, 1
  store i32 %36, i32* %6, align 4
  br label %37

37:                                               ; preds = %34, %23
  %38 = load i32, i32* %5, align 4
  %39 = add nsw i32 %38, -1
  store i32 %39, i32* %5, align 4
  %40 = load %struct.wbcir_data*, %struct.wbcir_data** %4, align 8
  %41 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %41, align 4
  br label %20

44:                                               ; preds = %20
  %45 = load i32, i32* %6, align 4
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %44, %16
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i64 @test_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
