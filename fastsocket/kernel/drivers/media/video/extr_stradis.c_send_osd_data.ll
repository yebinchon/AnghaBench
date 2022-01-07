; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_stradis.c_send_osd_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_stradis.c_send_osd_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7146 = type { i32, i32, i32*, i32 }

@debNormal = common dso_local global i32 0, align 4
@IBM_MP2_OSD_ADDR = common dso_local global i32 0, align 4
@IBM_MP2_OSD_DATA = common dso_local global i32 0, align 4
@IBM_MP2_MASK0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.saa7146*)* @send_osd_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @send_osd_data(%struct.saa7146* %0) #0 {
  %2 = alloca %struct.saa7146*, align 8
  %3 = alloca i32, align 4
  store %struct.saa7146* %0, %struct.saa7146** %2, align 8
  %4 = load %struct.saa7146*, %struct.saa7146** %2, align 8
  %5 = getelementptr inbounds %struct.saa7146, %struct.saa7146* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load %struct.saa7146*, %struct.saa7146** %2, align 8
  %8 = getelementptr inbounds %struct.saa7146, %struct.saa7146* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = sub nsw i32 %6, %9
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = icmp sgt i32 %11, 30720
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 30720, i32* %3, align 4
  br label %14

14:                                               ; preds = %13, %1
  %15 = load i32, i32* %3, align 4
  %16 = add nsw i32 %15, 8
  %17 = ashr i32 %16, 3
  %18 = mul nsw i32 8, %17
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* %3, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %53

21:                                               ; preds = %14
  %22 = load %struct.saa7146*, %struct.saa7146** %2, align 8
  %23 = load i32, i32* @debNormal, align 4
  %24 = load i32, i32* @IBM_MP2_OSD_ADDR, align 4
  %25 = load %struct.saa7146*, %struct.saa7146** %2, align 8
  %26 = getelementptr inbounds %struct.saa7146, %struct.saa7146* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = ashr i32 %27, 3
  %29 = call i32 @debiwrite(%struct.saa7146* %22, i32 %23, i32 %24, i32 %28, i32 2)
  %30 = load %struct.saa7146*, %struct.saa7146** %2, align 8
  %31 = getelementptr inbounds %struct.saa7146, %struct.saa7146* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.saa7146*, %struct.saa7146** %2, align 8
  %34 = getelementptr inbounds %struct.saa7146, %struct.saa7146* %33, i32 0, i32 2
  %35 = load i32*, i32** %34, align 8
  %36 = load %struct.saa7146*, %struct.saa7146** %2, align 8
  %37 = getelementptr inbounds %struct.saa7146, %struct.saa7146* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %35, i64 %39
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @memcpy(i32 %32, i32* %40, i32 %41)
  %43 = load i32, i32* %3, align 4
  %44 = load %struct.saa7146*, %struct.saa7146** %2, align 8
  %45 = getelementptr inbounds %struct.saa7146, %struct.saa7146* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, %43
  store i32 %47, i32* %45, align 4
  %48 = load %struct.saa7146*, %struct.saa7146** %2, align 8
  %49 = load i32, i32* @debNormal, align 4
  %50 = load i32, i32* @IBM_MP2_OSD_DATA, align 4
  %51 = load i32, i32* %3, align 4
  %52 = call i32 @debiwrite(%struct.saa7146* %48, i32 %49, i32 %50, i32 0, i32 %51)
  br label %53

53:                                               ; preds = %21, %14
  %54 = load %struct.saa7146*, %struct.saa7146** %2, align 8
  %55 = getelementptr inbounds %struct.saa7146, %struct.saa7146* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.saa7146*, %struct.saa7146** %2, align 8
  %58 = getelementptr inbounds %struct.saa7146, %struct.saa7146* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp sge i32 %56, %59
  br i1 %60, label %61, label %70

61:                                               ; preds = %53
  %62 = load %struct.saa7146*, %struct.saa7146** %2, align 8
  %63 = getelementptr inbounds %struct.saa7146, %struct.saa7146* %62, i32 0, i32 0
  store i32 0, i32* %63, align 8
  %64 = load %struct.saa7146*, %struct.saa7146** %2, align 8
  %65 = getelementptr inbounds %struct.saa7146, %struct.saa7146* %64, i32 0, i32 1
  store i32 0, i32* %65, align 4
  %66 = load %struct.saa7146*, %struct.saa7146** %2, align 8
  %67 = load i32, i32* @debNormal, align 4
  %68 = load i32, i32* @IBM_MP2_MASK0, align 4
  %69 = call i32 @debiwrite(%struct.saa7146* %66, i32 %67, i32 %68, i32 49164, i32 2)
  br label %70

70:                                               ; preds = %61, %53
  ret void
}

declare dso_local i32 @debiwrite(%struct.saa7146*, i32, i32, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
