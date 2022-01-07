; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_gl620a.c_genelink_rx_fixup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_gl620a.c_genelink_rx_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { i32 }
%struct.sk_buff = type { i32, i64 }
%struct.gl_header = type { %struct.gl_packet, i32 }
%struct.gl_packet = type { i32*, i32 }

@GL_MAX_TRANSMIT_PACKETS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"genelink: invalid received packet count %u\00", align 1
@GL_MAX_PACKET_LEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"genelink: invalid rx length %d\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbnet*, %struct.sk_buff*)* @genelink_rx_fixup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @genelink_rx_fixup(%struct.usbnet* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usbnet*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.gl_header*, align 8
  %7 = alloca %struct.gl_packet*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.usbnet* %0, %struct.usbnet** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %12 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.gl_header*
  store %struct.gl_header* %14, %struct.gl_header** %6, align 8
  %15 = load %struct.gl_header*, %struct.gl_header** %6, align 8
  %16 = getelementptr inbounds %struct.gl_header, %struct.gl_header* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @le32_to_cpu(i32 %17)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* @GL_MAX_TRANSMIT_PACKETS, align 4
  %21 = icmp sgt i32 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load i32, i32* %10, align 4
  %24 = call i32 @dbg(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %23)
  store i32 0, i32* %3, align 4
  br label %90

25:                                               ; preds = %2
  %26 = load %struct.gl_header*, %struct.gl_header** %6, align 8
  %27 = getelementptr inbounds %struct.gl_header, %struct.gl_header* %26, i32 0, i32 0
  store %struct.gl_packet* %27, %struct.gl_packet** %7, align 8
  %28 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %29 = call i32 @skb_pull(%struct.sk_buff* %28, i32 4)
  br label %30

30:                                               ; preds = %62, %25
  %31 = load i32, i32* %10, align 4
  %32 = icmp sgt i32 %31, 1
  br i1 %32, label %33, label %76

33:                                               ; preds = %30
  %34 = load %struct.gl_packet*, %struct.gl_packet** %7, align 8
  %35 = getelementptr inbounds %struct.gl_packet, %struct.gl_packet* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @le32_to_cpu(i32 %36)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @GL_MAX_PACKET_LEN, align 4
  %40 = icmp sgt i32 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %33
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @dbg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  store i32 0, i32* %3, align 4
  br label %90

44:                                               ; preds = %33
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @GFP_ATOMIC, align 4
  %47 = call %struct.sk_buff* @alloc_skb(i32 %45, i32 %46)
  store %struct.sk_buff* %47, %struct.sk_buff** %8, align 8
  %48 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %49 = icmp ne %struct.sk_buff* %48, null
  br i1 %49, label %50, label %62

50:                                               ; preds = %44
  %51 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @skb_put(%struct.sk_buff* %51, i32 %52)
  %54 = load %struct.gl_packet*, %struct.gl_packet** %7, align 8
  %55 = getelementptr inbounds %struct.gl_packet, %struct.gl_packet* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @memcpy(i32 %53, i32* %56, i32 %57)
  %59 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %60 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %61 = call i32 @usbnet_skb_return(%struct.usbnet* %59, %struct.sk_buff* %60)
  br label %62

62:                                               ; preds = %50, %44
  %63 = load %struct.gl_packet*, %struct.gl_packet** %7, align 8
  %64 = getelementptr inbounds %struct.gl_packet, %struct.gl_packet* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %9, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = bitcast i32* %68 to %struct.gl_packet*
  store %struct.gl_packet* %69, %struct.gl_packet** %7, align 8
  %70 = load i32, i32* %10, align 4
  %71 = add nsw i32 %70, -1
  store i32 %71, i32* %10, align 4
  %72 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %73 = load i32, i32* %9, align 4
  %74 = add nsw i32 %73, 4
  %75 = call i32 @skb_pull(%struct.sk_buff* %72, i32 %74)
  br label %30

76:                                               ; preds = %30
  %77 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %78 = call i32 @skb_pull(%struct.sk_buff* %77, i32 4)
  %79 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %80 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @GL_MAX_PACKET_LEN, align 4
  %83 = icmp sgt i32 %81, %82
  br i1 %83, label %84, label %89

84:                                               ; preds = %76
  %85 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %86 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @dbg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %87)
  store i32 0, i32* %3, align 4
  br label %90

89:                                               ; preds = %76
  store i32 1, i32* %3, align 4
  br label %90

90:                                               ; preds = %89, %84, %41, %22
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @dbg(i8*, i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @usbnet_skb_return(%struct.usbnet*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
