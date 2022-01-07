; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_crisv10.c_get_lsr_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_crisv10.c_get_lsr_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e100_serial = type { i64, i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@TIOCSER_TEMT = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e100_serial*, i32*)* @get_lsr_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_lsr_info(%struct.e100_serial* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.e100_serial*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.e100_serial* %0, %struct.e100_serial** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load i32, i32* @TIOCSER_TEMT, align 4
  store i32 %10, i32* %6, align 4
  %11 = load i64, i64* @jiffies, align 8
  store i64 %11, i64* %7, align 8
  %12 = call i64 (...) @GET_JIFFIES_USEC()
  store i64 %12, i64* %8, align 8
  %13 = load i64, i64* %7, align 8
  %14 = load %struct.e100_serial*, %struct.e100_serial** %4, align 8
  %15 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = sub i64 %13, %16
  %18 = mul i64 %17, 1000000
  %19 = load i64, i64* @HZ, align 8
  %20 = udiv i64 %18, %19
  %21 = load i64, i64* %8, align 8
  %22 = add i64 %20, %21
  %23 = load %struct.e100_serial*, %struct.e100_serial** %4, align 8
  %24 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = sub i64 %22, %25
  store i64 %26, i64* %9, align 8
  %27 = load %struct.e100_serial*, %struct.e100_serial** %4, align 8
  %28 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.e100_serial*, %struct.e100_serial** %4, align 8
  %32 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %30, %34
  br i1 %35, label %44, label %36

36:                                               ; preds = %2
  %37 = load i64, i64* %9, align 8
  %38 = load %struct.e100_serial*, %struct.e100_serial** %4, align 8
  %39 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = mul nsw i32 2, %40
  %42 = sext i32 %41 to i64
  %43 = icmp ult i64 %37, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %36, %2
  store i32 0, i32* %6, align 4
  br label %45

45:                                               ; preds = %44, %36
  %46 = load i32*, i32** %5, align 8
  %47 = call i64 @copy_to_user(i32* %46, i32* %6, i32 4)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load i32, i32* @EFAULT, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %53

52:                                               ; preds = %45
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %52, %49
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i64 @GET_JIFFIES_USEC(...) #1

declare dso_local i64 @copy_to_user(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
