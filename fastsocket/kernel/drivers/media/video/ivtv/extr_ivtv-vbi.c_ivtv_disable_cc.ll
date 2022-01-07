; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-vbi.c_ivtv_disable_cc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-vbi.c_ivtv_disable_cc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vbi_cc = type { i32, i32 }
%struct.ivtv = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }

@__const.ivtv_disable_cc.cc = private unnamed_addr constant %struct.vbi_cc { i32 128, i32 128 }, align 4
@IVTV_F_I_UPDATE_CC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ivtv_disable_cc(%struct.ivtv* %0) #0 {
  %2 = alloca %struct.ivtv*, align 8
  %3 = alloca %struct.vbi_cc, align 4
  store %struct.ivtv* %0, %struct.ivtv** %2, align 8
  %4 = bitcast %struct.vbi_cc* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %4, i8* align 4 bitcast (%struct.vbi_cc* @__const.ivtv_disable_cc.cc to i8*), i64 8, i1 false)
  %5 = load i32, i32* @IVTV_F_I_UPDATE_CC, align 4
  %6 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %7 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %6, i32 0, i32 1
  %8 = call i32 @clear_bit(i32 %5, i32* %7)
  %9 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %10 = call i32 @ivtv_set_cc(%struct.ivtv* %9, i32 0, %struct.vbi_cc* %3)
  %11 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %12 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store i64 0, i64* %13, align 8
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @clear_bit(i32, i32*) #2

declare dso_local i32 @ivtv_set_cc(%struct.ivtv*, i32, %struct.vbi_cc*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
