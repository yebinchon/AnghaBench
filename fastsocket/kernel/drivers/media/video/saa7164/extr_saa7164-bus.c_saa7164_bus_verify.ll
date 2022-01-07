; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7164/extr_saa7164-bus.c_saa7164_bus_verify.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7164/extr_saa7164-bus.c_saa7164_bus_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7164_dev = type { %struct.tmComResBusInfo }
%struct.tmComResBusInfo = type { i64, i64, i32, i32, i32, i32 }

@saa_debug = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @saa7164_bus_verify(%struct.saa7164_dev* %0) #0 {
  %2 = alloca %struct.saa7164_dev*, align 8
  %3 = alloca %struct.tmComResBusInfo*, align 8
  %4 = alloca i32, align 4
  store %struct.saa7164_dev* %0, %struct.saa7164_dev** %2, align 8
  %5 = load %struct.saa7164_dev*, %struct.saa7164_dev** %2, align 8
  %6 = getelementptr inbounds %struct.saa7164_dev, %struct.saa7164_dev* %5, i32 0, i32 0
  store %struct.tmComResBusInfo* %6, %struct.tmComResBusInfo** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.tmComResBusInfo*, %struct.tmComResBusInfo** %3, align 8
  %8 = getelementptr inbounds %struct.tmComResBusInfo, %struct.tmComResBusInfo* %7, i32 0, i32 5
  %9 = load i32, i32* %8, align 4
  %10 = call i64 @saa7164_readl(i32 %9)
  %11 = load %struct.tmComResBusInfo*, %struct.tmComResBusInfo** %3, align 8
  %12 = getelementptr inbounds %struct.tmComResBusInfo, %struct.tmComResBusInfo* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp sgt i64 %10, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i32, i32* %4, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %4, align 4
  br label %18

18:                                               ; preds = %15, %1
  %19 = load %struct.tmComResBusInfo*, %struct.tmComResBusInfo** %3, align 8
  %20 = getelementptr inbounds %struct.tmComResBusInfo, %struct.tmComResBusInfo* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 8
  %22 = call i64 @saa7164_readl(i32 %21)
  %23 = load %struct.tmComResBusInfo*, %struct.tmComResBusInfo** %3, align 8
  %24 = getelementptr inbounds %struct.tmComResBusInfo, %struct.tmComResBusInfo* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp sgt i64 %22, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %18
  %28 = load i32, i32* %4, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %4, align 4
  br label %30

30:                                               ; preds = %27, %18
  %31 = load %struct.tmComResBusInfo*, %struct.tmComResBusInfo** %3, align 8
  %32 = getelementptr inbounds %struct.tmComResBusInfo, %struct.tmComResBusInfo* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @saa7164_readl(i32 %33)
  %35 = load %struct.tmComResBusInfo*, %struct.tmComResBusInfo** %3, align 8
  %36 = getelementptr inbounds %struct.tmComResBusInfo, %struct.tmComResBusInfo* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp sgt i64 %34, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %30
  %40 = load i32, i32* %4, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %39, %30
  %43 = load %struct.tmComResBusInfo*, %struct.tmComResBusInfo** %3, align 8
  %44 = getelementptr inbounds %struct.tmComResBusInfo, %struct.tmComResBusInfo* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = call i64 @saa7164_readl(i32 %45)
  %47 = load %struct.tmComResBusInfo*, %struct.tmComResBusInfo** %3, align 8
  %48 = getelementptr inbounds %struct.tmComResBusInfo, %struct.tmComResBusInfo* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp sgt i64 %46, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %42
  %52 = load i32, i32* %4, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %51, %42
  %55 = load i32, i32* %4, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %54
  store i32 65535, i32* @saa_debug, align 4
  %58 = load %struct.saa7164_dev*, %struct.saa7164_dev** %2, align 8
  %59 = call i32 @saa7164_bus_dump(%struct.saa7164_dev* %58)
  store i32 1024, i32* @saa_debug, align 4
  %60 = call i32 (...) @BUG()
  br label %61

61:                                               ; preds = %57, %54
  ret void
}

declare dso_local i64 @saa7164_readl(i32) #1

declare dso_local i32 @saa7164_bus_dump(%struct.saa7164_dev*) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
