; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_user_mad.c_recv_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_user_mad.c_recv_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mad_agent = type { i32, i32, %struct.ib_umad_file* }
%struct.ib_umad_file = type { i32 }
%struct.ib_mad_recv_wc = type { %struct.TYPE_6__, %struct.TYPE_10__*, i64 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_10__ = type { i64, i32, i32, i32, i32, i32, i32 }
%struct.ib_umad_packet = type { %struct.TYPE_8__, %struct.ib_mad_recv_wc*, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i64, i64 }
%struct.ib_ah_attr = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32 }

@IB_WC_SUCCESS = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@IB_WC_GRH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_mad_agent*, %struct.ib_mad_recv_wc*)* @recv_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @recv_handler(%struct.ib_mad_agent* %0, %struct.ib_mad_recv_wc* %1) #0 {
  %3 = alloca %struct.ib_mad_agent*, align 8
  %4 = alloca %struct.ib_mad_recv_wc*, align 8
  %5 = alloca %struct.ib_umad_file*, align 8
  %6 = alloca %struct.ib_umad_packet*, align 8
  %7 = alloca %struct.ib_ah_attr, align 4
  store %struct.ib_mad_agent* %0, %struct.ib_mad_agent** %3, align 8
  store %struct.ib_mad_recv_wc* %1, %struct.ib_mad_recv_wc** %4, align 8
  %8 = load %struct.ib_mad_agent*, %struct.ib_mad_agent** %3, align 8
  %9 = getelementptr inbounds %struct.ib_mad_agent, %struct.ib_mad_agent* %8, i32 0, i32 2
  %10 = load %struct.ib_umad_file*, %struct.ib_umad_file** %9, align 8
  store %struct.ib_umad_file* %10, %struct.ib_umad_file** %5, align 8
  %11 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %4, align 8
  %12 = getelementptr inbounds %struct.ib_mad_recv_wc, %struct.ib_mad_recv_wc* %11, i32 0, i32 1
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @IB_WC_SUCCESS, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %179

19:                                               ; preds = %2
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.ib_umad_packet* @kzalloc(i32 88, i32 %20)
  store %struct.ib_umad_packet* %21, %struct.ib_umad_packet** %6, align 8
  %22 = load %struct.ib_umad_packet*, %struct.ib_umad_packet** %6, align 8
  %23 = icmp ne %struct.ib_umad_packet* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  br label %179

25:                                               ; preds = %19
  %26 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %4, align 8
  %27 = getelementptr inbounds %struct.ib_mad_recv_wc, %struct.ib_mad_recv_wc* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.ib_umad_packet*, %struct.ib_umad_packet** %6, align 8
  %30 = getelementptr inbounds %struct.ib_umad_packet, %struct.ib_umad_packet* %29, i32 0, i32 2
  store i64 %28, i64* %30, align 8
  %31 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %4, align 8
  %32 = load %struct.ib_umad_packet*, %struct.ib_umad_packet** %6, align 8
  %33 = getelementptr inbounds %struct.ib_umad_packet, %struct.ib_umad_packet* %32, i32 0, i32 1
  store %struct.ib_mad_recv_wc* %31, %struct.ib_mad_recv_wc** %33, align 8
  %34 = load %struct.ib_umad_packet*, %struct.ib_umad_packet** %6, align 8
  %35 = getelementptr inbounds %struct.ib_umad_packet, %struct.ib_umad_packet* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 12
  store i64 0, i64* %37, align 8
  %38 = load %struct.ib_umad_file*, %struct.ib_umad_file** %5, align 8
  %39 = call i64 @hdr_size(%struct.ib_umad_file* %38)
  %40 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %4, align 8
  %41 = getelementptr inbounds %struct.ib_mad_recv_wc, %struct.ib_mad_recv_wc* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %39, %42
  %44 = load %struct.ib_umad_packet*, %struct.ib_umad_packet** %6, align 8
  %45 = getelementptr inbounds %struct.ib_umad_packet, %struct.ib_umad_packet* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 11
  store i64 %43, i64* %47, align 8
  %48 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %4, align 8
  %49 = getelementptr inbounds %struct.ib_mad_recv_wc, %struct.ib_mad_recv_wc* %48, i32 0, i32 1
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 6
  %52 = load i32, i32* %51, align 4
  %53 = call i8* @cpu_to_be32(i32 %52)
  %54 = load %struct.ib_umad_packet*, %struct.ib_umad_packet** %6, align 8
  %55 = getelementptr inbounds %struct.ib_umad_packet, %struct.ib_umad_packet* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 10
  store i8* %53, i8** %57, align 8
  %58 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %4, align 8
  %59 = getelementptr inbounds %struct.ib_mad_recv_wc, %struct.ib_mad_recv_wc* %58, i32 0, i32 1
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 5
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @cpu_to_be16(i32 %62)
  %64 = load %struct.ib_umad_packet*, %struct.ib_umad_packet** %6, align 8
  %65 = getelementptr inbounds %struct.ib_umad_packet, %struct.ib_umad_packet* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 9
  store i32 %63, i32* %67, align 4
  %68 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %4, align 8
  %69 = getelementptr inbounds %struct.ib_mad_recv_wc, %struct.ib_mad_recv_wc* %68, i32 0, i32 1
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.ib_umad_packet*, %struct.ib_umad_packet** %6, align 8
  %74 = getelementptr inbounds %struct.ib_umad_packet, %struct.ib_umad_packet* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 8
  store i32 %72, i32* %76, align 8
  %77 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %4, align 8
  %78 = getelementptr inbounds %struct.ib_mad_recv_wc, %struct.ib_mad_recv_wc* %77, i32 0, i32 1
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.ib_umad_packet*, %struct.ib_umad_packet** %6, align 8
  %83 = getelementptr inbounds %struct.ib_umad_packet, %struct.ib_umad_packet* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 7
  store i32 %81, i32* %85, align 4
  %86 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %4, align 8
  %87 = getelementptr inbounds %struct.ib_mad_recv_wc, %struct.ib_mad_recv_wc* %86, i32 0, i32 1
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.ib_umad_packet*, %struct.ib_umad_packet** %6, align 8
  %92 = getelementptr inbounds %struct.ib_umad_packet, %struct.ib_umad_packet* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 6
  store i32 %90, i32* %94, align 8
  %95 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %4, align 8
  %96 = getelementptr inbounds %struct.ib_mad_recv_wc, %struct.ib_mad_recv_wc* %95, i32 0, i32 1
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @IB_WC_GRH, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  %103 = xor i1 %102, true
  %104 = xor i1 %103, true
  %105 = zext i1 %104 to i32
  %106 = load %struct.ib_umad_packet*, %struct.ib_umad_packet** %6, align 8
  %107 = getelementptr inbounds %struct.ib_umad_packet, %struct.ib_umad_packet* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 0
  store i32 %105, i32* %109, align 8
  %110 = load %struct.ib_umad_packet*, %struct.ib_umad_packet** %6, align 8
  %111 = getelementptr inbounds %struct.ib_umad_packet, %struct.ib_umad_packet* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %168

