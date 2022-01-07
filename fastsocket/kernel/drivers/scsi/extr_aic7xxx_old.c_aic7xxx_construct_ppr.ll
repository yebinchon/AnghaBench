; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_aic7xxx_old.c_aic7xxx_construct_ppr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_aic7xxx_old.c_aic7xxx_construct_ppr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aic7xxx_host = type { i32, i32, i64* }
%struct.aic7xxx_scb = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64, i64, i64 }

@MSG_EXTENDED = common dso_local global i64 0, align 8
@MSG_EXT_PPR_LEN = common dso_local global i64 0, align 8
@MSG_EXT_PPR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aic7xxx_host*, %struct.aic7xxx_scb*)* @aic7xxx_construct_ppr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aic7xxx_construct_ppr(%struct.aic7xxx_host* %0, %struct.aic7xxx_scb* %1) #0 {
  %3 = alloca %struct.aic7xxx_host*, align 8
  %4 = alloca %struct.aic7xxx_scb*, align 8
  store %struct.aic7xxx_host* %0, %struct.aic7xxx_host** %3, align 8
  store %struct.aic7xxx_scb* %1, %struct.aic7xxx_scb** %4, align 8
  %5 = load i64, i64* @MSG_EXTENDED, align 8
  %6 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %3, align 8
  %7 = getelementptr inbounds %struct.aic7xxx_host, %struct.aic7xxx_host* %6, i32 0, i32 2
  %8 = load i64*, i64** %7, align 8
  %9 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %3, align 8
  %10 = getelementptr inbounds %struct.aic7xxx_host, %struct.aic7xxx_host* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* %10, align 4
  %13 = sext i32 %11 to i64
  %14 = getelementptr inbounds i64, i64* %8, i64 %13
  store i64 %5, i64* %14, align 8
  %15 = load i64, i64* @MSG_EXT_PPR_LEN, align 8
  %16 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %3, align 8
  %17 = getelementptr inbounds %struct.aic7xxx_host, %struct.aic7xxx_host* %16, i32 0, i32 2
  %18 = load i64*, i64** %17, align 8
  %19 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %3, align 8
  %20 = getelementptr inbounds %struct.aic7xxx_host, %struct.aic7xxx_host* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %20, align 4
  %23 = sext i32 %21 to i64
  %24 = getelementptr inbounds i64, i64* %18, i64 %23
  store i64 %15, i64* %24, align 8
  %25 = load i64, i64* @MSG_EXT_PPR, align 8
  %26 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %3, align 8
  %27 = getelementptr inbounds %struct.aic7xxx_host, %struct.aic7xxx_host* %26, i32 0, i32 2
  %28 = load i64*, i64** %27, align 8
  %29 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %3, align 8
  %30 = getelementptr inbounds %struct.aic7xxx_host, %struct.aic7xxx_host* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %30, align 4
  %33 = sext i32 %31 to i64
  %34 = getelementptr inbounds i64, i64* %28, i64 %33
  store i64 %25, i64* %34, align 8
  %35 = load %struct.aic7xxx_scb*, %struct.aic7xxx_scb** %4, align 8
  %36 = getelementptr inbounds %struct.aic7xxx_scb, %struct.aic7xxx_scb* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call %struct.TYPE_4__* @AIC_DEV(i32 %37)
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %3, align 8
  %43 = getelementptr inbounds %struct.aic7xxx_host, %struct.aic7xxx_host* %42, i32 0, i32 2
  %44 = load i64*, i64** %43, align 8
  %45 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %3, align 8
  %46 = getelementptr inbounds %struct.aic7xxx_host, %struct.aic7xxx_host* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 4
  %49 = sext i32 %47 to i64
  %50 = getelementptr inbounds i64, i64* %44, i64 %49
  store i64 %41, i64* %50, align 8
  %51 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %3, align 8
  %52 = getelementptr inbounds %struct.aic7xxx_host, %struct.aic7xxx_host* %51, i32 0, i32 2
  %53 = load i64*, i64** %52, align 8
  %54 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %3, align 8
  %55 = getelementptr inbounds %struct.aic7xxx_host, %struct.aic7xxx_host* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %55, align 4
  %58 = sext i32 %56 to i64
  %59 = getelementptr inbounds i64, i64* %53, i64 %58
  store i64 0, i64* %59, align 8
  %60 = load %struct.aic7xxx_scb*, %struct.aic7xxx_scb** %4, align 8
  %61 = getelementptr inbounds %struct.aic7xxx_scb, %struct.aic7xxx_scb* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call %struct.TYPE_4__* @AIC_DEV(i32 %62)
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %3, align 8
  %68 = getelementptr inbounds %struct.aic7xxx_host, %struct.aic7xxx_host* %67, i32 0, i32 2
  %69 = load i64*, i64** %68, align 8
  %70 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %3, align 8
  %71 = getelementptr inbounds %struct.aic7xxx_host, %struct.aic7xxx_host* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %71, align 4
  %74 = sext i32 %72 to i64
  %75 = getelementptr inbounds i64, i64* %69, i64 %74
  store i64 %66, i64* %75, align 8
  %76 = load %struct.aic7xxx_scb*, %struct.aic7xxx_scb** %4, align 8
  %77 = getelementptr inbounds %struct.aic7xxx_scb, %struct.aic7xxx_scb* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call %struct.TYPE_4__* @AIC_DEV(i32 %78)
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %3, align 8
  %84 = getelementptr inbounds %struct.aic7xxx_host, %struct.aic7xxx_host* %83, i32 0, i32 2
  %85 = load i64*, i64** %84, align 8
  %86 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %3, align 8
  %87 = getelementptr inbounds %struct.aic7xxx_host, %struct.aic7xxx_host* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %87, align 4
  %90 = sext i32 %88 to i64
  %91 = getelementptr inbounds i64, i64* %85, i64 %90
  store i64 %82, i64* %91, align 8
  %92 = load %struct.aic7xxx_scb*, %struct.aic7xxx_scb** %4, align 8
  %93 = getelementptr inbounds %struct.aic7xxx_scb, %struct.aic7xxx_scb* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call %struct.TYPE_4__* @AIC_DEV(i32 %94)
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %3, align 8
  %100 = getelementptr inbounds %struct.aic7xxx_host, %struct.aic7xxx_host* %99, i32 0, i32 2
  %101 = load i64*, i64** %100, align 8
  %102 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %3, align 8
  %103 = getelementptr inbounds %struct.aic7xxx_host, %struct.aic7xxx_host* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %103, align 4
  %106 = sext i32 %104 to i64
  %107 = getelementptr inbounds i64, i64* %101, i64 %106
  store i64 %98, i64* %107, align 8
  %108 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %3, align 8
  %109 = getelementptr inbounds %struct.aic7xxx_host, %struct.aic7xxx_host* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = add nsw i32 %110, 8
  store i32 %111, i32* %109, align 8
  ret void
}

declare dso_local %struct.TYPE_4__* @AIC_DEV(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
