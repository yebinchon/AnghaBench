; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_83xx_hw.c_qlcnic_83xx_handle_link_aen.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_83xx_hw.c_qlcnic_83xx_handle_link_aen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i8*, i8*, i32 }

@DUPLEX_FULL = common dso_local global i32 0, align 4
@DUPLEX_HALF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qlcnic_adapter*, i32*)* @qlcnic_83xx_handle_link_aen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qlcnic_83xx_handle_link_aen(%struct.qlcnic_adapter* %0, i32* %1) #0 {
  %3 = alloca %struct.qlcnic_adapter*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 3
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @LSB(i32 %9)
  %11 = and i32 %10, 1
  store i32 %11, i32* %5, align 4
  %12 = load i32*, i32** %4, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 2
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @MSW(i32 %14)
  %16 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %17 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 4
  store i32 %15, i32* %19, align 8
  %20 = load i32*, i32** %4, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 3
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @MSW(i32 %22)
  %24 = call i8* @MSB(i32 %23)
  %25 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %26 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 3
  store i8* %24, i8** %28, align 8
  %29 = load i32*, i32** %4, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 3
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @LSW(i32 %31)
  %33 = call i8* @MSB(i32 %32)
  %34 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %35 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 2
  store i8* %33, i8** %37, align 8
  %38 = load i32*, i32** %4, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 3
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @MSW(i32 %40)
  %42 = call i32 @LSB(i32 %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %2
  %46 = load i32, i32* @DUPLEX_FULL, align 4
  %47 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %48 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  store i32 %46, i32* %50, align 4
  br label %57

51:                                               ; preds = %2
  %52 = load i32, i32* @DUPLEX_HALF, align 4
  %53 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %54 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %53, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  store i32 %52, i32* %56, align 4
  br label %57

57:                                               ; preds = %51, %45
  %58 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %59 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %58, i32 0, i32 0
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  store i32 1, i32* %61, align 8
  %62 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @qlcnic_advert_link_change(%struct.qlcnic_adapter* %62, i32 %63)
  ret void
}

declare dso_local i32 @LSB(i32) #1

declare dso_local i32 @MSW(i32) #1

declare dso_local i8* @MSB(i32) #1

declare dso_local i32 @LSW(i32) #1

declare dso_local i32 @qlcnic_advert_link_change(%struct.qlcnic_adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
