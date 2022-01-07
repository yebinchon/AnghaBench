; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_lanai.c_host_vcc_start_tx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_lanai.c_host_vcc_start_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lanai_vcc = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_10__, %struct.TYPE_8__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }

@vcc_txicg = common dso_local global i32 0, align 4
@vcc_txcrc1 = common dso_local global i32 0, align 4
@vcc_txcrc2 = common dso_local global i32 0, align 4
@vcc_txreadptr = common dso_local global i32 0, align 4
@vcc_txendptr = common dso_local global i32 0, align 4
@vcc_txwriteptr = common dso_local global i32 0, align 4
@ATM_CBR = common dso_local global i64 0, align 8
@TXCBR_NEXT_BOZO = common dso_local global i32 0, align 4
@vcc_txcbr_next = common dso_local global i32 0, align 4
@vcc_txaddr2 = common dso_local global i32 0, align 4
@vcc_txaddr1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lanai_vcc*)* @host_vcc_start_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @host_vcc_start_tx(%struct.lanai_vcc* %0) #0 {
  %2 = alloca %struct.lanai_vcc*, align 8
  %3 = alloca i32, align 4
  store %struct.lanai_vcc* %0, %struct.lanai_vcc** %2, align 8
  %4 = load %struct.lanai_vcc*, %struct.lanai_vcc** %2, align 8
  %5 = getelementptr inbounds %struct.lanai_vcc, %struct.lanai_vcc* %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  store i32 %8, i32* %3, align 4
  %9 = load %struct.lanai_vcc*, %struct.lanai_vcc** %2, align 8
  %10 = load i32, i32* @vcc_txicg, align 4
  %11 = call i32 @cardvcc_write(%struct.lanai_vcc* %9, i32 0, i32 %10)
  %12 = load %struct.lanai_vcc*, %struct.lanai_vcc** %2, align 8
  %13 = load i32, i32* @vcc_txcrc1, align 4
  %14 = call i32 @cardvcc_write(%struct.lanai_vcc* %12, i32 65535, i32 %13)
  %15 = load %struct.lanai_vcc*, %struct.lanai_vcc** %2, align 8
  %16 = load i32, i32* @vcc_txcrc2, align 4
  %17 = call i32 @cardvcc_write(%struct.lanai_vcc* %15, i32 65535, i32 %16)
  %18 = load %struct.lanai_vcc*, %struct.lanai_vcc** %2, align 8
  %19 = load i32, i32* @vcc_txreadptr, align 4
  %20 = call i32 @cardvcc_write(%struct.lanai_vcc* %18, i32 0, i32 %19)
  %21 = load %struct.lanai_vcc*, %struct.lanai_vcc** %2, align 8
  %22 = load i32, i32* @vcc_txendptr, align 4
  %23 = call i32 @cardvcc_write(%struct.lanai_vcc* %21, i32 0, i32 %22)
  %24 = load %struct.lanai_vcc*, %struct.lanai_vcc** %2, align 8
  %25 = load i32, i32* @vcc_txwriteptr, align 4
  %26 = call i32 @cardvcc_write(%struct.lanai_vcc* %24, i32 0, i32 %25)
  %27 = load %struct.lanai_vcc*, %struct.lanai_vcc** %2, align 8
  %28 = load %struct.lanai_vcc*, %struct.lanai_vcc** %2, align 8
  %29 = getelementptr inbounds %struct.lanai_vcc, %struct.lanai_vcc* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @ATM_CBR, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %1
  %39 = load i32, i32* @TXCBR_NEXT_BOZO, align 4
  %40 = load %struct.lanai_vcc*, %struct.lanai_vcc** %2, align 8
  %41 = getelementptr inbounds %struct.lanai_vcc, %struct.lanai_vcc* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = or i32 %39, %42
  br label %45

44:                                               ; preds = %1
  br label %45

45:                                               ; preds = %44, %38
  %46 = phi i32 [ %43, %38 ], [ 0, %44 ]
  %47 = load i32, i32* @vcc_txcbr_next, align 4
  %48 = call i32 @cardvcc_write(%struct.lanai_vcc* %27, i32 %46, i32 %47)
  %49 = load %struct.lanai_vcc*, %struct.lanai_vcc** %2, align 8
  %50 = load i32, i32* %3, align 4
  %51 = ashr i32 %50, 16
  %52 = and i32 %51, 65535
  %53 = load i32, i32* @vcc_txaddr2, align 4
  %54 = call i32 @cardvcc_write(%struct.lanai_vcc* %49, i32 %52, i32 %53)
  %55 = load %struct.lanai_vcc*, %struct.lanai_vcc** %2, align 8
  %56 = load i32, i32* %3, align 4
  %57 = ashr i32 %56, 8
  %58 = and i32 %57, 255
  %59 = load %struct.lanai_vcc*, %struct.lanai_vcc** %2, align 8
  %60 = getelementptr inbounds %struct.lanai_vcc, %struct.lanai_vcc* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = call i32 @lanai_buf_size_cardorder(%struct.TYPE_10__* %61)
  %63 = call i32 @TXADDR1_SET_SIZE(i32 %62)
  %64 = or i32 %58, %63
  %65 = load i32, i32* @vcc_txaddr1, align 4
  %66 = call i32 @cardvcc_write(%struct.lanai_vcc* %55, i32 %64, i32 %65)
  ret void
}

declare dso_local i32 @cardvcc_write(%struct.lanai_vcc*, i32, i32) #1

declare dso_local i32 @TXADDR1_SET_SIZE(i32) #1

declare dso_local i32 @lanai_buf_size_cardorder(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
