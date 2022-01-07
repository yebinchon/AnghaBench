; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/mcheck/extr_mce.c_mce_find_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/mcheck/extr_mce.c_mce_find_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mce_info = type { i64, i32 }

@mce_info = common dso_local global %struct.mce_info* null, align 8
@MCE_INFO_MAX = common dso_local global i64 0, align 8
@current = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mce_info* ()* @mce_find_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mce_info* @mce_find_info() #0 {
  %1 = alloca %struct.mce_info*, align 8
  %2 = alloca %struct.mce_info*, align 8
  %3 = load %struct.mce_info*, %struct.mce_info** @mce_info, align 8
  store %struct.mce_info* %3, %struct.mce_info** %2, align 8
  br label %4

4:                                                ; preds = %24, %0
  %5 = load %struct.mce_info*, %struct.mce_info** %2, align 8
  %6 = load %struct.mce_info*, %struct.mce_info** @mce_info, align 8
  %7 = load i64, i64* @MCE_INFO_MAX, align 8
  %8 = getelementptr inbounds %struct.mce_info, %struct.mce_info* %6, i64 %7
  %9 = icmp ult %struct.mce_info* %5, %8
  br i1 %9, label %10, label %27

10:                                               ; preds = %4
  %11 = load %struct.mce_info*, %struct.mce_info** %2, align 8
  %12 = getelementptr inbounds %struct.mce_info, %struct.mce_info* %11, i32 0, i32 1
  %13 = call i64 @atomic_read(i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %10
  %16 = load %struct.mce_info*, %struct.mce_info** %2, align 8
  %17 = getelementptr inbounds %struct.mce_info, %struct.mce_info* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @current, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = load %struct.mce_info*, %struct.mce_info** %2, align 8
  store %struct.mce_info* %22, %struct.mce_info** %1, align 8
  br label %28

23:                                               ; preds = %15, %10
  br label %24

24:                                               ; preds = %23
  %25 = load %struct.mce_info*, %struct.mce_info** %2, align 8
  %26 = getelementptr inbounds %struct.mce_info, %struct.mce_info* %25, i32 1
  store %struct.mce_info* %26, %struct.mce_info** %2, align 8
  br label %4

27:                                               ; preds = %4
  store %struct.mce_info* null, %struct.mce_info** %1, align 8
  br label %28

28:                                               ; preds = %27, %21
  %29 = load %struct.mce_info*, %struct.mce_info** %1, align 8
  ret %struct.mce_info* %29
}

declare dso_local i64 @atomic_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
