; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_eth1394.c_ether1394_encapsulate_prep.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_eth1394.c_ether1394_encapsulate_prep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.eth1394_hdr = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32, i32, i8* }
%struct.TYPE_4__ = type { i64, i8* }

@hdr_type_len = common dso_local global i32* null, align 8
@ETH1394_HDR_LF_UF = common dso_local global i64 0, align 8
@ETH1394_HDR_LF_FF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, %union.eth1394_hdr*, i32, i32)* @ether1394_encapsulate_prep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ether1394_encapsulate_prep(i32 %0, i8* %1, %union.eth1394_hdr* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %union.eth1394_hdr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store %union.eth1394_hdr* %2, %union.eth1394_hdr** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32*, i32** @hdr_type_len, align 8
  %14 = load i64, i64* @ETH1394_HDR_LF_UF, align 8
  %15 = getelementptr inbounds i32, i32* %13, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = sub i32 %12, %16
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* %11, align 4
  %20 = icmp ule i32 %18, %19
  br i1 %20, label %21, label %30

21:                                               ; preds = %5
  %22 = load i64, i64* @ETH1394_HDR_LF_UF, align 8
  %23 = load %union.eth1394_hdr*, %union.eth1394_hdr** %8, align 8
  %24 = bitcast %union.eth1394_hdr* %23 to %struct.TYPE_4__*
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  store i64 %22, i64* %25, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = load %union.eth1394_hdr*, %union.eth1394_hdr** %8, align 8
  %28 = bitcast %union.eth1394_hdr* %27 to %struct.TYPE_4__*
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  store i8* %26, i8** %29, align 8
  br label %54

30:                                               ; preds = %5
  %31 = load i64, i64* @ETH1394_HDR_LF_FF, align 8
  %32 = load %union.eth1394_hdr*, %union.eth1394_hdr** %8, align 8
  %33 = bitcast %union.eth1394_hdr* %32 to %struct.TYPE_3__*
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  store i64 %31, i64* %34, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = load %union.eth1394_hdr*, %union.eth1394_hdr** %8, align 8
  %37 = bitcast %union.eth1394_hdr* %36 to %struct.TYPE_3__*
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 3
  store i8* %35, i8** %38, align 8
  %39 = load i32, i32* %9, align 4
  %40 = sub i32 %39, 1
  %41 = load %union.eth1394_hdr*, %union.eth1394_hdr** %8, align 8
  %42 = bitcast %union.eth1394_hdr* %41 to %struct.TYPE_3__*
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  store i32 %40, i32* %43, align 8
  %44 = load i32, i32* %10, align 4
  %45 = load %union.eth1394_hdr*, %union.eth1394_hdr** %8, align 8
  %46 = bitcast %union.eth1394_hdr* %45 to %struct.TYPE_3__*
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 2
  store i32 %44, i32* %47, align 4
  %48 = load i32, i32* %6, align 4
  %49 = load i32*, i32** @hdr_type_len, align 8
  %50 = load i64, i64* @ETH1394_HDR_LF_FF, align 8
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = sub i32 %48, %52
  store i32 %53, i32* %11, align 4
  br label %54

54:                                               ; preds = %30, %21
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* %11, align 4
  %57 = call i32 @DIV_ROUND_UP(i32 %55, i32 %56)
  ret i32 %57
}

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
