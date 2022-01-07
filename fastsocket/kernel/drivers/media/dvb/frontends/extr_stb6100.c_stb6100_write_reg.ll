; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stb6100.c_stb6100_write_reg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stb6100.c_stb6100_write_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 }
%struct.stb6100_state = type { i32 }

@STB6100_NUMREGS = common dso_local global i64 0, align 8
@verbose = common dso_local global i32 0, align 4
@FE_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Invalid register offset 0x%x\00", align 1
@EREMOTEIO = common dso_local global i32 0, align 4
@stb6100_template = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stb6100_state*, i64, i64)* @stb6100_write_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stb6100_write_reg(%struct.stb6100_state* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.stb6100_state*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.stb6100_state* %0, %struct.stb6100_state** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load i64, i64* %6, align 8
  %9 = load i64, i64* @STB6100_NUMREGS, align 8
  %10 = icmp uge i64 %8, %9
  %11 = zext i1 %10 to i32
  %12 = call i64 @unlikely(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %3
  %15 = load i32, i32* @verbose, align 4
  %16 = load i32, i32* @FE_ERROR, align 4
  %17 = load i64, i64* %6, align 8
  %18 = call i32 @dprintk(i32 %15, i32 %16, i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %17)
  %19 = load i32, i32* @EREMOTEIO, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %38

21:                                               ; preds = %3
  %22 = load i64, i64* %7, align 8
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @stb6100_template, align 8
  %24 = load i64, i64* %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = and i64 %22, %27
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** @stb6100_template, align 8
  %30 = load i64, i64* %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = or i64 %28, %33
  store i64 %34, i64* %7, align 8
  %35 = load %struct.stb6100_state*, %struct.stb6100_state** %5, align 8
  %36 = load i64, i64* %6, align 8
  %37 = call i32 @stb6100_write_reg_range(%struct.stb6100_state* %35, i64* %7, i64 %36, i32 1)
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %21, %14
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dprintk(i32, i32, i32, i8*, i64) #1

declare dso_local i32 @stb6100_write_reg_range(%struct.stb6100_state*, i64*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
