; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/bt8xx/extr_dst.c_dst_gpio_inb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/bt8xx/extr_dst.c_dst_gpio_inb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dst_state = type { i32 }
%union.dst_gpio_packet = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@DST_IG_READ = common dso_local global i32 0, align 4
@verbose = common dso_local global i32 0, align 4
@DST_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"dst_gpio_inb error (err == %i)\00", align 1
@EREMOTEIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dst_state*, i64*)* @dst_gpio_inb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dst_gpio_inb(%struct.dst_state* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dst_state*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %union.dst_gpio_packet, align 8
  %7 = alloca i32, align 4
  store %struct.dst_state* %0, %struct.dst_state** %4, align 8
  store i64* %1, i64** %5, align 8
  %8 = load i64*, i64** %5, align 8
  store i64 0, i64* %8, align 8
  %9 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %10 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @DST_IG_READ, align 4
  %13 = call i32 @bt878_device_control(i32 %11, i32 %12, %union.dst_gpio_packet* %6)
  store i32 %13, i32* %7, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %2
  %16 = load i32, i32* @verbose, align 4
  %17 = load i32, i32* @DST_ERROR, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @dprintk(i32 %16, i32 %17, i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* @EREMOTEIO, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %27

22:                                               ; preds = %2
  %23 = bitcast %union.dst_gpio_packet* %6 to %struct.TYPE_2__*
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64*, i64** %5, align 8
  store i64 %25, i64* %26, align 8
  store i32 0, i32* %3, align 4
  br label %27

27:                                               ; preds = %22, %15
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i32 @bt878_device_control(i32, i32, %union.dst_gpio_packet*) #1

declare dso_local i32 @dprintk(i32, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
