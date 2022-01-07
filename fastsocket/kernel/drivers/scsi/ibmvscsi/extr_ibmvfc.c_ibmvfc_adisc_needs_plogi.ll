; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/ibmvscsi/extr_ibmvfc.c_ibmvfc_adisc_needs_plogi.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/ibmvscsi/extr_ibmvfc.c_ibmvfc_adisc_needs_plogi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibmvfc_passthru_mad = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64* }
%struct.ibmvfc_target = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ibmvfc_passthru_mad*, %struct.ibmvfc_target*)* @ibmvfc_adisc_needs_plogi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ibmvfc_adisc_needs_plogi(%struct.ibmvfc_passthru_mad* %0, %struct.ibmvfc_target* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ibmvfc_passthru_mad*, align 8
  %5 = alloca %struct.ibmvfc_target*, align 8
  store %struct.ibmvfc_passthru_mad* %0, %struct.ibmvfc_passthru_mad** %4, align 8
  store %struct.ibmvfc_target* %1, %struct.ibmvfc_target** %5, align 8
  %6 = load %struct.ibmvfc_passthru_mad*, %struct.ibmvfc_passthru_mad** %4, align 8
  %7 = getelementptr inbounds %struct.ibmvfc_passthru_mad, %struct.ibmvfc_passthru_mad* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i64*, i64** %8, align 8
  %10 = getelementptr inbounds i64, i64* %9, i64 2
  %11 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %5, align 8
  %12 = getelementptr inbounds %struct.ibmvfc_target, %struct.ibmvfc_target* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %14 = call i64 @memcmp(i64* %10, i32* %13, i32 4)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %42

17:                                               ; preds = %2
  %18 = load %struct.ibmvfc_passthru_mad*, %struct.ibmvfc_passthru_mad** %4, align 8
  %19 = getelementptr inbounds %struct.ibmvfc_passthru_mad, %struct.ibmvfc_passthru_mad* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64*, i64** %20, align 8
  %22 = getelementptr inbounds i64, i64* %21, i64 4
  %23 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %5, align 8
  %24 = getelementptr inbounds %struct.ibmvfc_target, %struct.ibmvfc_target* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = call i64 @memcmp(i64* %22, i32* %25, i32 4)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %17
  store i32 1, i32* %3, align 4
  br label %42

29:                                               ; preds = %17
  %30 = load %struct.ibmvfc_passthru_mad*, %struct.ibmvfc_passthru_mad** %4, align 8
  %31 = getelementptr inbounds %struct.ibmvfc_passthru_mad, %struct.ibmvfc_passthru_mad* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i64*, i64** %32, align 8
  %34 = getelementptr inbounds i64, i64* %33, i64 6
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %5, align 8
  %37 = getelementptr inbounds %struct.ibmvfc_target, %struct.ibmvfc_target* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %35, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %29
  store i32 1, i32* %3, align 4
  br label %42

41:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %41, %40, %28, %16
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i64 @memcmp(i64*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
