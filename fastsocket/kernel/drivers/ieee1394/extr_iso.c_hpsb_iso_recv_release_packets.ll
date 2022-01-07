; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_iso.c_hpsb_iso_recv_release_packets.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_iso.c_hpsb_iso_recv_release_packets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpsb_iso = type { i64, i64, i32, i64, i64, i32, %struct.TYPE_4__*, i32* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.hpsb_iso*, i32, i64)* }
%struct.hpsb_iso_packet_info = type { i64 }

@HPSB_ISO_RECV = common dso_local global i64 0, align 8
@RECV_RELEASE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hpsb_iso_recv_release_packets(%struct.hpsb_iso* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hpsb_iso*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.hpsb_iso_packet_info, align 8
  store %struct.hpsb_iso* %0, %struct.hpsb_iso** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %8, align 4
  %10 = load %struct.hpsb_iso*, %struct.hpsb_iso** %4, align 8
  %11 = getelementptr inbounds %struct.hpsb_iso, %struct.hpsb_iso* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @HPSB_ISO_RECV, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %101

16:                                               ; preds = %2
  %17 = load %struct.hpsb_iso*, %struct.hpsb_iso** %4, align 8
  %18 = getelementptr inbounds %struct.hpsb_iso, %struct.hpsb_iso* %17, i32 0, i32 5
  %19 = load i64, i64* %6, align 8
  %20 = call i32 @spin_lock_irqsave(i32* %18, i64 %19)
  store i32 0, i32* %7, align 4
  br label %21

21:                                               ; preds = %92, %16
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp ult i32 %22, %23
  br i1 %24, label %25, label %95

25:                                               ; preds = %21
  %26 = load %struct.hpsb_iso*, %struct.hpsb_iso** %4, align 8
  %27 = getelementptr inbounds %struct.hpsb_iso, %struct.hpsb_iso* %26, i32 0, i32 6
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32 (%struct.hpsb_iso*, i32, i64)*, i32 (%struct.hpsb_iso*, i32, i64)** %31, align 8
  %33 = load %struct.hpsb_iso*, %struct.hpsb_iso** %4, align 8
  %34 = load i32, i32* @RECV_RELEASE, align 4
  %35 = load %struct.hpsb_iso*, %struct.hpsb_iso** %4, align 8
  %36 = getelementptr inbounds %struct.hpsb_iso, %struct.hpsb_iso* %35, i32 0, i32 7
  %37 = load i32*, i32** %36, align 8
  %38 = load %struct.hpsb_iso*, %struct.hpsb_iso** %4, align 8
  %39 = getelementptr inbounds %struct.hpsb_iso, %struct.hpsb_iso* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds i32, i32* %37, i64 %40
  %42 = ptrtoint i32* %41 to i64
  %43 = call i32 %32(%struct.hpsb_iso* %33, i32 %34, i64 %42)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %25
  br label %95

47:                                               ; preds = %25
  %48 = load %struct.hpsb_iso*, %struct.hpsb_iso** %4, align 8
  %49 = getelementptr inbounds %struct.hpsb_iso, %struct.hpsb_iso* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = add i64 %50, 1
  %52 = load %struct.hpsb_iso*, %struct.hpsb_iso** %4, align 8
  %53 = getelementptr inbounds %struct.hpsb_iso, %struct.hpsb_iso* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = sext i32 %54 to i64
  %56 = urem i64 %51, %55
  %57 = load %struct.hpsb_iso*, %struct.hpsb_iso** %4, align 8
  %58 = getelementptr inbounds %struct.hpsb_iso, %struct.hpsb_iso* %57, i32 0, i32 1
  store i64 %56, i64* %58, align 8
  %59 = load %struct.hpsb_iso*, %struct.hpsb_iso** %4, align 8
  %60 = getelementptr inbounds %struct.hpsb_iso, %struct.hpsb_iso* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = add nsw i64 %61, -1
  store i64 %62, i64* %60, align 8
  %63 = load %struct.hpsb_iso*, %struct.hpsb_iso** %4, align 8
  %64 = getelementptr inbounds %struct.hpsb_iso, %struct.hpsb_iso* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %91

67:                                               ; preds = %47
  %68 = load %struct.hpsb_iso*, %struct.hpsb_iso** %4, align 8
  %69 = getelementptr inbounds %struct.hpsb_iso, %struct.hpsb_iso* %68, i32 0, i32 4
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %90

72:                                               ; preds = %67
  %73 = load %struct.hpsb_iso*, %struct.hpsb_iso** %4, align 8
  %74 = getelementptr inbounds %struct.hpsb_iso, %struct.hpsb_iso* %73, i32 0, i32 4
  %75 = load i64, i64* %74, align 8
  %76 = getelementptr inbounds %struct.hpsb_iso_packet_info, %struct.hpsb_iso_packet_info* %9, i32 0, i32 0
  store i64 %75, i64* %76, align 8
  %77 = load %struct.hpsb_iso*, %struct.hpsb_iso** %4, align 8
  %78 = getelementptr inbounds %struct.hpsb_iso, %struct.hpsb_iso* %77, i32 0, i32 6
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  %83 = load i32 (%struct.hpsb_iso*, i32, i64)*, i32 (%struct.hpsb_iso*, i32, i64)** %82, align 8
  %84 = load %struct.hpsb_iso*, %struct.hpsb_iso** %4, align 8
  %85 = load i32, i32* @RECV_RELEASE, align 4
  %86 = ptrtoint %struct.hpsb_iso_packet_info* %9 to i64
  %87 = call i32 %83(%struct.hpsb_iso* %84, i32 %85, i64 %86)
  %88 = load %struct.hpsb_iso*, %struct.hpsb_iso** %4, align 8
  %89 = getelementptr inbounds %struct.hpsb_iso, %struct.hpsb_iso* %88, i32 0, i32 4
  store i64 0, i64* %89, align 8
  br label %90

90:                                               ; preds = %72, %67
  br label %91

91:                                               ; preds = %90, %47
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %7, align 4
  %94 = add i32 %93, 1
  store i32 %94, i32* %7, align 4
  br label %21

95:                                               ; preds = %46, %21
  %96 = load %struct.hpsb_iso*, %struct.hpsb_iso** %4, align 8
  %97 = getelementptr inbounds %struct.hpsb_iso, %struct.hpsb_iso* %96, i32 0, i32 5
  %98 = load i64, i64* %6, align 8
  %99 = call i32 @spin_unlock_irqrestore(i32* %97, i64 %98)
  %100 = load i32, i32* %8, align 4
  store i32 %100, i32* %3, align 4
  br label %101

101:                                              ; preds = %95, %15
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
