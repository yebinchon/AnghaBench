; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/aoe/extr_aoecmd.c_resend.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/aoe/extr_aoecmd.c_resend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aoedev = type { i32, i32 }
%struct.frame = type { i32, i8*, i32, i8*, %struct.sk_buff*, %struct.aoetgt* }
%struct.sk_buff = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.aoetgt = type { %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.sk_buff_head = type { i32 }
%struct.aoe_hdr = type { i32, i32, i32 }
%struct.aoe_atahdr = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"aoe: resend: no interfaces to rotate to.\0A\00", align 1
@FFL_PROBE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [64 x i8] c"%15s e%ld.%d oldtag=%08x@%08lx newtag=%08x s=%pm d=%pm nout=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"retransmit\00", align 1
@jiffies = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aoedev*, %struct.frame*)* @resend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @resend(%struct.aoedev* %0, %struct.frame* %1) #0 {
  %3 = alloca %struct.aoedev*, align 8
  %4 = alloca %struct.frame*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.sk_buff_head, align 4
  %7 = alloca %struct.aoe_hdr*, align 8
  %8 = alloca %struct.aoe_atahdr*, align 8
  %9 = alloca %struct.aoetgt*, align 8
  %10 = alloca [128 x i8], align 16
  %11 = alloca i8*, align 8
  store %struct.aoedev* %0, %struct.aoedev** %3, align 8
  store %struct.frame* %1, %struct.frame** %4, align 8
  %12 = load %struct.frame*, %struct.frame** %4, align 8
  %13 = getelementptr inbounds %struct.frame, %struct.frame* %12, i32 0, i32 5
  %14 = load %struct.aoetgt*, %struct.aoetgt** %13, align 8
  store %struct.aoetgt* %14, %struct.aoetgt** %9, align 8
  %15 = load %struct.aoedev*, %struct.aoedev** %3, align 8
  %16 = call i8* @newtag(%struct.aoedev* %15)
  store i8* %16, i8** %11, align 8
  %17 = load %struct.frame*, %struct.frame** %4, align 8
  %18 = getelementptr inbounds %struct.frame, %struct.frame* %17, i32 0, i32 4
  %19 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  store %struct.sk_buff* %19, %struct.sk_buff** %5, align 8
  %20 = load %struct.aoetgt*, %struct.aoetgt** %9, align 8
  %21 = call i32* @ifrotate(%struct.aoetgt* %20)
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %2
  %24 = call i32 @pr_info(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.frame*, %struct.frame** %4, align 8
  %26 = call i32 @ktcomplete(%struct.frame* %25, i32* null)
  br label %118

27:                                               ; preds = %2
  %28 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %29 = call i64 @skb_mac_header(%struct.sk_buff* %28)
  %30 = inttoptr i64 %29 to %struct.aoe_hdr*
  store %struct.aoe_hdr* %30, %struct.aoe_hdr** %7, align 8
  %31 = load %struct.aoe_hdr*, %struct.aoe_hdr** %7, align 8
  %32 = getelementptr inbounds %struct.aoe_hdr, %struct.aoe_hdr* %31, i64 1
  %33 = bitcast %struct.aoe_hdr* %32 to %struct.aoe_atahdr*
  store %struct.aoe_atahdr* %33, %struct.aoe_atahdr** %8, align 8
  %34 = load %struct.frame*, %struct.frame** %4, align 8
  %35 = getelementptr inbounds %struct.frame, %struct.frame* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @FFL_PROBE, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %65, label %40

40:                                               ; preds = %27
  %41 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  %42 = load %struct.aoedev*, %struct.aoedev** %3, align 8
  %43 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.aoedev*, %struct.aoedev** %3, align 8
  %46 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.frame*, %struct.frame** %4, align 8
  %49 = getelementptr inbounds %struct.frame, %struct.frame* %48, i32 0, i32 3
  %50 = load i8*, i8** %49, align 8
  %51 = load i64, i64* @jiffies, align 8
  %52 = load i8*, i8** %11, align 8
  %53 = load %struct.aoe_hdr*, %struct.aoe_hdr** %7, align 8
  %54 = getelementptr inbounds %struct.aoe_hdr, %struct.aoe_hdr* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.aoe_hdr*, %struct.aoe_hdr** %7, align 8
  %57 = getelementptr inbounds %struct.aoe_hdr, %struct.aoe_hdr* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.aoetgt*, %struct.aoetgt** %9, align 8
  %60 = getelementptr inbounds %struct.aoetgt, %struct.aoetgt* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @snprintf(i8* %41, i32 128, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %44, i32 %47, i8* %50, i64 %51, i8* %52, i32 %55, i32 %58, i32 %61)
  %63 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  %64 = call i32 @aoechr_error(i8* %63)
  br label %65

65:                                               ; preds = %40, %27
  %66 = load i8*, i8** %11, align 8
  %67 = load %struct.frame*, %struct.frame** %4, align 8
  %68 = getelementptr inbounds %struct.frame, %struct.frame* %67, i32 0, i32 3
  store i8* %66, i8** %68, align 8
  %69 = load %struct.frame*, %struct.frame** %4, align 8
  %70 = call i32 @fhash(%struct.frame* %69)
  %71 = load i8*, i8** %11, align 8
  %72 = call i32 @cpu_to_be32(i8* %71)
  %73 = load %struct.aoe_hdr*, %struct.aoe_hdr** %7, align 8
  %74 = getelementptr inbounds %struct.aoe_hdr, %struct.aoe_hdr* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 4
  %75 = load %struct.aoe_hdr*, %struct.aoe_hdr** %7, align 8
  %76 = getelementptr inbounds %struct.aoe_hdr, %struct.aoe_hdr* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.aoetgt*, %struct.aoetgt** %9, align 8
  %79 = getelementptr inbounds %struct.aoetgt, %struct.aoetgt* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @memcpy(i32 %77, i32 %80, i32 4)
  %82 = load %struct.aoe_hdr*, %struct.aoe_hdr** %7, align 8
  %83 = getelementptr inbounds %struct.aoe_hdr, %struct.aoe_hdr* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.aoetgt*, %struct.aoetgt** %9, align 8
  %86 = getelementptr inbounds %struct.aoetgt, %struct.aoetgt* %85, i32 0, i32 0
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @memcpy(i32 %84, i32 %91, i32 4)
  %93 = load %struct.aoetgt*, %struct.aoetgt** %9, align 8
  %94 = getelementptr inbounds %struct.aoetgt, %struct.aoetgt* %93, i32 0, i32 0
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %96, align 8
  %98 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %99 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %98, i32 0, i32 0
  store %struct.TYPE_3__* %97, %struct.TYPE_3__** %99, align 8
  %100 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %101 = load i32, i32* @GFP_ATOMIC, align 4
  %102 = call %struct.sk_buff* @skb_clone(%struct.sk_buff* %100, i32 %101)
  store %struct.sk_buff* %102, %struct.sk_buff** %5, align 8
  %103 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %104 = icmp eq %struct.sk_buff* %103, null
  br i1 %104, label %105, label %106

105:                                              ; preds = %65
  br label %118

106:                                              ; preds = %65
  %107 = load %struct.frame*, %struct.frame** %4, align 8
  %108 = getelementptr inbounds %struct.frame, %struct.frame* %107, i32 0, i32 2
  %109 = call i32 @do_gettimeofday(i32* %108)
  %110 = load i64, i64* @jiffies, align 8
  %111 = inttoptr i64 %110 to i8*
  %112 = load %struct.frame*, %struct.frame** %4, align 8
  %113 = getelementptr inbounds %struct.frame, %struct.frame* %112, i32 0, i32 1
  store i8* %111, i8** %113, align 8
  %114 = call i32 @__skb_queue_head_init(%struct.sk_buff_head* %6)
  %115 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %116 = call i32 @__skb_queue_tail(%struct.sk_buff_head* %6, %struct.sk_buff* %115)
  %117 = call i32 @aoenet_xmit(%struct.sk_buff_head* %6)
  br label %118

118:                                              ; preds = %106, %105, %23
  ret void
}

declare dso_local i8* @newtag(%struct.aoedev*) #1

declare dso_local i32* @ifrotate(%struct.aoetgt*) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @ktcomplete(%struct.frame*, i32*) #1

declare dso_local i64 @skb_mac_header(%struct.sk_buff*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i32, i32, i8*, i64, i8*, i32, i32, i32) #1

declare dso_local i32 @aoechr_error(i8*) #1

declare dso_local i32 @fhash(%struct.frame*) #1

declare dso_local i32 @cpu_to_be32(i8*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local %struct.sk_buff* @skb_clone(%struct.sk_buff*, i32) #1

declare dso_local i32 @do_gettimeofday(i32*) #1

declare dso_local i32 @__skb_queue_head_init(%struct.sk_buff_head*) #1

declare dso_local i32 @__skb_queue_tail(%struct.sk_buff_head*, %struct.sk_buff*) #1

declare dso_local i32 @aoenet_xmit(%struct.sk_buff_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
