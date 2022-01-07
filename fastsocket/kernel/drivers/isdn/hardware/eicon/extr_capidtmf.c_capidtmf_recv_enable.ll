; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/eicon/extr_capidtmf.c_capidtmf_recv_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/eicon/extr_capidtmf.c_capidtmf_recv_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@CAPIDTMF_RECV_INDICATION_DIGIT = common dso_local global i32 0, align 4
@CAPIDTMF_RECV_TIME_GRANULARITY = common dso_local global i32 0, align 4
@CAPIDTMF_RECV_STATE_DTMF_ACTIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @capidtmf_recv_enable(%struct.TYPE_5__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load i32, i32* @CAPIDTMF_RECV_INDICATION_DIGIT, align 4
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = and i32 %11, %7
  store i32 %12, i32* %10, align 4
  %13 = load i8*, i8** %5, align 8
  %14 = ptrtoint i8* %13 to i32
  %15 = mul nsw i32 %14, 8
  %16 = load i32, i32* @CAPIDTMF_RECV_TIME_GRANULARITY, align 4
  %17 = sdiv i32 %16, 2
  %18 = add nsw i32 %15, %17
  %19 = load i32, i32* @CAPIDTMF_RECV_TIME_GRANULARITY, align 4
  %20 = sdiv i32 %18, %19
  %21 = sext i32 %20 to i64
  %22 = inttoptr i64 %21 to i8*
  %23 = ptrtoint i8* %22 to i32
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  store i32 %23, i32* %26, align 4
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp sle i32 %30, 1
  br i1 %31, label %32, label %36

32:                                               ; preds = %3
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  store i32 1, i32* %35, align 4
  br label %42

36:                                               ; preds = %3
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, -1
  store i32 %41, i32* %39, align 4
  br label %42

42:                                               ; preds = %36, %32
  %43 = load i8*, i8** %6, align 8
  %44 = ptrtoint i8* %43 to i32
  %45 = mul nsw i32 %44, 8
  %46 = load i32, i32* @CAPIDTMF_RECV_TIME_GRANULARITY, align 4
  %47 = sdiv i32 %45, %46
  %48 = sext i32 %47 to i64
  %49 = inttoptr i64 %48 to i8*
  %50 = ptrtoint i8* %49 to i32
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  store i32 %50, i32* %53, align 4
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = icmp sle i32 %57, 1
  br i1 %58, label %59, label %63

59:                                               ; preds = %42
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  store i32 1, i32* %62, align 4
  br label %69

63:                                               ; preds = %42
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = add nsw i32 %67, -1
  store i32 %68, i32* %66, align 4
  br label %69

69:                                               ; preds = %63, %59
  %70 = load i32, i32* @CAPIDTMF_RECV_STATE_DTMF_ACTIVE, align 4
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %74, %70
  store i32 %75, i32* %73, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
