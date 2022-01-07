; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/bt8xx/extr_bttv-risc.c_bttv_buffer_activate_vbi.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/bt8xx/extr_bttv-risc.c_bttv_buffer_activate_vbi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bttv = type { i32 }
%struct.bttv_buffer = type { i64*, %struct.btcx_riscmem, %struct.btcx_riscmem, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.btcx_riscmem = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }

@VIDEOBUF_ACTIVE = common dso_local global i32 0, align 4
@BT848_E_CROP = common dso_local global i32 0, align 4
@BT848_E_VDELAY_LO = common dso_local global i32 0, align 4
@BT848_O_VDELAY_LO = common dso_local global i32 0, align 4
@BT848_O_CROP = common dso_local global i32 0, align 4
@RISC_SLOT_O_VBI = common dso_local global i32 0, align 4
@RISC_SLOT_E_VBI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bttv_buffer_activate_vbi(%struct.bttv* %0, %struct.bttv_buffer* %1) #0 {
  %3 = alloca %struct.bttv*, align 8
  %4 = alloca %struct.bttv_buffer*, align 8
  %5 = alloca %struct.btcx_riscmem*, align 8
  %6 = alloca %struct.btcx_riscmem*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.bttv* %0, %struct.bttv** %3, align 8
  store %struct.bttv_buffer* %1, %struct.bttv_buffer** %4, align 8
  store %struct.btcx_riscmem* null, %struct.btcx_riscmem** %5, align 8
  store %struct.btcx_riscmem* null, %struct.btcx_riscmem** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %11 = load %struct.bttv_buffer*, %struct.bttv_buffer** %4, align 8
  %12 = icmp ne %struct.bttv_buffer* %11, null
  br i1 %12, label %13, label %84

13:                                               ; preds = %2
  %14 = load i32, i32* @VIDEOBUF_ACTIVE, align 4
  %15 = load %struct.bttv_buffer*, %struct.bttv_buffer** %4, align 8
  %16 = getelementptr inbounds %struct.bttv_buffer, %struct.bttv_buffer* %15, i32 0, i32 4
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  store i32 %14, i32* %17, align 4
  %18 = load %struct.bttv_buffer*, %struct.bttv_buffer** %4, align 8
  %19 = getelementptr inbounds %struct.bttv_buffer, %struct.bttv_buffer* %18, i32 0, i32 4
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = call i32 @list_del(i32* %20)
  %22 = load i32, i32* @BT848_E_CROP, align 4
  %23 = call i32 @btread(i32 %22)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* @BT848_E_VDELAY_LO, align 4
  %25 = call i32 @btread(i32 %24)
  %26 = load i32, i32* %9, align 4
  %27 = and i32 %26, 192
  %28 = shl i32 %27, 2
  %29 = add i32 %25, %28
  store i32 %29, i32* %10, align 4
  %30 = load %struct.bttv_buffer*, %struct.bttv_buffer** %4, align 8
  %31 = getelementptr inbounds %struct.bttv_buffer, %struct.bttv_buffer* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %10, align 4
  %35 = icmp ugt i32 %33, %34
  br i1 %35, label %36, label %63

36:                                               ; preds = %13
  %37 = load %struct.bttv_buffer*, %struct.bttv_buffer** %4, align 8
  %38 = getelementptr inbounds %struct.bttv_buffer, %struct.bttv_buffer* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = and i32 %40, 254
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %9, align 4
  %43 = and i32 %42, 63
  %44 = load %struct.bttv_buffer*, %struct.bttv_buffer** %4, align 8
  %45 = getelementptr inbounds %struct.bttv_buffer, %struct.bttv_buffer* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = lshr i32 %47, 2
  %49 = and i32 %48, 192
  %50 = or i32 %43, %49
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* @BT848_E_VDELAY_LO, align 4
  %53 = call i32 @btwrite(i32 %51, i32 %52)
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* @BT848_E_CROP, align 4
  %56 = call i32 @btwrite(i32 %54, i32 %55)
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* @BT848_O_VDELAY_LO, align 4
  %59 = call i32 @btwrite(i32 %57, i32 %58)
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* @BT848_O_CROP, align 4
  %62 = call i32 @btwrite(i32 %60, i32 %61)
  br label %63

63:                                               ; preds = %36, %13
  %64 = load %struct.bttv_buffer*, %struct.bttv_buffer** %4, align 8
  %65 = getelementptr inbounds %struct.bttv_buffer, %struct.bttv_buffer* %64, i32 0, i32 0
  %66 = load i64*, i64** %65, align 8
  %67 = getelementptr inbounds i64, i64* %66, i64 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp sgt i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %63
  %71 = load %struct.bttv_buffer*, %struct.bttv_buffer** %4, align 8
  %72 = getelementptr inbounds %struct.bttv_buffer, %struct.bttv_buffer* %71, i32 0, i32 2
  store %struct.btcx_riscmem* %72, %struct.btcx_riscmem** %5, align 8
  store i32 4, i32* %7, align 4
  br label %73

73:                                               ; preds = %70, %63
  %74 = load %struct.bttv_buffer*, %struct.bttv_buffer** %4, align 8
  %75 = getelementptr inbounds %struct.bttv_buffer, %struct.bttv_buffer* %74, i32 0, i32 0
  %76 = load i64*, i64** %75, align 8
  %77 = getelementptr inbounds i64, i64* %76, i64 1
  %78 = load i64, i64* %77, align 8
  %79 = icmp sgt i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %73
  store i32 0, i32* %7, align 4
  %81 = load %struct.bttv_buffer*, %struct.bttv_buffer** %4, align 8
  %82 = getelementptr inbounds %struct.bttv_buffer, %struct.bttv_buffer* %81, i32 0, i32 1
  store %struct.btcx_riscmem* %82, %struct.btcx_riscmem** %6, align 8
  store i32 4, i32* %8, align 4
  br label %83

83:                                               ; preds = %80, %73
  br label %84

84:                                               ; preds = %83, %2
  %85 = load %struct.bttv*, %struct.bttv** %3, align 8
  %86 = load i32, i32* @RISC_SLOT_O_VBI, align 4
  %87 = load %struct.btcx_riscmem*, %struct.btcx_riscmem** %5, align 8
  %88 = load i32, i32* %7, align 4
  %89 = call i32 @bttv_risc_hook(%struct.bttv* %85, i32 %86, %struct.btcx_riscmem* %87, i32 %88)
  %90 = load %struct.bttv*, %struct.bttv** %3, align 8
  %91 = load i32, i32* @RISC_SLOT_E_VBI, align 4
  %92 = load %struct.btcx_riscmem*, %struct.btcx_riscmem** %6, align 8
  %93 = load i32, i32* %8, align 4
  %94 = call i32 @bttv_risc_hook(%struct.bttv* %90, i32 %91, %struct.btcx_riscmem* %92, i32 %93)
  ret i32 0
}

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @btread(i32) #1

declare dso_local i32 @btwrite(i32, i32) #1

declare dso_local i32 @bttv_risc_hook(%struct.bttv*, i32, %struct.btcx_riscmem*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
