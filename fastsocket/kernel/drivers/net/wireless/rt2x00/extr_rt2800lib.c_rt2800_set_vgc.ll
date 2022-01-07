; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2800lib.c_rt2800_set_vgc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2800lib.c_rt2800_set_vgc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32 }
%struct.link_qual = type { i32, i32, i32 }

@RT5592 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt2x00_dev*, %struct.link_qual*, i32)* @rt2800_set_vgc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2800_set_vgc(%struct.rt2x00_dev* %0, %struct.link_qual* %1, i32 %2) #0 {
  %4 = alloca %struct.rt2x00_dev*, align 8
  %5 = alloca %struct.link_qual*, align 8
  %6 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %4, align 8
  store %struct.link_qual* %1, %struct.link_qual** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.link_qual*, %struct.link_qual** %5, align 8
  %8 = getelementptr inbounds %struct.link_qual, %struct.link_qual* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %9, %10
  br i1 %11, label %12, label %40

12:                                               ; preds = %3
  %13 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %14 = load i32, i32* @RT5592, align 4
  %15 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %13, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %29

17:                                               ; preds = %12
  %18 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %19 = load %struct.link_qual*, %struct.link_qual** %5, align 8
  %20 = getelementptr inbounds %struct.link_qual, %struct.link_qual* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp sgt i32 %21, -65
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i32 74, i32 122
  %25 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %18, i32 83, i32 %24)
  %26 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @rt2800_bbp_write_with_rx_chain(%struct.rt2x00_dev* %26, i32 66, i32 %27)
  br label %33

29:                                               ; preds = %12
  %30 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %30, i32 66, i32 %31)
  br label %33

33:                                               ; preds = %29, %17
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.link_qual*, %struct.link_qual** %5, align 8
  %36 = getelementptr inbounds %struct.link_qual, %struct.link_qual* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.link_qual*, %struct.link_qual** %5, align 8
  %39 = getelementptr inbounds %struct.link_qual, %struct.link_qual* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 4
  br label %40

40:                                               ; preds = %33, %3
  ret void
}

declare dso_local i64 @rt2x00_rt(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @rt2800_bbp_write(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i32 @rt2800_bbp_write_with_rx_chain(%struct.rt2x00_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
