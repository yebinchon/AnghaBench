; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/tlg2300/extr_pd-radio.c_poseidon_fm_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/tlg2300/extr_pd-radio.c_poseidon_fm_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.poseidon* }
%struct.poseidon = type { i32, i32, i32, %struct.file*, i32, %struct.radio_data }
%struct.radio_data = type { i64, i64 }

@POSEIDON_STATE_FM = common dso_local global i32 0, align 4
@PLAY_SERVICE = common dso_local global i32 0, align 4
@TLG_TUNE_PLAY_SVC_STOP = common dso_local global i32 0, align 4
@poseidon_delete = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @poseidon_fm_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @poseidon_fm_close(%struct.file* %0) #0 {
  %2 = alloca %struct.file*, align 8
  %3 = alloca %struct.poseidon*, align 8
  %4 = alloca %struct.radio_data*, align 8
  %5 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %2, align 8
  %6 = load %struct.file*, %struct.file** %2, align 8
  %7 = getelementptr inbounds %struct.file, %struct.file* %6, i32 0, i32 0
  %8 = load %struct.poseidon*, %struct.poseidon** %7, align 8
  store %struct.poseidon* %8, %struct.poseidon** %3, align 8
  %9 = load %struct.poseidon*, %struct.poseidon** %3, align 8
  %10 = getelementptr inbounds %struct.poseidon, %struct.poseidon* %9, i32 0, i32 5
  store %struct.radio_data* %10, %struct.radio_data** %4, align 8
  %11 = load %struct.poseidon*, %struct.poseidon** %3, align 8
  %12 = getelementptr inbounds %struct.poseidon, %struct.poseidon* %11, i32 0, i32 1
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.radio_data*, %struct.radio_data** %4, align 8
  %15 = getelementptr inbounds %struct.radio_data, %struct.radio_data* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = add nsw i64 %16, -1
  store i64 %17, i64* %15, align 8
  %18 = load %struct.radio_data*, %struct.radio_data** %4, align 8
  %19 = getelementptr inbounds %struct.radio_data, %struct.radio_data* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 0, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %1
  %23 = load i32, i32* @POSEIDON_STATE_FM, align 4
  %24 = xor i32 %23, -1
  %25 = load %struct.poseidon*, %struct.poseidon** %3, align 8
  %26 = getelementptr inbounds %struct.poseidon, %struct.poseidon* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 8
  %28 = and i32 %27, %24
  store i32 %28, i32* %26, align 8
  br label %29

29:                                               ; preds = %22, %1
  %30 = load %struct.radio_data*, %struct.radio_data** %4, align 8
  %31 = getelementptr inbounds %struct.radio_data, %struct.radio_data* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %47

34:                                               ; preds = %29
  %35 = load %struct.file*, %struct.file** %2, align 8
  %36 = load %struct.poseidon*, %struct.poseidon** %3, align 8
  %37 = getelementptr inbounds %struct.poseidon, %struct.poseidon* %36, i32 0, i32 3
  %38 = load %struct.file*, %struct.file** %37, align 8
  %39 = icmp eq %struct.file* %35, %38
  br i1 %39, label %40, label %47

40:                                               ; preds = %34
  %41 = load %struct.radio_data*, %struct.radio_data** %4, align 8
  %42 = getelementptr inbounds %struct.radio_data, %struct.radio_data* %41, i32 0, i32 1
  store i64 0, i64* %42, align 8
  %43 = load %struct.poseidon*, %struct.poseidon** %3, align 8
  %44 = load i32, i32* @PLAY_SERVICE, align 4
  %45 = load i32, i32* @TLG_TUNE_PLAY_SVC_STOP, align 4
  %46 = call i32 @send_set_req(%struct.poseidon* %43, i32 %44, i32 %45, i32* %5)
  br label %47

47:                                               ; preds = %40, %34, %29
  %48 = load %struct.poseidon*, %struct.poseidon** %3, align 8
  %49 = getelementptr inbounds %struct.poseidon, %struct.poseidon* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @usb_autopm_put_interface(i32 %50)
  %52 = load %struct.poseidon*, %struct.poseidon** %3, align 8
  %53 = getelementptr inbounds %struct.poseidon, %struct.poseidon* %52, i32 0, i32 1
  %54 = call i32 @mutex_unlock(i32* %53)
  %55 = load %struct.poseidon*, %struct.poseidon** %3, align 8
  %56 = getelementptr inbounds %struct.poseidon, %struct.poseidon* %55, i32 0, i32 0
  %57 = load i32, i32* @poseidon_delete, align 4
  %58 = call i32 @kref_put(i32* %56, i32 %57)
  %59 = load %struct.file*, %struct.file** %2, align 8
  %60 = getelementptr inbounds %struct.file, %struct.file* %59, i32 0, i32 0
  store %struct.poseidon* null, %struct.poseidon** %60, align 8
  ret i32 0
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @send_set_req(%struct.poseidon*, i32, i32, i32*) #1

declare dso_local i32 @usb_autopm_put_interface(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kref_put(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
