; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/hostap/extr_hostap_download.c_prism2_download_aux_dump_proc_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/hostap/extr_hostap_download.c_prism2_download_aux_dump_proc_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.prism2_download_aux_dump* }
%struct.prism2_download_aux_dump = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@prism2_download_aux_dump_npages = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.seq_file*, i64*)* @prism2_download_aux_dump_proc_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @prism2_download_aux_dump_proc_start(%struct.seq_file* %0, i64* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.prism2_download_aux_dump*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store i64* %1, i64** %5, align 8
  %7 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %8 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %7, i32 0, i32 0
  %9 = load %struct.prism2_download_aux_dump*, %struct.prism2_download_aux_dump** %8, align 8
  store %struct.prism2_download_aux_dump* %9, %struct.prism2_download_aux_dump** %6, align 8
  %10 = load %struct.prism2_download_aux_dump*, %struct.prism2_download_aux_dump** %6, align 8
  %11 = getelementptr inbounds %struct.prism2_download_aux_dump, %struct.prism2_download_aux_dump* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @prism2_enable_aux_port(i32 %14, i32 1)
  %16 = load i64*, i64** %5, align 8
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @prism2_download_aux_dump_npages, align 8
  %19 = icmp sge i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %26

21:                                               ; preds = %2
  %22 = load i64*, i64** %5, align 8
  %23 = load i64, i64* %22, align 8
  %24 = add i64 %23, 1
  %25 = inttoptr i64 %24 to i8*
  store i8* %25, i8** %3, align 8
  br label %26

26:                                               ; preds = %21, %20
  %27 = load i8*, i8** %3, align 8
  ret i8* %27
}

declare dso_local i32 @prism2_enable_aux_port(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
