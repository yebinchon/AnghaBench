; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2x00debug.c_rt2x00debug_update_crypto.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2x00debug.c_rt2x00debug_update_crypto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { %struct.rt2x00debug_intf* }
%struct.rt2x00debug_intf = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.rxdone_entry_desc = type { i32, i32 }

@CIPHER_TKIP_NO_MIC = common dso_local global i32 0, align 4
@CIPHER_TKIP = common dso_local global i32 0, align 4
@CIPHER_NONE = common dso_local global i32 0, align 4
@CIPHER_MAX = common dso_local global i32 0, align 4
@RX_CRYPTO_SUCCESS = common dso_local global i32 0, align 4
@RX_CRYPTO_FAIL_ICV = common dso_local global i32 0, align 4
@RX_CRYPTO_FAIL_MIC = common dso_local global i32 0, align 4
@RX_CRYPTO_FAIL_KEY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rt2x00debug_update_crypto(%struct.rt2x00_dev* %0, %struct.rxdone_entry_desc* %1) #0 {
  %3 = alloca %struct.rt2x00_dev*, align 8
  %4 = alloca %struct.rxdone_entry_desc*, align 8
  %5 = alloca %struct.rt2x00debug_intf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %3, align 8
  store %struct.rxdone_entry_desc* %1, %struct.rxdone_entry_desc** %4, align 8
  %8 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %9 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %8, i32 0, i32 0
  %10 = load %struct.rt2x00debug_intf*, %struct.rt2x00debug_intf** %9, align 8
  store %struct.rt2x00debug_intf* %10, %struct.rt2x00debug_intf** %5, align 8
  %11 = load %struct.rxdone_entry_desc*, %struct.rxdone_entry_desc** %4, align 8
  %12 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %6, align 4
  %14 = load %struct.rxdone_entry_desc*, %struct.rxdone_entry_desc** %4, align 8
  %15 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @CIPHER_TKIP_NO_MIC, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* @CIPHER_TKIP, align 4
  store i32 %21, i32* %6, align 4
  br label %22

22:                                               ; preds = %20, %2
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @CIPHER_NONE, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @CIPHER_MAX, align 4
  %29 = icmp uge i32 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %26, %22
  br label %86

31:                                               ; preds = %26
  %32 = load i32, i32* %6, align 4
  %33 = add i32 %32, -1
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @RX_CRYPTO_SUCCESS, align 4
  %36 = icmp eq i32 %34, %35
  %37 = zext i1 %36 to i32
  %38 = load %struct.rt2x00debug_intf*, %struct.rt2x00debug_intf** %5, align 8
  %39 = getelementptr inbounds %struct.rt2x00debug_intf, %struct.rt2x00debug_intf* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = load i32, i32* %6, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, %37
  store i32 %46, i32* %44, align 4
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* @RX_CRYPTO_FAIL_ICV, align 4
  %49 = icmp eq i32 %47, %48
  %50 = zext i1 %49 to i32
  %51 = load %struct.rt2x00debug_intf*, %struct.rt2x00debug_intf** %5, align 8
  %52 = getelementptr inbounds %struct.rt2x00debug_intf, %struct.rt2x00debug_intf* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = load i32, i32* %6, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %58, %50
  store i32 %59, i32* %57, align 4
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* @RX_CRYPTO_FAIL_MIC, align 4
  %62 = icmp eq i32 %60, %61
  %63 = zext i1 %62 to i32
  %64 = load %struct.rt2x00debug_intf*, %struct.rt2x00debug_intf** %5, align 8
  %65 = getelementptr inbounds %struct.rt2x00debug_intf, %struct.rt2x00debug_intf* %64, i32 0, i32 0
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = load i32, i32* %6, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = add nsw i32 %71, %63
  store i32 %72, i32* %70, align 4
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* @RX_CRYPTO_FAIL_KEY, align 4
  %75 = icmp eq i32 %73, %74
  %76 = zext i1 %75 to i32
  %77 = load %struct.rt2x00debug_intf*, %struct.rt2x00debug_intf** %5, align 8
  %78 = getelementptr inbounds %struct.rt2x00debug_intf, %struct.rt2x00debug_intf* %77, i32 0, i32 0
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = load i32, i32* %6, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = add nsw i32 %84, %76
  store i32 %85, i32* %83, align 4
  br label %86

86:                                               ; preds = %31, %30
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
