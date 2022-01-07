; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ngene/extr_ngene-core.c_ngene_command_load_firmware.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ngene/extr_ngene-core.c_ngene_command_load_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ngene = type { i32 }
%struct.ngene_command = type { i32, i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i16, i64 }
%struct.TYPE_4__ = type { i32, i32 }

@CMD_FWLOAD_PREPARE = common dso_local global i32 0, align 4
@PROGRAM_SRAM = common dso_local global i64 0, align 8
@DATA_FIFO_AREA = common dso_local global i64 0, align 8
@CMD_FWLOAD_FINISH = common dso_local global i32 0, align 4
@FIRSTCHUNK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ngene*, i32*, i32)* @ngene_command_load_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngene_command_load_firmware(%struct.ngene* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.ngene*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ngene_command, align 8
  store %struct.ngene* %0, %struct.ngene** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* @CMD_FWLOAD_PREPARE, align 4
  %10 = getelementptr inbounds %struct.ngene_command, %struct.ngene_command* %8, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  store i32 %9, i32* %12, align 4
  %13 = getelementptr inbounds %struct.ngene_command, %struct.ngene_command* %8, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  store i32 0, i32* %15, align 8
  %16 = getelementptr inbounds %struct.ngene_command, %struct.ngene_command* %8, i32 0, i32 0
  store i32 0, i32* %16, align 8
  %17 = getelementptr inbounds %struct.ngene_command, %struct.ngene_command* %8, i32 0, i32 1
  store i64 0, i64* %17, align 8
  %18 = load %struct.ngene*, %struct.ngene** %4, align 8
  %19 = call i32 @ngene_command(%struct.ngene* %18, %struct.ngene_command* %8)
  %20 = load i32, i32* %6, align 4
  %21 = add nsw i32 %20, 3
  %22 = and i32 %21, -4
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp sgt i32 %23, 1024
  br i1 %24, label %25, label %33

25:                                               ; preds = %3
  %26 = load i64, i64* @PROGRAM_SRAM, align 8
  %27 = add nsw i64 %26, 1024
  %28 = load i32*, i32** %5, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 1024
  %30 = load i32, i32* %7, align 4
  %31 = sub nsw i32 %30, 1024
  %32 = call i32 @ngcpyto(i64 %27, i32* %29, i32 %31)
  store i32 1024, i32* %7, align 4
  br label %33

33:                                               ; preds = %25, %3
  %34 = load i64, i64* @DATA_FIFO_AREA, align 8
  %35 = load i32*, i32** %5, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @ngcpyto(i64 %34, i32* %35, i32 %36)
  %38 = call i32 @memset(%struct.ngene_command* %8, i32 0, i32 40)
  %39 = load i32, i32* @CMD_FWLOAD_FINISH, align 4
  %40 = getelementptr inbounds %struct.ngene_command, %struct.ngene_command* %8, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  store i32 %39, i32* %42, align 4
  %43 = getelementptr inbounds %struct.ngene_command, %struct.ngene_command* %8, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  store i32 4, i32* %45, align 8
  %46 = load i64, i64* @DATA_FIFO_AREA, align 8
  %47 = getelementptr inbounds %struct.ngene_command, %struct.ngene_command* %8, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 1
  store i64 %46, i64* %49, align 8
  %50 = load i32, i32* %7, align 4
  %51 = trunc i32 %50 to i16
  %52 = getelementptr inbounds %struct.ngene_command, %struct.ngene_command* %8, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  store i16 %51, i16* %54, align 8
  %55 = getelementptr inbounds %struct.ngene_command, %struct.ngene_command* %8, i32 0, i32 0
  store i32 4, i32* %55, align 8
  %56 = getelementptr inbounds %struct.ngene_command, %struct.ngene_command* %8, i32 0, i32 1
  store i64 0, i64* %56, align 8
  %57 = load %struct.ngene*, %struct.ngene** %4, align 8
  %58 = call i32 @ngene_command(%struct.ngene* %57, %struct.ngene_command* %8)
  ret i32 %58
}

declare dso_local i32 @ngene_command(%struct.ngene*, %struct.ngene_command*) #1

declare dso_local i32 @ngcpyto(i64, i32*, i32) #1

declare dso_local i32 @memset(%struct.ngene_command*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
