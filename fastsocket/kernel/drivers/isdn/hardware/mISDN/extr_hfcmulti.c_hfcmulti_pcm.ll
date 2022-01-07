; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/mISDN/extr_hfcmulti.c_hfcmulti_pcm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/mISDN/extr_hfcmulti.c_hfcmulti_pcm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfc_multi = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hfc_multi*, i32, i32, i32, i32, i32)* @hfcmulti_pcm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hfcmulti_pcm(%struct.hfc_multi* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.hfc_multi*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.hfc_multi* %0, %struct.hfc_multi** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %13 = load i32, i32* %11, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %24, label %15

15:                                               ; preds = %6
  %16 = load i32, i32* %11, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %15
  %19 = load i32, i32* %10, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = load i32, i32* %12, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %36

24:                                               ; preds = %21, %18, %15, %6
  %25 = load %struct.hfc_multi*, %struct.hfc_multi** %7, align 8
  %26 = load i32, i32* %8, align 4
  %27 = load %struct.hfc_multi*, %struct.hfc_multi** %7, align 8
  %28 = getelementptr inbounds %struct.hfc_multi, %struct.hfc_multi* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @mode_hfcmulti(%struct.hfc_multi* %25, i32 %26, i32 %34, i32 -1, i32 0, i32 -1, i32 0)
  br label %52

36:                                               ; preds = %21
  %37 = load %struct.hfc_multi*, %struct.hfc_multi** %7, align 8
  %38 = load i32, i32* %8, align 4
  %39 = load %struct.hfc_multi*, %struct.hfc_multi** %7, align 8
  %40 = getelementptr inbounds %struct.hfc_multi, %struct.hfc_multi* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* %12, align 4
  %51 = call i32 @mode_hfcmulti(%struct.hfc_multi* %37, i32 %38, i32 %46, i32 %47, i32 %48, i32 %49, i32 %50)
  br label %52

52:                                               ; preds = %36, %24
  ret void
}

declare dso_local i32 @mode_hfcmulti(%struct.hfc_multi*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
