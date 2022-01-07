; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/m68k/amiga/extr_config.c_amiga_parse_bootinfo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/m68k/amiga/extr_config.c_amiga_parse_bootinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zorro_dev = type { %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i64, i32 }
%struct.bi_record = type { i64*, i32 }

@amiga_model = common dso_local global i64 0, align 8
@amiga_eclock = common dso_local global i64 0, align 8
@amiga_chipset = common dso_local global i64 0, align 8
@amiga_chip_size = common dso_local global i32 0, align 4
@amiga_vblank = common dso_local global i8 0, align 1
@amiga_psfreq = common dso_local global i8 0, align 1
@ZORRO_NUM_AUTO = common dso_local global i32 0, align 4
@zorro_autocon = common dso_local global %struct.zorro_dev* null, align 8
@zorro_num_autocon = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amiga_parse_bootinfo(%struct.bi_record* %0) #0 {
  %2 = alloca %struct.bi_record*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  store %struct.bi_record* %0, %struct.bi_record** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load %struct.bi_record*, %struct.bi_record** %2, align 8
  %6 = getelementptr inbounds %struct.bi_record, %struct.bi_record* %5, i32 0, i32 0
  %7 = load i64*, i64** %6, align 8
  store i64* %7, i64** %4, align 8
  %8 = load %struct.bi_record*, %struct.bi_record** %2, align 8
  %9 = getelementptr inbounds %struct.bi_record, %struct.bi_record* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  switch i32 %10, label %34 [
    i32 131, label %11
    i32 132, label %14
    i32 134, label %17
    i32 133, label %20
    i32 128, label %24
    i32 130, label %28
    i32 135, label %32
    i32 129, label %33
  ]

11:                                               ; preds = %1
  %12 = load i64*, i64** %4, align 8
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* @amiga_model, align 8
  br label %35

14:                                               ; preds = %1
  %15 = load i64*, i64** %4, align 8
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* @amiga_eclock, align 8
  br label %35

17:                                               ; preds = %1
  %18 = load i64*, i64** %4, align 8
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* @amiga_chipset, align 8
  br label %35

20:                                               ; preds = %1
  %21 = load i64*, i64** %4, align 8
  %22 = bitcast i64* %21 to i32*
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* @amiga_chip_size, align 4
  br label %35

24:                                               ; preds = %1
  %25 = load i64*, i64** %4, align 8
  %26 = bitcast i64* %25 to i8*
  %27 = load i8, i8* %26, align 1
  store i8 %27, i8* @amiga_vblank, align 1
  br label %35

28:                                               ; preds = %1
  %29 = load i64*, i64** %4, align 8
  %30 = bitcast i64* %29 to i8*
  %31 = load i8, i8* %30, align 1
  store i8 %31, i8* @amiga_psfreq, align 1
  br label %35

32:                                               ; preds = %1
  br label %35

33:                                               ; preds = %1
  br label %35

34:                                               ; preds = %1
  store i32 1, i32* %3, align 4
  br label %35

35:                                               ; preds = %34, %33, %32, %28, %24, %20, %17, %14, %11
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
