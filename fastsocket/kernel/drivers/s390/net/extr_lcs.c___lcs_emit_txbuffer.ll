; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_lcs.c___lcs_emit_txbuffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_lcs.c___lcs_emit_txbuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lcs_card = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64, i64 }

@trace = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"emittx\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lcs_card*)* @__lcs_emit_txbuffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__lcs_emit_txbuffer(%struct.lcs_card* %0) #0 {
  %2 = alloca %struct.lcs_card*, align 8
  store %struct.lcs_card* %0, %struct.lcs_card** %2, align 8
  %3 = load i32, i32* @trace, align 4
  %4 = call i32 @LCS_DBF_TEXT(i32 5, i32 %3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %5 = load %struct.lcs_card*, %struct.lcs_card** %2, align 8
  %6 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %5, i32 0, i32 1
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.lcs_card*, %struct.lcs_card** %2, align 8
  %11 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = add nsw i64 %9, %14
  %16 = inttoptr i64 %15 to i64*
  store i64 0, i64* %16, align 8
  %17 = load %struct.lcs_card*, %struct.lcs_card** %2, align 8
  %18 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %21, 2
  store i64 %22, i64* %20, align 8
  %23 = load %struct.lcs_card*, %struct.lcs_card** %2, align 8
  %24 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %23, i32 0, i32 2
  %25 = load %struct.lcs_card*, %struct.lcs_card** %2, align 8
  %26 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = call i32 @lcs_ready_buffer(i32* %24, %struct.TYPE_2__* %27)
  %29 = load %struct.lcs_card*, %struct.lcs_card** %2, align 8
  %30 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %29, i32 0, i32 1
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %30, align 8
  %31 = load %struct.lcs_card*, %struct.lcs_card** %2, align 8
  %32 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %32, align 8
  ret void
}

declare dso_local i32 @LCS_DBF_TEXT(i32, i32, i8*) #1

declare dso_local i32 @lcs_ready_buffer(i32*, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
