; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_ieee1394_core.c_hpsb_send_phy_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_ieee1394_core.c_hpsb_send_phy_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpsb_host = type { i32 }
%struct.hpsb_packet = type { i32 }

@ALL_NODES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Invalid Parameter: rootid = %d   gapcnt = %d\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@PHYPACKET_PHYCONFIG_R = common dso_local global i32 0, align 4
@PHYPACKET_PORT_SHIFT = common dso_local global i32 0, align 4
@PHYPACKET_PHYCONFIG_T = common dso_local global i32 0, align 4
@PHYPACKET_GAPCOUNT_SHIFT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hpsb_send_phy_config(%struct.hpsb_host* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hpsb_host*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.hpsb_packet*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.hpsb_host* %0, %struct.hpsb_host** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @ALL_NODES, align 4
  %13 = icmp sge i32 %11, %12
  br i1 %13, label %29, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %15, -1
  br i1 %16, label %29, label %17

17:                                               ; preds = %14
  %18 = load i32, i32* %7, align 4
  %19 = icmp sgt i32 %18, 63
  br i1 %19, label %29, label %20

20:                                               ; preds = %17
  %21 = load i32, i32* %7, align 4
  %22 = icmp slt i32 %21, -1
  br i1 %22, label %29, label %23

23:                                               ; preds = %20
  %24 = load i32, i32* %6, align 4
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %26, label %35

26:                                               ; preds = %23
  %27 = load i32, i32* %7, align 4
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %29, label %35

29:                                               ; preds = %26, %20, %17, %14, %3
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @HPSB_DEBUG(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %31)
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %76

35:                                               ; preds = %26, %23
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, -1
  br i1 %37, label %38, label %46

38:                                               ; preds = %35
  %39 = load i32, i32* @PHYPACKET_PHYCONFIG_R, align 4
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @PHYPACKET_PORT_SHIFT, align 4
  %42 = shl i32 %40, %41
  %43 = or i32 %39, %42
  %44 = load i32, i32* %9, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %9, align 4
  br label %46

46:                                               ; preds = %38, %35
  %47 = load i32, i32* %7, align 4
  %48 = icmp ne i32 %47, -1
  br i1 %48, label %49, label %57

49:                                               ; preds = %46
  %50 = load i32, i32* @PHYPACKET_PHYCONFIG_T, align 4
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* @PHYPACKET_GAPCOUNT_SHIFT, align 4
  %53 = shl i32 %51, %52
  %54 = or i32 %50, %53
  %55 = load i32, i32* %9, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %9, align 4
  br label %57

57:                                               ; preds = %49, %46
  %58 = load %struct.hpsb_host*, %struct.hpsb_host** %5, align 8
  %59 = load i32, i32* %9, align 4
  %60 = call %struct.hpsb_packet* @hpsb_make_phypacket(%struct.hpsb_host* %58, i32 %59)
  store %struct.hpsb_packet* %60, %struct.hpsb_packet** %8, align 8
  %61 = load %struct.hpsb_packet*, %struct.hpsb_packet** %8, align 8
  %62 = icmp ne %struct.hpsb_packet* %61, null
  br i1 %62, label %66, label %63

63:                                               ; preds = %57
  %64 = load i32, i32* @ENOMEM, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %4, align 4
  br label %76

66:                                               ; preds = %57
  %67 = load %struct.hpsb_host*, %struct.hpsb_host** %5, align 8
  %68 = call i32 @get_hpsb_generation(%struct.hpsb_host* %67)
  %69 = load %struct.hpsb_packet*, %struct.hpsb_packet** %8, align 8
  %70 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 4
  %71 = load %struct.hpsb_packet*, %struct.hpsb_packet** %8, align 8
  %72 = call i32 @hpsb_send_packet_and_wait(%struct.hpsb_packet* %71)
  store i32 %72, i32* %10, align 4
  %73 = load %struct.hpsb_packet*, %struct.hpsb_packet** %8, align 8
  %74 = call i32 @hpsb_free_packet(%struct.hpsb_packet* %73)
  %75 = load i32, i32* %10, align 4
  store i32 %75, i32* %4, align 4
  br label %76

76:                                               ; preds = %66, %63, %29
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local i32 @HPSB_DEBUG(i8*, i32, i32) #1

declare dso_local %struct.hpsb_packet* @hpsb_make_phypacket(%struct.hpsb_host*, i32) #1

declare dso_local i32 @get_hpsb_generation(%struct.hpsb_host*) #1

declare dso_local i32 @hpsb_send_packet_and_wait(%struct.hpsb_packet*) #1

declare dso_local i32 @hpsb_free_packet(%struct.hpsb_packet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
