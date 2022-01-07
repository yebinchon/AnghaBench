; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_lgs8gxx.c_lgs8gxx_set_ad_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_lgs8gxx.c_lgs8gxx_set_ad_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lgs8gxx_state = type { %struct.lgs8gxx_config* }
%struct.lgs8gxx_config = type { i64, i64, i64, i64, i64, i64 }

@LGS8GXX_PROD_LGS8G52 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lgs8gxx_state*)* @lgs8gxx_set_ad_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lgs8gxx_set_ad_mode(%struct.lgs8gxx_state* %0) #0 {
  %2 = alloca %struct.lgs8gxx_state*, align 8
  %3 = alloca %struct.lgs8gxx_config*, align 8
  %4 = alloca i32, align 4
  store %struct.lgs8gxx_state* %0, %struct.lgs8gxx_state** %2, align 8
  %5 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %2, align 8
  %6 = getelementptr inbounds %struct.lgs8gxx_state, %struct.lgs8gxx_state* %5, i32 0, i32 0
  %7 = load %struct.lgs8gxx_config*, %struct.lgs8gxx_config** %6, align 8
  store %struct.lgs8gxx_config* %7, %struct.lgs8gxx_config** %3, align 8
  store i32 16, i32* %4, align 4
  %8 = load %struct.lgs8gxx_config*, %struct.lgs8gxx_config** %3, align 8
  %9 = getelementptr inbounds %struct.lgs8gxx_config, %struct.lgs8gxx_config* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  %12 = zext i1 %11 to i64
  %13 = select i1 %11, i32 128, i32 0
  %14 = load %struct.lgs8gxx_config*, %struct.lgs8gxx_config** %3, align 8
  %15 = getelementptr inbounds %struct.lgs8gxx_config, %struct.lgs8gxx_config* %14, i32 0, i32 5
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i32 4, i32 0
  %20 = or i32 %13, %19
  %21 = load %struct.lgs8gxx_config*, %struct.lgs8gxx_config** %3, align 8
  %22 = getelementptr inbounds %struct.lgs8gxx_config, %struct.lgs8gxx_config* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %23, 0
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i32 8, i32 0
  %27 = or i32 %20, %26
  %28 = load %struct.lgs8gxx_config*, %struct.lgs8gxx_config** %3, align 8
  %29 = getelementptr inbounds %struct.lgs8gxx_config, %struct.lgs8gxx_config* %28, i32 0, i32 4
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i32 2, i32 0
  %34 = or i32 %27, %33
  %35 = load %struct.lgs8gxx_config*, %struct.lgs8gxx_config** %3, align 8
  %36 = getelementptr inbounds %struct.lgs8gxx_config, %struct.lgs8gxx_config* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i32 1, i32 0
  %41 = or i32 %34, %40
  %42 = load i32, i32* %4, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %4, align 4
  %44 = load %struct.lgs8gxx_config*, %struct.lgs8gxx_config** %3, align 8
  %45 = getelementptr inbounds %struct.lgs8gxx_config, %struct.lgs8gxx_config* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %1
  %49 = load %struct.lgs8gxx_config*, %struct.lgs8gxx_config** %3, align 8
  %50 = getelementptr inbounds %struct.lgs8gxx_config, %struct.lgs8gxx_config* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @LGS8GXX_PROD_LGS8G52, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %48
  %55 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %2, align 8
  %56 = call i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state* %55, i32 186, i32 64)
  br label %57

57:                                               ; preds = %54, %48, %1
  %58 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %2, align 8
  %59 = load i32, i32* %4, align 4
  %60 = call i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state* %58, i32 7, i32 %59)
  ret i32 0
}

declare dso_local i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
