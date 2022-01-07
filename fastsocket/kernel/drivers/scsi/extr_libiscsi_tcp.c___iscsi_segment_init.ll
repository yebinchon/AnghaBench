; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_libiscsi_tcp.c___iscsi_segment_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_libiscsi_tcp.c___iscsi_segment_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_segment = type { i64, %struct.hash_desc*, i32* }
%struct.hash_desc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iscsi_segment*, i64, i32*, %struct.hash_desc*)* @__iscsi_segment_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__iscsi_segment_init(%struct.iscsi_segment* %0, i64 %1, i32* %2, %struct.hash_desc* %3) #0 {
  %5 = alloca %struct.iscsi_segment*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.hash_desc*, align 8
  store %struct.iscsi_segment* %0, %struct.iscsi_segment** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  store %struct.hash_desc* %3, %struct.hash_desc** %8, align 8
  %9 = load %struct.iscsi_segment*, %struct.iscsi_segment** %5, align 8
  %10 = call i32 @memset(%struct.iscsi_segment* %9, i32 0, i32 24)
  %11 = load i64, i64* %6, align 8
  %12 = load %struct.iscsi_segment*, %struct.iscsi_segment** %5, align 8
  %13 = getelementptr inbounds %struct.iscsi_segment, %struct.iscsi_segment* %12, i32 0, i32 0
  store i64 %11, i64* %13, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = load %struct.iscsi_segment*, %struct.iscsi_segment** %5, align 8
  %16 = getelementptr inbounds %struct.iscsi_segment, %struct.iscsi_segment* %15, i32 0, i32 2
  store i32* %14, i32** %16, align 8
  %17 = load %struct.hash_desc*, %struct.hash_desc** %8, align 8
  %18 = icmp ne %struct.hash_desc* %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %4
  %20 = load %struct.hash_desc*, %struct.hash_desc** %8, align 8
  %21 = load %struct.iscsi_segment*, %struct.iscsi_segment** %5, align 8
  %22 = getelementptr inbounds %struct.iscsi_segment, %struct.iscsi_segment* %21, i32 0, i32 1
  store %struct.hash_desc* %20, %struct.hash_desc** %22, align 8
  %23 = load %struct.hash_desc*, %struct.hash_desc** %8, align 8
  %24 = call i32 @crypto_hash_init(%struct.hash_desc* %23)
  br label %25

25:                                               ; preds = %19, %4
  ret void
}

declare dso_local i32 @memset(%struct.iscsi_segment*, i32, i32) #1

declare dso_local i32 @crypto_hash_init(%struct.hash_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
