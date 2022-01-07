; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/core/extr_core.c_mmc_select_voltage.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/core/extr_core.c_mmc_select_voltage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"%s: host doesn't support card's voltages\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mmc_select_voltage(%struct.mmc_host* %0, i32 %1) #0 {
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mmc_host* %0, %struct.mmc_host** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %7 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* %4, align 4
  %10 = and i32 %9, %8
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @ffs(i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %28

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  %17 = sub nsw i32 %16, 1
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = shl i32 3, %18
  %20 = load i32, i32* %4, align 4
  %21 = and i32 %20, %19
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %24 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i32 %22, i32* %25, align 4
  %26 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %27 = call i32 @mmc_set_ios(%struct.mmc_host* %26)
  br label %32

28:                                               ; preds = %2
  %29 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %30 = call i32 @mmc_hostname(%struct.mmc_host* %29)
  %31 = call i32 @pr_warning(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %30)
  store i32 0, i32* %4, align 4
  br label %32

32:                                               ; preds = %28, %15
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

declare dso_local i32 @ffs(i32) #1

declare dso_local i32 @mmc_set_ios(%struct.mmc_host*) #1

declare dso_local i32 @pr_warning(i8*, i32) #1

declare dso_local i32 @mmc_hostname(%struct.mmc_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
