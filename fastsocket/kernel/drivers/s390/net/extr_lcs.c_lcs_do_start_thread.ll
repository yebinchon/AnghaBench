; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_lcs.c_lcs_do_start_thread.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_lcs.c_lcs_do_start_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lcs_card = type { i64, i32, i64, i64 }

@trace = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"  %02x%02x%02x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lcs_card*, i64)* @lcs_do_start_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lcs_do_start_thread(%struct.lcs_card* %0, i64 %1) #0 {
  %3 = alloca %struct.lcs_card*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.lcs_card* %0, %struct.lcs_card** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.lcs_card*, %struct.lcs_card** %3, align 8
  %8 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %7, i32 0, i32 1
  %9 = load i64, i64* %5, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  %11 = load i32, i32* @trace, align 4
  %12 = load %struct.lcs_card*, %struct.lcs_card** %3, align 8
  %13 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = trunc i64 %14 to i32
  %16 = load %struct.lcs_card*, %struct.lcs_card** %3, align 8
  %17 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  %19 = trunc i64 %18 to i32
  %20 = load %struct.lcs_card*, %struct.lcs_card** %3, align 8
  %21 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = trunc i64 %22 to i32
  %24 = call i32 @LCS_DBF_TEXT_(i32 4, i32 %11, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %19, i32 %23)
  %25 = load %struct.lcs_card*, %struct.lcs_card** %3, align 8
  %26 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %4, align 8
  %29 = and i64 %27, %28
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %6, align 4
  %31 = load %struct.lcs_card*, %struct.lcs_card** %3, align 8
  %32 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %31, i32 0, i32 1
  %33 = load i64, i64* %5, align 8
  %34 = call i32 @spin_unlock_irqrestore(i32* %32, i64 %33)
  %35 = load i32, i32* %6, align 4
  ret i32 %35
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @LCS_DBF_TEXT_(i32, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
