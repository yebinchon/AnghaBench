; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2x00debug.c_rt2x00debug_dump_frame.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2x00debug.c_rt2x00debug_dump_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { %struct.TYPE_4__, %struct.rt2x00debug_intf* }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.rt2x00debug_intf = type { i32, i32, i32 }
%struct.sk_buff = type { i32, i32 }
%struct.skb_frame_desc = type { i32, i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.rt2x00dump_hdr = type { i8*, i8*, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.timeval = type { i32, i32 }

@FRAME_DUMP_FILE_OPEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"txrx dump queue length exceeded\0A\00", align 1
@SKBDESC_DESC_IN_SKB = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Failed to copy skb for dump\0A\00", align 1
@DUMP_HEADER_VERSION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rt2x00debug_dump_frame(%struct.rt2x00_dev* %0, i32 %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.rt2x00_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.rt2x00debug_intf*, align 8
  %8 = alloca %struct.skb_frame_desc*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.rt2x00dump_hdr*, align 8
  %11 = alloca %struct.timeval, align 4
  %12 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %13 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %14 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %13, i32 0, i32 1
  %15 = load %struct.rt2x00debug_intf*, %struct.rt2x00debug_intf** %14, align 8
  store %struct.rt2x00debug_intf* %15, %struct.rt2x00debug_intf** %7, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %17 = call %struct.skb_frame_desc* @get_skb_frame_desc(%struct.sk_buff* %16)
  store %struct.skb_frame_desc* %17, %struct.skb_frame_desc** %8, align 8
  %18 = load i32, i32* @FRAME_DUMP_FILE_OPEN, align 4
  %19 = load %struct.rt2x00debug_intf*, %struct.rt2x00debug_intf** %7, align 8
  %20 = getelementptr inbounds %struct.rt2x00debug_intf, %struct.rt2x00debug_intf* %19, i32 0, i32 1
  %21 = call i32 @test_bit(i32 %18, i32* %20)
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i64 @likely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %3
  br label %190

28:                                               ; preds = %3
  %29 = call i32 @do_gettimeofday(%struct.timeval* %11)
  %30 = load %struct.rt2x00debug_intf*, %struct.rt2x00debug_intf** %7, align 8
  %31 = getelementptr inbounds %struct.rt2x00debug_intf, %struct.rt2x00debug_intf* %30, i32 0, i32 0
  %32 = call i32 @skb_queue_len(i32* %31)
  %33 = icmp sgt i32 %32, 20
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %36 = call i32 @rt2x00_dbg(%struct.rt2x00_dev* %35, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %190

37:                                               ; preds = %28
  %38 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %39 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %12, align 4
  %41 = load %struct.skb_frame_desc*, %struct.skb_frame_desc** %8, align 8
  %42 = getelementptr inbounds %struct.skb_frame_desc, %struct.skb_frame_desc* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @SKBDESC_DESC_IN_SKB, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %37
  %48 = load %struct.skb_frame_desc*, %struct.skb_frame_desc** %8, align 8
  %49 = getelementptr inbounds %struct.skb_frame_desc, %struct.skb_frame_desc* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %12, align 4
  %52 = sub nsw i32 %51, %50
  store i32 %52, i32* %12, align 4
  br label %53

53:                                               ; preds = %47, %37
  %54 = load %struct.skb_frame_desc*, %struct.skb_frame_desc** %8, align 8
  %55 = getelementptr inbounds %struct.skb_frame_desc, %struct.skb_frame_desc* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = sext i32 %56 to i64
  %58 = add i64 88, %57
  %59 = load i32, i32* %12, align 4
  %60 = sext i32 %59 to i64
  %61 = add i64 %58, %60
  %62 = trunc i64 %61 to i32
  %63 = load i32, i32* @GFP_ATOMIC, align 4
  %64 = call %struct.sk_buff* @alloc_skb(i32 %62, i32 %63)
  store %struct.sk_buff* %64, %struct.sk_buff** %9, align 8
  %65 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %66 = icmp ne %struct.sk_buff* %65, null
  br i1 %66, label %70, label %67

67:                                               ; preds = %53
  %68 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %69 = call i32 @rt2x00_dbg(%struct.rt2x00_dev* %68, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %190

70:                                               ; preds = %53
  %71 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %72 = call i64 @skb_put(%struct.sk_buff* %71, i32 88)
  %73 = inttoptr i64 %72 to %struct.rt2x00dump_hdr*
  store %struct.rt2x00dump_hdr* %73, %struct.rt2x00dump_hdr** %10, align 8
  %74 = load i32, i32* @DUMP_HEADER_VERSION, align 4
  %75 = call i8* @cpu_to_le32(i32 %74)
  %76 = load %struct.rt2x00dump_hdr*, %struct.rt2x00dump_hdr** %10, align 8
  %77 = getelementptr inbounds %struct.rt2x00dump_hdr, %struct.rt2x00dump_hdr* %76, i32 0, i32 11
  store i8* %75, i8** %77, align 8
  %78 = call i8* @cpu_to_le32(i32 88)
  %79 = load %struct.rt2x00dump_hdr*, %struct.rt2x00dump_hdr** %10, align 8
  %80 = getelementptr inbounds %struct.rt2x00dump_hdr, %struct.rt2x00dump_hdr* %79, i32 0, i32 10
  store i8* %78, i8** %80, align 8
  %81 = load %struct.skb_frame_desc*, %struct.skb_frame_desc** %8, align 8
  %82 = getelementptr inbounds %struct.skb_frame_desc, %struct.skb_frame_desc* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i8* @cpu_to_le32(i32 %83)
  %85 = load %struct.rt2x00dump_hdr*, %struct.rt2x00dump_hdr** %10, align 8
  %86 = getelementptr inbounds %struct.rt2x00dump_hdr, %struct.rt2x00dump_hdr* %85, i32 0, i32 9
  store i8* %84, i8** %86, align 8
  %87 = load i32, i32* %12, align 4
  %88 = call i8* @cpu_to_le32(i32 %87)
  %89 = load %struct.rt2x00dump_hdr*, %struct.rt2x00dump_hdr** %10, align 8
  %90 = getelementptr inbounds %struct.rt2x00dump_hdr, %struct.rt2x00dump_hdr* %89, i32 0, i32 8
  store i8* %88, i8** %90, align 8
  %91 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %92 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i8* @cpu_to_le16(i32 %94)
  %96 = load %struct.rt2x00dump_hdr*, %struct.rt2x00dump_hdr** %10, align 8
  %97 = getelementptr inbounds %struct.rt2x00dump_hdr, %struct.rt2x00dump_hdr* %96, i32 0, i32 7
  store i8* %95, i8** %97, align 8
  %98 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %99 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = call i8* @cpu_to_le16(i32 %101)
  %103 = load %struct.rt2x00dump_hdr*, %struct.rt2x00dump_hdr** %10, align 8
  %104 = getelementptr inbounds %struct.rt2x00dump_hdr, %struct.rt2x00dump_hdr* %103, i32 0, i32 6
  store i8* %102, i8** %104, align 8
  %105 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %106 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = call i8* @cpu_to_le16(i32 %108)
  %110 = load %struct.rt2x00dump_hdr*, %struct.rt2x00dump_hdr** %10, align 8
  %111 = getelementptr inbounds %struct.rt2x00dump_hdr, %struct.rt2x00dump_hdr* %110, i32 0, i32 5
  store i8* %109, i8** %111, align 8
  %112 = load i32, i32* %5, align 4
  %113 = call i8* @cpu_to_le16(i32 %112)
  %114 = load %struct.rt2x00dump_hdr*, %struct.rt2x00dump_hdr** %10, align 8
  %115 = getelementptr inbounds %struct.rt2x00dump_hdr, %struct.rt2x00dump_hdr* %114, i32 0, i32 4
  store i8* %113, i8** %115, align 8
  %116 = load %struct.skb_frame_desc*, %struct.skb_frame_desc** %8, align 8
  %117 = getelementptr inbounds %struct.skb_frame_desc, %struct.skb_frame_desc* %116, i32 0, i32 3
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 1
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.rt2x00dump_hdr*, %struct.rt2x00dump_hdr** %10, align 8
  %124 = getelementptr inbounds %struct.rt2x00dump_hdr, %struct.rt2x00dump_hdr* %123, i32 0, i32 3
  store i32 %122, i32* %124, align 4
  %125 = load %struct.skb_frame_desc*, %struct.skb_frame_desc** %8, align 8
  %126 = getelementptr inbounds %struct.skb_frame_desc, %struct.skb_frame_desc* %125, i32 0, i32 3
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.rt2x00dump_hdr*, %struct.rt2x00dump_hdr** %10, align 8
  %131 = getelementptr inbounds %struct.rt2x00dump_hdr, %struct.rt2x00dump_hdr* %130, i32 0, i32 2
  store i32 %129, i32* %131, align 8
  %132 = getelementptr inbounds %struct.timeval, %struct.timeval* %11, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = call i8* @cpu_to_le32(i32 %133)
  %135 = load %struct.rt2x00dump_hdr*, %struct.rt2x00dump_hdr** %10, align 8
  %136 = getelementptr inbounds %struct.rt2x00dump_hdr, %struct.rt2x00dump_hdr* %135, i32 0, i32 1
  store i8* %134, i8** %136, align 8
  %137 = getelementptr inbounds %struct.timeval, %struct.timeval* %11, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = call i8* @cpu_to_le32(i32 %138)
  %140 = load %struct.rt2x00dump_hdr*, %struct.rt2x00dump_hdr** %10, align 8
  %141 = getelementptr inbounds %struct.rt2x00dump_hdr, %struct.rt2x00dump_hdr* %140, i32 0, i32 0
  store i8* %139, i8** %141, align 8
  %142 = load %struct.skb_frame_desc*, %struct.skb_frame_desc** %8, align 8
  %143 = getelementptr inbounds %struct.skb_frame_desc, %struct.skb_frame_desc* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* @SKBDESC_DESC_IN_SKB, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %161, label %148

148:                                              ; preds = %70
  %149 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %150 = load %struct.skb_frame_desc*, %struct.skb_frame_desc** %8, align 8
  %151 = getelementptr inbounds %struct.skb_frame_desc, %struct.skb_frame_desc* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = call i64 @skb_put(%struct.sk_buff* %149, i32 %152)
  %154 = load %struct.skb_frame_desc*, %struct.skb_frame_desc** %8, align 8
  %155 = getelementptr inbounds %struct.skb_frame_desc, %struct.skb_frame_desc* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = load %struct.skb_frame_desc*, %struct.skb_frame_desc** %8, align 8
  %158 = getelementptr inbounds %struct.skb_frame_desc, %struct.skb_frame_desc* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @memcpy(i64 %153, i32 %156, i32 %159)
  br label %161

161:                                              ; preds = %148, %70
  %162 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %163 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %164 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = call i64 @skb_put(%struct.sk_buff* %162, i32 %165)
  %167 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %168 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %171 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @memcpy(i64 %166, i32 %169, i32 %172)
  %174 = load %struct.rt2x00debug_intf*, %struct.rt2x00debug_intf** %7, align 8
  %175 = getelementptr inbounds %struct.rt2x00debug_intf, %struct.rt2x00debug_intf* %174, i32 0, i32 0
  %176 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %177 = call i32 @skb_queue_tail(i32* %175, %struct.sk_buff* %176)
  %178 = load %struct.rt2x00debug_intf*, %struct.rt2x00debug_intf** %7, align 8
  %179 = getelementptr inbounds %struct.rt2x00debug_intf, %struct.rt2x00debug_intf* %178, i32 0, i32 2
  %180 = call i32 @wake_up_interruptible(i32* %179)
  %181 = load i32, i32* @FRAME_DUMP_FILE_OPEN, align 4
  %182 = load %struct.rt2x00debug_intf*, %struct.rt2x00debug_intf** %7, align 8
  %183 = getelementptr inbounds %struct.rt2x00debug_intf, %struct.rt2x00debug_intf* %182, i32 0, i32 1
  %184 = call i32 @test_bit(i32 %181, i32* %183)
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %190, label %186

186:                                              ; preds = %161
  %187 = load %struct.rt2x00debug_intf*, %struct.rt2x00debug_intf** %7, align 8
  %188 = getelementptr inbounds %struct.rt2x00debug_intf, %struct.rt2x00debug_intf* %187, i32 0, i32 0
  %189 = call i32 @skb_queue_purge(i32* %188)
  br label %190

190:                                              ; preds = %27, %34, %67, %186, %161
  ret void
}

declare dso_local %struct.skb_frame_desc* @get_skb_frame_desc(%struct.sk_buff*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @do_gettimeofday(%struct.timeval*) #1

declare dso_local i32 @skb_queue_len(i32*) #1

declare dso_local i32 @rt2x00_dbg(%struct.rt2x00_dev*, i8*) #1

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i64 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @memcpy(i64, i32, i32) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @skb_queue_purge(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
