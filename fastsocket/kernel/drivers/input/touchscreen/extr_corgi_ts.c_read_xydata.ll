; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/touchscreen/extr_corgi_ts.c_read_xydata.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/touchscreen/extr_corgi_ts.c_read_xydata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.corgi_ts = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@ADSCTRL_ADR_SH = common dso_local global i32 0, align 4
@ADSCTRL_STS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.corgi_ts*)* @read_xydata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_xydata(%struct.corgi_ts* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.corgi_ts*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.corgi_ts* %0, %struct.corgi_ts** %3, align 8
  %10 = load i64, i64* %8, align 8
  %11 = call i32 @local_irq_save(i64 %10)
  %12 = call i32 (...) @corgi_ssp_ads7846_lock()
  %13 = load %struct.corgi_ts*, %struct.corgi_ts** %3, align 8
  %14 = call i64 @calc_waittime(%struct.corgi_ts* %13)
  store i64 %14, i64* %9, align 8
  %15 = load %struct.corgi_ts*, %struct.corgi_ts** %3, align 8
  %16 = load i64, i64* %9, align 8
  %17 = call i32 @sync_receive_data_send_cmd(%struct.corgi_ts* %15, i32 0, i32 1, i32 1, i64 %16)
  %18 = load %struct.corgi_ts*, %struct.corgi_ts** %3, align 8
  %19 = load i64, i64* %9, align 8
  %20 = call i32 @sync_receive_data_send_cmd(%struct.corgi_ts* %18, i32 1, i32 1, i32 1, i64 %19)
  %21 = load %struct.corgi_ts*, %struct.corgi_ts** %3, align 8
  %22 = load i64, i64* %9, align 8
  %23 = call i32 @sync_receive_data_send_cmd(%struct.corgi_ts* %21, i32 1, i32 1, i32 5, i64 %22)
  store i32 %23, i32* %5, align 4
  %24 = load %struct.corgi_ts*, %struct.corgi_ts** %3, align 8
  %25 = load i64, i64* %9, align 8
  %26 = call i32 @sync_receive_data_send_cmd(%struct.corgi_ts* %24, i32 1, i32 1, i32 3, i64 %25)
  store i32 %26, i32* %4, align 4
  %27 = load %struct.corgi_ts*, %struct.corgi_ts** %3, align 8
  %28 = load i64, i64* %9, align 8
  %29 = call i32 @sync_receive_data_send_cmd(%struct.corgi_ts* %27, i32 1, i32 1, i32 4, i64 %28)
  store i32 %29, i32* %6, align 4
  %30 = load %struct.corgi_ts*, %struct.corgi_ts** %3, align 8
  %31 = load i64, i64* %9, align 8
  %32 = call i32 @sync_receive_data_send_cmd(%struct.corgi_ts* %30, i32 1, i32 0, i32 4, i64 %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* @ADSCTRL_ADR_SH, align 4
  %34 = shl i32 1, %33
  %35 = load i32, i32* @ADSCTRL_STS, align 4
  %36 = or i32 %34, %35
  %37 = call i32 @corgi_ssp_ads7846_put(i32 %36)
  %38 = call i32 (...) @corgi_ssp_ads7846_get()
  %39 = call i32 (...) @corgi_ssp_ads7846_unlock()
  %40 = load i64, i64* %8, align 8
  %41 = call i32 @local_irq_restore(i64 %40)
  %42 = load i32, i32* %4, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %59, label %44

44:                                               ; preds = %1
  %45 = load i32, i32* %5, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %59, label %47

47:                                               ; preds = %44
  %48 = load i32, i32* %6, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %59, label %50

50:                                               ; preds = %47
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* %6, align 4
  %54 = sub i32 %52, %53
  %55 = mul i32 %51, %54
  %56 = load i32, i32* %6, align 4
  %57 = udiv i32 %55, %56
  %58 = icmp uge i32 %57, 15000
  br i1 %58, label %59, label %63

59:                                               ; preds = %50, %47, %44, %1
  %60 = load %struct.corgi_ts*, %struct.corgi_ts** %3, align 8
  %61 = getelementptr inbounds %struct.corgi_ts, %struct.corgi_ts* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  store i32 0, i32* %62, align 4
  store i32 0, i32* %2, align 4
  br label %82

63:                                               ; preds = %50
  %64 = load i32, i32* %4, align 4
  %65 = load %struct.corgi_ts*, %struct.corgi_ts** %3, align 8
  %66 = getelementptr inbounds %struct.corgi_ts, %struct.corgi_ts* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  store i32 %64, i32* %67, align 4
  %68 = load i32, i32* %5, align 4
  %69 = load %struct.corgi_ts*, %struct.corgi_ts** %3, align 8
  %70 = getelementptr inbounds %struct.corgi_ts, %struct.corgi_ts* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 2
  store i32 %68, i32* %71, align 4
  %72 = load i32, i32* %4, align 4
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* %6, align 4
  %75 = sub i32 %73, %74
  %76 = mul i32 %72, %75
  %77 = load i32, i32* %6, align 4
  %78 = udiv i32 %76, %77
  %79 = load %struct.corgi_ts*, %struct.corgi_ts** %3, align 8
  %80 = getelementptr inbounds %struct.corgi_ts, %struct.corgi_ts* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  store i32 %78, i32* %81, align 4
  store i32 1, i32* %2, align 4
  br label %82

82:                                               ; preds = %63, %59
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @corgi_ssp_ads7846_lock(...) #1

declare dso_local i64 @calc_waittime(%struct.corgi_ts*) #1

declare dso_local i32 @sync_receive_data_send_cmd(%struct.corgi_ts*, i32, i32, i32, i64) #1

declare dso_local i32 @corgi_ssp_ads7846_put(i32) #1

declare dso_local i32 @corgi_ssp_ads7846_get(...) #1

declare dso_local i32 @corgi_ssp_ads7846_unlock(...) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
