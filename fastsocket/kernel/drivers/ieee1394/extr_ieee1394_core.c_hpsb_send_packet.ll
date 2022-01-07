; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_ieee1394_core.c_hpsb_send_packet.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_ieee1394_core.c_hpsb_send_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpsb_packet = type { i64, i64, i64, i64, i64, i32, i32, i64, i32, i32, i64, i32, i64, i32, %struct.hpsb_host* }
%struct.hpsb_host = type { i64, i32*, %struct.TYPE_2__*, i32, i64, i64 }
%struct.TYPE_2__ = type { i32 (%struct.hpsb_host*, %struct.hpsb_packet*)* }

@EINVAL = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@hpsb_queued = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@pending_packets_lock = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"unable to allocate memory for concatenating header and data\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"send packet local\00", align 1
@ACK_PENDING = common dso_local global i32 0, align 4
@ACK_COMPLETE = common dso_local global i32 0, align 4
@hpsb_async = common dso_local global i64 0, align 8
@ALL_NODES = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [12 x i8] c"send packet\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hpsb_send_packet(%struct.hpsb_packet* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hpsb_packet*, align 8
  %4 = alloca %struct.hpsb_host*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  store %struct.hpsb_packet* %0, %struct.hpsb_packet** %3, align 8
  %8 = load %struct.hpsb_packet*, %struct.hpsb_packet** %3, align 8
  %9 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %8, i32 0, i32 14
  %10 = load %struct.hpsb_host*, %struct.hpsb_host** %9, align 8
  store %struct.hpsb_host* %10, %struct.hpsb_host** %4, align 8
  %11 = load %struct.hpsb_host*, %struct.hpsb_host** %4, align 8
  %12 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %11, i32 0, i32 5
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %203

18:                                               ; preds = %1
  %19 = load %struct.hpsb_host*, %struct.hpsb_host** %4, align 8
  %20 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %19, i32 0, i32 4
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %18
  %24 = load %struct.hpsb_packet*, %struct.hpsb_packet** %3, align 8
  %25 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.hpsb_host*, %struct.hpsb_host** %4, align 8
  %28 = call i64 @get_hpsb_generation(%struct.hpsb_host* %27)
  %29 = icmp ne i64 %26, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %23, %18
  %31 = load i32, i32* @EAGAIN, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %203

33:                                               ; preds = %23
  %34 = load i32, i32* @hpsb_queued, align 4
  %35 = load %struct.hpsb_packet*, %struct.hpsb_packet** %3, align 8
  %36 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %35, i32 0, i32 13
  store i32 %34, i32* %36, align 8
  %37 = load %struct.hpsb_packet*, %struct.hpsb_packet** %3, align 8
  %38 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %37, i32 0, i32 12
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %33
  %42 = load %struct.hpsb_packet*, %struct.hpsb_packet** %3, align 8
  %43 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %42, i32 0, i32 7
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br label %46

46:                                               ; preds = %41, %33
  %47 = phi i1 [ false, %33 ], [ %45, %41 ]
  %48 = zext i1 %47 to i32
  %49 = call i32 @WARN_ON(i32 %48)
  %50 = load %struct.hpsb_packet*, %struct.hpsb_packet** %3, align 8
  %51 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %50, i32 0, i32 12
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %46
  %55 = load %struct.hpsb_packet*, %struct.hpsb_packet** %3, align 8
  %56 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %55, i32 0, i32 7
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %79

59:                                               ; preds = %54, %46
  %60 = load %struct.hpsb_packet*, %struct.hpsb_packet** %3, align 8
  %61 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %60, i32 0, i32 11
  %62 = call i32 @atomic_inc(i32* %61)
  %63 = load i64, i64* @jiffies, align 8
  %64 = load i32, i32* @HZ, align 4
  %65 = mul nsw i32 10, %64
  %66 = sext i32 %65 to i64
  %67 = add nsw i64 %63, %66
  %68 = load %struct.hpsb_packet*, %struct.hpsb_packet** %3, align 8
  %69 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %68, i32 0, i32 10
  store i64 %67, i64* %69, align 8
  %70 = load i64, i64* %5, align 8
  %71 = call i32 @spin_lock_irqsave(i32* @pending_packets_lock, i64 %70)
  %72 = load %struct.hpsb_packet*, %struct.hpsb_packet** %3, align 8
  %73 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %72, i32 0, i32 9
  %74 = load %struct.hpsb_host*, %struct.hpsb_host** %4, align 8
  %75 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %74, i32 0, i32 3
  %76 = call i32 @list_add_tail(i32* %73, i32* %75)
  %77 = load i64, i64* %5, align 8
  %78 = call i32 @spin_unlock_irqrestore(i32* @pending_packets_lock, i64 %77)
  br label %79

