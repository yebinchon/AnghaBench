; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/tlg2300/extr_pd-dvb.c_poseidon_read_signal_strength.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/tlg2300/extr_pd-dvb.c_poseidon_read_signal_strength.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.poseidon* }
%struct.poseidon = type { i32 }
%struct.tuner_dtv_sig_stat_s = type { i32, i64, i64 }

@TUNER_STATUS = common dso_local global i32 0, align 4
@TLG_MODE_DVB_T = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32*)* @poseidon_read_signal_strength to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @poseidon_read_signal_strength(%struct.dvb_frontend* %0, i32* %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.poseidon*, align 8
  %6 = alloca %struct.tuner_dtv_sig_stat_s, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %10 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %9, i32 0, i32 0
  %11 = load %struct.poseidon*, %struct.poseidon** %10, align 8
  store %struct.poseidon* %11, %struct.poseidon** %5, align 8
  %12 = bitcast %struct.tuner_dtv_sig_stat_s* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 24, i1 false)
  store i32 0, i32* %7, align 4
  %13 = load %struct.poseidon*, %struct.poseidon** %5, align 8
  %14 = getelementptr inbounds %struct.poseidon, %struct.poseidon* %13, i32 0, i32 0
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load %struct.poseidon*, %struct.poseidon** %5, align 8
  %17 = load i32, i32* @TUNER_STATUS, align 4
  %18 = load i32, i32* @TLG_MODE_DVB_T, align 4
  %19 = call i32 @send_get_req(%struct.poseidon* %16, i32 %17, i32 %18, %struct.tuner_dtv_sig_stat_s* %6, i32* %8, i32 24)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %8, align 4
  %22 = or i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  br label %44

25:                                               ; preds = %2
  %26 = getelementptr inbounds %struct.tuner_dtv_sig_stat_s, %struct.tuner_dtv_sig_stat_s* %6, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.tuner_dtv_sig_stat_s, %struct.tuner_dtv_sig_stat_s* %6, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %29, %25
  %34 = getelementptr inbounds %struct.tuner_dtv_sig_stat_s, %struct.tuner_dtv_sig_stat_s* %6, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %33
  %38 = load i32*, i32** %4, align 8
  store i32 65535, i32* %38, align 4
  br label %43

39:                                               ; preds = %33, %29
  %40 = getelementptr inbounds %struct.tuner_dtv_sig_stat_s, %struct.tuner_dtv_sig_stat_s* %6, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32*, i32** %4, align 8
  store i32 %41, i32* %42, align 4
  br label %43

43:                                               ; preds = %39, %37
  br label %44

44:                                               ; preds = %43, %24
  %45 = load %struct.poseidon*, %struct.poseidon** %5, align 8
  %46 = getelementptr inbounds %struct.poseidon, %struct.poseidon* %45, i32 0, i32 0
  %47 = call i32 @mutex_unlock(i32* %46)
  %48 = load i32, i32* %7, align 4
  ret i32 %48
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @mutex_lock(i32*) #2

declare dso_local i32 @send_get_req(%struct.poseidon*, i32, i32, %struct.tuner_dtv_sig_stat_s*, i32*, i32) #2

declare dso_local i32 @mutex_unlock(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
