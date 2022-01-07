; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/bt8xx/extr_dst.c_dst_gpio_outb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/bt8xx/extr_dst.c_dst_gpio_outb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dst_state = type { i32 }
%union.dst_gpio_packet = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@verbose = common dso_local global i32 0, align 4
@DST_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"mask=[%04x], enbb=[%04x], outhigh=[%04x]\00", align 1
@DST_IG_ENABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [58 x i8] c"dst_gpio_enb error (err == %i, mask == %02x, enb == %02x)\00", align 1
@EREMOTEIO = common dso_local global i32 0, align 4
@DST_IG_WRITE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [63 x i8] c"dst_gpio_outb error (err == %i, enbb == %02x, outhigh == %02x)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dst_state*, i32, i32, i32, i32)* @dst_gpio_outb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dst_gpio_outb(%struct.dst_state* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.dst_state*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %union.dst_gpio_packet, align 4
  %13 = alloca %union.dst_gpio_packet, align 4
  %14 = alloca i32, align 4
  store %struct.dst_state* %0, %struct.dst_state** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load i32, i32* %8, align 4
  %16 = bitcast %union.dst_gpio_packet* %12 to %struct.TYPE_3__*
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* %9, align 4
  %19 = bitcast %union.dst_gpio_packet* %12 to %struct.TYPE_3__*
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* @verbose, align 4
  %22 = load i32, i32* @DST_INFO, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* %10, align 4
  %26 = call i32 @dprintk(i32 %21, i32 %22, i32 1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %24, i32 %25)
  %27 = load %struct.dst_state*, %struct.dst_state** %7, align 8
  %28 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @DST_IG_ENABLE, align 4
  %31 = call i32 @bt878_device_control(i32 %29, i32 %30, %union.dst_gpio_packet* %12)
  store i32 %31, i32* %14, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %5
  %34 = load i32, i32* @verbose, align 4
  %35 = load i32, i32* @DST_INFO, align 4
  %36 = load i32, i32* %14, align 4
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @dprintk(i32 %34, i32 %35, i32 1, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i32 %36, i32 %37, i32 %38)
  %40 = load i32, i32* @EREMOTEIO, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %6, align 4
  br label %75

42:                                               ; preds = %5
  %43 = call i32 @udelay(i32 1000)
  %44 = load i32, i32* %9, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  store i32 0, i32* %6, align 4
  br label %75

47:                                               ; preds = %42
  %48 = load i32, i32* %11, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = call i32 @msleep(i32 10)
  br label %52

52:                                               ; preds = %50, %47
  %53 = load i32, i32* %9, align 4
  %54 = bitcast %union.dst_gpio_packet* %13 to %struct.TYPE_4__*
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  %56 = load i32, i32* %10, align 4
  %57 = bitcast %union.dst_gpio_packet* %13 to %struct.TYPE_4__*
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  %59 = load %struct.dst_state*, %struct.dst_state** %7, align 8
  %60 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @DST_IG_WRITE, align 4
  %63 = call i32 @bt878_device_control(i32 %61, i32 %62, %union.dst_gpio_packet* %13)
  store i32 %63, i32* %14, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %74

65:                                               ; preds = %52
  %66 = load i32, i32* @verbose, align 4
  %67 = load i32, i32* @DST_INFO, align 4
  %68 = load i32, i32* %14, align 4
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* %10, align 4
  %71 = call i32 @dprintk(i32 %66, i32 %67, i32 1, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.2, i64 0, i64 0), i32 %68, i32 %69, i32 %70)
  %72 = load i32, i32* @EREMOTEIO, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %6, align 4
  br label %75

74:                                               ; preds = %52
  store i32 0, i32* %6, align 4
  br label %75

75:                                               ; preds = %74, %65, %46, %33
  %76 = load i32, i32* %6, align 4
  ret i32 %76
}

declare dso_local i32 @dprintk(i32, i32, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @bt878_device_control(i32, i32, %union.dst_gpio_packet*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
