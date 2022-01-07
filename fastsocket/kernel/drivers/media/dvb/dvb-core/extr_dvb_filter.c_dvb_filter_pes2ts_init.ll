; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-core/extr_dvb_filter.c_dvb_filter_pes2ts_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-core/extr_dvb_filter.c_dvb_filter_pes2ts_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_filter_pes2ts = type { i8*, i8*, i32*, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dvb_filter_pes2ts_init(%struct.dvb_filter_pes2ts* %0, i16 zeroext %1, i32* %2, i8* %3) #0 {
  %5 = alloca %struct.dvb_filter_pes2ts*, align 8
  %6 = alloca i16, align 2
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct.dvb_filter_pes2ts* %0, %struct.dvb_filter_pes2ts** %5, align 8
  store i16 %1, i16* %6, align 2
  store i32* %2, i32** %7, align 8
  store i8* %3, i8** %8, align 8
  %10 = load %struct.dvb_filter_pes2ts*, %struct.dvb_filter_pes2ts** %5, align 8
  %11 = getelementptr inbounds %struct.dvb_filter_pes2ts, %struct.dvb_filter_pes2ts* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  store i8* %12, i8** %9, align 8
  %13 = load i8*, i8** %9, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 0
  store i8 71, i8* %14, align 1
  %15 = load i16, i16* %6, align 2
  %16 = zext i16 %15 to i32
  %17 = ashr i32 %16, 8
  %18 = trunc i32 %17 to i8
  %19 = load i8*, i8** %9, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 1
  store i8 %18, i8* %20, align 1
  %21 = load i16, i16* %6, align 2
  %22 = zext i16 %21 to i32
  %23 = and i32 %22, 255
  %24 = trunc i32 %23 to i8
  %25 = load i8*, i8** %9, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 2
  store i8 %24, i8* %26, align 1
  %27 = load %struct.dvb_filter_pes2ts*, %struct.dvb_filter_pes2ts** %5, align 8
  %28 = getelementptr inbounds %struct.dvb_filter_pes2ts, %struct.dvb_filter_pes2ts* %27, i32 0, i32 3
  store i64 0, i64* %28, align 8
  %29 = load i32*, i32** %7, align 8
  %30 = load %struct.dvb_filter_pes2ts*, %struct.dvb_filter_pes2ts** %5, align 8
  %31 = getelementptr inbounds %struct.dvb_filter_pes2ts, %struct.dvb_filter_pes2ts* %30, i32 0, i32 2
  store i32* %29, i32** %31, align 8
  %32 = load i8*, i8** %8, align 8
  %33 = load %struct.dvb_filter_pes2ts*, %struct.dvb_filter_pes2ts** %5, align 8
  %34 = getelementptr inbounds %struct.dvb_filter_pes2ts, %struct.dvb_filter_pes2ts* %33, i32 0, i32 1
  store i8* %32, i8** %34, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
