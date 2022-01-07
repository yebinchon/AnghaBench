; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/hyperv/extr_rndis_filter.c_rndis_get_ppi.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/hyperv/extr_rndis_filter.c_rndis_get_ppi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rndis_packet = type { i64, i32 }
%struct.rndis_per_packet_info = type { i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.rndis_packet*, i64)* @rndis_get_ppi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @rndis_get_ppi(%struct.rndis_packet* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.rndis_packet*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.rndis_per_packet_info*, align 8
  %7 = alloca i32, align 4
  store %struct.rndis_packet* %0, %struct.rndis_packet** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.rndis_packet*, %struct.rndis_packet** %4, align 8
  %9 = getelementptr inbounds %struct.rndis_packet, %struct.rndis_packet* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %57

13:                                               ; preds = %2
  %14 = load %struct.rndis_packet*, %struct.rndis_packet** %4, align 8
  %15 = ptrtoint %struct.rndis_packet* %14 to i64
  %16 = load %struct.rndis_packet*, %struct.rndis_packet** %4, align 8
  %17 = getelementptr inbounds %struct.rndis_packet, %struct.rndis_packet* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = add nsw i64 %15, %18
  %20 = inttoptr i64 %19 to %struct.rndis_per_packet_info*
  store %struct.rndis_per_packet_info* %20, %struct.rndis_per_packet_info** %6, align 8
  %21 = load %struct.rndis_packet*, %struct.rndis_packet** %4, align 8
  %22 = getelementptr inbounds %struct.rndis_packet, %struct.rndis_packet* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %7, align 4
  br label %24

24:                                               ; preds = %41, %13
  %25 = load i32, i32* %7, align 4
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %56

27:                                               ; preds = %24
  %28 = load %struct.rndis_per_packet_info*, %struct.rndis_per_packet_info** %6, align 8
  %29 = getelementptr inbounds %struct.rndis_per_packet_info, %struct.rndis_per_packet_info* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %5, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %41

33:                                               ; preds = %27
  %34 = load %struct.rndis_per_packet_info*, %struct.rndis_per_packet_info** %6, align 8
  %35 = ptrtoint %struct.rndis_per_packet_info* %34 to i64
  %36 = load %struct.rndis_per_packet_info*, %struct.rndis_per_packet_info** %6, align 8
  %37 = getelementptr inbounds %struct.rndis_per_packet_info, %struct.rndis_per_packet_info* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %35, %38
  %40 = inttoptr i64 %39 to i8*
  store i8* %40, i8** %3, align 8
  br label %57

41:                                               ; preds = %27
  %42 = load %struct.rndis_per_packet_info*, %struct.rndis_per_packet_info** %6, align 8
  %43 = getelementptr inbounds %struct.rndis_per_packet_info, %struct.rndis_per_packet_info* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = sub nsw i64 %46, %44
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %7, align 4
  %49 = load %struct.rndis_per_packet_info*, %struct.rndis_per_packet_info** %6, align 8
  %50 = ptrtoint %struct.rndis_per_packet_info* %49 to i64
  %51 = load %struct.rndis_per_packet_info*, %struct.rndis_per_packet_info** %6, align 8
  %52 = getelementptr inbounds %struct.rndis_per_packet_info, %struct.rndis_per_packet_info* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = add nsw i64 %50, %53
  %55 = inttoptr i64 %54 to %struct.rndis_per_packet_info*
  store %struct.rndis_per_packet_info* %55, %struct.rndis_per_packet_info** %6, align 8
  br label %24

56:                                               ; preds = %24
  store i8* null, i8** %3, align 8
  br label %57

57:                                               ; preds = %56, %33, %12
  %58 = load i8*, i8** %3, align 8
  ret i8* %58
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
