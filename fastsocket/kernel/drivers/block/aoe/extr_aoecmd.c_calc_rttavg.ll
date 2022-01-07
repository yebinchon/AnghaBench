; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/aoe/extr_aoecmd.c_calc_rttavg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/aoe/extr_aoecmd.c_calc_rttavg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aoedev = type { i64, i64 }
%struct.aoetgt = type { i64, i64, i64, i64, i64 }

@RTTSCALE = common dso_local global i64 0, align 8
@RTTDSCALE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aoedev*, %struct.aoetgt*, i32)* @calc_rttavg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @calc_rttavg(%struct.aoedev* %0, %struct.aoetgt* %1, i32 %2) #0 {
  %4 = alloca %struct.aoedev*, align 8
  %5 = alloca %struct.aoetgt*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.aoedev* %0, %struct.aoedev** %4, align 8
  store %struct.aoetgt* %1, %struct.aoetgt** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %7, align 8
  %10 = load %struct.aoedev*, %struct.aoedev** %4, align 8
  %11 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @RTTSCALE, align 8
  %14 = ashr i64 %12, %13
  %15 = load i64, i64* %7, align 8
  %16 = sub nsw i64 %15, %14
  store i64 %16, i64* %7, align 8
  %17 = load i64, i64* %7, align 8
  %18 = load %struct.aoedev*, %struct.aoedev** %4, align 8
  %19 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %20, %17
  store i64 %21, i64* %19, align 8
  %22 = load i64, i64* %7, align 8
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = load i64, i64* %7, align 8
  %26 = sub nsw i64 0, %25
  store i64 %26, i64* %7, align 8
  br label %27

27:                                               ; preds = %24, %3
  %28 = load %struct.aoedev*, %struct.aoedev** %4, align 8
  %29 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @RTTDSCALE, align 8
  %32 = ashr i64 %30, %31
  %33 = load i64, i64* %7, align 8
  %34 = sub nsw i64 %33, %32
  store i64 %34, i64* %7, align 8
  %35 = load i64, i64* %7, align 8
  %36 = load %struct.aoedev*, %struct.aoedev** %4, align 8
  %37 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %38, %35
  store i64 %39, i64* %37, align 8
  %40 = load %struct.aoetgt*, %struct.aoetgt** %5, align 8
  %41 = icmp ne %struct.aoetgt* %40, null
  br i1 %41, label %42, label %50

42:                                               ; preds = %27
  %43 = load %struct.aoetgt*, %struct.aoetgt** %5, align 8
  %44 = getelementptr inbounds %struct.aoetgt, %struct.aoetgt* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.aoetgt*, %struct.aoetgt** %5, align 8
  %47 = getelementptr inbounds %struct.aoetgt, %struct.aoetgt* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp sge i64 %45, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %42, %27
  br label %89

51:                                               ; preds = %42
  %52 = load %struct.aoetgt*, %struct.aoetgt** %5, align 8
  %53 = getelementptr inbounds %struct.aoetgt, %struct.aoetgt* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.aoetgt*, %struct.aoetgt** %5, align 8
  %56 = getelementptr inbounds %struct.aoetgt, %struct.aoetgt* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = icmp slt i64 %54, %57
  br i1 %58, label %59, label %64

59:                                               ; preds = %51
  %60 = load %struct.aoetgt*, %struct.aoetgt** %5, align 8
  %61 = getelementptr inbounds %struct.aoetgt, %struct.aoetgt* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = add nsw i64 %62, 1
  store i64 %63, i64* %61, align 8
  br label %89

64:                                               ; preds = %51
  %65 = load %struct.aoetgt*, %struct.aoetgt** %5, align 8
  %66 = getelementptr inbounds %struct.aoetgt, %struct.aoetgt* %65, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.aoetgt*, %struct.aoetgt** %5, align 8
  %69 = getelementptr inbounds %struct.aoetgt, %struct.aoetgt* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp eq i64 %67, %70
  br i1 %71, label %72, label %88

72:                                               ; preds = %64
  %73 = load %struct.aoetgt*, %struct.aoetgt** %5, align 8
  %74 = getelementptr inbounds %struct.aoetgt, %struct.aoetgt* %73, i32 0, i32 4
  %75 = load i64, i64* %74, align 8
  %76 = add nsw i64 %75, -1
  store i64 %76, i64* %74, align 8
  %77 = icmp eq i64 %75, 0
  br i1 %77, label %78, label %88

78:                                               ; preds = %72
  %79 = load %struct.aoetgt*, %struct.aoetgt** %5, align 8
  %80 = getelementptr inbounds %struct.aoetgt, %struct.aoetgt* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = add nsw i64 %81, 1
  store i64 %82, i64* %80, align 8
  %83 = load %struct.aoetgt*, %struct.aoetgt** %5, align 8
  %84 = getelementptr inbounds %struct.aoetgt, %struct.aoetgt* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.aoetgt*, %struct.aoetgt** %5, align 8
  %87 = getelementptr inbounds %struct.aoetgt, %struct.aoetgt* %86, i32 0, i32 4
  store i64 %85, i64* %87, align 8
  br label %88

88:                                               ; preds = %78, %72, %64
  br label %89

89:                                               ; preds = %50, %88, %59
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
