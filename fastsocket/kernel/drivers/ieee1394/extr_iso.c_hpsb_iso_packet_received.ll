; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_iso.c_hpsb_iso_packet_received.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_iso.c_hpsb_iso_packet_received.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpsb_iso = type { i32, i32, i64, i32, %struct.hpsb_iso_packet_info*, i32, i32 }
%struct.hpsb_iso_packet_info = type { i8*, i8*, i8*, i8*, i8*, i8*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hpsb_iso_packet_received(%struct.hpsb_iso* %0, i32 %1, i8* %2, i8* %3, i8* %4, i8* %5, i8* %6, i8* %7) #0 {
  %9 = alloca %struct.hpsb_iso*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.hpsb_iso_packet_info*, align 8
  store %struct.hpsb_iso* %0, %struct.hpsb_iso** %9, align 8
  store i32 %1, i32* %10, align 4
  store i8* %2, i8** %11, align 8
  store i8* %3, i8** %12, align 8
  store i8* %4, i8** %13, align 8
  store i8* %5, i8** %14, align 8
  store i8* %6, i8** %15, align 8
  store i8* %7, i8** %16, align 8
  %19 = load %struct.hpsb_iso*, %struct.hpsb_iso** %9, align 8
  %20 = getelementptr inbounds %struct.hpsb_iso, %struct.hpsb_iso* %19, i32 0, i32 3
  %21 = load i64, i64* %17, align 8
  %22 = call i32 @spin_lock_irqsave(i32* %20, i64 %21)
  %23 = load %struct.hpsb_iso*, %struct.hpsb_iso** %9, align 8
  %24 = getelementptr inbounds %struct.hpsb_iso, %struct.hpsb_iso* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.hpsb_iso*, %struct.hpsb_iso** %9, align 8
  %27 = getelementptr inbounds %struct.hpsb_iso, %struct.hpsb_iso* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %25, %28
  br i1 %29, label %30, label %41

30:                                               ; preds = %8
  %31 = load %struct.hpsb_iso*, %struct.hpsb_iso** %9, align 8
  %32 = getelementptr inbounds %struct.hpsb_iso, %struct.hpsb_iso* %31, i32 0, i32 6
  %33 = call i32 @atomic_inc(i32* %32)
  %34 = load i8*, i8** %12, align 8
  %35 = load %struct.hpsb_iso*, %struct.hpsb_iso** %9, align 8
  %36 = getelementptr inbounds %struct.hpsb_iso, %struct.hpsb_iso* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 8
  %38 = sext i32 %37 to i64
  %39 = getelementptr i8, i8* %34, i64 %38
  %40 = ptrtoint i8* %39 to i32
  store i32 %40, i32* %36, align 8
  br label %85

41:                                               ; preds = %8
  %42 = load %struct.hpsb_iso*, %struct.hpsb_iso** %9, align 8
  %43 = getelementptr inbounds %struct.hpsb_iso, %struct.hpsb_iso* %42, i32 0, i32 4
  %44 = load %struct.hpsb_iso_packet_info*, %struct.hpsb_iso_packet_info** %43, align 8
  %45 = load %struct.hpsb_iso*, %struct.hpsb_iso** %9, align 8
  %46 = getelementptr inbounds %struct.hpsb_iso, %struct.hpsb_iso* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds %struct.hpsb_iso_packet_info, %struct.hpsb_iso_packet_info* %44, i64 %47
  store %struct.hpsb_iso_packet_info* %48, %struct.hpsb_iso_packet_info** %18, align 8
  %49 = load i32, i32* %10, align 4
  %50 = load %struct.hpsb_iso_packet_info*, %struct.hpsb_iso_packet_info** %18, align 8
  %51 = getelementptr inbounds %struct.hpsb_iso_packet_info, %struct.hpsb_iso_packet_info* %50, i32 0, i32 6
  store i32 %49, i32* %51, align 8
  %52 = load i8*, i8** %11, align 8
  %53 = load %struct.hpsb_iso_packet_info*, %struct.hpsb_iso_packet_info** %18, align 8
  %54 = getelementptr inbounds %struct.hpsb_iso_packet_info, %struct.hpsb_iso_packet_info* %53, i32 0, i32 5
  store i8* %52, i8** %54, align 8
  %55 = load i8*, i8** %12, align 8
  %56 = load %struct.hpsb_iso_packet_info*, %struct.hpsb_iso_packet_info** %18, align 8
  %57 = getelementptr inbounds %struct.hpsb_iso_packet_info, %struct.hpsb_iso_packet_info* %56, i32 0, i32 4
  store i8* %55, i8** %57, align 8
  %58 = load i8*, i8** %13, align 8
  %59 = load %struct.hpsb_iso_packet_info*, %struct.hpsb_iso_packet_info** %18, align 8
  %60 = getelementptr inbounds %struct.hpsb_iso_packet_info, %struct.hpsb_iso_packet_info* %59, i32 0, i32 3
  store i8* %58, i8** %60, align 8
  %61 = load i8*, i8** %14, align 8
  %62 = load %struct.hpsb_iso_packet_info*, %struct.hpsb_iso_packet_info** %18, align 8
  %63 = getelementptr inbounds %struct.hpsb_iso_packet_info, %struct.hpsb_iso_packet_info* %62, i32 0, i32 2
  store i8* %61, i8** %63, align 8
  %64 = load i8*, i8** %15, align 8
  %65 = load %struct.hpsb_iso_packet_info*, %struct.hpsb_iso_packet_info** %18, align 8
  %66 = getelementptr inbounds %struct.hpsb_iso_packet_info, %struct.hpsb_iso_packet_info* %65, i32 0, i32 1
  store i8* %64, i8** %66, align 8
  %67 = load i8*, i8** %16, align 8
  %68 = load %struct.hpsb_iso_packet_info*, %struct.hpsb_iso_packet_info** %18, align 8
  %69 = getelementptr inbounds %struct.hpsb_iso_packet_info, %struct.hpsb_iso_packet_info* %68, i32 0, i32 0
  store i8* %67, i8** %69, align 8
  %70 = load %struct.hpsb_iso*, %struct.hpsb_iso** %9, align 8
  %71 = getelementptr inbounds %struct.hpsb_iso, %struct.hpsb_iso* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = add i64 %72, 1
  %74 = load %struct.hpsb_iso*, %struct.hpsb_iso** %9, align 8
  %75 = getelementptr inbounds %struct.hpsb_iso, %struct.hpsb_iso* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = sext i32 %76 to i64
  %78 = urem i64 %73, %77
  %79 = load %struct.hpsb_iso*, %struct.hpsb_iso** %9, align 8
  %80 = getelementptr inbounds %struct.hpsb_iso, %struct.hpsb_iso* %79, i32 0, i32 2
  store i64 %78, i64* %80, align 8
  %81 = load %struct.hpsb_iso*, %struct.hpsb_iso** %9, align 8
  %82 = getelementptr inbounds %struct.hpsb_iso, %struct.hpsb_iso* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %82, align 8
  br label %85

85:                                               ; preds = %41, %30
  %86 = load %struct.hpsb_iso*, %struct.hpsb_iso** %9, align 8
  %87 = getelementptr inbounds %struct.hpsb_iso, %struct.hpsb_iso* %86, i32 0, i32 3
  %88 = load i64, i64* %17, align 8
  %89 = call i32 @spin_unlock_irqrestore(i32* %87, i64 %88)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
