; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_core.c_bfa_iocfc_get_bootwwns.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_core.c_bfa_iocfc_get_bootwwns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_s = type { %struct.bfa_iocfc_s }
%struct.bfa_iocfc_s = type { %struct.bfi_iocfc_cfgrsp_s* }
%struct.bfi_iocfc_cfgrsp_s = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfa_iocfc_get_bootwwns(%struct.bfa_s* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.bfa_s*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.bfa_iocfc_s*, align 8
  %8 = alloca %struct.bfi_iocfc_cfgrsp_s*, align 8
  %9 = alloca i32, align 4
  store %struct.bfa_s* %0, %struct.bfa_s** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load %struct.bfa_s*, %struct.bfa_s** %4, align 8
  %11 = getelementptr inbounds %struct.bfa_s, %struct.bfa_s* %10, i32 0, i32 0
  store %struct.bfa_iocfc_s* %11, %struct.bfa_iocfc_s** %7, align 8
  %12 = load %struct.bfa_iocfc_s*, %struct.bfa_iocfc_s** %7, align 8
  %13 = getelementptr inbounds %struct.bfa_iocfc_s, %struct.bfa_iocfc_s* %12, i32 0, i32 0
  %14 = load %struct.bfi_iocfc_cfgrsp_s*, %struct.bfi_iocfc_cfgrsp_s** %13, align 8
  store %struct.bfi_iocfc_cfgrsp_s* %14, %struct.bfi_iocfc_cfgrsp_s** %8, align 8
  %15 = load %struct.bfi_iocfc_cfgrsp_s*, %struct.bfi_iocfc_cfgrsp_s** %8, align 8
  %16 = getelementptr inbounds %struct.bfi_iocfc_cfgrsp_s, %struct.bfi_iocfc_cfgrsp_s* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %63

20:                                               ; preds = %3
  %21 = load %struct.bfi_iocfc_cfgrsp_s*, %struct.bfi_iocfc_cfgrsp_s** %8, align 8
  %22 = getelementptr inbounds %struct.bfi_iocfc_cfgrsp_s, %struct.bfi_iocfc_cfgrsp_s* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %63

26:                                               ; preds = %20
  %27 = load %struct.bfa_s*, %struct.bfa_s** %4, align 8
  %28 = load %struct.bfi_iocfc_cfgrsp_s*, %struct.bfi_iocfc_cfgrsp_s** %8, align 8
  %29 = getelementptr inbounds %struct.bfi_iocfc_cfgrsp_s, %struct.bfi_iocfc_cfgrsp_s* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @bfa_trc(%struct.bfa_s* %27, i32 %31)
  %33 = load %struct.bfi_iocfc_cfgrsp_s*, %struct.bfi_iocfc_cfgrsp_s** %8, align 8
  %34 = getelementptr inbounds %struct.bfi_iocfc_cfgrsp_s, %struct.bfi_iocfc_cfgrsp_s* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32*, i32** %5, align 8
  store i32 %36, i32* %37, align 4
  store i32 0, i32* %9, align 4
  br label %38

38:                                               ; preds = %59, %26
  %39 = load i32, i32* %9, align 4
  %40 = load %struct.bfi_iocfc_cfgrsp_s*, %struct.bfi_iocfc_cfgrsp_s** %8, align 8
  %41 = getelementptr inbounds %struct.bfi_iocfc_cfgrsp_s, %struct.bfi_iocfc_cfgrsp_s* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp slt i32 %39, %43
  br i1 %44, label %45, label %62

45:                                               ; preds = %38
  %46 = load %struct.bfi_iocfc_cfgrsp_s*, %struct.bfi_iocfc_cfgrsp_s** %8, align 8
  %47 = getelementptr inbounds %struct.bfi_iocfc_cfgrsp_s, %struct.bfi_iocfc_cfgrsp_s* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = load i32, i32* %9, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32*, i32** %6, align 8
  %56 = load i32, i32* %9, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  store i32 %54, i32* %58, align 4
  br label %59

59:                                               ; preds = %45
  %60 = load i32, i32* %9, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %9, align 4
  br label %38

62:                                               ; preds = %38
  br label %75

63:                                               ; preds = %20, %3
  %64 = load %struct.bfi_iocfc_cfgrsp_s*, %struct.bfi_iocfc_cfgrsp_s** %8, align 8
  %65 = getelementptr inbounds %struct.bfi_iocfc_cfgrsp_s, %struct.bfi_iocfc_cfgrsp_s* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32*, i32** %5, align 8
  store i32 %67, i32* %68, align 4
  %69 = load i32*, i32** %6, align 8
  %70 = load %struct.bfi_iocfc_cfgrsp_s*, %struct.bfi_iocfc_cfgrsp_s** %8, align 8
  %71 = getelementptr inbounds %struct.bfi_iocfc_cfgrsp_s, %struct.bfi_iocfc_cfgrsp_s* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @memcpy(i32* %69, i32 %73, i32 4)
  br label %75

75:                                               ; preds = %63, %62
  ret void
}

declare dso_local i32 @bfa_trc(%struct.bfa_s*, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
