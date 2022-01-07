; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_eth1394.c_ether1394_prep_write_packet.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_eth1394.c_ether1394_prep_write_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpsb_packet = type { i32, i32, i32, i32, i32*, i32, i32, i8* }
%struct.hpsb_host = type { i32 }

@EAGAIN = common dso_local global i32 0, align 4
@TCODE_WRITEB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hpsb_packet*, %struct.hpsb_host*, i32, i32, i8*, i32)* @ether1394_prep_write_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ether1394_prep_write_packet(%struct.hpsb_packet* %0, %struct.hpsb_host* %1, i32 %2, i32 %3, i8* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.hpsb_packet*, align 8
  %9 = alloca %struct.hpsb_host*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.hpsb_packet* %0, %struct.hpsb_packet** %8, align 8
  store %struct.hpsb_host* %1, %struct.hpsb_host** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  %14 = load i32, i32* %10, align 4
  %15 = load %struct.hpsb_packet*, %struct.hpsb_packet** %8, align 8
  %16 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  %17 = load %struct.hpsb_packet*, %struct.hpsb_packet** %8, align 8
  %18 = call i64 @hpsb_get_tlabel(%struct.hpsb_packet* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %6
  %21 = load i32, i32* @EAGAIN, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %7, align 4
  br label %78

23:                                               ; preds = %6
  %24 = load i32, i32* @TCODE_WRITEB, align 4
  %25 = load %struct.hpsb_packet*, %struct.hpsb_packet** %8, align 8
  %26 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load %struct.hpsb_packet*, %struct.hpsb_packet** %8, align 8
  %28 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %27, i32 0, i32 2
  store i32 16, i32* %28, align 8
  %29 = load %struct.hpsb_packet*, %struct.hpsb_packet** %8, align 8
  %30 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %29, i32 0, i32 3
  store i32 1, i32* %30, align 4
  %31 = load %struct.hpsb_packet*, %struct.hpsb_packet** %8, align 8
  %32 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = shl i32 %33, 16
  %35 = load %struct.hpsb_packet*, %struct.hpsb_packet** %8, align 8
  %36 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 8
  %38 = shl i32 %37, 10
  %39 = or i32 %34, %38
  %40 = or i32 %39, 256
  %41 = load i32, i32* @TCODE_WRITEB, align 4
  %42 = shl i32 %41, 4
  %43 = or i32 %40, %42
  %44 = load %struct.hpsb_packet*, %struct.hpsb_packet** %8, align 8
  %45 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %44, i32 0, i32 4
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  store i32 %43, i32* %47, align 4
  %48 = load %struct.hpsb_host*, %struct.hpsb_host** %9, align 8
  %49 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = shl i32 %50, 16
  %52 = load i32, i32* %11, align 4
  %53 = ashr i32 %52, 32
  %54 = or i32 %51, %53
  %55 = load %struct.hpsb_packet*, %struct.hpsb_packet** %8, align 8
  %56 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %55, i32 0, i32 4
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 1
  store i32 %54, i32* %58, align 4
  %59 = load i32, i32* %11, align 4
  %60 = load %struct.hpsb_packet*, %struct.hpsb_packet** %8, align 8
  %61 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %60, i32 0, i32 4
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 2
  store i32 %59, i32* %63, align 4
  %64 = load i32, i32* %13, align 4
  %65 = shl i32 %64, 16
  %66 = load %struct.hpsb_packet*, %struct.hpsb_packet** %8, align 8
  %67 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %66, i32 0, i32 4
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 3
  store i32 %65, i32* %69, align 4
  %70 = load i32, i32* %13, align 4
  %71 = add nsw i32 %70, 3
  %72 = and i32 %71, -4
  %73 = load %struct.hpsb_packet*, %struct.hpsb_packet** %8, align 8
  %74 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %73, i32 0, i32 6
  store i32 %72, i32* %74, align 4
  %75 = load i8*, i8** %12, align 8
  %76 = load %struct.hpsb_packet*, %struct.hpsb_packet** %8, align 8
  %77 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %76, i32 0, i32 7
  store i8* %75, i8** %77, align 8
  store i32 0, i32* %7, align 4
  br label %78

78:                                               ; preds = %23, %20
  %79 = load i32, i32* %7, align 4
  ret i32 %79
}

declare dso_local i64 @hpsb_get_tlabel(%struct.hpsb_packet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
