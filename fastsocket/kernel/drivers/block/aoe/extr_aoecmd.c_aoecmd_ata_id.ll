; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/aoe/extr_aoecmd.c_aoecmd_ata_id.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/aoe/extr_aoecmd.c_aoecmd_ata_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32 }
%struct.aoedev = type { %struct.TYPE_4__, i32, i32, %struct.aoetgt** }
%struct.TYPE_4__ = type { i32 }
%struct.aoetgt = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.aoe_hdr = type { i32 }
%struct.aoe_atahdr = type { i32, i32, i32 }
%struct.frame = type { i64, i32, i64, i64, i32, %struct.sk_buff* }

@ATA_CMD_ID_ATA = common dso_local global i32 0, align 4
@RTTAVG_INIT = common dso_local global i32 0, align 4
@RTTDEV_INIT = common dso_local global i32 0, align 4
@rexmit_timer = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sk_buff* @aoecmd_ata_id(%struct.aoedev* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.aoedev*, align 8
  %4 = alloca %struct.aoe_hdr*, align 8
  %5 = alloca %struct.aoe_atahdr*, align 8
  %6 = alloca %struct.frame*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.aoetgt*, align 8
  store %struct.aoedev* %0, %struct.aoedev** %3, align 8
  %9 = load %struct.aoedev*, %struct.aoedev** %3, align 8
  %10 = call %struct.frame* @newframe(%struct.aoedev* %9)
  store %struct.frame* %10, %struct.frame** %6, align 8
  %11 = load %struct.frame*, %struct.frame** %6, align 8
  %12 = icmp eq %struct.frame* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store %struct.sk_buff* null, %struct.sk_buff** %2, align 8
  br label %89

14:                                               ; preds = %1
  %15 = load %struct.aoedev*, %struct.aoedev** %3, align 8
  %16 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %15, i32 0, i32 3
  %17 = load %struct.aoetgt**, %struct.aoetgt*** %16, align 8
  %18 = load %struct.aoetgt*, %struct.aoetgt** %17, align 8
  store %struct.aoetgt* %18, %struct.aoetgt** %8, align 8
  %19 = load %struct.frame*, %struct.frame** %6, align 8
  %20 = getelementptr inbounds %struct.frame, %struct.frame* %19, i32 0, i32 5
  %21 = load %struct.sk_buff*, %struct.sk_buff** %20, align 8
  store %struct.sk_buff* %21, %struct.sk_buff** %7, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %23 = call i64 @skb_mac_header(%struct.sk_buff* %22)
  %24 = inttoptr i64 %23 to %struct.aoe_hdr*
  store %struct.aoe_hdr* %24, %struct.aoe_hdr** %4, align 8
  %25 = load %struct.aoe_hdr*, %struct.aoe_hdr** %4, align 8
  %26 = getelementptr inbounds %struct.aoe_hdr, %struct.aoe_hdr* %25, i64 1
  %27 = bitcast %struct.aoe_hdr* %26 to %struct.aoe_atahdr*
  store %struct.aoe_atahdr* %27, %struct.aoe_atahdr** %5, align 8
  %28 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %29 = call i32 @skb_put(%struct.sk_buff* %28, i32 16)
  %30 = load %struct.aoe_hdr*, %struct.aoe_hdr** %4, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %32 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @memset(%struct.aoe_hdr* %30, i32 0, i32 %33)
  %35 = load %struct.aoedev*, %struct.aoedev** %3, align 8
  %36 = load %struct.aoetgt*, %struct.aoetgt** %8, align 8
  %37 = load %struct.aoe_hdr*, %struct.aoe_hdr** %4, align 8
  %38 = call i32 @aoehdr_atainit(%struct.aoedev* %35, %struct.aoetgt* %36, %struct.aoe_hdr* %37)
  %39 = load %struct.frame*, %struct.frame** %6, align 8
  %40 = getelementptr inbounds %struct.frame, %struct.frame* %39, i32 0, i32 4
  store i32 %38, i32* %40, align 8
  %41 = load %struct.frame*, %struct.frame** %6, align 8
  %42 = call i32 @fhash(%struct.frame* %41)
  %43 = load %struct.aoetgt*, %struct.aoetgt** %8, align 8
  %44 = getelementptr inbounds %struct.aoetgt, %struct.aoetgt* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 8
  %47 = load %struct.frame*, %struct.frame** %6, align 8
  %48 = getelementptr inbounds %struct.frame, %struct.frame* %47, i32 0, i32 3
  store i64 0, i64* %48, align 8
  %49 = load %struct.frame*, %struct.frame** %6, align 8
  %50 = getelementptr inbounds %struct.frame, %struct.frame* %49, i32 0, i32 2
  store i64 0, i64* %50, align 8
  %51 = load %struct.aoe_atahdr*, %struct.aoe_atahdr** %5, align 8
  %52 = getelementptr inbounds %struct.aoe_atahdr, %struct.aoe_atahdr* %51, i32 0, i32 0
  store i32 1, i32* %52, align 4
  %53 = load i32, i32* @ATA_CMD_ID_ATA, align 4
  %54 = load %struct.aoe_atahdr*, %struct.aoe_atahdr** %5, align 8
  %55 = getelementptr inbounds %struct.aoe_atahdr, %struct.aoe_atahdr* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 4
  %56 = load %struct.aoe_atahdr*, %struct.aoe_atahdr** %5, align 8
  %57 = getelementptr inbounds %struct.aoe_atahdr, %struct.aoe_atahdr* %56, i32 0, i32 1
  store i32 160, i32* %57, align 4
  %58 = load %struct.aoetgt*, %struct.aoetgt** %8, align 8
  %59 = getelementptr inbounds %struct.aoetgt, %struct.aoetgt* %58, i32 0, i32 0
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %64 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 4
  %65 = load i32, i32* @RTTAVG_INIT, align 4
  %66 = load %struct.aoedev*, %struct.aoedev** %3, align 8
  %67 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %66, i32 0, i32 2
  store i32 %65, i32* %67, align 8
  %68 = load i32, i32* @RTTDEV_INIT, align 4
  %69 = load %struct.aoedev*, %struct.aoedev** %3, align 8
  %70 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  %71 = load i32, i32* @rexmit_timer, align 4
  %72 = load %struct.aoedev*, %struct.aoedev** %3, align 8
  %73 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  store i32 %71, i32* %74, align 8
  %75 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %76 = load i32, i32* @GFP_ATOMIC, align 4
  %77 = call %struct.sk_buff* @skb_clone(%struct.sk_buff* %75, i32 %76)
  store %struct.sk_buff* %77, %struct.sk_buff** %7, align 8
  %78 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %79 = icmp ne %struct.sk_buff* %78, null
  br i1 %79, label %80, label %87

80:                                               ; preds = %14
  %81 = load %struct.frame*, %struct.frame** %6, align 8
  %82 = getelementptr inbounds %struct.frame, %struct.frame* %81, i32 0, i32 1
  %83 = call i32 @do_gettimeofday(i32* %82)
  %84 = load i64, i64* @jiffies, align 8
  %85 = load %struct.frame*, %struct.frame** %6, align 8
  %86 = getelementptr inbounds %struct.frame, %struct.frame* %85, i32 0, i32 0
  store i64 %84, i64* %86, align 8
  br label %87

87:                                               ; preds = %80, %14
  %88 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  store %struct.sk_buff* %88, %struct.sk_buff** %2, align 8
  br label %89

89:                                               ; preds = %87, %13
  %90 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  ret %struct.sk_buff* %90
}

declare dso_local %struct.frame* @newframe(%struct.aoedev*) #1

declare dso_local i64 @skb_mac_header(%struct.sk_buff*) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @memset(%struct.aoe_hdr*, i32, i32) #1

declare dso_local i32 @aoehdr_atainit(%struct.aoedev*, %struct.aoetgt*, %struct.aoe_hdr*) #1

declare dso_local i32 @fhash(%struct.frame*) #1

declare dso_local %struct.sk_buff* @skb_clone(%struct.sk_buff*, i32) #1

declare dso_local i32 @do_gettimeofday(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
