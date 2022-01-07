; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/blackfin/kernel/extr_cplbinfo.c_cplbinfo_show.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/blackfin/kernel/extr_cplbinfo.c_cplbinfo_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.cplbinfo_data = type { i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }

@.str = private unnamed_addr constant [33 x i8] c"%d\090x%08lx\09%05lx\09%s\09%c\09%c\09%c\09%c\0A\00", align 1
@CPLB_USER_RD = common dso_local global i64 0, align 8
@CPLB_USER_WR = common dso_local global i64 0, align 8
@CPLB_SUPV_WR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @cplbinfo_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cplbinfo_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.cplbinfo_data*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.cplbinfo_data*
  store %struct.cplbinfo_data* %10, %struct.cplbinfo_data** %5, align 8
  %11 = load %struct.cplbinfo_data*, %struct.cplbinfo_data** %5, align 8
  %12 = getelementptr inbounds %struct.cplbinfo_data, %struct.cplbinfo_data* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %8, align 8
  %14 = load %struct.cplbinfo_data*, %struct.cplbinfo_data** %5, align 8
  %15 = getelementptr inbounds %struct.cplbinfo_data, %struct.cplbinfo_data* %14, i32 0, i32 2
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = load i64, i64* %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %7, align 8
  %21 = load %struct.cplbinfo_data*, %struct.cplbinfo_data** %5, align 8
  %22 = getelementptr inbounds %struct.cplbinfo_data, %struct.cplbinfo_data* %21, i32 0, i32 2
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = load i64, i64* %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %6, align 8
  %28 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %29 = load i64, i64* %8, align 8
  %30 = trunc i64 %29 to i32
  %31 = load i64, i64* %7, align 8
  %32 = load i64, i64* %6, align 8
  %33 = load i64, i64* %6, align 8
  %34 = call i32 @strpage(i64 %33)
  %35 = load i64, i64* %6, align 8
  %36 = load i64, i64* @CPLB_USER_RD, align 8
  %37 = and i64 %35, %36
  %38 = icmp ne i64 %37, 0
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i32 89, i32 78
  %41 = trunc i32 %40 to i8
  %42 = load i64, i64* %6, align 8
  %43 = load i64, i64* @CPLB_USER_WR, align 8
  %44 = and i64 %42, %43
  %45 = icmp ne i64 %44, 0
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i32 89, i32 78
  %48 = trunc i32 %47 to i8
  %49 = load i64, i64* %6, align 8
  %50 = load i64, i64* @CPLB_SUPV_WR, align 8
  %51 = and i64 %49, %50
  %52 = icmp ne i64 %51, 0
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i32 89, i32 78
  %55 = trunc i32 %54 to i8
  %56 = load i64, i64* %8, align 8
  %57 = load %struct.cplbinfo_data*, %struct.cplbinfo_data** %5, align 8
  %58 = getelementptr inbounds %struct.cplbinfo_data, %struct.cplbinfo_data* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp ult i64 %56, %59
  %61 = zext i1 %60 to i64
  %62 = select i1 %60, i32 78, i32 89
  %63 = trunc i32 %62 to i8
  %64 = call i32 @seq_printf(%struct.seq_file* %28, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %30, i64 %31, i64 %32, i32 %34, i8 signext %41, i8 signext %48, i8 signext %55, i8 signext %63)
  ret i32 0
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, i64, i64, i32, i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local i32 @strpage(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
