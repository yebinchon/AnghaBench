; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_t3_hw.c_mc7_prep.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_t3_hw.c_mc7_prep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.mc7 = type { i8*, i32, i32, i64, %struct.adapter* }

@MC7_PMRX_BASE_ADDR = common dso_local global i64 0, align 8
@A_MC7_CFG = common dso_local global i64 0, align 8
@M_DEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*, %struct.mc7*, i32, i8*)* @mc7_prep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mc7_prep(%struct.adapter* %0, %struct.mc7* %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.adapter*, align 8
  %6 = alloca %struct.mc7*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %5, align 8
  store %struct.mc7* %1, %struct.mc7** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %10 = load %struct.adapter*, %struct.adapter** %5, align 8
  %11 = load %struct.mc7*, %struct.mc7** %6, align 8
  %12 = getelementptr inbounds %struct.mc7, %struct.mc7* %11, i32 0, i32 4
  store %struct.adapter* %10, %struct.adapter** %12, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = load %struct.mc7*, %struct.mc7** %6, align 8
  %15 = getelementptr inbounds %struct.mc7, %struct.mc7* %14, i32 0, i32 0
  store i8* %13, i8** %15, align 8
  %16 = load i32, i32* %7, align 4
  %17 = zext i32 %16 to i64
  %18 = load i64, i64* @MC7_PMRX_BASE_ADDR, align 8
  %19 = sub nsw i64 %17, %18
  %20 = load %struct.mc7*, %struct.mc7** %6, align 8
  %21 = getelementptr inbounds %struct.mc7, %struct.mc7* %20, i32 0, i32 3
  store i64 %19, i64* %21, align 8
  %22 = load %struct.adapter*, %struct.adapter** %5, align 8
  %23 = load %struct.mc7*, %struct.mc7** %6, align 8
  %24 = getelementptr inbounds %struct.mc7, %struct.mc7* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @A_MC7_CFG, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @t3_read_reg(%struct.adapter* %22, i64 %27)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = call i64 @G_DEN(i32 %29)
  %31 = load i64, i64* @M_DEN, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %4
  br label %37

34:                                               ; preds = %4
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @mc7_calc_size(i32 %35)
  br label %37

37:                                               ; preds = %34, %33
  %38 = phi i32 [ 0, %33 ], [ %36, %34 ]
  %39 = load %struct.mc7*, %struct.mc7** %6, align 8
  %40 = getelementptr inbounds %struct.mc7, %struct.mc7* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @G_WIDTH(i32 %41)
  %43 = load %struct.mc7*, %struct.mc7** %6, align 8
  %44 = getelementptr inbounds %struct.mc7, %struct.mc7* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 8
  ret void
}

declare dso_local i32 @t3_read_reg(%struct.adapter*, i64) #1

declare dso_local i64 @G_DEN(i32) #1

declare dso_local i32 @mc7_calc_size(i32) #1

declare dso_local i32 @G_WIDTH(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