79:                                               ; preds = %59, %54
  %80 = load %struct.hpsb_packet*, %struct.hpsb_packet** %3, align 8
  %81 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.hpsb_host*, %struct.hpsb_host** %4, align 8
  %84 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp eq i64 %82, %85
  br i1 %86, label %87, label %158

87:                                               ; preds = %79
  %88 = load %struct.hpsb_packet*, %struct.hpsb_packet** %3, align 8
  %89 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.hpsb_packet*, %struct.hpsb_packet** %3, align 8
  %92 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %91, i32 0, i32 3
  %93 = load i64, i64* %92, align 8
  %94 = add i64 %90, %93
  store i64 %94, i64* %7, align 8
  %95 = load i64, i64* %7, align 8
  %96 = load i32, i32* @GFP_ATOMIC, align 4
  %97 = call i32* @kmalloc(i64 %95, i32 %96)
  store i32* %97, i32** %6, align 8
  %98 = load i32*, i32** %6, align 8
  %99 = icmp ne i32* %98, null
  br i1 %99, label %104, label %100

100:                                              ; preds = %87
  %101 = call i32 @HPSB_ERR(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0))
  %102 = load i32, i32* @ENOMEM, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %2, align 4
  br label %203

104:                                              ; preds = %87
  %105 = load i32*, i32** %6, align 8
  %106 = load %struct.hpsb_packet*, %struct.hpsb_packet** %3, align 8
  %107 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %106, i32 0, i32 6
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.hpsb_packet*, %struct.hpsb_packet** %3, align 8
  %110 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %109, i32 0, i32 3
  %111 = load i64, i64* %110, align 8
  %112 = call i32 @memcpy(i32* %105, i32 %108, i64 %111)
  %113 = load %struct.hpsb_packet*, %struct.hpsb_packet** %3, align 8
  %114 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %113, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %130

117:                                              ; preds = %104
  %118 = load i32*, i32** %6, align 8
  %119 = load %struct.hpsb_packet*, %struct.hpsb_packet** %3, align 8
  %120 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %119, i32 0, i32 3
  %121 = load i64, i64* %120, align 8
  %122 = getelementptr inbounds i32, i32* %118, i64 %121
  %123 = load %struct.hpsb_packet*, %struct.hpsb_packet** %3, align 8
  %124 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %123, i32 0, i32 8
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.hpsb_packet*, %struct.hpsb_packet** %3, align 8
  %127 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %126, i32 0, i32 2
  %128 = load i64, i64* %127, align 8
  %129 = call i32 @memcpy(i32* %122, i32 %125, i64 %128)
  br label %130

130:                                              ; preds = %117, %104
  %131 = load %struct.hpsb_packet*, %struct.hpsb_packet** %3, align 8
  %132 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %131, i32 0, i32 6
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.hpsb_packet*, %struct.hpsb_packet** %3, align 8
  %135 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %134, i32 0, i32 3
  %136 = load i64, i64* %135, align 8
  %137 = trunc i64 %136 to i32
  %138 = call i32 @dump_packet(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %133, i32 %137, i32 -1)
  %139 = load %struct.hpsb_host*, %struct.hpsb_host** %4, align 8
  %140 = load %struct.hpsb_packet*, %struct.hpsb_packet** %3, align 8
  %141 = load %struct.hpsb_packet*, %struct.hpsb_packet** %3, align 8
  %142 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %141, i32 0, i32 7
  %143 = load i64, i64* %142, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %130
  %146 = load i32, i32* @ACK_PENDING, align 4
  br label %149

147:                                              ; preds = %130
  %148 = load i32, i32* @ACK_COMPLETE, align 4
  br label %149

