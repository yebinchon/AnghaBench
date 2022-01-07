; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v32/kernel/extr_debugport.c_start_port.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v32/kernel/extr_debugport.c_start_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dbg_port = type { i32, i32, i32, i8, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i8*, i8*, i8*, i32, i32 }

@pinmux_ser1 = common dso_local global i32 0, align 4
@pinmux_ser2 = common dso_local global i32 0, align 4
@pinmux_ser3 = common dso_local global i32 0, align 4
@regk_ser_f29_493 = common dso_local global i32 0, align 4
@regk_ser_no = common dso_local global i32 0, align 4
@regk_ser_yes = common dso_local global i8* null, align 8
@regk_ser_odd = common dso_local global i8* null, align 8
@regk_ser_even = common dso_local global i8* null, align 8
@regk_ser_bits7 = common dso_local global i8* null, align 8
@ser = common dso_local global i32 0, align 4
@rw_tr_baud_div = common dso_local global i32 0, align 4
@rw_rec_baud_div = common dso_local global i32 0, align 4
@rw_tr_dma_en = common dso_local global i32 0, align 4
@rw_tr_ctrl = common dso_local global i32 0, align 4
@rw_rec_ctrl = common dso_local global i32 0, align 4
@pinmux_ser4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dbg_port*)* @start_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @start_port(%struct.dbg_port* %0) #0 {
  %2 = alloca %struct.dbg_port*, align 8
  %3 = alloca %struct.TYPE_7__, align 8
  %4 = alloca %struct.TYPE_7__, align 8
  %5 = alloca %struct.TYPE_7__, align 8
  %6 = alloca %struct.TYPE_7__, align 8
  %7 = alloca %struct.TYPE_7__, align 8
  store %struct.dbg_port* %0, %struct.dbg_port** %2, align 8
  %8 = load %struct.dbg_port*, %struct.dbg_port** %2, align 8
  %9 = icmp ne %struct.dbg_port* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %137

11:                                               ; preds = %1
  %12 = load %struct.dbg_port*, %struct.dbg_port** %2, align 8
  %13 = getelementptr inbounds %struct.dbg_port, %struct.dbg_port* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  br label %137

17:                                               ; preds = %11
  %18 = load %struct.dbg_port*, %struct.dbg_port** %2, align 8
  %19 = getelementptr inbounds %struct.dbg_port, %struct.dbg_port* %18, i32 0, i32 0
  store i32 1, i32* %19, align 4
  %20 = load %struct.dbg_port*, %struct.dbg_port** %2, align 8
  %21 = getelementptr inbounds %struct.dbg_port, %struct.dbg_port* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %24, label %27

24:                                               ; preds = %17
  %25 = load i32, i32* @pinmux_ser1, align 4
  %26 = call i32 @crisv32_pinmux_alloc_fixed(i32 %25)
  br label %45

27:                                               ; preds = %17
  %28 = load %struct.dbg_port*, %struct.dbg_port** %2, align 8
  %29 = getelementptr inbounds %struct.dbg_port, %struct.dbg_port* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %30, 2
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i32, i32* @pinmux_ser2, align 4
  %34 = call i32 @crisv32_pinmux_alloc_fixed(i32 %33)
  br label %44

35:                                               ; preds = %27
  %36 = load %struct.dbg_port*, %struct.dbg_port** %2, align 8
  %37 = getelementptr inbounds %struct.dbg_port, %struct.dbg_port* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %38, 3
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load i32, i32* @pinmux_ser3, align 4
  %42 = call i32 @crisv32_pinmux_alloc_fixed(i32 %41)
  br label %43

43:                                               ; preds = %40, %35
  br label %44

44:                                               ; preds = %43, %32
  br label %45

45:                                               ; preds = %44, %24
  %46 = bitcast %struct.TYPE_7__* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %46, i8 0, i64 48, i1 false)
  %47 = bitcast %struct.TYPE_7__* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %47, i8 0, i64 48, i1 false)
  %48 = bitcast %struct.TYPE_7__* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %48, i8 0, i64 48, i1 false)
  %49 = bitcast %struct.TYPE_7__* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %49, i8 0, i64 48, i1 false)
  %50 = bitcast %struct.TYPE_7__* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %50, i8 0, i64 48, i1 false)
  %51 = load i32, i32* @regk_ser_f29_493, align 4
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 6
  store i32 %51, i32* %52, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 6
  store i32 %51, i32* %53, align 8
  %54 = load i32, i32* @regk_ser_no, align 4
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 1
  store i32 %54, i32* %55, align 4
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load %struct.dbg_port*, %struct.dbg_port** %2, align 8
  %58 = getelementptr inbounds %struct.dbg_port, %struct.dbg_port* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = sdiv i32 29493000, %59
  %61 = sdiv i32 %60, 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 2
  store i32 %61, i32* %62, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 2
  store i32 %61, i32* %63, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  store i32 1, i32* %64, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 0
  store i32 1, i32* %65, align 8
  %66 = load %struct.dbg_port*, %struct.dbg_port** %2, align 8
  %67 = getelementptr inbounds %struct.dbg_port, %struct.dbg_port* %66, i32 0, i32 3
  %68 = load i8, i8* %67, align 4
  %69 = sext i8 %68 to i32
  %70 = icmp eq i32 %69, 79
  br i1 %70, label %71, label %80

