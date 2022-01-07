; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_raw1394.c_raw1394_iso_fill_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_raw1394.c_raw1394_iso_fill_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpsb_iso = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.raw1394_iso_status = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hpsb_iso*, %struct.raw1394_iso_status*)* @raw1394_iso_fill_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @raw1394_iso_fill_status(%struct.hpsb_iso* %0, %struct.raw1394_iso_status* %1) #0 {
  %3 = alloca %struct.hpsb_iso*, align 8
  %4 = alloca %struct.raw1394_iso_status*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.hpsb_iso* %0, %struct.hpsb_iso** %3, align 8
  store %struct.raw1394_iso_status* %1, %struct.raw1394_iso_status** %4, align 8
  %7 = load %struct.hpsb_iso*, %struct.hpsb_iso** %3, align 8
  %8 = getelementptr inbounds %struct.hpsb_iso, %struct.hpsb_iso* %7, i32 0, i32 7
  %9 = call i32 @atomic_read(i32* %8)
  store i32 %9, i32* %5, align 4
  %10 = load %struct.hpsb_iso*, %struct.hpsb_iso** %3, align 8
  %11 = getelementptr inbounds %struct.hpsb_iso, %struct.hpsb_iso* %10, i32 0, i32 6
  %12 = call i32 @atomic_read(i32* %11)
  store i32 %12, i32* %6, align 4
  %13 = load %struct.hpsb_iso*, %struct.hpsb_iso** %3, align 8
  %14 = getelementptr inbounds %struct.hpsb_iso, %struct.hpsb_iso* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.raw1394_iso_status*, %struct.raw1394_iso_status** %4, align 8
  %17 = getelementptr inbounds %struct.raw1394_iso_status, %struct.raw1394_iso_status* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 4
  store i32 %15, i32* %18, align 4
  %19 = load %struct.hpsb_iso*, %struct.hpsb_iso** %3, align 8
  %20 = getelementptr inbounds %struct.hpsb_iso, %struct.hpsb_iso* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.raw1394_iso_status*, %struct.raw1394_iso_status** %4, align 8
  %23 = getelementptr inbounds %struct.raw1394_iso_status, %struct.raw1394_iso_status* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 3
  store i32 %21, i32* %24, align 4
  %25 = load %struct.hpsb_iso*, %struct.hpsb_iso** %3, align 8
  %26 = getelementptr inbounds %struct.hpsb_iso, %struct.hpsb_iso* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.raw1394_iso_status*, %struct.raw1394_iso_status** %4, align 8
  %29 = getelementptr inbounds %struct.raw1394_iso_status, %struct.raw1394_iso_status* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 2
  store i32 %27, i32* %30, align 4
  %31 = load %struct.hpsb_iso*, %struct.hpsb_iso** %3, align 8
  %32 = getelementptr inbounds %struct.hpsb_iso, %struct.hpsb_iso* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.raw1394_iso_status*, %struct.raw1394_iso_status** %4, align 8
  %35 = getelementptr inbounds %struct.raw1394_iso_status, %struct.raw1394_iso_status* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  store i32 %33, i32* %36, align 4
  %37 = load %struct.hpsb_iso*, %struct.hpsb_iso** %3, align 8
  %38 = getelementptr inbounds %struct.hpsb_iso, %struct.hpsb_iso* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.raw1394_iso_status*, %struct.raw1394_iso_status** %4, align 8
  %41 = getelementptr inbounds %struct.raw1394_iso_status, %struct.raw1394_iso_status* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store i32 %39, i32* %42, align 4
  %43 = load %struct.hpsb_iso*, %struct.hpsb_iso** %3, align 8
  %44 = call i32 @hpsb_iso_n_ready(%struct.hpsb_iso* %43)
  %45 = load %struct.raw1394_iso_status*, %struct.raw1394_iso_status** %4, align 8
  %46 = getelementptr inbounds %struct.raw1394_iso_status, %struct.raw1394_iso_status* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* %6, align 4
  %48 = and i32 %47, 65535
  %49 = shl i32 %48, 16
  %50 = load i32, i32* %5, align 4
  %51 = and i32 %50, 65535
  %52 = or i32 %49, %51
  %53 = load %struct.raw1394_iso_status*, %struct.raw1394_iso_status** %4, align 8
  %54 = getelementptr inbounds %struct.raw1394_iso_status, %struct.raw1394_iso_status* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  %55 = load %struct.hpsb_iso*, %struct.hpsb_iso** %3, align 8
  %56 = getelementptr inbounds %struct.hpsb_iso, %struct.hpsb_iso* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.raw1394_iso_status*, %struct.raw1394_iso_status** %4, align 8
  %59 = getelementptr inbounds %struct.raw1394_iso_status, %struct.raw1394_iso_status* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  ret void
}

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @hpsb_iso_n_ready(%struct.hpsb_iso*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
