; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_vt.c_ri.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_vt.c_ri.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc_data = type { i64, i64, i64, i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vc_data*)* @ri to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ri(%struct.vc_data* %0) #0 {
  %2 = alloca %struct.vc_data*, align 8
  store %struct.vc_data* %0, %struct.vc_data** %2, align 8
  %3 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %4 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %7 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp eq i64 %5, %8
  br i1 %9, label %10, label %19

10:                                               ; preds = %1
  %11 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %12 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %13 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %16 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @scrdown(%struct.vc_data* %11, i64 %14, i32 %17, i32 1)
  br label %39

19:                                               ; preds = %1
  %20 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %21 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp sgt i64 %22, 0
  br i1 %23, label %24, label %38

24:                                               ; preds = %19
  %25 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %26 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %27, -1
  store i64 %28, i64* %26, align 8
  %29 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %30 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %33 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 8
  %35 = sext i32 %34 to i64
  %36 = sub nsw i64 %35, %31
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %33, align 8
  br label %38

38:                                               ; preds = %24, %19
  br label %39

39:                                               ; preds = %38, %10
  %40 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %41 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %40, i32 0, i32 2
  store i64 0, i64* %41, align 8
  ret void
}

declare dso_local i32 @scrdown(%struct.vc_data*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
