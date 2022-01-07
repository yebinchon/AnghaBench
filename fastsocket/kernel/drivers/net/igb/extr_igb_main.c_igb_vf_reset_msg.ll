; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_igb_main.c_igb_vf_reset_msg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_igb_main.c_igb_vf_reset_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igb_adapter = type { %struct.TYPE_4__*, %struct.e1000_hw }
%struct.TYPE_4__ = type { i8*, i32 }
%struct.e1000_hw = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@E1000_VFTE = common dso_local global i32 0, align 4
@E1000_VFRE = common dso_local global i32 0, align 4
@IGB_VF_FLAG_CTS = common dso_local global i32 0, align 4
@E1000_VF_RESET = common dso_local global i64 0, align 8
@E1000_VT_MSGTYPE_ACK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.igb_adapter*, i64)* @igb_vf_reset_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @igb_vf_reset_msg(%struct.igb_adapter* %0, i64 %1) #0 {
  %3 = alloca %struct.igb_adapter*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.e1000_hw*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca [3 x i64], align 16
  %10 = alloca i32*, align 8
  store %struct.igb_adapter* %0, %struct.igb_adapter** %3, align 8
  store i64 %1, i64* %4, align 8
  %11 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %12 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %11, i32 0, i32 1
  store %struct.e1000_hw* %12, %struct.e1000_hw** %5, align 8
  %13 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %14 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = load i64, i64* %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %6, align 8
  %20 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %21 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* %4, align 8
  %25 = add i64 %24, 1
  %26 = sub i64 %23, %25
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %7, align 4
  %28 = getelementptr inbounds [3 x i64], [3 x i64]* %9, i64 0, i64 1
  %29 = bitcast i64* %28 to i32*
  store i32* %29, i32** %10, align 8
  %30 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %31 = load i64, i64* %4, align 8
  %32 = call i32 @igb_vf_reset(%struct.igb_adapter* %30, i64 %31)
  %33 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = load i32, i32* %7, align 4
  %36 = load i64, i64* %4, align 8
  %37 = call i32 @igb_rar_set_qsel(%struct.igb_adapter* %33, i8* %34, i32 %35, i64 %36)
  %38 = load i32, i32* @E1000_VFTE, align 4
  %39 = call i64 @rd32(i32 %38)
  store i64 %39, i64* %8, align 8
  %40 = load i32, i32* @E1000_VFTE, align 4
  %41 = load i64, i64* %8, align 8
  %42 = load i64, i64* %4, align 8
  %43 = trunc i64 %42 to i32
  %44 = shl i32 1, %43
  %45 = sext i32 %44 to i64
  %46 = or i64 %41, %45
  %47 = call i32 @wr32(i32 %40, i64 %46)
  %48 = load i32, i32* @E1000_VFRE, align 4
  %49 = call i64 @rd32(i32 %48)
  store i64 %49, i64* %8, align 8
  %50 = load i32, i32* @E1000_VFRE, align 4
  %51 = load i64, i64* %8, align 8
  %52 = load i64, i64* %4, align 8
  %53 = trunc i64 %52 to i32
  %54 = shl i32 1, %53
  %55 = sext i32 %54 to i64
  %56 = or i64 %51, %55
  %57 = call i32 @wr32(i32 %50, i64 %56)
  %58 = load i32, i32* @IGB_VF_FLAG_CTS, align 4
  %59 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %60 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %59, i32 0, i32 0
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = load i64, i64* %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = or i32 %65, %58
  store i32 %66, i32* %64, align 8
  %67 = load i64, i64* @E1000_VF_RESET, align 8
  %68 = load i64, i64* @E1000_VT_MSGTYPE_ACK, align 8
  %69 = or i64 %67, %68
  %70 = getelementptr inbounds [3 x i64], [3 x i64]* %9, i64 0, i64 0
  store i64 %69, i64* %70, align 16
  %71 = load i32*, i32** %10, align 8
  %72 = load i8*, i8** %6, align 8
  %73 = call i32 @memcpy(i32* %71, i8* %72, i32 6)
  %74 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %75 = getelementptr inbounds [3 x i64], [3 x i64]* %9, i64 0, i64 0
  %76 = load i64, i64* %4, align 8
  %77 = call i32 @igb_write_mbx(%struct.e1000_hw* %74, i64* %75, i32 3, i64 %76)
  ret void
}

declare dso_local i32 @igb_vf_reset(%struct.igb_adapter*, i64) #1

declare dso_local i32 @igb_rar_set_qsel(%struct.igb_adapter*, i8*, i32, i64) #1

declare dso_local i64 @rd32(i32) #1

declare dso_local i32 @wr32(i32, i64) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i32 @igb_write_mbx(%struct.e1000_hw*, i64*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
