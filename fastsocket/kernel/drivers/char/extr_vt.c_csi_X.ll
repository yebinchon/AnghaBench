; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_vt.c_csi_X.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_vt.c_csi_X.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc_data = type { i32, i32, i64, i32, %struct.TYPE_2__*, i32, i64 }
%struct.TYPE_2__ = type { i32 (%struct.vc_data*, i32, i32, i32, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vc_data*, i32)* @csi_X to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @csi_X(%struct.vc_data* %0, i32 %1) #0 {
  %3 = alloca %struct.vc_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.vc_data* %0, %struct.vc_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = load i32, i32* %4, align 4
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* %4, align 4
  br label %11

11:                                               ; preds = %8, %2
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %14 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %17 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = sub nsw i32 %15, %18
  %20 = icmp sgt i32 %12, %19
  br i1 %20, label %21, label %29

21:                                               ; preds = %11
  %22 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %23 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %26 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = sub nsw i32 %24, %27
  br label %31

29:                                               ; preds = %11
  %30 = load i32, i32* %4, align 4
  br label %31

31:                                               ; preds = %29, %21
  %32 = phi i32 [ %28, %21 ], [ %30, %29 ]
  store i32 %32, i32* %5, align 4
  %33 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %34 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %33, i32 0, i32 6
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to i16*
  %37 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %38 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = mul nsw i32 2, %40
  %42 = call i32 @scr_memsetw(i16* %36, i32 %39, i32 %41)
  %43 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %44 = call i64 @DO_UPDATE(%struct.vc_data* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %61

46:                                               ; preds = %31
  %47 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %48 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %47, i32 0, i32 4
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32 (%struct.vc_data*, i32, i32, i32, i32)*, i32 (%struct.vc_data*, i32, i32, i32, i32)** %50, align 8
  %52 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %53 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %54 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %57 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %5, align 4
  %60 = call i32 %51(%struct.vc_data* %52, i32 %55, i32 %58, i32 1, i32 %59)
  br label %61

61:                                               ; preds = %46, %31
  %62 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %63 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %62, i32 0, i32 2
  store i64 0, i64* %63, align 8
  ret void
}

declare dso_local i32 @scr_memsetw(i16*, i32, i32) #1

declare dso_local i64 @DO_UPDATE(%struct.vc_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
