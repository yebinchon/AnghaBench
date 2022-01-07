; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-vbi.c_ivtv_write_vbi.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-vbi.c_ivtv_write_vbi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vbi_cc = type { i32, i32 }
%struct.ivtv = type { i32 }
%struct.v4l2_sliced_vbi_data = type { i32 }

@__const.ivtv_write_vbi.cc = private unnamed_addr constant %struct.vbi_cc { i32 128, i32 128 }, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ivtv*, %struct.v4l2_sliced_vbi_data*, i64)* @ivtv_write_vbi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ivtv_write_vbi(%struct.ivtv* %0, %struct.v4l2_sliced_vbi_data* %1, i64 %2) #0 {
  %4 = alloca %struct.ivtv*, align 8
  %5 = alloca %struct.v4l2_sliced_vbi_data*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.vbi_cc, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.ivtv* %0, %struct.ivtv** %4, align 8
  store %struct.v4l2_sliced_vbi_data* %1, %struct.v4l2_sliced_vbi_data** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = bitcast %struct.vbi_cc* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %10, i8* align 4 bitcast (%struct.vbi_cc* @__const.ivtv_write_vbi.cc to i8*), i64 8, i1 false)
  store i32 0, i32* %8, align 4
  store i64 0, i64* %9, align 8
  br label %11

11:                                               ; preds = %21, %3
  %12 = load i64, i64* %9, align 8
  %13 = load i64, i64* %6, align 8
  %14 = icmp ult i64 %12, %13
  br i1 %14, label %15, label %24

15:                                               ; preds = %11
  %16 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %17 = load %struct.v4l2_sliced_vbi_data*, %struct.v4l2_sliced_vbi_data** %5, align 8
  %18 = load i64, i64* %9, align 8
  %19 = getelementptr inbounds %struct.v4l2_sliced_vbi_data, %struct.v4l2_sliced_vbi_data* %17, i64 %18
  %20 = call i32 @ivtv_write_vbi_line(%struct.ivtv* %16, %struct.v4l2_sliced_vbi_data* %19, %struct.vbi_cc* %7, i32* %8)
  br label %21

21:                                               ; preds = %15
  %22 = load i64, i64* %9, align 8
  %23 = add i64 %22, 1
  store i64 %23, i64* %9, align 8
  br label %11

24:                                               ; preds = %11
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %29 = call i32 @ivtv_write_vbi_cc_lines(%struct.ivtv* %28, %struct.vbi_cc* %7)
  br label %30

30:                                               ; preds = %27, %24
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @ivtv_write_vbi_line(%struct.ivtv*, %struct.v4l2_sliced_vbi_data*, %struct.vbi_cc*, i32*) #2

declare dso_local i32 @ivtv_write_vbi_cc_lines(%struct.ivtv*, %struct.vbi_cc*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