71:                                               ; preds = %45
  %72 = load i8*, i8** @regk_ser_yes, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 5
  store i8* %72, i8** %73, align 8
  %74 = load i8*, i8** @regk_ser_odd, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 4
  store i8* %74, i8** %75, align 8
  %76 = load i8*, i8** @regk_ser_yes, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 5
  store i8* %76, i8** %77, align 8
  %78 = load i8*, i8** @regk_ser_odd, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 4
  store i8* %78, i8** %79, align 8
  br label %96

80:                                               ; preds = %45
  %81 = load %struct.dbg_port*, %struct.dbg_port** %2, align 8
  %82 = getelementptr inbounds %struct.dbg_port, %struct.dbg_port* %81, i32 0, i32 3
  %83 = load i8, i8* %82, align 4
  %84 = sext i8 %83 to i32
  %85 = icmp eq i32 %84, 69
  br i1 %85, label %86, label %95

86:                                               ; preds = %80
  %87 = load i8*, i8** @regk_ser_yes, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 5
  store i8* %87, i8** %88, align 8
  %89 = load i8*, i8** @regk_ser_even, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 4
  store i8* %89, i8** %90, align 8
  %91 = load i8*, i8** @regk_ser_yes, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 5
  store i8* %91, i8** %92, align 8
  %93 = load i8*, i8** @regk_ser_odd, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 4
  store i8* %93, i8** %94, align 8
  br label %95

95:                                               ; preds = %86, %80
  br label %96

96:                                               ; preds = %95, %71
  %97 = load %struct.dbg_port*, %struct.dbg_port** %2, align 8
  %98 = getelementptr inbounds %struct.dbg_port, %struct.dbg_port* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 4
  %100 = icmp eq i32 %99, 7
  br i1 %100, label %101, label %106

101:                                              ; preds = %96
  %102 = load i8*, i8** @regk_ser_bits7, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 3
  store i8* %102, i8** %103, align 8
  %104 = load i8*, i8** @regk_ser_bits7, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 3
  store i8* %104, i8** %105, align 8
  br label %106

106:                                              ; preds = %101, %96
  %107 = load i32, i32* @ser, align 4
  %108 = load %struct.dbg_port*, %struct.dbg_port** %2, align 8
  %109 = getelementptr inbounds %struct.dbg_port, %struct.dbg_port* %108, i32 0, i32 5
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @rw_tr_baud_div, align 4
  %112 = call i32 @REG_WR(i32 %107, i32 %110, i32 %111, %struct.TYPE_7__* byval(%struct.TYPE_7__) align 8 %6)
  %113 = load i32, i32* @ser, align 4
  %114 = load %struct.dbg_port*, %struct.dbg_port** %2, align 8
  %115 = getelementptr inbounds %struct.dbg_port, %struct.dbg_port* %114, i32 0, i32 5
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @rw_rec_baud_div, align 4
  %118 = call i32 @REG_WR(i32 %113, i32 %116, i32 %117, %struct.TYPE_7__* byval(%struct.TYPE_7__) align 8 %7)
  %119 = load i32, i32* @ser, align 4
  %120 = load %struct.dbg_port*, %struct.dbg_port** %2, align 8
  %121 = getelementptr inbounds %struct.dbg_port, %struct.dbg_port* %120, i32 0, i32 5
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @rw_tr_dma_en, align 4
  %124 = call i32 @REG_WR(i32 %119, i32 %122, i32 %123, %struct.TYPE_7__* byval(%struct.TYPE_7__) align 8 %4)
  %125 = load i32, i32* @ser, align 4
  %126 = load %struct.dbg_port*, %struct.dbg_port** %2, align 8
  %127 = getelementptr inbounds %struct.dbg_port, %struct.dbg_port* %126, i32 0, i32 5
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @rw_tr_ctrl, align 4
  %130 = call i32 @REG_WR(i32 %125, i32 %128, i32 %129, %struct.TYPE_7__* byval(%struct.TYPE_7__) align 8 %3)
  %131 = load i32, i32* @ser, align 4
  %132 = load %struct.dbg_port*, %struct.dbg_port** %2, align 8
  %133 = getelementptr inbounds %struct.dbg_port, %struct.dbg_port* %132, i32 0, i32 5
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @rw_rec_ctrl, align 4
  %136 = call i32 @REG_WR(i32 %131, i32 %134, i32 %135, %struct.TYPE_7__* byval(%struct.TYPE_7__) align 8 %5)
  br label %137

137:                                              ; preds = %106, %16, %10
  ret void
}

declare dso_local i32 @crisv32_pinmux_alloc_fixed(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @REG_WR(i32, i32, i32, %struct.TYPE_7__* byval(%struct.TYPE_7__) align 8) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
