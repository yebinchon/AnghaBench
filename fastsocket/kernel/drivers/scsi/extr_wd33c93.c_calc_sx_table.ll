; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_wd33c93.c_calc_sx_table.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_wd33c93.c_calc_sx_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sx_period = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.sx_period*)* @calc_sx_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @calc_sx_table(i32 %0, %struct.sx_period* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sx_period*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.sx_period* %1, %struct.sx_period** %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = icmp ult i32 %7, 11
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i32 2, i32* %5, align 4
  br label %16

10:                                               ; preds = %2
  %11 = load i32, i32* %3, align 4
  %12 = icmp ult i32 %11, 16
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  store i32 3, i32* %5, align 4
  br label %15

14:                                               ; preds = %10
  store i32 4, i32* %5, align 4
  br label %15

15:                                               ; preds = %14, %13
  br label %16

16:                                               ; preds = %15, %9
  %17 = load i32, i32* %5, align 4
  %18 = mul i32 100000, %17
  %19 = udiv i32 %18, 2
  %20 = load i32, i32* %3, align 4
  %21 = udiv i32 %19, %20
  store i32 %21, i32* %5, align 4
  %22 = load %struct.sx_period*, %struct.sx_period** %4, align 8
  %23 = getelementptr inbounds %struct.sx_period, %struct.sx_period* %22, i64 0
  %24 = getelementptr inbounds %struct.sx_period, %struct.sx_period* %23, i32 0, i32 0
  store i32 1, i32* %24, align 4
  %25 = load %struct.sx_period*, %struct.sx_period** %4, align 8
  %26 = getelementptr inbounds %struct.sx_period, %struct.sx_period* %25, i64 0
  %27 = getelementptr inbounds %struct.sx_period, %struct.sx_period* %26, i32 0, i32 1
  store i32 32, i32* %27, align 4
  store i32 1, i32* %6, align 4
  br label %28

28:                                               ; preds = %51, %16
  %29 = load i32, i32* %6, align 4
  %30 = icmp ult i32 %29, 8
  br i1 %30, label %31, label %54

31:                                               ; preds = %28
  %32 = load i32, i32* %6, align 4
  %33 = add i32 %32, 1
  %34 = load i32, i32* %5, align 4
  %35 = mul i32 %33, %34
  %36 = udiv i32 %35, 100
  %37 = call i32 @round_4(i32 %36)
  %38 = load %struct.sx_period*, %struct.sx_period** %4, align 8
  %39 = load i32, i32* %6, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.sx_period, %struct.sx_period* %38, i64 %40
  %42 = getelementptr inbounds %struct.sx_period, %struct.sx_period* %41, i32 0, i32 0
  store i32 %37, i32* %42, align 4
  %43 = load i32, i32* %6, align 4
  %44 = add i32 %43, 1
  %45 = mul i32 %44, 16
  %46 = load %struct.sx_period*, %struct.sx_period** %4, align 8
  %47 = load i32, i32* %6, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.sx_period, %struct.sx_period* %46, i64 %48
  %50 = getelementptr inbounds %struct.sx_period, %struct.sx_period* %49, i32 0, i32 1
  store i32 %45, i32* %50, align 4
  br label %51

51:                                               ; preds = %31
  %52 = load i32, i32* %6, align 4
  %53 = add i32 %52, 1
  store i32 %53, i32* %6, align 4
  br label %28

54:                                               ; preds = %28
  %55 = load %struct.sx_period*, %struct.sx_period** %4, align 8
  %56 = getelementptr inbounds %struct.sx_period, %struct.sx_period* %55, i64 7
  %57 = getelementptr inbounds %struct.sx_period, %struct.sx_period* %56, i32 0, i32 1
  store i32 0, i32* %57, align 4
  %58 = load %struct.sx_period*, %struct.sx_period** %4, align 8
  %59 = getelementptr inbounds %struct.sx_period, %struct.sx_period* %58, i64 8
  %60 = getelementptr inbounds %struct.sx_period, %struct.sx_period* %59, i32 0, i32 0
  store i32 0, i32* %60, align 4
  %61 = load %struct.sx_period*, %struct.sx_period** %4, align 8
  %62 = getelementptr inbounds %struct.sx_period, %struct.sx_period* %61, i64 8
  %63 = getelementptr inbounds %struct.sx_period, %struct.sx_period* %62, i32 0, i32 1
  store i32 0, i32* %63, align 4
  ret void
}

declare dso_local i32 @round_4(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