149:                                              ; preds = %147, %145
  %150 = phi i32 [ %146, %145 ], [ %148, %147 ]
  %151 = call i32 @hpsb_packet_sent(%struct.hpsb_host* %139, %struct.hpsb_packet* %140, i32 %150)
  %152 = load %struct.hpsb_host*, %struct.hpsb_host** %4, align 8
  %153 = load i32*, i32** %6, align 8
  %154 = load i64, i64* %7, align 8
  %155 = call i32 @hpsb_packet_received(%struct.hpsb_host* %152, i32* %153, i64 %154, i32 0)
  %156 = load i32*, i32** %6, align 8
  %157 = call i32 @kfree(i32* %156)
  store i32 0, i32* %2, align 4
  br label %203

158:                                              ; preds = %79
  %159 = load %struct.hpsb_packet*, %struct.hpsb_packet** %3, align 8
  %160 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %159, i32 0, i32 4
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* @hpsb_async, align 8
  %163 = icmp eq i64 %161, %162
  br i1 %163, label %164, label %183

164:                                              ; preds = %158
  %165 = load %struct.hpsb_packet*, %struct.hpsb_packet** %3, align 8
  %166 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %165, i32 0, i32 1
  %167 = load i64, i64* %166, align 8
  %168 = call i64 @NODEID_TO_NODE(i64 %167)
  %169 = load i64, i64* @ALL_NODES, align 8
  %170 = icmp ne i64 %168, %169
  br i1 %170, label %171, label %183

171:                                              ; preds = %164
  %172 = load %struct.hpsb_host*, %struct.hpsb_host** %4, align 8
  %173 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %172, i32 0, i32 1
  %174 = load i32*, i32** %173, align 8
  %175 = load %struct.hpsb_packet*, %struct.hpsb_packet** %3, align 8
  %176 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %175, i32 0, i32 1
  %177 = load i64, i64* %176, align 8
  %178 = call i64 @NODEID_TO_NODE(i64 %177)
  %179 = getelementptr inbounds i32, i32* %174, i64 %178
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.hpsb_packet*, %struct.hpsb_packet** %3, align 8
  %182 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %181, i32 0, i32 5
  store i32 %180, i32* %182, align 8
  br label %183

183:                                              ; preds = %171, %164, %158
  %184 = load %struct.hpsb_packet*, %struct.hpsb_packet** %3, align 8
  %185 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %184, i32 0, i32 6
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.hpsb_packet*, %struct.hpsb_packet** %3, align 8
  %188 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %187, i32 0, i32 3
  %189 = load i64, i64* %188, align 8
  %190 = trunc i64 %189 to i32
  %191 = load %struct.hpsb_packet*, %struct.hpsb_packet** %3, align 8
  %192 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %191, i32 0, i32 5
  %193 = load i32, i32* %192, align 8
  %194 = call i32 @dump_packet(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %186, i32 %190, i32 %193)
  %195 = load %struct.hpsb_host*, %struct.hpsb_host** %4, align 8
  %196 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %195, i32 0, i32 2
  %197 = load %struct.TYPE_2__*, %struct.TYPE_2__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %197, i32 0, i32 0
  %199 = load i32 (%struct.hpsb_host*, %struct.hpsb_packet*)*, i32 (%struct.hpsb_host*, %struct.hpsb_packet*)** %198, align 8
  %200 = load %struct.hpsb_host*, %struct.hpsb_host** %4, align 8
  %201 = load %struct.hpsb_packet*, %struct.hpsb_packet** %3, align 8
  %202 = call i32 %199(%struct.hpsb_host* %200, %struct.hpsb_packet* %201)
  store i32 %202, i32* %2, align 4
  br label %203

203:                                              ; preds = %183, %149, %100, %30, %15
  %204 = load i32, i32* %2, align 4
  ret i32 %204
}

declare dso_local i64 @get_hpsb_generation(%struct.hpsb_host*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32* @kmalloc(i64, i32) #1

declare dso_local i32 @HPSB_ERR(i8*) #1

declare dso_local i32 @memcpy(i32*, i32, i64) #1

declare dso_local i32 @dump_packet(i8*, i32, i32, i32) #1

declare dso_local i32 @hpsb_packet_sent(%struct.hpsb_host*, %struct.hpsb_packet*, i32) #1

declare dso_local i32 @hpsb_packet_received(%struct.hpsb_host*, i32*, i64, i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i64 @NODEID_TO_NODE(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
