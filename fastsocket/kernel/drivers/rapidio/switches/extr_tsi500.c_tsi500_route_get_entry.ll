; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rapidio/switches/extr_tsi500.c_tsi500_route_get_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rapidio/switches/extr_tsi500.c_tsi500_route_get_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rio_mport = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rio_mport*, i32, i32, i32, i32, i32*)* @tsi500_route_get_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tsi500_route_get_entry(%struct.rio_mport* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca %struct.rio_mport*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.rio_mport* %0, %struct.rio_mport** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32* %5, i32** %12, align 8
  store i32 0, i32* %13, align 4
  %16 = load i32, i32* %11, align 4
  %17 = sdiv i32 %16, 2
  %18 = and i32 %17, -4
  %19 = add nsw i32 68096, %18
  store i32 %19, i32* %14, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp eq i32 %20, 255
  br i1 %21, label %22, label %28

22:                                               ; preds = %6
  %23 = load %struct.rio_mport*, %struct.rio_mport** %7, align 8
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %14, align 4
  %27 = call i32 @rio_mport_read_config_32(%struct.rio_mport* %23, i32 %24, i32 %25, i32 %26, i32* %15)
  br label %37

28:                                               ; preds = %6
  %29 = load %struct.rio_mport*, %struct.rio_mport** %7, align 8
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %14, align 4
  %33 = load i32, i32* %10, align 4
  %34 = mul nsw i32 131072, %33
  %35 = add nsw i32 %32, %34
  %36 = call i32 @rio_mport_read_config_32(%struct.rio_mport* %29, i32 %30, i32 %31, i32 %35, i32* %15)
  br label %37

37:                                               ; preds = %28, %22
  %38 = load i32, i32* %11, align 4
  %39 = and i32 %38, 7
  %40 = mul nsw i32 4, %39
  %41 = shl i32 15, %40
  %42 = load i32, i32* %15, align 4
  %43 = and i32 %42, %41
  store i32 %43, i32* %15, align 4
  %44 = load i32, i32* %15, align 4
  %45 = load i32, i32* %11, align 4
  %46 = and i32 %45, 7
  %47 = mul nsw i32 4, %46
  %48 = ashr i32 %44, %47
  %49 = load i32*, i32** %12, align 8
  store i32 %48, i32* %49, align 4
  %50 = load i32*, i32** %12, align 8
  %51 = load i32, i32* %50, align 4
  %52 = icmp sgt i32 %51, 3
  br i1 %52, label %53, label %54

53:                                               ; preds = %37
  store i32 -1, i32* %13, align 4
  br label %54

54:                                               ; preds = %53, %37
  %55 = load i32, i32* %13, align 4
  ret i32 %55
}

declare dso_local i32 @rio_mport_read_config_32(%struct.rio_mport*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
