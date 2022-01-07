; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_loop.c_do_lo_receive.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_loop.c_do_lo_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loop_device = type { %struct.file* }
%struct.file = type { i32 }
%struct.bio_vec = type { i32, i32, i32 }
%struct.lo_read_data = type { i32, i32, i32, %struct.loop_device* }
%struct.splice_desc = type { %struct.TYPE_2__, i32, i64, i32, i64 }
%struct.TYPE_2__ = type { %struct.lo_read_data* }

@lo_direct_splice_actor = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.loop_device*, %struct.bio_vec*, i32, i32)* @do_lo_receive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_lo_receive(%struct.loop_device* %0, %struct.bio_vec* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.loop_device*, align 8
  %6 = alloca %struct.bio_vec*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.lo_read_data, align 8
  %10 = alloca %struct.splice_desc, align 8
  %11 = alloca %struct.file*, align 8
  %12 = alloca i32, align 4
  store %struct.loop_device* %0, %struct.loop_device** %5, align 8
  store %struct.bio_vec* %1, %struct.bio_vec** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load %struct.loop_device*, %struct.loop_device** %5, align 8
  %14 = getelementptr inbounds %struct.lo_read_data, %struct.lo_read_data* %9, i32 0, i32 3
  store %struct.loop_device* %13, %struct.loop_device** %14, align 8
  %15 = load %struct.bio_vec*, %struct.bio_vec** %6, align 8
  %16 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds %struct.lo_read_data, %struct.lo_read_data* %9, i32 0, i32 2
  store i32 %17, i32* %18, align 8
  %19 = load %struct.bio_vec*, %struct.bio_vec** %6, align 8
  %20 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %struct.lo_read_data, %struct.lo_read_data* %9, i32 0, i32 1
  store i32 %21, i32* %22, align 4
  %23 = load i32, i32* %7, align 4
  %24 = getelementptr inbounds %struct.lo_read_data, %struct.lo_read_data* %9, i32 0, i32 0
  store i32 %23, i32* %24, align 8
  %25 = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %10, i32 0, i32 4
  store i64 0, i64* %25, align 8
  %26 = load %struct.bio_vec*, %struct.bio_vec** %6, align 8
  %27 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %10, i32 0, i32 3
  store i32 %28, i32* %29, align 8
  %30 = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %10, i32 0, i32 2
  store i64 0, i64* %30, align 8
  %31 = load i32, i32* %8, align 4
  %32 = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %10, i32 0, i32 1
  store i32 %31, i32* %32, align 8
  %33 = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %10, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  store %struct.lo_read_data* %9, %struct.lo_read_data** %34, align 8
  %35 = load %struct.loop_device*, %struct.loop_device** %5, align 8
  %36 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %35, i32 0, i32 0
  %37 = load %struct.file*, %struct.file** %36, align 8
  store %struct.file* %37, %struct.file** %11, align 8
  %38 = load %struct.file*, %struct.file** %11, align 8
  %39 = load i32, i32* @lo_direct_splice_actor, align 4
  %40 = call i32 @splice_direct_to_actor(%struct.file* %38, %struct.splice_desc* %10, i32 %39)
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %12, align 4
  ret i32 %41
}

declare dso_local i32 @splice_direct_to_actor(%struct.file*, %struct.splice_desc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
