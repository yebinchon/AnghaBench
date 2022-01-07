; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_wbsd.c_wbsd_get_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_wbsd.c_wbsd_get_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_data = type { i32 }
%struct.wbsd_host = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.mmc_data* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mmc_data* (%struct.wbsd_host*)* @wbsd_get_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mmc_data* @wbsd_get_data(%struct.wbsd_host* %0) #0 {
  %2 = alloca %struct.mmc_data*, align 8
  %3 = alloca %struct.wbsd_host*, align 8
  store %struct.wbsd_host* %0, %struct.wbsd_host** %3, align 8
  %4 = load %struct.wbsd_host*, %struct.wbsd_host** %3, align 8
  %5 = getelementptr inbounds %struct.wbsd_host, %struct.wbsd_host* %4, i32 0, i32 0
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %7 = icmp ne %struct.TYPE_3__* %6, null
  %8 = xor i1 %7, true
  %9 = zext i1 %8 to i32
  %10 = call i32 @WARN_ON(i32 %9)
  %11 = load %struct.wbsd_host*, %struct.wbsd_host** %3, align 8
  %12 = getelementptr inbounds %struct.wbsd_host, %struct.wbsd_host* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = icmp ne %struct.TYPE_3__* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  store %struct.mmc_data* null, %struct.mmc_data** %2, align 8
  br label %62

16:                                               ; preds = %1
  %17 = load %struct.wbsd_host*, %struct.wbsd_host** %3, align 8
  %18 = getelementptr inbounds %struct.wbsd_host, %struct.wbsd_host* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = icmp ne %struct.TYPE_4__* %21, null
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i32 @WARN_ON(i32 %24)
  %26 = load %struct.wbsd_host*, %struct.wbsd_host** %3, align 8
  %27 = getelementptr inbounds %struct.wbsd_host, %struct.wbsd_host* %26, i32 0, i32 0
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = icmp ne %struct.TYPE_4__* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %16
  store %struct.mmc_data* null, %struct.mmc_data** %2, align 8
  br label %62

33:                                               ; preds = %16
  %34 = load %struct.wbsd_host*, %struct.wbsd_host** %3, align 8
  %35 = getelementptr inbounds %struct.wbsd_host, %struct.wbsd_host* %34, i32 0, i32 0
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load %struct.mmc_data*, %struct.mmc_data** %39, align 8
  %41 = icmp ne %struct.mmc_data* %40, null
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = call i32 @WARN_ON(i32 %43)
  %45 = load %struct.wbsd_host*, %struct.wbsd_host** %3, align 8
  %46 = getelementptr inbounds %struct.wbsd_host, %struct.wbsd_host* %45, i32 0, i32 0
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load %struct.mmc_data*, %struct.mmc_data** %50, align 8
  %52 = icmp ne %struct.mmc_data* %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %33
  store %struct.mmc_data* null, %struct.mmc_data** %2, align 8
  br label %62

54:                                               ; preds = %33
  %55 = load %struct.wbsd_host*, %struct.wbsd_host** %3, align 8
  %56 = getelementptr inbounds %struct.wbsd_host, %struct.wbsd_host* %55, i32 0, i32 0
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load %struct.mmc_data*, %struct.mmc_data** %60, align 8
  store %struct.mmc_data* %61, %struct.mmc_data** %2, align 8
  br label %62

62:                                               ; preds = %54, %53, %32, %15
  %63 = load %struct.mmc_data*, %struct.mmc_data** %2, align 8
  ret %struct.mmc_data* %63
}

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
