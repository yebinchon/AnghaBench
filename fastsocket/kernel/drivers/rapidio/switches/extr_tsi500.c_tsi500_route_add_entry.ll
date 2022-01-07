; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rapidio/switches/extr_tsi500.c_tsi500_route_add_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rapidio/switches/extr_tsi500.c_tsi500_route_add_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rio_mport = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rio_mport*, i32, i32, i32, i32, i32)* @tsi500_route_add_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tsi500_route_add_entry(%struct.rio_mport* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.rio_mport*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.rio_mport* %0, %struct.rio_mport** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %16 = load i32, i32* %11, align 4
  %17 = sdiv i32 %16, 2
  %18 = and i32 %17, -4
  %19 = add nsw i32 68096, %18
  store i32 %19, i32* %14, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp eq i32 %20, 255
  br i1 %21, label %22, label %58

22:                                               ; preds = %6
  %23 = load %struct.rio_mport*, %struct.rio_mport** %7, align 8
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %14, align 4
  %27 = call i32 @rio_mport_read_config_32(%struct.rio_mport* %23, i32 %24, i32 %25, i32 %26, i32* %15)
  %28 = load i32, i32* %11, align 4
  %29 = and i32 %28, 7
  %30 = mul nsw i32 4, %29
  %31 = shl i32 15, %30
  %32 = xor i32 %31, -1
  %33 = load i32, i32* %15, align 4
  %34 = and i32 %33, %32
  store i32 %34, i32* %15, align 4
  store i32 0, i32* %13, align 4
  br label %35

35:                                               ; preds = %54, %22
  %36 = load i32, i32* %13, align 4
  %37 = icmp slt i32 %36, 4
  br i1 %37, label %38, label %57

38:                                               ; preds = %35
  %39 = load %struct.rio_mport*, %struct.rio_mport** %7, align 8
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %14, align 4
  %43 = load i32, i32* %13, align 4
  %44 = mul nsw i32 131072, %43
  %45 = add nsw i32 %42, %44
  %46 = load i32, i32* %15, align 4
  %47 = load i32, i32* %12, align 4
  %48 = load i32, i32* %11, align 4
  %49 = and i32 %48, 7
  %50 = mul nsw i32 4, %49
  %51 = shl i32 %47, %50
  %52 = or i32 %46, %51
  %53 = call i32 @rio_mport_write_config_32(%struct.rio_mport* %39, i32 %40, i32 %41, i32 %45, i32 %52)
  br label %54

54:                                               ; preds = %38
  %55 = load i32, i32* %13, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %13, align 4
  br label %35

57:                                               ; preds = %35
  br label %89

58:                                               ; preds = %6
  %59 = load %struct.rio_mport*, %struct.rio_mport** %7, align 8
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* %14, align 4
  %63 = load i32, i32* %10, align 4
  %64 = mul nsw i32 131072, %63
  %65 = add nsw i32 %62, %64
  %66 = call i32 @rio_mport_read_config_32(%struct.rio_mport* %59, i32 %60, i32 %61, i32 %65, i32* %15)
  %67 = load i32, i32* %11, align 4
  %68 = and i32 %67, 7
  %69 = mul nsw i32 4, %68
  %70 = shl i32 15, %69
  %71 = xor i32 %70, -1
  %72 = load i32, i32* %15, align 4
  %73 = and i32 %72, %71
  store i32 %73, i32* %15, align 4
  %74 = load %struct.rio_mport*, %struct.rio_mport** %7, align 8
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* %14, align 4
  %78 = load i32, i32* %10, align 4
  %79 = mul nsw i32 131072, %78
  %80 = add nsw i32 %77, %79
  %81 = load i32, i32* %15, align 4
  %82 = load i32, i32* %12, align 4
  %83 = load i32, i32* %11, align 4
  %84 = and i32 %83, 7
  %85 = mul nsw i32 4, %84
  %86 = shl i32 %82, %85
  %87 = or i32 %81, %86
  %88 = call i32 @rio_mport_write_config_32(%struct.rio_mport* %74, i32 %75, i32 %76, i32 %80, i32 %87)
  br label %89

89:                                               ; preds = %58, %57
  ret i32 0
}

declare dso_local i32 @rio_mport_read_config_32(%struct.rio_mport*, i32, i32, i32, i32*) #1

declare dso_local i32 @rio_mport_write_config_32(%struct.rio_mport*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
