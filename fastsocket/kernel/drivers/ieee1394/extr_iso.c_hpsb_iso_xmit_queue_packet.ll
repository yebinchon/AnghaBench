; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_iso.c_hpsb_iso_xmit_queue_packet.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_iso.c_hpsb_iso_xmit_queue_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpsb_iso = type { i64, i64, i64, i32, i32, i64, i32, i32, %struct.TYPE_4__*, %struct.hpsb_iso_packet_info* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.hpsb_iso*, i32, i64)* }
%struct.hpsb_iso_packet_info = type { i8*, i8*, i32, i32 }

@HPSB_ISO_XMIT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@XMIT_QUEUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hpsb_iso_xmit_queue_packet(%struct.hpsb_iso* %0, i32 %1, i32 %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.hpsb_iso*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.hpsb_iso_packet_info*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.hpsb_iso* %0, %struct.hpsb_iso** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %15 = load %struct.hpsb_iso*, %struct.hpsb_iso** %7, align 8
  %16 = getelementptr inbounds %struct.hpsb_iso, %struct.hpsb_iso* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @HPSB_ISO_XMIT, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %5
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %6, align 4
  br label %129

23:                                               ; preds = %5
  %24 = load %struct.hpsb_iso*, %struct.hpsb_iso** %7, align 8
  %25 = getelementptr inbounds %struct.hpsb_iso, %struct.hpsb_iso* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp sle i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load i32, i32* @EBUSY, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %6, align 4
  br label %129

31:                                               ; preds = %23
  %32 = load %struct.hpsb_iso*, %struct.hpsb_iso** %7, align 8
  %33 = getelementptr inbounds %struct.hpsb_iso, %struct.hpsb_iso* %32, i32 0, i32 9
  %34 = load %struct.hpsb_iso_packet_info*, %struct.hpsb_iso_packet_info** %33, align 8
  %35 = load %struct.hpsb_iso*, %struct.hpsb_iso** %7, align 8
  %36 = getelementptr inbounds %struct.hpsb_iso, %struct.hpsb_iso* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds %struct.hpsb_iso_packet_info, %struct.hpsb_iso_packet_info* %34, i64 %37
  store %struct.hpsb_iso_packet_info* %38, %struct.hpsb_iso_packet_info** %12, align 8
  %39 = load %struct.hpsb_iso*, %struct.hpsb_iso** %7, align 8
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %9, align 4
  %42 = load %struct.hpsb_iso_packet_info*, %struct.hpsb_iso_packet_info** %12, align 8
  %43 = getelementptr inbounds %struct.hpsb_iso_packet_info, %struct.hpsb_iso_packet_info* %42, i32 0, i32 3
  %44 = load %struct.hpsb_iso_packet_info*, %struct.hpsb_iso_packet_info** %12, align 8
  %45 = getelementptr inbounds %struct.hpsb_iso_packet_info, %struct.hpsb_iso_packet_info* %44, i32 0, i32 2
  %46 = call i64 @hpsb_iso_check_offset_len(%struct.hpsb_iso* %39, i32 %40, i32 %41, i32* %43, i32* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %31
  %49 = load i32, i32* @EFAULT, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %6, align 4
  br label %129

51:                                               ; preds = %31
  %52 = load i8*, i8** %10, align 8
  %53 = load %struct.hpsb_iso_packet_info*, %struct.hpsb_iso_packet_info** %12, align 8
  %54 = getelementptr inbounds %struct.hpsb_iso_packet_info, %struct.hpsb_iso_packet_info* %53, i32 0, i32 1
  store i8* %52, i8** %54, align 8
  %55 = load i8*, i8** %11, align 8
  %56 = load %struct.hpsb_iso_packet_info*, %struct.hpsb_iso_packet_info** %12, align 8
  %57 = getelementptr inbounds %struct.hpsb_iso_packet_info, %struct.hpsb_iso_packet_info* %56, i32 0, i32 0
  store i8* %55, i8** %57, align 8
  %58 = load %struct.hpsb_iso*, %struct.hpsb_iso** %7, align 8
  %59 = getelementptr inbounds %struct.hpsb_iso, %struct.hpsb_iso* %58, i32 0, i32 6
  %60 = load i64, i64* %13, align 8
  %61 = call i32 @spin_lock_irqsave(i32* %59, i64 %60)
  %62 = load %struct.hpsb_iso*, %struct.hpsb_iso** %7, align 8
  %63 = getelementptr inbounds %struct.hpsb_iso, %struct.hpsb_iso* %62, i32 0, i32 8
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i32 (%struct.hpsb_iso*, i32, i64)*, i32 (%struct.hpsb_iso*, i32, i64)** %67, align 8
  %69 = load %struct.hpsb_iso*, %struct.hpsb_iso** %7, align 8
  %70 = load i32, i32* @XMIT_QUEUE, align 4
  %71 = load %struct.hpsb_iso_packet_info*, %struct.hpsb_iso_packet_info** %12, align 8
  %72 = ptrtoint %struct.hpsb_iso_packet_info* %71 to i64
  %73 = call i32 %68(%struct.hpsb_iso* %69, i32 %70, i64 %72)
  store i32 %73, i32* %14, align 4
  %74 = load i32, i32* %14, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %51
  br label %123

77:                                               ; preds = %51
  %78 = load %struct.hpsb_iso*, %struct.hpsb_iso** %7, align 8
  %79 = getelementptr inbounds %struct.hpsb_iso, %struct.hpsb_iso* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = add i64 %80, 1
  %82 = load %struct.hpsb_iso*, %struct.hpsb_iso** %7, align 8
  %83 = getelementptr inbounds %struct.hpsb_iso, %struct.hpsb_iso* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 8
  %85 = sext i32 %84 to i64
  %86 = urem i64 %81, %85
  %87 = load %struct.hpsb_iso*, %struct.hpsb_iso** %7, align 8
  %88 = getelementptr inbounds %struct.hpsb_iso, %struct.hpsb_iso* %87, i32 0, i32 2
  store i64 %86, i64* %88, align 8
  %89 = load %struct.hpsb_iso*, %struct.hpsb_iso** %7, align 8
  %90 = getelementptr inbounds %struct.hpsb_iso, %struct.hpsb_iso* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 4
  %92 = add nsw i32 %91, 1
  %93 = srem i32 %92, 8000
  %94 = load %struct.hpsb_iso*, %struct.hpsb_iso** %7, align 8
  %95 = getelementptr inbounds %struct.hpsb_iso, %struct.hpsb_iso* %94, i32 0, i32 4
  store i32 %93, i32* %95, align 4
  %96 = load %struct.hpsb_iso*, %struct.hpsb_iso** %7, align 8
  %97 = getelementptr inbounds %struct.hpsb_iso, %struct.hpsb_iso* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = add nsw i64 %98, -1
  store i64 %99, i64* %97, align 8
  %100 = load %struct.hpsb_iso*, %struct.hpsb_iso** %7, align 8
  %101 = getelementptr inbounds %struct.hpsb_iso, %struct.hpsb_iso* %100, i32 0, i32 5
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %122

104:                                              ; preds = %77
  %105 = load %struct.hpsb_iso*, %struct.hpsb_iso** %7, align 8
  %106 = getelementptr inbounds %struct.hpsb_iso, %struct.hpsb_iso* %105, i32 0, i32 5
  %107 = load i64, i64* %106, align 8
  %108 = add nsw i64 %107, -1
  store i64 %108, i64* %106, align 8
  %109 = load %struct.hpsb_iso*, %struct.hpsb_iso** %7, align 8
  %110 = getelementptr inbounds %struct.hpsb_iso, %struct.hpsb_iso* %109, i32 0, i32 5
  %111 = load i64, i64* %110, align 8
  %112 = icmp sle i64 %111, 0
  br i1 %112, label %113, label %121

113:                                              ; preds = %104
  %114 = load %struct.hpsb_iso*, %struct.hpsb_iso** %7, align 8
  %115 = getelementptr inbounds %struct.hpsb_iso, %struct.hpsb_iso* %114, i32 0, i32 5
  store i64 0, i64* %115, align 8
  %116 = load %struct.hpsb_iso*, %struct.hpsb_iso** %7, align 8
  %117 = load %struct.hpsb_iso*, %struct.hpsb_iso** %7, align 8
  %118 = getelementptr inbounds %struct.hpsb_iso, %struct.hpsb_iso* %117, i32 0, i32 7
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @do_iso_xmit_start(%struct.hpsb_iso* %116, i32 %119)
  store i32 %120, i32* %14, align 4
  br label %121

121:                                              ; preds = %113, %104
  br label %122

122:                                              ; preds = %121, %77
  br label %123

123:                                              ; preds = %122, %76
  %124 = load %struct.hpsb_iso*, %struct.hpsb_iso** %7, align 8
  %125 = getelementptr inbounds %struct.hpsb_iso, %struct.hpsb_iso* %124, i32 0, i32 6
  %126 = load i64, i64* %13, align 8
  %127 = call i32 @spin_unlock_irqrestore(i32* %125, i64 %126)
  %128 = load i32, i32* %14, align 4
  store i32 %128, i32* %6, align 4
  br label %129

129:                                              ; preds = %123, %48, %28, %20
  %130 = load i32, i32* %6, align 4
  ret i32 %130
}

declare dso_local i64 @hpsb_iso_check_offset_len(%struct.hpsb_iso*, i32, i32, i32*, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @do_iso_xmit_start(%struct.hpsb_iso*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
