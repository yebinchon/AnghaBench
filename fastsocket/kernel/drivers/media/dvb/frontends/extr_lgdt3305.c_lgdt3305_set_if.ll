; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_lgdt3305.c_lgdt3305_set_if.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_lgdt3305.c_lgdt3305_set_if.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lgdt3305_state = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.dvb_frontend_parameters = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@LGDT3305_CR_CTR_FREQ_1 = common dso_local global i32 0, align 4
@LGDT3305_CR_CTR_FREQ_2 = common dso_local global i32 0, align 4
@LGDT3305_CR_CTR_FREQ_3 = common dso_local global i32 0, align 4
@LGDT3305_CR_CTR_FREQ_4 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"%d KHz -> [%02x%02x%02x%02x]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lgdt3305_state*, %struct.dvb_frontend_parameters*)* @lgdt3305_set_if to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lgdt3305_set_if(%struct.lgdt3305_state* %0, %struct.dvb_frontend_parameters* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lgdt3305_state*, align 8
  %5 = alloca %struct.dvb_frontend_parameters*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.lgdt3305_state* %0, %struct.lgdt3305_state** %4, align 8
  store %struct.dvb_frontend_parameters* %1, %struct.dvb_frontend_parameters** %5, align 8
  %12 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %13 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %29 [
    i32 128, label %17
    i32 129, label %23
    i32 130, label %23
  ]

17:                                               ; preds = %2
  %18 = load %struct.lgdt3305_state*, %struct.lgdt3305_state** %4, align 8
  %19 = getelementptr inbounds %struct.lgdt3305_state, %struct.lgdt3305_state* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %6, align 4
  br label %32

23:                                               ; preds = %2, %2
  %24 = load %struct.lgdt3305_state*, %struct.lgdt3305_state** %4, align 8
  %25 = getelementptr inbounds %struct.lgdt3305_state, %struct.lgdt3305_state* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %6, align 4
  br label %32

29:                                               ; preds = %2
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %89

32:                                               ; preds = %23, %17
  %33 = load i32, i32* %6, align 4
  %34 = sdiv i32 %33, 10
  store i32 %34, i32* %11, align 4
  %35 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %36 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  switch i32 %39, label %50 [
    i32 128, label %40
    i32 129, label %45
    i32 130, label %45
  ]

40:                                               ; preds = %32
  %41 = load i32, i32* %11, align 4
  %42 = shl i32 %41, 24
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %11, align 4
  %44 = call i32 @do_div(i32 %43, i32 625)
  br label %53

45:                                               ; preds = %32, %32
  %46 = load i32, i32* %11, align 4
  %47 = shl i32 %46, 28
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %11, align 4
  %49 = call i32 @do_div(i32 %48, i32 625)
  br label %53

50:                                               ; preds = %32
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %89

53:                                               ; preds = %45, %40
  %54 = load i32, i32* %11, align 4
  %55 = ashr i32 %54, 24
  %56 = and i32 %55, 63
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = or i32 %57, 64
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* %11, align 4
  %60 = ashr i32 %59, 16
  %61 = and i32 %60, 255
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %11, align 4
  %63 = ashr i32 %62, 8
  %64 = and i32 %63, 255
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* %11, align 4
  %66 = and i32 %65, 255
  store i32 %66, i32* %10, align 4
  %67 = load %struct.lgdt3305_state*, %struct.lgdt3305_state** %4, align 8
  %68 = load i32, i32* @LGDT3305_CR_CTR_FREQ_1, align 4
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @lgdt3305_write_reg(%struct.lgdt3305_state* %67, i32 %68, i32 %69)
  %71 = load %struct.lgdt3305_state*, %struct.lgdt3305_state** %4, align 8
  %72 = load i32, i32* @LGDT3305_CR_CTR_FREQ_2, align 4
  %73 = load i32, i32* %8, align 4
  %74 = call i32 @lgdt3305_write_reg(%struct.lgdt3305_state* %71, i32 %72, i32 %73)
  %75 = load %struct.lgdt3305_state*, %struct.lgdt3305_state** %4, align 8
  %76 = load i32, i32* @LGDT3305_CR_CTR_FREQ_3, align 4
  %77 = load i32, i32* %9, align 4
  %78 = call i32 @lgdt3305_write_reg(%struct.lgdt3305_state* %75, i32 %76, i32 %77)
  %79 = load %struct.lgdt3305_state*, %struct.lgdt3305_state** %4, align 8
  %80 = load i32, i32* @LGDT3305_CR_CTR_FREQ_4, align 4
  %81 = load i32, i32* %10, align 4
  %82 = call i32 @lgdt3305_write_reg(%struct.lgdt3305_state* %79, i32 %80, i32 %81)
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* %8, align 4
  %86 = load i32, i32* %9, align 4
  %87 = load i32, i32* %10, align 4
  %88 = call i32 @lg_dbg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %83, i32 %84, i32 %85, i32 %86, i32 %87)
  store i32 0, i32* %3, align 4
  br label %89

89:                                               ; preds = %53, %50, %29
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local i32 @do_div(i32, i32) #1

declare dso_local i32 @lgdt3305_write_reg(%struct.lgdt3305_state*, i32, i32) #1

declare dso_local i32 @lg_dbg(i8*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
