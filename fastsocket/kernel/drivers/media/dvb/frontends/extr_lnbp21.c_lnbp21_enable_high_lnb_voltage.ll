; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_lnbp21.c_lnbp21_enable_high_lnb_voltage.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_lnbp21.c_lnbp21_enable_high_lnb_voltage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { i64 }
%struct.lnbp21 = type { i32, i32, i32, i32, i32 }
%struct.i2c_msg = type { i32, i32*, i32, i32 }

@LNBP21_LLC = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i64)* @lnbp21_enable_high_lnb_voltage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lnbp21_enable_high_lnb_voltage(%struct.dvb_frontend* %0, i64 %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.lnbp21*, align 8
  %6 = alloca %struct.i2c_msg, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %8 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.lnbp21*
  store %struct.lnbp21* %10, %struct.lnbp21** %5, align 8
  %11 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %6, i32 0, i32 0
  store i32 4, i32* %11, align 8
  %12 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %6, i32 0, i32 1
  %13 = load %struct.lnbp21*, %struct.lnbp21** %5, align 8
  %14 = getelementptr inbounds %struct.lnbp21, %struct.lnbp21* %13, i32 0, i32 2
  store i32* %14, i32** %12, align 8
  %15 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %6, i32 0, i32 2
  store i32 0, i32* %15, align 8
  %16 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %6, i32 0, i32 3
  %17 = load %struct.lnbp21*, %struct.lnbp21** %5, align 8
  %18 = getelementptr inbounds %struct.lnbp21, %struct.lnbp21* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %16, align 4
  %20 = load i64, i64* %4, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %2
  %23 = load i32, i32* @LNBP21_LLC, align 4
  %24 = load %struct.lnbp21*, %struct.lnbp21** %5, align 8
  %25 = getelementptr inbounds %struct.lnbp21, %struct.lnbp21* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 4
  br label %35

28:                                               ; preds = %2
  %29 = load i32, i32* @LNBP21_LLC, align 4
  %30 = xor i32 %29, -1
  %31 = load %struct.lnbp21*, %struct.lnbp21** %5, align 8
  %32 = getelementptr inbounds %struct.lnbp21, %struct.lnbp21* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %33, %30
  store i32 %34, i32* %32, align 4
  br label %35

35:                                               ; preds = %28, %22
  %36 = load %struct.lnbp21*, %struct.lnbp21** %5, align 8
  %37 = getelementptr inbounds %struct.lnbp21, %struct.lnbp21* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.lnbp21*, %struct.lnbp21** %5, align 8
  %40 = getelementptr inbounds %struct.lnbp21, %struct.lnbp21* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, %38
  store i32 %42, i32* %40, align 4
  %43 = load %struct.lnbp21*, %struct.lnbp21** %5, align 8
  %44 = getelementptr inbounds %struct.lnbp21, %struct.lnbp21* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.lnbp21*, %struct.lnbp21** %5, align 8
  %47 = getelementptr inbounds %struct.lnbp21, %struct.lnbp21* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = and i32 %48, %45
  store i32 %49, i32* %47, align 4
  %50 = load %struct.lnbp21*, %struct.lnbp21** %5, align 8
  %51 = getelementptr inbounds %struct.lnbp21, %struct.lnbp21* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @i2c_transfer(i32 %52, %struct.i2c_msg* %6, i32 1)
  %54 = icmp eq i32 %53, 1
  br i1 %54, label %55, label %56

55:                                               ; preds = %35
  br label %59

56:                                               ; preds = %35
  %57 = load i32, i32* @EIO, align 4
  %58 = sub nsw i32 0, %57
  br label %59

59:                                               ; preds = %56, %55
  %60 = phi i32 [ 0, %55 ], [ %58, %56 ]
  ret i32 %60
}

declare dso_local i32 @i2c_transfer(i32, %struct.i2c_msg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
