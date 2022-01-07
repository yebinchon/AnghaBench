; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/agp/extr_sgi-agp.c_sgi_tioca_remove_memory.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/agp/extr_sgi-agp.c_sgi_tioca_remove_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.agp_memory = type { i64, i64, %struct.agp_bridge_data* }
%struct.agp_bridge_data = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 (%struct.agp_memory*)* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.agp_memory*, i64, i32)* @sgi_tioca_remove_memory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sgi_tioca_remove_memory(%struct.agp_memory* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.agp_memory*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.agp_bridge_data*, align 8
  %10 = alloca i64*, align 8
  store %struct.agp_memory* %0, %struct.agp_memory** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.agp_memory*, %struct.agp_memory** %5, align 8
  %12 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %11, i32 0, i32 2
  %13 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %12, align 8
  store %struct.agp_bridge_data* %13, %struct.agp_bridge_data** %9, align 8
  %14 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %9, align 8
  %15 = icmp ne %struct.agp_bridge_data* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %59

19:                                               ; preds = %3
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %19
  %23 = load %struct.agp_memory*, %struct.agp_memory** %5, align 8
  %24 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22, %19
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %59

30:                                               ; preds = %22
  %31 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %9, align 8
  %32 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to i64*
  store i64* %34, i64** %10, align 8
  %35 = load i64, i64* %6, align 8
  store i64 %35, i64* %8, align 8
  br label %36

36:                                               ; preds = %48, %30
  %37 = load i64, i64* %8, align 8
  %38 = load %struct.agp_memory*, %struct.agp_memory** %5, align 8
  %39 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* %6, align 8
  %42 = add i64 %40, %41
  %43 = icmp ult i64 %37, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %36
  %45 = load i64*, i64** %10, align 8
  %46 = load i64, i64* %8, align 8
  %47 = getelementptr inbounds i64, i64* %45, i64 %46
  store i64 0, i64* %47, align 8
  br label %48

48:                                               ; preds = %44
  %49 = load i64, i64* %8, align 8
  %50 = add i64 %49, 1
  store i64 %50, i64* %8, align 8
  br label %36

51:                                               ; preds = %36
  %52 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %9, align 8
  %53 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32 (%struct.agp_memory*)*, i32 (%struct.agp_memory*)** %55, align 8
  %57 = load %struct.agp_memory*, %struct.agp_memory** %5, align 8
  %58 = call i32 %56(%struct.agp_memory* %57)
  store i32 0, i32* %4, align 4
  br label %59

59:                                               ; preds = %51, %27, %16
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
