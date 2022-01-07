; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_dm9000.c_dm9000_set_io.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_dm9000.c_dm9000_set_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.board_info = type { i32, i32, i32, i32 }

@dm9000_dumpblk_8bit = common dso_local global i32 0, align 4
@dm9000_outblk_8bit = common dso_local global i32 0, align 4
@dm9000_inblk_8bit = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c": 3 byte IO, falling back to 16bit\0A\00", align 1
@dm9000_dumpblk_16bit = common dso_local global i32 0, align 4
@dm9000_outblk_16bit = common dso_local global i32 0, align 4
@dm9000_inblk_16bit = common dso_local global i32 0, align 4
@dm9000_dumpblk_32bit = common dso_local global i32 0, align 4
@dm9000_outblk_32bit = common dso_local global i32 0, align 4
@dm9000_inblk_32bit = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.board_info*, i32)* @dm9000_set_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dm9000_set_io(%struct.board_info* %0, i32 %1) #0 {
  %3 = alloca %struct.board_info*, align 8
  %4 = alloca i32, align 4
  store %struct.board_info* %0, %struct.board_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %32 [
    i32 1, label %6
    i32 3, label %16
    i32 2, label %21
    i32 4, label %31
  ]

6:                                                ; preds = %2
  %7 = load i32, i32* @dm9000_dumpblk_8bit, align 4
  %8 = load %struct.board_info*, %struct.board_info** %3, align 8
  %9 = getelementptr inbounds %struct.board_info, %struct.board_info* %8, i32 0, i32 2
  store i32 %7, i32* %9, align 4
  %10 = load i32, i32* @dm9000_outblk_8bit, align 4
  %11 = load %struct.board_info*, %struct.board_info** %3, align 8
  %12 = getelementptr inbounds %struct.board_info, %struct.board_info* %11, i32 0, i32 1
  store i32 %10, i32* %12, align 4
  %13 = load i32, i32* @dm9000_inblk_8bit, align 4
  %14 = load %struct.board_info*, %struct.board_info** %3, align 8
  %15 = getelementptr inbounds %struct.board_info, %struct.board_info* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  br label %42

16:                                               ; preds = %2
  %17 = load %struct.board_info*, %struct.board_info** %3, align 8
  %18 = getelementptr inbounds %struct.board_info, %struct.board_info* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @dev_dbg(i32 %19, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %2, %16
  %22 = load i32, i32* @dm9000_dumpblk_16bit, align 4
  %23 = load %struct.board_info*, %struct.board_info** %3, align 8
  %24 = getelementptr inbounds %struct.board_info, %struct.board_info* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* @dm9000_outblk_16bit, align 4
  %26 = load %struct.board_info*, %struct.board_info** %3, align 8
  %27 = getelementptr inbounds %struct.board_info, %struct.board_info* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* @dm9000_inblk_16bit, align 4
  %29 = load %struct.board_info*, %struct.board_info** %3, align 8
  %30 = getelementptr inbounds %struct.board_info, %struct.board_info* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  br label %42

31:                                               ; preds = %2
  br label %32

32:                                               ; preds = %2, %31
  %33 = load i32, i32* @dm9000_dumpblk_32bit, align 4
  %34 = load %struct.board_info*, %struct.board_info** %3, align 8
  %35 = getelementptr inbounds %struct.board_info, %struct.board_info* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* @dm9000_outblk_32bit, align 4
  %37 = load %struct.board_info*, %struct.board_info** %3, align 8
  %38 = getelementptr inbounds %struct.board_info, %struct.board_info* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* @dm9000_inblk_32bit, align 4
  %40 = load %struct.board_info*, %struct.board_info** %3, align 8
  %41 = getelementptr inbounds %struct.board_info, %struct.board_info* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  br label %42

42:                                               ; preds = %32, %21, %6
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
