; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/parisc/kernel/extr_drivers.c_match_and_count.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/parisc/kernel/extr_drivers.c_match_and_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.match_count = type { i32, i32 }
%struct.parisc_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i8*)* @match_and_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @match_and_count(%struct.device* %0, i8* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.match_count*, align 8
  %6 = alloca %struct.parisc_device*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.match_count*
  store %struct.match_count* %8, %struct.match_count** %5, align 8
  %9 = load %struct.device*, %struct.device** %3, align 8
  %10 = call %struct.parisc_device* @to_parisc_device(%struct.device* %9)
  store %struct.parisc_device* %10, %struct.parisc_device** %6, align 8
  %11 = load %struct.device*, %struct.device** %3, align 8
  %12 = call i64 @check_dev(%struct.device* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %27

14:                                               ; preds = %2
  %15 = load %struct.match_count*, %struct.match_count** %5, align 8
  %16 = getelementptr inbounds %struct.match_count, %struct.match_count* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.parisc_device*, %struct.parisc_device** %6, align 8
  %19 = call i64 @match_device(i32 %17, %struct.parisc_device* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %14
  %22 = load %struct.match_count*, %struct.match_count** %5, align 8
  %23 = getelementptr inbounds %struct.match_count, %struct.match_count* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %23, align 4
  br label %26

26:                                               ; preds = %21, %14
  br label %27

27:                                               ; preds = %26, %2
  ret i32 0
}

declare dso_local %struct.parisc_device* @to_parisc_device(%struct.device*) #1

declare dso_local i64 @check_dev(%struct.device*) #1

declare dso_local i64 @match_device(i32, %struct.parisc_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
