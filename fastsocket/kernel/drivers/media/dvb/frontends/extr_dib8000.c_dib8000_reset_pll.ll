; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_dib8000.c_dib8000_reset_pll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_dib8000.c_dib8000_reset_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dib8000_state = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.dibx000_bandwidth_config* }
%struct.dibx000_bandwidth_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i32 }

@.str = private unnamed_addr constant [17 x i8] c"clk_cfg1: 0x%04x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dib8000_state*)* @dib8000_reset_pll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dib8000_reset_pll(%struct.dib8000_state* %0) #0 {
  %2 = alloca %struct.dib8000_state*, align 8
  %3 = alloca %struct.dibx000_bandwidth_config*, align 8
  %4 = alloca i32, align 4
  store %struct.dib8000_state* %0, %struct.dib8000_state** %2, align 8
  %5 = load %struct.dib8000_state*, %struct.dib8000_state** %2, align 8
  %6 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 1
  %8 = load %struct.dibx000_bandwidth_config*, %struct.dibx000_bandwidth_config** %7, align 8
  store %struct.dibx000_bandwidth_config* %8, %struct.dibx000_bandwidth_config** %3, align 8
  %9 = load %struct.dib8000_state*, %struct.dib8000_state** %2, align 8
  %10 = load %struct.dibx000_bandwidth_config*, %struct.dibx000_bandwidth_config** %3, align 8
  %11 = getelementptr inbounds %struct.dibx000_bandwidth_config, %struct.dibx000_bandwidth_config* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = shl i32 %12, 8
  %14 = load %struct.dibx000_bandwidth_config*, %struct.dibx000_bandwidth_config** %3, align 8
  %15 = getelementptr inbounds %struct.dibx000_bandwidth_config, %struct.dibx000_bandwidth_config* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = shl i32 %16, 0
  %18 = or i32 %13, %17
  %19 = call i32 @dib8000_write_word(%struct.dib8000_state* %9, i32 901, i32 %18)
  %20 = load %struct.dibx000_bandwidth_config*, %struct.dibx000_bandwidth_config** %3, align 8
  %21 = getelementptr inbounds %struct.dibx000_bandwidth_config, %struct.dibx000_bandwidth_config* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = shl i32 %22, 8
  %24 = or i32 1024, %23
  %25 = load %struct.dibx000_bandwidth_config*, %struct.dibx000_bandwidth_config** %3, align 8
  %26 = getelementptr inbounds %struct.dibx000_bandwidth_config, %struct.dibx000_bandwidth_config* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = shl i32 %27, 5
  %29 = or i32 %24, %28
  %30 = load %struct.dibx000_bandwidth_config*, %struct.dibx000_bandwidth_config** %3, align 8
  %31 = getelementptr inbounds %struct.dibx000_bandwidth_config, %struct.dibx000_bandwidth_config* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 8
  %33 = shl i32 %32, 4
  %34 = or i32 %29, %33
  %35 = or i32 %34, 8
  %36 = load %struct.dibx000_bandwidth_config*, %struct.dibx000_bandwidth_config** %3, align 8
  %37 = getelementptr inbounds %struct.dibx000_bandwidth_config, %struct.dibx000_bandwidth_config* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 4
  %39 = shl i32 %38, 1
  %40 = or i32 %35, %39
  %41 = load %struct.dibx000_bandwidth_config*, %struct.dibx000_bandwidth_config** %3, align 8
  %42 = getelementptr inbounds %struct.dibx000_bandwidth_config, %struct.dibx000_bandwidth_config* %41, i32 0, i32 6
  %43 = load i32, i32* %42, align 8
  %44 = shl i32 %43, 0
  %45 = or i32 %40, %44
  store i32 %45, i32* %4, align 4
  %46 = load %struct.dib8000_state*, %struct.dib8000_state** %2, align 8
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @dib8000_write_word(%struct.dib8000_state* %46, i32 902, i32 %47)
  %49 = load i32, i32* %4, align 4
  %50 = and i32 %49, 65527
  %51 = load %struct.dibx000_bandwidth_config*, %struct.dibx000_bandwidth_config** %3, align 8
  %52 = getelementptr inbounds %struct.dibx000_bandwidth_config, %struct.dibx000_bandwidth_config* %51, i32 0, i32 7
  %53 = load i32, i32* %52, align 4
  %54 = shl i32 %53, 3
  %55 = or i32 %50, %54
  store i32 %55, i32* %4, align 4
  %56 = load %struct.dib8000_state*, %struct.dib8000_state** %2, align 8
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @dib8000_write_word(%struct.dib8000_state* %56, i32 902, i32 %57)
  %59 = load i32, i32* %4, align 4
  %60 = call i32 @dprintk(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %59)
  %61 = load %struct.dib8000_state*, %struct.dib8000_state** %2, align 8
  %62 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  %64 = load %struct.dibx000_bandwidth_config*, %struct.dibx000_bandwidth_config** %63, align 8
  %65 = getelementptr inbounds %struct.dibx000_bandwidth_config, %struct.dibx000_bandwidth_config* %64, i32 0, i32 8
  %66 = load i64, i64* %65, align 8
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %83

