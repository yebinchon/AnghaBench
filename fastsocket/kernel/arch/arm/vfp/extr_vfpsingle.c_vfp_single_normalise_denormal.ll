; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/vfp/extr_vfpsingle.c_vfp_single_normalise_denormal.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/vfp/extr_vfpsingle.c_vfp_single_normalise_denormal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfp_single = type { i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"normalise_denormal: in\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"normalise_denormal: out\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vfp_single*)* @vfp_single_normalise_denormal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vfp_single_normalise_denormal(%struct.vfp_single* %0) #0 {
  %2 = alloca %struct.vfp_single*, align 8
  %3 = alloca i32, align 4
  store %struct.vfp_single* %0, %struct.vfp_single** %2, align 8
  %4 = load %struct.vfp_single*, %struct.vfp_single** %2, align 8
  %5 = getelementptr inbounds %struct.vfp_single, %struct.vfp_single* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @fls(i32 %6)
  %8 = sub nsw i32 31, %7
  store i32 %8, i32* %3, align 4
  %9 = load %struct.vfp_single*, %struct.vfp_single** %2, align 8
  %10 = call i32 @vfp_single_dump(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), %struct.vfp_single* %9)
  %11 = load i32, i32* %3, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %25

13:                                               ; preds = %1
  %14 = load i32, i32* %3, align 4
  %15 = sub nsw i32 %14, 1
  %16 = load %struct.vfp_single*, %struct.vfp_single** %2, align 8
  %17 = getelementptr inbounds %struct.vfp_single, %struct.vfp_single* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = sub nsw i32 %18, %15
  store i32 %19, i32* %17, align 4
  %20 = load i32, i32* %3, align 4
  %21 = load %struct.vfp_single*, %struct.vfp_single** %2, align 8
  %22 = getelementptr inbounds %struct.vfp_single, %struct.vfp_single* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = shl i32 %23, %20
  store i32 %24, i32* %22, align 4
  br label %25

25:                                               ; preds = %13, %1
  %26 = load %struct.vfp_single*, %struct.vfp_single** %2, align 8
  %27 = call i32 @vfp_single_dump(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), %struct.vfp_single* %26)
  ret void
}

declare dso_local i32 @fls(i32) #1

declare dso_local i32 @vfp_single_dump(i8*, %struct.vfp_single*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