116:                                              ; preds = %25
  %117 = load %struct.ib_mad_agent*, %struct.ib_mad_agent** %3, align 8
  %118 = getelementptr inbounds %struct.ib_mad_agent, %struct.ib_mad_agent* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.ib_mad_agent*, %struct.ib_mad_agent** %3, align 8
  %121 = getelementptr inbounds %struct.ib_mad_agent, %struct.ib_mad_agent* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %4, align 8
  %124 = getelementptr inbounds %struct.ib_mad_recv_wc, %struct.ib_mad_recv_wc* %123, i32 0, i32 1
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %124, align 8
  %126 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %4, align 8
  %127 = getelementptr inbounds %struct.ib_mad_recv_wc, %struct.ib_mad_recv_wc* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @ib_init_ah_from_wc(i32 %119, i32 %122, %struct.TYPE_10__* %125, i32 %129, %struct.ib_ah_attr* %7)
  %131 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %7, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 4
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.ib_umad_packet*, %struct.ib_umad_packet** %6, align 8
  %135 = getelementptr inbounds %struct.ib_umad_packet, %struct.ib_umad_packet* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 5
  store i32 %133, i32* %137, align 4
  %138 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %7, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.ib_umad_packet*, %struct.ib_umad_packet** %6, align 8
  %142 = getelementptr inbounds %struct.ib_umad_packet, %struct.ib_umad_packet* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 4
  store i32 %140, i32* %144, align 8
  %145 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %7, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.ib_umad_packet*, %struct.ib_umad_packet** %6, align 8
  %149 = getelementptr inbounds %struct.ib_umad_packet, %struct.ib_umad_packet* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 3
  store i32 %147, i32* %151, align 4
  %152 = load %struct.ib_umad_packet*, %struct.ib_umad_packet** %6, align 8
  %153 = getelementptr inbounds %struct.ib_umad_packet, %struct.ib_umad_packet* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %7, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 1
  %159 = call i32 @memcpy(i32 %156, i32* %158, i32 16)
  %160 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %7, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = call i8* @cpu_to_be32(i32 %162)
  %164 = load %struct.ib_umad_packet*, %struct.ib_umad_packet** %6, align 8
  %165 = getelementptr inbounds %struct.ib_umad_packet, %struct.ib_umad_packet* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i32 0, i32 1
  store i8* %163, i8** %167, align 8
  br label %168

168:                                              ; preds = %116, %25
  %169 = load %struct.ib_umad_file*, %struct.ib_umad_file** %5, align 8
  %170 = load %struct.ib_mad_agent*, %struct.ib_mad_agent** %3, align 8
  %171 = load %struct.ib_umad_packet*, %struct.ib_umad_packet** %6, align 8
  %172 = call i64 @queue_packet(%struct.ib_umad_file* %169, %struct.ib_mad_agent* %170, %struct.ib_umad_packet* %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %175

174:                                              ; preds = %168
  br label %176

175:                                              ; preds = %168
  br label %182

176:                                              ; preds = %174
  %177 = load %struct.ib_umad_packet*, %struct.ib_umad_packet** %6, align 8
  %178 = call i32 @kfree(%struct.ib_umad_packet* %177)
  br label %179

179:                                              ; preds = %176, %24, %18
  %180 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %4, align 8
  %181 = call i32 @ib_free_recv_mad(%struct.ib_mad_recv_wc* %180)
  br label %182

182:                                              ; preds = %179, %175
  ret void
}

declare dso_local %struct.ib_umad_packet* @kzalloc(i32, i32) #1

declare dso_local i64 @hdr_size(%struct.ib_umad_file*) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @ib_init_ah_from_wc(i32, i32, %struct.TYPE_10__*, i32, %struct.ib_ah_attr*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i64 @queue_packet(%struct.ib_umad_file*, %struct.ib_mad_agent*, %struct.ib_umad_packet*) #1

declare dso_local i32 @kfree(%struct.ib_umad_packet*) #1

declare dso_local i32 @ib_free_recv_mad(%struct.ib_mad_recv_wc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