68:                                               ; preds = %1
  %69 = load %struct.dib8000_state*, %struct.dib8000_state** %2, align 8
  %70 = load %struct.dibx000_bandwidth_config*, %struct.dibx000_bandwidth_config** %3, align 8
  %71 = getelementptr inbounds %struct.dibx000_bandwidth_config, %struct.dibx000_bandwidth_config* %70, i32 0, i32 9
  %72 = load i32, i32* %71, align 8
  %73 = shl i32 %72, 8
  %74 = or i32 0, %73
  %75 = sext i32 %74 to i64
  %76 = load %struct.dibx000_bandwidth_config*, %struct.dibx000_bandwidth_config** %3, align 8
  %77 = getelementptr inbounds %struct.dibx000_bandwidth_config, %struct.dibx000_bandwidth_config* %76, i32 0, i32 8
  %78 = load i64, i64* %77, align 8
  %79 = shl i64 %78, 7
  %80 = or i64 %75, %79
  %81 = trunc i64 %80 to i32
  %82 = call i32 @dib8000_write_word(%struct.dib8000_state* %69, i32 904, i32 %81)
  br label %127

83:                                               ; preds = %1
  %84 = load %struct.dib8000_state*, %struct.dib8000_state** %2, align 8
  %85 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %111

89:                                               ; preds = %83
  %90 = load %struct.dib8000_state*, %struct.dib8000_state** %2, align 8
  %91 = load %struct.dib8000_state*, %struct.dib8000_state** %2, align 8
  %92 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = and i32 %94, 3
  %96 = shl i32 %95, 10
  %97 = or i32 4096, %96
  %98 = load %struct.dibx000_bandwidth_config*, %struct.dibx000_bandwidth_config** %3, align 8
  %99 = getelementptr inbounds %struct.dibx000_bandwidth_config, %struct.dibx000_bandwidth_config* %98, i32 0, i32 9
  %100 = load i32, i32* %99, align 8
  %101 = shl i32 %100, 8
  %102 = or i32 %97, %101
  %103 = sext i32 %102 to i64
  %104 = load %struct.dibx000_bandwidth_config*, %struct.dibx000_bandwidth_config** %3, align 8
  %105 = getelementptr inbounds %struct.dibx000_bandwidth_config, %struct.dibx000_bandwidth_config* %104, i32 0, i32 8
  %106 = load i64, i64* %105, align 8
  %107 = shl i64 %106, 7
  %108 = or i64 %103, %107
  %109 = trunc i64 %108 to i32
  %110 = call i32 @dib8000_write_word(%struct.dib8000_state* %90, i32 904, i32 %109)
  br label %126

111:                                              ; preds = %83
  %112 = load %struct.dib8000_state*, %struct.dib8000_state** %2, align 8
  %113 = load %struct.dibx000_bandwidth_config*, %struct.dibx000_bandwidth_config** %3, align 8
  %114 = getelementptr inbounds %struct.dibx000_bandwidth_config, %struct.dibx000_bandwidth_config* %113, i32 0, i32 9
  %115 = load i32, i32* %114, align 8
  %116 = shl i32 %115, 8
  %117 = or i32 7168, %116
  %118 = sext i32 %117 to i64
  %119 = load %struct.dibx000_bandwidth_config*, %struct.dibx000_bandwidth_config** %3, align 8
  %120 = getelementptr inbounds %struct.dibx000_bandwidth_config, %struct.dibx000_bandwidth_config* %119, i32 0, i32 8
  %121 = load i64, i64* %120, align 8
  %122 = shl i64 %121, 7
  %123 = or i64 %118, %122
  %124 = trunc i64 %123 to i32
  %125 = call i32 @dib8000_write_word(%struct.dib8000_state* %112, i32 904, i32 %124)
  br label %126

126:                                              ; preds = %111, %89
  br label %127

127:                                              ; preds = %126, %68
  %128 = load %struct.dib8000_state*, %struct.dib8000_state** %2, align 8
  %129 = load %struct.dibx000_bandwidth_config*, %struct.dibx000_bandwidth_config** %3, align 8
  %130 = call i32 @dib8000_reset_pll_common(%struct.dib8000_state* %128, %struct.dibx000_bandwidth_config* %129)
  ret void
}

declare dso_local i32 @dib8000_write_word(%struct.dib8000_state*, i32, i32) #1

declare dso_local i32 @dprintk(i8*, i32) #1

declare dso_local i32 @dib8000_reset_pll_common(%struct.dib8000_state*, %struct.dibx000_bandwidth_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
