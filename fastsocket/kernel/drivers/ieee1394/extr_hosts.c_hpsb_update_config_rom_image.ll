; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_hosts.c_hpsb_update_config_rom_image.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_hosts.c_hpsb_update_config_rom_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpsb_host = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i64* }

@EINVAL = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@delayed_reset_bus = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hpsb_update_config_rom_image(%struct.hpsb_host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hpsb_host*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.hpsb_host* %0, %struct.hpsb_host** %3, align 8
  %6 = load %struct.hpsb_host*, %struct.hpsb_host** %3, align 8
  %7 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* %5, align 4
  %11 = load %struct.hpsb_host*, %struct.hpsb_host** %3, align 8
  %12 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %68

18:                                               ; preds = %1
  %19 = load i32, i32* %5, align 4
  %20 = icmp sgt i32 %19, 15
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  store i32 2, i32* %5, align 4
  br label %22

22:                                               ; preds = %21, %18
  %23 = load %struct.hpsb_host*, %struct.hpsb_host** %3, align 8
  %24 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %23, i32 0, i32 0
  %25 = call i32 @cancel_delayed_work(i32* %24)
  %26 = load i64, i64* @jiffies, align 8
  %27 = load %struct.hpsb_host*, %struct.hpsb_host** %3, align 8
  %28 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i64*, i64** %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i64, i64* %30, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = load i32, i32* @HZ, align 4
  %36 = mul nsw i32 60, %35
  %37 = sext i32 %36 to i64
  %38 = add i64 %34, %37
  %39 = call i64 @time_before(i64 %26, i64 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %56

41:                                               ; preds = %22
  %42 = load i32, i32* @HZ, align 4
  %43 = mul nsw i32 60, %42
  %44 = sext i32 %43 to i64
  %45 = load %struct.hpsb_host*, %struct.hpsb_host** %3, align 8
  %46 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i64*, i64** %47, align 8
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i64, i64* %48, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = add i64 %44, %52
  %54 = load i64, i64* @jiffies, align 8
  %55 = sub i64 %53, %54
  store i64 %55, i64* %4, align 8
  br label %59

56:                                               ; preds = %22
  %57 = load i32, i32* @HZ, align 4
  %58 = sext i32 %57 to i64
  store i64 %58, i64* %4, align 8
  br label %59

59:                                               ; preds = %56, %41
  %60 = load %struct.hpsb_host*, %struct.hpsb_host** %3, align 8
  %61 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %60, i32 0, i32 0
  %62 = load i32, i32* @delayed_reset_bus, align 4
  %63 = call i32 @PREPARE_DELAYED_WORK(i32* %61, i32 %62)
  %64 = load %struct.hpsb_host*, %struct.hpsb_host** %3, align 8
  %65 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %64, i32 0, i32 0
  %66 = load i64, i64* %4, align 8
  %67 = call i32 @schedule_delayed_work(i32* %65, i64 %66)
  store i32 0, i32* %2, align 4
  br label %68

68:                                               ; preds = %59, %15
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i32 @cancel_delayed_work(i32*) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @PREPARE_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @schedule_delayed_work(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
