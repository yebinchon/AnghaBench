; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_pxamci.c_pxamci_set_power.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_pxamci.c_pxamci_set_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxamci_host = type { i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32, i32, i32 (i32, i32)*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pxamci_host*, i32)* @pxamci_set_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pxamci_set_power(%struct.pxamci_host* %0, i32 %1) #0 {
  %3 = alloca %struct.pxamci_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.pxamci_host* %0, %struct.pxamci_host** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.pxamci_host*, %struct.pxamci_host** %3, align 8
  %7 = getelementptr inbounds %struct.pxamci_host, %struct.pxamci_host* %6, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %49, label %10

10:                                               ; preds = %2
  %11 = load %struct.pxamci_host*, %struct.pxamci_host** %3, align 8
  %12 = getelementptr inbounds %struct.pxamci_host, %struct.pxamci_host* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = icmp ne %struct.TYPE_2__* %13, null
  br i1 %14, label %15, label %49

15:                                               ; preds = %10
  %16 = load %struct.pxamci_host*, %struct.pxamci_host** %3, align 8
  %17 = getelementptr inbounds %struct.pxamci_host, %struct.pxamci_host* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = call i64 @gpio_is_valid(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %49

23:                                               ; preds = %15
  %24 = load i32, i32* %4, align 4
  %25 = shl i32 1, %24
  %26 = load %struct.pxamci_host*, %struct.pxamci_host** %3, align 8
  %27 = getelementptr inbounds %struct.pxamci_host, %struct.pxamci_host* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = and i32 %25, %30
  store i32 %31, i32* %5, align 4
  %32 = load %struct.pxamci_host*, %struct.pxamci_host** %3, align 8
  %33 = getelementptr inbounds %struct.pxamci_host, %struct.pxamci_host* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = load %struct.pxamci_host*, %struct.pxamci_host** %3, align 8
  %43 = getelementptr inbounds %struct.pxamci_host, %struct.pxamci_host* %42, i32 0, i32 1
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = xor i32 %41, %46
  %48 = call i32 @gpio_set_value(i32 %36, i32 %47)
  br label %49

49:                                               ; preds = %23, %15, %10, %2
  %50 = load %struct.pxamci_host*, %struct.pxamci_host** %3, align 8
  %51 = getelementptr inbounds %struct.pxamci_host, %struct.pxamci_host* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %78, label %54

54:                                               ; preds = %49
  %55 = load %struct.pxamci_host*, %struct.pxamci_host** %3, align 8
  %56 = getelementptr inbounds %struct.pxamci_host, %struct.pxamci_host* %55, i32 0, i32 1
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = icmp ne %struct.TYPE_2__* %57, null
  br i1 %58, label %59, label %78

59:                                               ; preds = %54
  %60 = load %struct.pxamci_host*, %struct.pxamci_host** %3, align 8
  %61 = getelementptr inbounds %struct.pxamci_host, %struct.pxamci_host* %60, i32 0, i32 1
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 2
  %64 = load i32 (i32, i32)*, i32 (i32, i32)** %63, align 8
  %65 = icmp ne i32 (i32, i32)* %64, null
  br i1 %65, label %66, label %78

66:                                               ; preds = %59
  %67 = load %struct.pxamci_host*, %struct.pxamci_host** %3, align 8
  %68 = getelementptr inbounds %struct.pxamci_host, %struct.pxamci_host* %67, i32 0, i32 1
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 2
  %71 = load i32 (i32, i32)*, i32 (i32, i32)** %70, align 8
  %72 = load %struct.pxamci_host*, %struct.pxamci_host** %3, align 8
  %73 = getelementptr inbounds %struct.pxamci_host, %struct.pxamci_host* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @mmc_dev(i32 %74)
  %76 = load i32, i32* %4, align 4
  %77 = call i32 %71(i32 %75, i32 %76)
  br label %78

78:                                               ; preds = %66, %59, %54, %49
  ret void
}

declare dso_local i64 @gpio_is_valid(i32) #1

declare dso_local i32 @gpio_set_value(i32, i32) #1

declare dso_local i32 @mmc_dev(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
