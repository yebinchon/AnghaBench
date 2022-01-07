; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_dib0070.c_dib0070_set_bandwidth.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_dib0070.c_dib0070_set_bandwidth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.dib0070_state* }
%struct.dib0070_state = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64 }
%struct.dvb_frontend_parameters = type { i32 }

@SYS_ISDBT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.dvb_frontend_parameters*)* @dib0070_set_bandwidth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib0070_set_bandwidth(%struct.dvb_frontend* %0, %struct.dvb_frontend_parameters* %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.dvb_frontend_parameters*, align 8
  %5 = alloca %struct.dib0070_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store %struct.dvb_frontend_parameters* %1, %struct.dvb_frontend_parameters** %4, align 8
  %8 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %9 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %8, i32 0, i32 0
  %10 = load %struct.dib0070_state*, %struct.dib0070_state** %9, align 8
  store %struct.dib0070_state* %10, %struct.dib0070_state** %5, align 8
  %11 = load %struct.dib0070_state*, %struct.dib0070_state** %5, align 8
  %12 = call i32 @dib0070_read_reg(%struct.dib0070_state* %11, i32 2)
  %13 = and i32 %12, 16383
  store i32 %13, i32* %6, align 4
  %14 = load %struct.dib0070_state*, %struct.dib0070_state** %5, align 8
  %15 = getelementptr inbounds %struct.dib0070_state, %struct.dib0070_state* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sdiv i32 %19, 1000
  %21 = icmp sgt i32 %20, 7000
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %6, align 4
  br label %53

24:                                               ; preds = %2
  %25 = load %struct.dib0070_state*, %struct.dib0070_state** %5, align 8
  %26 = getelementptr inbounds %struct.dib0070_state, %struct.dib0070_state* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = sdiv i32 %30, 1000
  %32 = icmp sgt i32 %31, 6000
  br i1 %32, label %33, label %36

33:                                               ; preds = %24
  %34 = load i32, i32* %6, align 4
  %35 = or i32 %34, 16384
  store i32 %35, i32* %6, align 4
  br label %52

36:                                               ; preds = %24
  %37 = load %struct.dib0070_state*, %struct.dib0070_state** %5, align 8
  %38 = getelementptr inbounds %struct.dib0070_state, %struct.dib0070_state* %37, i32 0, i32 0
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = sdiv i32 %42, 1000
  %44 = icmp sgt i32 %43, 5000
  br i1 %44, label %45, label %48

45:                                               ; preds = %36
  %46 = load i32, i32* %6, align 4
  %47 = or i32 %46, 32768
  store i32 %47, i32* %6, align 4
  br label %51

48:                                               ; preds = %36
  %49 = load i32, i32* %6, align 4
  %50 = or i32 %49, 49152
  store i32 %50, i32* %6, align 4
  br label %51

51:                                               ; preds = %48, %45
  br label %52

52:                                               ; preds = %51, %33
  br label %53

53:                                               ; preds = %52, %22
  %54 = load %struct.dib0070_state*, %struct.dib0070_state** %5, align 8
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @dib0070_write_reg(%struct.dib0070_state* %54, i32 2, i32 %55)
  %57 = load %struct.dib0070_state*, %struct.dib0070_state** %5, align 8
  %58 = getelementptr inbounds %struct.dib0070_state, %struct.dib0070_state* %57, i32 0, i32 0
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @SYS_ISDBT, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %82

65:                                               ; preds = %53
  %66 = load %struct.dib0070_state*, %struct.dib0070_state** %5, align 8
  %67 = call i32 @dib0070_read_reg(%struct.dib0070_state* %66, i32 23)
  store i32 %67, i32* %7, align 4
  %68 = load %struct.dib0070_state*, %struct.dib0070_state** %5, align 8
  %69 = load i32, i32* %7, align 4
  %70 = and i32 %69, 65532
  %71 = call i32 @dib0070_write_reg(%struct.dib0070_state* %68, i32 23, i32 %70)
  %72 = load %struct.dib0070_state*, %struct.dib0070_state** %5, align 8
  %73 = call i32 @dib0070_read_reg(%struct.dib0070_state* %72, i32 1)
  %74 = and i32 %73, 511
  store i32 %74, i32* %6, align 4
  %75 = load %struct.dib0070_state*, %struct.dib0070_state** %5, align 8
  %76 = load i32, i32* %6, align 4
  %77 = or i32 %76, 30720
  %78 = call i32 @dib0070_write_reg(%struct.dib0070_state* %75, i32 1, i32 %77)
  %79 = load %struct.dib0070_state*, %struct.dib0070_state** %5, align 8
  %80 = load i32, i32* %7, align 4
  %81 = call i32 @dib0070_write_reg(%struct.dib0070_state* %79, i32 23, i32 %80)
  br label %82

82:                                               ; preds = %65, %53
  ret i32 0
}

declare dso_local i32 @dib0070_read_reg(%struct.dib0070_state*, i32) #1

declare dso_local i32 @dib0070_write_reg(%struct.dib0070_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
