; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_cxgb3_defs.h_lookup_stid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_cxgb3_defs.h_lookup_stid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t3c_tid_entry = type { i32 }
%struct.tid_info = type { i32, i32, i64, i32*, i64 }
%union.listen_entry = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.t3c_tid_entry* (%struct.tid_info*, i32)* @lookup_stid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.t3c_tid_entry* @lookup_stid(%struct.tid_info* %0, i32 %1) #0 {
  %3 = alloca %struct.t3c_tid_entry*, align 8
  %4 = alloca %struct.tid_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %union.listen_entry*, align 8
  store %struct.tid_info* %0, %struct.tid_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.tid_info*, %struct.tid_info** %4, align 8
  %9 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ult i32 %7, %10
  br i1 %11, label %22, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.tid_info*, %struct.tid_info** %4, align 8
  %15 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.tid_info*, %struct.tid_info** %4, align 8
  %18 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = add i32 %16, %19
  %21 = icmp uge i32 %13, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %12, %2
  store %struct.t3c_tid_entry* null, %struct.t3c_tid_entry** %3, align 8
  br label %54

23:                                               ; preds = %12
  %24 = load %struct.tid_info*, %struct.tid_info** %4, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call %union.listen_entry* @stid2entry(%struct.tid_info* %24, i32 %25)
  store %union.listen_entry* %26, %union.listen_entry** %6, align 8
  %27 = load %union.listen_entry*, %union.listen_entry** %6, align 8
  %28 = bitcast %union.listen_entry* %27 to i64*
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to i8*
  %31 = load %struct.tid_info*, %struct.tid_info** %4, align 8
  %32 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %31, i32 0, i32 4
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to i8*
  %35 = icmp uge i8* %30, %34
  br i1 %35, label %36, label %51

36:                                               ; preds = %23
  %37 = load %union.listen_entry*, %union.listen_entry** %6, align 8
  %38 = bitcast %union.listen_entry* %37 to i64*
  %39 = load i64, i64* %38, align 8
  %40 = inttoptr i64 %39 to i8*
  %41 = load %struct.tid_info*, %struct.tid_info** %4, align 8
  %42 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %41, i32 0, i32 3
  %43 = load i32*, i32** %42, align 8
  %44 = load %struct.tid_info*, %struct.tid_info** %4, align 8
  %45 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds i32, i32* %43, i64 %46
  %48 = bitcast i32* %47 to i8*
  %49 = icmp ult i8* %40, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %36
  store %struct.t3c_tid_entry* null, %struct.t3c_tid_entry** %3, align 8
  br label %54

51:                                               ; preds = %36, %23
  %52 = load %union.listen_entry*, %union.listen_entry** %6, align 8
  %53 = bitcast %union.listen_entry* %52 to %struct.t3c_tid_entry*
  store %struct.t3c_tid_entry* %53, %struct.t3c_tid_entry** %3, align 8
  br label %54

54:                                               ; preds = %51, %50, %22
  %55 = load %struct.t3c_tid_entry*, %struct.t3c_tid_entry** %3, align 8
  ret %struct.t3c_tid_entry* %55
}

declare dso_local %union.listen_entry* @stid2entry(%struct.tid_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
