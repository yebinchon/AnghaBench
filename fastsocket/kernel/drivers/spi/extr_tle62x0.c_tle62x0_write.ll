; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_tle62x0.c_tle62x0_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_tle62x0.c_tle62x0_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tle62x0_state = type { i8*, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@CMD_SET = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [21 x i8] c"buff %02x,%02x,%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tle62x0_state*)* @tle62x0_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tle62x0_write(%struct.tle62x0_state* %0) #0 {
  %2 = alloca %struct.tle62x0_state*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store %struct.tle62x0_state* %0, %struct.tle62x0_state** %2, align 8
  %5 = load %struct.tle62x0_state*, %struct.tle62x0_state** %2, align 8
  %6 = getelementptr inbounds %struct.tle62x0_state, %struct.tle62x0_state* %5, i32 0, i32 0
  %7 = load i8*, i8** %6, align 8
  store i8* %7, i8** %3, align 8
  %8 = load %struct.tle62x0_state*, %struct.tle62x0_state** %2, align 8
  %9 = getelementptr inbounds %struct.tle62x0_state, %struct.tle62x0_state* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %4, align 4
  %11 = load i8, i8* @CMD_SET, align 1
  %12 = load i8*, i8** %3, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 0
  store i8 %11, i8* %13, align 1
  %14 = load %struct.tle62x0_state*, %struct.tle62x0_state** %2, align 8
  %15 = getelementptr inbounds %struct.tle62x0_state, %struct.tle62x0_state* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = icmp eq i32 %16, 16
  br i1 %17, label %18, label %28

18:                                               ; preds = %1
  %19 = load i32, i32* %4, align 4
  %20 = lshr i32 %19, 8
  %21 = trunc i32 %20 to i8
  %22 = load i8*, i8** %3, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 1
  store i8 %21, i8* %23, align 1
  %24 = load i32, i32* %4, align 4
  %25 = trunc i32 %24 to i8
  %26 = load i8*, i8** %3, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 2
  store i8 %25, i8* %27, align 1
  br label %33

28:                                               ; preds = %1
  %29 = load i32, i32* %4, align 4
  %30 = trunc i32 %29 to i8
  %31 = load i8*, i8** %3, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 1
  store i8 %30, i8* %32, align 1
  br label %33

33:                                               ; preds = %28, %18
  %34 = load %struct.tle62x0_state*, %struct.tle62x0_state** %2, align 8
  %35 = getelementptr inbounds %struct.tle62x0_state, %struct.tle62x0_state* %34, i32 0, i32 3
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i8*, i8** %3, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 0
  %40 = load i8, i8* %39, align 1
  %41 = load i8*, i8** %3, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 1
  %43 = load i8, i8* %42, align 1
  %44 = load i8*, i8** %3, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 2
  %46 = load i8, i8* %45, align 1
  %47 = call i32 @dev_dbg(i32* %37, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8 zeroext %40, i8 zeroext %43, i8 zeroext %46)
  %48 = load %struct.tle62x0_state*, %struct.tle62x0_state** %2, align 8
  %49 = getelementptr inbounds %struct.tle62x0_state, %struct.tle62x0_state* %48, i32 0, i32 3
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = load i8*, i8** %3, align 8
  %52 = load %struct.tle62x0_state*, %struct.tle62x0_state** %2, align 8
  %53 = getelementptr inbounds %struct.tle62x0_state, %struct.tle62x0_state* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = icmp eq i32 %54, 16
  %56 = zext i1 %55 to i64
  %57 = select i1 %55, i32 3, i32 2
  %58 = call i32 @spi_write(%struct.TYPE_2__* %50, i8* %51, i32 %57)
  ret i32 %58
}

declare dso_local i32 @dev_dbg(i32*, i8*, i8 zeroext, i8 zeroext, i8 zeroext) #1

declare dso_local i32 @spi_write(%struct.TYPE_2__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
