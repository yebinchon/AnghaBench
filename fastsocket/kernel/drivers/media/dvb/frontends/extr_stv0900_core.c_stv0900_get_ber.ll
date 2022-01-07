; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stv0900_core.c_stv0900_get_ber.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stv0900_core.c_stv0900_get_ber.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stv0900_internal = type { i32 }

@HEADER_MODE = common dso_local global i32 0, align 4
@PRFVIT = common dso_local global i32 0, align 4
@PKTDELIN_LOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stv0900_internal*, i32)* @stv0900_get_ber to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stv0900_get_ber(%struct.stv0900_internal* %0, i32 %1) #0 {
  %3 = alloca %struct.stv0900_internal*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.stv0900_internal* %0, %struct.stv0900_internal** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 10000000, i32* %5, align 4
  %8 = load %struct.stv0900_internal*, %struct.stv0900_internal** %3, align 8
  %9 = load i32, i32* @HEADER_MODE, align 4
  %10 = call i32 @stv0900_get_bits(%struct.stv0900_internal* %8, i32 %9)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  switch i32 %11, label %13 [
    i32 128, label %12
    i32 129, label %12
    i32 130, label %14
    i32 131, label %41
  ]

12:                                               ; preds = %2, %2
  br label %13

13:                                               ; preds = %2, %12
  store i32 10000000, i32* %5, align 4
  br label %68

14:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %15

15:                                               ; preds = %25, %14
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %16, 5
  br i1 %17, label %18, label %28

18:                                               ; preds = %15
  %19 = call i32 @msleep(i32 5)
  %20 = load %struct.stv0900_internal*, %struct.stv0900_internal** %3, align 8
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @stv0900_get_err_count(%struct.stv0900_internal* %20, i32 0, i32 %21)
  %23 = load i32, i32* %5, align 4
  %24 = add nsw i32 %23, %22
  store i32 %24, i32* %5, align 4
  br label %25

25:                                               ; preds = %18
  %26 = load i32, i32* %6, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %6, align 4
  br label %15

28:                                               ; preds = %15
  %29 = load i32, i32* %5, align 4
  %30 = sdiv i32 %29, 5
  store i32 %30, i32* %5, align 4
  %31 = load %struct.stv0900_internal*, %struct.stv0900_internal** %3, align 8
  %32 = load i32, i32* @PRFVIT, align 4
  %33 = call i32 @stv0900_get_bits(%struct.stv0900_internal* %31, i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %28
  %36 = load i32, i32* %5, align 4
  %37 = mul nsw i32 %36, 9766
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = ashr i32 %38, 13
  store i32 %39, i32* %5, align 4
  br label %40

40:                                               ; preds = %35, %28
  br label %68

41:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %42

42:                                               ; preds = %52, %41
  %43 = load i32, i32* %6, align 4
  %44 = icmp slt i32 %43, 5
  br i1 %44, label %45, label %55

45:                                               ; preds = %42
  %46 = call i32 @msleep(i32 5)
  %47 = load %struct.stv0900_internal*, %struct.stv0900_internal** %3, align 8
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @stv0900_get_err_count(%struct.stv0900_internal* %47, i32 0, i32 %48)
  %50 = load i32, i32* %5, align 4
  %51 = add nsw i32 %50, %49
  store i32 %51, i32* %5, align 4
  br label %52

52:                                               ; preds = %45
  %53 = load i32, i32* %6, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %6, align 4
  br label %42

55:                                               ; preds = %42
  %56 = load i32, i32* %5, align 4
  %57 = sdiv i32 %56, 5
  store i32 %57, i32* %5, align 4
  %58 = load %struct.stv0900_internal*, %struct.stv0900_internal** %3, align 8
  %59 = load i32, i32* @PKTDELIN_LOCK, align 4
  %60 = call i32 @stv0900_get_bits(%struct.stv0900_internal* %58, i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %55
  %63 = load i32, i32* %5, align 4
  %64 = mul nsw i32 %63, 9766
  store i32 %64, i32* %5, align 4
  %65 = load i32, i32* %5, align 4
  %66 = ashr i32 %65, 13
  store i32 %66, i32* %5, align 4
  br label %67

67:                                               ; preds = %62, %55
  br label %68

68:                                               ; preds = %67, %40, %13
  %69 = load i32, i32* %5, align 4
  ret i32 %69
}

declare dso_local i32 @stv0900_get_bits(%struct.stv0900_internal*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @stv0900_get_err_count(%struct.stv0900_internal*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
