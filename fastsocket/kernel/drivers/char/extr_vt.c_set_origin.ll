; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_vt.c_set_origin.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_vt.c_set_origin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc_data = type { i64, i64, i32, i32, i32, i32, i64, i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.vc_data*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vc_data*)* @set_origin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_origin(%struct.vc_data* %0) #0 {
  %2 = alloca %struct.vc_data*, align 8
  store %struct.vc_data* %0, %struct.vc_data** %2, align 8
  %3 = call i32 (...) @WARN_CONSOLE_UNLOCKED()
  %4 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %5 = call i32 @CON_IS_VISIBLE(%struct.vc_data* %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %23

7:                                                ; preds = %1
  %8 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %9 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %8, i32 0, i32 9
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32 (%struct.vc_data*)*, i32 (%struct.vc_data*)** %11, align 8
  %13 = icmp ne i32 (%struct.vc_data*)* %12, null
  br i1 %13, label %14, label %23

14:                                               ; preds = %7
  %15 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %16 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %15, i32 0, i32 9
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32 (%struct.vc_data*)*, i32 (%struct.vc_data*)** %18, align 8
  %20 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %21 = call i32 %19(%struct.vc_data* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %14, %7, %1
  %24 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %25 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %24, i32 0, i32 8
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %28 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  br label %29

29:                                               ; preds = %23, %14
  %30 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %31 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %34 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %33, i32 0, i32 1
  store i64 %32, i64* %34, align 8
  %35 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %36 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %39 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %38, i32 0, i32 6
  %40 = load i64, i64* %39, align 8
  %41 = add i64 %37, %40
  %42 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %43 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %42, i32 0, i32 7
  store i64 %41, i64* %43, align 8
  %44 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %45 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %48 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %51 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 8
  %53 = mul nsw i32 %49, %52
  %54 = sext i32 %53 to i64
  %55 = add i64 %46, %54
  %56 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %57 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 4
  %59 = mul nsw i32 2, %58
  %60 = sext i32 %59 to i64
  %61 = add i64 %55, %60
  %62 = trunc i64 %61 to i32
  %63 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %64 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 8
  ret void
}

declare dso_local i32 @WARN_CONSOLE_UNLOCKED(...) #1

declare dso_local i32 @CON_IS_VISIBLE(%struct.vc_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
